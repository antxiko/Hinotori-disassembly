#!/usr/bin/env python3
"""Las laminas de las seis fases: las tres columnas del camino una al lado de
otra (de arriba abajo, como las lee p00:57BF) y, aparte, la sala de la fase
(la cuarta area). Cada area la dibuja tools/mapa.py desde sus tablas.

Uso: laminas.py <dir>
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import hoja as H                                              # noqa: E402
import mapa as M                                              # noqa: E402


def pixeles(area):
    fase, juego, col = M.datos_del_area(area)
    v = H.hoja_de_la_fase(juego, col)
    pal = [H.rgb(p) for p in H.paleta(juego, area)]
    filas = M.dibujos_del_area(area)
    alto = 8 * len(filas)
    pix = [[None] * 256 for _ in range(alto)]
    for fy, fila in enumerate(filas):
        for fx, t in enumerate(fila):
            sx, sy = (t & 31) * 8, (t >> 5) * 8
            for y in range(8):
                a = 0x8000 + (sy + y) * 128 + sx // 2
                for i in range(4):
                    c = v.m[a + i]
                    pix[fy * 8 + y][fx * 8 + 2 * i] = pal[c >> 4]
                    pix[fy * 8 + y][fx * 8 + 2 * i + 1] = pal[c & 15]
    return pix


def main(argv):
    dst = argv[1]
    sep, fondo = 24, (20, 20, 26)
    for f in range(6):
        cols = [pixeles(3 * f + c) for c in range(3)]
        sala = pixeles(18 + f)
        alto = len(cols[0])
        ancho = 256 * 3 + sep + 256
        pix = bytearray(bytes(fondo) * ancho * alto)
        for c, img in enumerate(cols):
            for y, fila in enumerate(img):
                for x, rgb in enumerate(fila):
                    o = (y * ancho + 256 * c + x) * 3
                    pix[o:o + 3] = bytes(rgb)
        y0 = alto - len(sala)
        for y, fila in enumerate(sala):
            for x, rgb in enumerate(fila):
                o = ((y0 + y) * ancho + 768 + sep + x) * 3
                pix[o:o + 3] = bytes(rgb)
        H.png(os.path.join(dst, "fase%d.png" % (f + 1)), ancho, alto, pix)
        print("fase %d: %dx%d" % (f + 1, ancho, alto))


if __name__ == "__main__":
    main(sys.argv)
