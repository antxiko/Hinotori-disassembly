#!/usr/bin/env python3
"""La hoja de dibujos de la pagina 1 de la VRAM, montada desde las listas del cartucho.

Lo que hace el cartucho al preparar una fase (p00:5D20):

  listas  p00:54CC lee, con los bancos 4-5-6 puestos, una lista de entradas
          de seis bytes [n][dibujo][propiedad][fuente lo][fuente hi][tipo]; un
          0 la acaba. `n` dibujos de 8x8 van a la hoja a partir del numero
          `dibujo` (32 por fila: x = (d & 31)*8, y = (d >> 5)*8 desde la base
          de la lista, 0xC4B2); `propiedad` se copia en 0xC900 + dibujo, uno
          por dibujo. El nibble bajo de `tipo` es el primer banco del trio que
          se pone para leer la fuente (p00:5408: A, A+1, A+2) y los tres bits
          altos, el formato (tabla de p00:5526):
              0  4 bits tal cual, 32 bytes por dibujo (p00:4F16)
              1  lo mismo, al reves de izquierda a derecha (p00:4C12)
              2  1 bit por punto, 8 bytes; color de 0xC500 + bit (p00:509F)
              3  el 2, al reves
              4  2 bits: dos bytes por fila, el segundo es el bit alto (p00:50F8)
              5  el 4, al reves
              6  3 bits: tres bytes por fila (p00:5159)
              7  el 6, al reves
          Una entrada que empieza por 0xFD, 0xFE o 0xFF no sube nada: pone los
          colores de 0xC500 con los 4, 2 o 1 bytes siguientes, dos nibbles por
          byte (p00:5446).
  base    p00:5469 pone la base en 0xC4B2 = 32*A; p00:546C, 4*A. La lista de
          la fase va con la base 0x80 (la VRAM 0x8000, la pagina 1).

Uso: hoja.py <fase C482> <columna C483> [salida.png] [volcado.vram cotejo]
"""
import os
import struct
import sys
import zlib

AQUI = os.path.dirname(os.path.abspath(__file__))
RAIZ = os.path.dirname(AQUI)
sys.path.insert(0, AQUI)

from paginas import TAM_PAGINA          # noqa: E402

ROM = open(os.path.join(RAIZ, "hinotori.rom"), "rb").read()
B456, B789, B101112, B131415 = (4, 5, 6), (7, 8, 9), (10, 11, 12), (13, 14, 15)


def lee(a, bancos):
    """Byte de la direccion a del Z80 con (b6000, b8000, bA000) puestos."""
    if 0x4000 <= a < 0x6000:
        b = 0
    else:
        b = bancos[(a - 0x6000) >> 13]
    return ROM[b * TAM_PAGINA + (a & 0x1FFF)]


def palabra(a, bancos):
    return lee(a, bancos) | (lee(a + 1, bancos) << 8)


def trio(b):
    return (b, b + 1, b + 2)


class Vram:
    """Los 64 KB de VRAM que ve el cartucho (paginas 0 y 1 de SCREEN 5)."""

    def __init__(self, base=None):
        self.m = bytearray(base[:0x10000]) if base else bytearray(0x10000)
        self.propiedad = bytearray(256)          # 0xC900
        self.colores = bytearray(8)              # 0xC500

    # ---- p00:4F01 / p00:4F16: dibujos de 32 bytes, 8 filas de 4
    def sube(self, datos, n, de):
        d, e = de >> 8, de & 0xFF
        for k in range(n):
            a = (d << 8) | e
            for f in range(8):
                self.m[a + 128 * f:a + 128 * f + 4] = datos[32 * k + 4 * f:32 * k + 4 * f + 4]
            e += 4
            if e == 0x80:
                d, e = d + 4, 0
        return (d << 8) | e

    # ---- p00:4C12 / p00:4BEC: lo mismo al reves (nibbles cambiados)
    def sube_al_reves(self, datos, n, de):
        d, e = de >> 8, de & 0xFF
        for k in range(n):
            a = (d << 8) | e
            for f in range(8):
                fila = datos[32 * k + 4 * f:32 * k + 4 * f + 4]
                self.m[a + 128 * f:a + 128 * f + 4] = bytes(
                    ((c >> 4) | (c << 4)) & 0xFF for c in reversed(fila))
            e += 4
            if e == 0x80:
                d, e = d + 4, 0
        return (d << 8) | e

    def planos(self, fuente, bancos, n, bpp):
        """p00:50CB / p00:5124 / p00:5185: bpp bytes por fila -> 4 bits."""
        fuera = bytearray()
        a = fuente
        for _ in range(n):
            for _ in range(8):
                pl = [lee(a + i, bancos) for i in range(bpp)]
                a += bpp
                puntos = []
                for bit in range(7, -1, -1):
                    v = 0
                    for i in reversed(range(bpp)):        # el ultimo byte es el bit alto
                        v = (v << 1) | ((pl[i] >> bit) & 1)
                    puntos.append(self.colores[v] & 0x0F)
                for i in range(0, 8, 2):
                    fuera.append((puntos[i] << 4) | puntos[i + 1])
        return bytes(fuera)

    def lista(self, a, base):
        """p00:54CC: la lista de a (bancos 4-5-6) con la base 0xC4B2 = base."""
        while True:
            n = lee(a, B456)
            a += 1
            if n == 0:
                return a
            if n >= 0xFD:
                cuantos = {0xFD: 4, 0xFE: 2, 0xFF: 1}[n]
                for i in range(cuantos):
                    v = lee(a, B456)
                    self.colores[2 * i] = v >> 4
                    self.colores[2 * i + 1] = v & 0x0F
                    a += 1
                continue
            dib = lee(a, B456)
            prop = lee(a + 1, B456)
            for i in range(n):
                self.propiedad[(dib + i) & 0xFF] = prop
            fuente = palabra(a + 2, B456)
            tipo = lee(a + 4, B456)
            a += 5
            de = ((((dib & 0xE0) >> 3) + base) << 8) | ((dib & 0x1F) * 4)
            bancos = trio(tipo & 0x0F)
            forma = tipo >> 5
            if forma in (0, 1):
                datos = bytes(lee(fuente + i, bancos) for i in range(32 * n))
            else:
                n = min(n, 0x40)                      # p00:5579
                bpp = {2: 1, 3: 1, 4: 2, 5: 2, 6: 3, 7: 3}[forma]
                datos = self.planos(fuente, bancos, n, bpp)
            if forma & 1:
                self.sube_al_reves(datos, n, de)
            else:
                self.sube(datos, n, de)

    # ---- p00:4ED7 / p00:4EE0: letras de 1 bit, en color C, a (D, E)
    def letras(self, fuente, bancos, n, color, x, y):
        for k in range(n):
            for f in range(8):
                v = lee(fuente + 8 * k + f, bancos)
                a = 0x8000 + (y + f) * 128 + x // 2
                for i in range(4):
                    hi = color if v & (0x80 >> (2 * i)) else 0
                    lo = color if v & (0x40 >> (2 * i)) else 0
                    self.m[a + i] = (hi << 4) | lo
            x += 8
            if x >= 256:
                x, y = 0, y + 8


def hoja_de_la_fase(fase, columna, base=None):
    """La pagina 1 tras p00:5473 + la lista de la fase (p00:54BD)."""
    v = Vram(base)
    if columna != 3:
        # p00:5482: HMMV 32x32 a 0 en (0xE0, 0x50) de la pagina 1
        for y in range(0x50, 0x70):
            a = 0x8000 + y * 128 + 0xE0 // 2
            v.m[a:a + 16] = bytes(16)
    v.lista(0x63F9, 0x36 * 4)
    v.lista(0x6423, 0x38 * 4)
    if columna != 3:
        v.lista(0x6430, 0x2A * 4)
    v.lista(0x61E9, 5 * 32)
    if fase < 6:
        v.lista(0x6271, 0x80)
    v.lista(palabra(0x6000 + 2 * fase, B456), 0x80)
    return v


def paleta(fase, area):
    """p00:55A2: las listas [color][RB][G] ... 0xFF de 0x9D58, la de la fase
    (0x9D77 + 2*C482) y la del area (0x9E2C + 2*C480), bancos 4-5-6."""
    pal = [(0, 0, 0)] * 16
    for a in (0x9D58, palabra(0x9D77 + 2 * fase, B456),
              palabra(0x9E2C + 2 * area, B456)):
        while lee(a, B456) != 0xFF:
            c, rb, g = lee(a, B456), lee(a + 1, B456), lee(a + 2, B456)
            pal[c & 15] = ((rb >> 4) & 7, g & 7, rb & 7)
            a += 3
    return pal


def rgb(p):
    return tuple(v * 255 // 7 for v in p)


def png(ruta, ancho, alto, pixeles):
    filas = b"".join(b"\x00" + bytes(pixeles[y * ancho * 3:(y + 1) * ancho * 3])
                     for y in range(alto))

    def trozo(t, d):
        c = struct.pack(">I", len(d)) + t + d
        return c + struct.pack(">I", zlib.crc32(t + d) & 0xFFFFFFFF)
    with open(ruta, "wb") as f:
        f.write(b"\x89PNG\r\n\x1a\n")
        f.write(trozo(b"IHDR", struct.pack(">IIBBBBB", ancho, alto, 8, 2, 0, 0, 0)))
        f.write(trozo(b"IDAT", zlib.compress(filas, 9)))
        f.write(trozo(b"IEND", b""))


def pinta_pagina(m, pal, desde, alto):
    pix = bytearray()
    for y in range(alto):
        for x in range(128):
            c = m[desde + y * 128 + x]
            pix += bytes(rgb(pal[c >> 4])) + bytes(rgb(pal[c & 15]))
    return pix


def main(argv):
    fase, columna = int(argv[1], 0), int(argv[2], 0)
    v = hoja_de_la_fase(fase, columna)
    area = 3 * fase + columna if columna < 3 else 18 + fase
    pal = paleta(fase, area)
    if len(argv) > 3:
        png(argv[3], 256, 256, pinta_pagina(v.m, pal, 0x8000, 256))
    if len(argv) > 4:
        dump = open(argv[4], "rb").read()
        dif = [i for i in range(0x8000, 0x10000) if dump[i] != v.m[i]]
        print("diferencias en la pagina 1: %d bytes" % len(dif))
        filas = sorted({(i - 0x8000) // 128 for i in dif})
        print("filas con diferencias:", filas[:40], "..." if len(filas) > 40 else "")


if __name__ == "__main__":
    main(sys.argv)
