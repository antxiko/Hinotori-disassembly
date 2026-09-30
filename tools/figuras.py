#!/usr/bin/env python3
"""Las figuras: los 41 objetos, las poses de Gao y los patrones de las cosas.

OBJETOS (p06:BAC2 y p01:7B60): el objeto k (1..41) lleva su cuenta en
  0xC850 + 4*(k-1). Su icono es de 16x16 en la hoja de la pagina 1: el icono
  n esta en x = (n & 15)*16, y = (n & 0xF0) + 0x90 (p02:819B). Para k < 16
  es el icono k + 0x1F; para los demas, un fondo (el icono 0x25, o el 0x2B
  desde el 0x24) y encima, con el color 0 transparente (LMMM), el icono
  0x1F + p01:7B99[k - 16].

GAO (p02:93D6, banco 6): 20 poses, dos sprites de 16x16 cada una (punteros
  de p06:A0BB, 0x40 bytes cada uno, formato de patron de sprite del VDP: las
  columnas 0-7 en los 16 primeros bytes y las 8-15 en los 16 siguientes).

COSAS (p00:5694, bancos 7-8-9): 41 juegos de patrones de sprite, en el RLE
  de p00:4A8D o tal cual, que cada area sube a la VRAM (0xF800 + 8*sitio).

HUERFANAS (p07:7457 a p08:82B3): 18 tiras seguidas en el mismo RLE que no
  nombra ninguna lista (el RLE solo lo abre p00:4AD5, desde las listas).
  Abiertas y leidas como las cosas -dos patrones seguidos son las dos capas
  de un sprite de 16x16, y los sprites de una figura van por columnas-, dan
  seis figuras: 0-2 seguidas (3 de 32x32), 3-7 y 12 (32x32 cada una), 8-9,
  10-11, 13-15 seguidas (2 de 32x48) y 16-17 (16x32). Y detras, de p08:82B3
  a 0x85B3, 768 bytes SIN comprimir que tampoco lee nadie: 12 sprites a dos
  capas, la septima figura (2 de 32x48).

Uso: figuras.py objetos <salida.png>
     figuras.py gao <salida.png>
     figuras.py cosas <salida.png>
     figuras.py huerfanas <salida.png>
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import hoja as H                                              # noqa: E402

N_OBJETOS = 41


def icono(v, n):
    """Los 16x16 indices de color del icono n de la hoja."""
    x, y = (n & 15) * 16, (n & 0xF0) + 0x90
    fuera = []
    for j in range(16):
        a = 0x8000 + (y + j) * 128 + x // 2
        fila = []
        for i in range(8):
            c = v.m[a + i]
            fila += [c >> 4, c & 15]
        fuera.append(fila)
    return fuera


def objeto(v, k):
    if k < 16:
        return icono(v, k + 0x1F)
    fondo = icono(v, 0x2B if k >= 0x24 else 0x25)
    encima = icono(v, 0x1F + H.lee(0x7B99 + k - 16, (1, 2, 3)))
    return [[e or f for e, f in zip(fe, ff)] for fe, ff in zip(encima, fondo)]


def lamina(celdas, pal, ruta, por_fila, lado, esc=3, fondo=(24, 24, 32)):
    n = len(celdas)
    filas = (n + por_fila - 1) // por_fila
    sep = 6
    ancho = por_fila * (lado * esc + sep) + sep
    alto = filas * (lado * esc + sep) + sep
    pix = bytearray(bytes(fondo) * ancho * alto)
    for k, c in enumerate(celdas):
        ox = sep + (k % por_fila) * (lado * esc + sep)
        oy = sep + (k // por_fila) * (lado * esc + sep)
        for j, fila in enumerate(c):
            for i, col in enumerate(fila):
                if col is None:
                    continue
                rgb = pal[col] if isinstance(col, int) else col
                for dy in range(esc):
                    o = ((oy + j * esc + dy) * ancho + ox + i * esc) * 3
                    pix[o:o + 3 * esc] = bytes(rgb) * esc
    H.png(ruta, ancho, alto, pix)


def patron_16(b):
    """Un patron de sprite de 16x16 (32 bytes) -> 16 filas de 16 bits."""
    return [[(b[j + (16 if i >= 8 else 0)] >> (7 - (i & 7))) & 1 for i in range(16)]
            for j in range(16)]


def gao():
    poses = []
    for k in range(20):
        a0 = H.palabra(0xA0BB + 4 * k, (1, 2, 6))
        a1 = H.palabra(0xA0BB + 4 * k + 2, (1, 2, 6))
        p0 = [H.lee(a0 + i, (1, 2, 6)) for i in range(0x40)]
        p1 = [H.lee(a1 + i, (1, 2, 6)) for i in range(0x40)]
        poses.append((p0, p1))
    return poses


def rle(a, s):
    fuera = bytearray()
    while True:
        n = H.lee(a, s)
        a += 1
        if n == 0:
            return bytes(fuera)
        if n == 0x80:
            a += 2
        elif n & 0x80:
            fuera += bytes(H.lee(a + i, s) for i in range(n & 0x7F))
            a += n & 0x7F
        else:
            fuera += bytes([H.lee(a, s)]) * n
            a += 1


def cosas():
    """Los patrones de las 41 cosas de p07:6173."""
    fuera = []
    for k in range(41):
        e = 0x6173 + 6 * k
        tipo, src = H.lee(e + 1, (7, 8, 9)), H.palabra(e + 2, (7, 8, 9))
        n = H.palabra(e + 4, (7, 8, 9))
        if tipo == 0:
            datos = rle(src, (7, 8, 9))
        elif tipo == 1:
            datos = b""
        else:
            datos = bytes(H.lee(src + i, (7, 8, 9)) for i in range(n))
        fuera.append(datos)
    return fuera


# (tiras que se leen seguidas, ancho y alto en sprites de 16x16) por figura
FIGURAS_HUERFANAS = [((0, 1, 2), 2, 2), ((3, 4, 5, 6, 7, 12), 2, 2),
                     ((8, 9), 2, 2), ((10, 11), 2, 2),
                     ((13, 14, 15), 2, 3), ((16, 17), 1, 2)]
TIRAS_HUERFANAS = (0x7457, 18)
CRUDO_HUERFANO = (0x82B3, 768, 2, 3)      # direccion, bytes, ancho y alto


def huerfanas():
    """Las 18 tiras abiertas, cada una hasta su 0."""
    a, n = TIRAS_HUERFANAS
    tiras = []
    for _ in range(n):
        tiras.append(rle(a, (7, 8, 9)))
        while True:                                   # hasta el 0 que la acaba
            v = H.lee(a, (7, 8, 9))
            a += 1
            if v == 0:
                break
            a += 2 if v == 0x80 else (v & 0x7F) if v & 0x80 else 1
    return tiras, a


def crudo_huerfano():
    a, n, _, _ = CRUDO_HUERFANO
    return bytes(H.lee(a + i, (7, 8, 9)) for i in range(n))


def lamina_huerfanas(ruta, esc=4):
    c1, c2, c12 = (225, 215, 190), (200, 70, 40), (60, 25, 20)
    tiras, _ = huerfanas()
    grupos = []
    for ks, w, h in FIGURAS_HUERFANAS:
        datos = b"".join(tiras[k] for k in ks)
        grupos.append([(datos[i:i + 64 * w * h], w, h)
                       for i in range(0, len(datos), 64 * w * h)])
    a, n, w, h = CRUDO_HUERFANO
    datos = crudo_huerfano()
    grupos.append([(datos[i:i + 64 * w * h], w, h) for i in range(0, n, 64 * w * h)])
    sep, fondo, caja = 12, (24, 24, 32), (36, 36, 48)
    ancho = max(sum(w * 16 * esc + sep for _, w, _ in g) for g in grupos) + sep
    altos = [max(h for _, _, h in g) * 16 * esc + sep for g in grupos]
    alto = sum(altos) + sep
    pix = bytearray(bytes(fondo) * ancho * alto)

    def punto(x, y, rgb):
        for dy in range(esc):
            o = ((y + dy) * ancho + x) * 3
            pix[o:o + 3 * esc] = bytes(rgb) * esc
    oy = sep
    for g, alto_g in zip(grupos, altos):
        ox = sep
        for datos, w, h in g:
            for y in range(h * 16):
                for x in range(w * 16):
                    punto(ox + x * esc, oy + y * esc, caja)
            for s in range(w * h):
                qx, qy = s // h, s % h                # por columnas
                a = patron_16(datos[64 * s:64 * s + 32])
                b = patron_16(datos[64 * s + 32:64 * s + 64])
                for j in range(16):
                    for i in range(16):
                        if a[j][i] or b[j][i]:
                            col = c12 if a[j][i] and b[j][i] else c1 if a[j][i] else c2
                            punto(ox + (qx * 16 + i) * esc, oy + (qy * 16 + j) * esc, col)
            ox += w * 16 * esc + sep
        oy += alto_g
    H.png(ruta, ancho, alto, pix)
    return len(tiras), sum(len(g) for g in grupos)


def main(argv):
    if argv[1] == "objetos":
        v = H.hoja_de_la_fase(0, 0)
        v.lista(0x63A3, 0x32 * 4)                     # p00:5582: los iconos
        pal = [H.rgb(p) for p in H.paleta(0, 0)]
        celdas = [objeto(v, k) for k in range(1, N_OBJETOS + 1)]
        lamina(celdas, pal, argv[2], 11, 16)
    elif argv[1] == "gao":
        # la mitad de arriba es el puntero de 0xF800 y la de abajo el de
        # 0xF840; cada una, dos patrones que se ponen uno encima de otro con
        # los colores 13 y 14 y la mezcla OR del V9938 (13 | 14 = 15): son
        # los colores que se miden en openMSX en los dos sprites de Gao
        pal = [H.rgb(p) for p in H.paleta(0, 0)]
        celdas = []
        for p0, p1 in gao():
            celda = []
            for p in (p0, p1):
                a, b = patron_16(p[0:32]), patron_16(p[32:64])
                celda += [[((13 if x else 0) | (14 if y else 0)) if (x or y) else None
                           for x, y in zip(fa, fb)] for fa, fb in zip(a, b)]
            celdas.append(celda)
        lamina(celdas, pal, argv[2], 10, 32, esc=4)
    elif argv[1] == "cosas":
        # dos patrones seguidos son las dos capas de un sprite (como los de
        # Gao); el color lo pone cada bicho, asi que aqui van en dos tonos
        c1, c2, c12 = (225, 215, 190), (200, 70, 40), (60, 25, 20)
        celdas = []
        for datos in cosas():
            for k in range(len(datos) // 64):
                a = patron_16(datos[64 * k:64 * k + 32])
                b = patron_16(datos[64 * k + 32:64 * k + 64])
                celdas.append([[(c12 if x and y else c1 if x else c2 if y else None)
                                for x, y in zip(fa, fb)] for fa, fb in zip(a, b)])
        lamina(celdas, [], argv[2], 16, 16, esc=3)
        print("%d sprites de 16x16 a dos capas" % len(celdas))
    elif argv[1] == "huerfanas":
        n, f = lamina_huerfanas(argv[2])
        print("%d tiras y un trozo sin comprimir, %d dibujos en %d figuras"
              % (n, f, len(FIGURAS_HUERFANAS) + 1))
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
