#!/usr/bin/env python3
"""El logotipo de Konami y la pantalla del titulo, montados desde las tablas.

LOGOTIPO (p01:6690 y p01:6730, con el banco 9 en 0xA000):
  - paleta de p01:66E0 ([color][RB][G] ... 0xFF): 0 y 15 blancos, 1 naranja,
    2 rojo, 3 gris;
  - HMMV blanco de toda la pagina 0 y de (0x28, 0x40) 0xA8x0x48 de la 1;
  - letras de 1 bit a la hoja (p00:4ED7): 13 de p09:AB3C en color 1 desde
    (8, 0), 13 de p09:ABA4 en color 2 desde (0x70, 0) y 26 de p09:AC0C en
    color 3 desde (0xD8, 0);
  - p01:6710 compone con esos dibujos la lista de p01:675E en (0x40, 0x40)
    de la pagina 1: numero de dibujo; 0xFE [dx] otra fila: x = el principio de la
    anterior + dx (con signo), y + 8;
    0xFF acaba;
  - p01:66F0 lo destapa: HMMM de (0x28, 0x40) de la pagina 1 a la 0, cada
    cuadro una fila mas, hasta 0x31 filas.

TITULO (p00:5A60 y p00:5A84, bancos 13-14-15):
  - la hoja de las listas de 0x6443, 0x6458 y 0x6468 (bancos 4-5-6, base
    0x80 = pagina 1) y las letras de p00:55DC;
  - p00:58C3 pinta 32x18 dibujos del mapa de p13:7640 desde (0, 0x28)
    (el 0 no se pinta), otro tanto de p13:79A0 encima, y p00:58E5 los dos
    trozos de p13:7D00 (12x4) y p13:7D30 (9x3) con el color 0 transparente;
  - la paleta es la que queda de la hoja (p00:5A70: los 16 colores a 0) y
    la sube el juego mas tarde (ver coteja).

Uso: titulo.py logo <salida.png> [volcado.vram]
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import hoja as H                                              # noqa: E402

B129 = (1, 2, 9)


def paleta_logo():
    pal = [(0, 0, 0)] * 16
    a = 0x66E0
    while H.lee(a, (1, 2, 3)) != 0xFF:
        c, rb, g = (H.lee(a + i, (1, 2, 3)) for i in range(3))
        pal[c & 15] = ((rb >> 4) & 7, g & 7, rb & 7)
        a += 3
    return pal


def hmmv(m, x, y, w, h, pagina, color):
    for j in range(h):
        a = pagina * 0x8000 + ((y + j) & 0xFF) * 128 + x // 2
        m[a:a + w // 2] = bytes([color]) * (w // 2)


def hmmm(m, sx, sy, sp, dx, dy, dp, w, h):
    filas = []
    for j in range(h):
        a = sp * 0x8000 + ((sy + j) & 0xFF) * 128 + sx // 2
        filas.append(bytes(m[a:a + w // 2]))
    for j, f in enumerate(filas):
        a = dp * 0x8000 + ((dy + j) & 0xFF) * 128 + dx // 2
        m[a:a + w // 2] = f


def logo():
    v = H.Vram()
    hmmv(v.m, 0x28, 0x40, 0xA8, 0x48, 1, 0xFF)
    hmmv(v.m, 0, 0, 256, 256, 0, 0xFF)
    v.letras(0xAB3C, B129, 13, 1, 0x08, 0)
    v.letras(0xABA4, B129, 13, 2, 0x70, 0)
    v.letras(0xAC0C, B129, 26, 3, 0xD8, 0)
    # p01:6710
    x0, y = 0x40, 0x40
    x = x0
    a = 0x675E
    while True:
        c = H.lee(a, (1, 2, 3))
        a += 1
        if c == 0xFF:
            break
        if c == 0xFE:
            x0 = (x0 + H.lee(a, (1, 2, 3))) & 0xFF    # principio de la fila anterior + dx
            x = x0
            a += 1
            y += 8
            continue
        hmmm(v.m, (c & 31) * 8, (c >> 5) * 8, 1, x, y, 1, 8, 8)
        x = (x + 8) & 0xFF
    hmmm(v.m, 0x28, 0x40, 1, 0x28, 0x40, 0, 0xA8, 0x31)
    return v


B131415 = (13, 14, 15)


def mapa_de_dibujos(v, a, ancho, alto, x, y, transparente):
    """p00:58C3 (HMMM) y p00:58E5 (LMMM con TIMP): el 0 no se pinta."""
    for f in range(alto):
        for c in range(ancho):
            t = H.lee(a, B131415)
            a += 1
            if not t:
                continue
            sx, sy = (t & 31) * 8, (t >> 5) * 8
            for j in range(8):
                src = 0x8000 + (sy + j) * 128 + sx // 2
                dst = ((y + 8 * f + j) & 0xFF) * 128 + ((x + 8 * c) & 0xFF) // 2
                for i in range(4):
                    b = v.m[src + i]
                    if transparente:
                        hi, lo = b >> 4, b & 15
                        o = v.m[dst + i]
                        b = ((hi or o >> 4) << 4) | (lo if lo else o & 15)
                    v.m[dst + i] = b


def texto(v, a, s=(1, 2, 3)):
    """p00:4F87: [x][y] y letras; 0xFE [x][y] otro sitio; 0xFF acaba. La
    letra c es el dibujo c + 0x10 de la hoja, 0x60 lineas mas abajo."""
    x, y = H.lee(a, s), H.lee(a + 1, s)
    a += 2
    while True:
        c = H.lee(a, s)
        a += 1
        if c == 0xFF:
            return
        if c == 0xFE:
            x, y = H.lee(a, s), H.lee(a + 1, s)
            a += 2
            continue
        if c:
            t = c + 0x10
            hmmm(v.m, (t & 31) * 8, (t >> 5) * 8 + 0x60, 1, x, y, 0, 8, 8)
        else:
            hmmm(v.m, 0, 0, 1, x, y, 0, 8, 8)
        x = (x + 8) & 0xFF


def paleta_titulo():
    """p00:5B77: los 16 colores de p00:5BE9, [RB][G]."""
    pal = []
    for c in range(16):
        rb, g = H.lee(0x5BE9 + 2 * c, (1, 2, 3)), H.lee(0x5BEA + 2 * c, (1, 2, 3))
        pal.append(((rb >> 4) & 7, g & 7, rb & 7))
    return pal


def titulo():
    v = H.Vram()
    hmmv(v.m, 0, 0, 256, 256, 0, 0)                     # p00:4CB0
    v.letras(0x6158, B131415, 1, 0, 0, 0)               # p00:55DC
    v.letras(0x6000, B131415, 0x2B, 0x0C, 0, 0x70)
    for a in (0x6443, 0x6458):
        v.lista(a, 4 * 32)
        mapa_de_dibujos(v, 0x7640 if a == 0x6443 else 0x79A0, 32, 18, 0, 0x28, False)
    v.lista(0x6468, 4 * 32)
    mapa_de_dibujos(v, 0x7D00, 12, 4, 0x20, 0x08, True)
    mapa_de_dibujos(v, 0x7D30, 9, 3, 0x88, 0x10, True)
    texto(v, 0x5ADD)                                    # p00:5B10
    texto(v, 0x53AA)
    return v


def menu():
    """El MENU que sale al pulsar ESPACIO en el titulo si p00:5DFF encontro
    el Game Master o Q*bert (0xC110 = 1; p00:46AD): p00:5E97 borra
    (0x20, 0x98) 0xC0x0x38, p00:4DDD le pone un marco de color 12 y p00:4F87
    escribe las tres lineas de p00:5EB0."""
    v = titulo()
    hmmv(v.m, 0x20, 0x98, 0xC0, 0x38, 0, 0)
    marco(v.m, 0x20, 0x98, 0xC0, 0x38, 0x0C)
    texto(v, 0x5EB0)
    return v


def marco(m, x, y, ancho, alto, color):
    """p00:4DDD: cuatro rayas de un punto (LINE), E de alto por D de ancho."""
    def punto(px, py):
        a = (py & 0xFF) * 128 + (px & 0xFF) // 2
        m[a] = (m[a] & 0x0F) | (color << 4) if px % 2 == 0 else (m[a] & 0xF0) | color
    for i in range(alto):
        punto(x, y + i)
        punto(x + ancho - 1, y + i)
    for i in range(ancho):
        punto(x + i, y)
        punto(x + i, y + alto - 1)


def main(argv):
    if argv[1] == "rotulo":
        # el rotulo del titulo (p13:7D00 y 7D30, 12x4 y 9x3 dibujos), solo
        v = titulo()
        pal = paleta_titulo()
        x0, y0, w, h = 0x20, 0x08, 0xB0, 0x22
        pix = bytearray()
        for y in range(y0, y0 + h):
            for x in range(x0, x0 + w):
                c = v.m[y * 128 + x // 2]
                c = c >> 4 if x % 2 == 0 else c & 15
                pix += bytes(H.rgb(pal[c]))
        H.png(argv[2], w, h, pix)
        return 0
    if argv[1] == "menu":
        v = menu()
        H.png(argv[2], 256, 212, H.pinta_pagina(v.m, paleta_titulo(), 0, 212))
        if len(argv) > 3:
            d = open(argv[3], "rb").read()
            dif = [i for i in range(0, 212 * 128) if d[i] != v.m[i]]
            print("menu: %d bytes distintos en la pagina 0; lineas %s" % (
                len(dif), sorted({i // 128 for i in dif})[:20]))
            return 1 if dif else 0
    if argv[1] == "titulo":
        v = titulo()
        H.png(argv[2], 256, 212, H.pinta_pagina(v.m, paleta_titulo(), 0, 212))
        if len(argv) > 3:
            d = open(argv[3], "rb").read()
            dif = [i for i in range(0, 212 * 128) if d[i] != v.m[i]]
            print("titulo: %d bytes distintos en la pagina 0; lineas %s" % (
                len(dif), sorted({i // 128 for i in dif})[:20]))
            return 1 if dif else 0
    if argv[1] == "logo":
        v = logo()
        pal = paleta_logo()
        H.png(argv[2], 256, 212, H.pinta_pagina(v.m, pal, 0, 212))
        if len(argv) > 3:
            d = open(argv[3], "rb").read()
            dif = sum(1 for i in range(0, 212 * 128) if d[i] != v.m[i])
            print("logotipo: %d bytes distintos en la pagina 0 (212 lineas)" % dif)
            return 1 if dif else 0
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
