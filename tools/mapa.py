#!/usr/bin/env python3
"""Los mapas de las areas, dibujados desde las tablas del cartucho.

Cada fase (0xC481 = 1..6) tiene tres areas una al lado de otra -0xC483 = 0,
1, 2: la columna; se pasa de una a otra saliendo por el borde (p01:6522)- y
un area aparte, la 3. El numero de area es 0xC480 = 3*(fase-1) + columna, o
18 + fase - 1 para la cuarta (tabla de p01:660B: [fase][juego de dibujos]
[columna] por area).

Lo que lee el cartucho (p00:5900, con los bancos 10-11-12 de p00:542A):

  0xC300  el MAPA: palabra de p00:597B + 2*area. Un byte por fila de 32
          puntos, que es el numero de una SUPERFILA. Se lee con el contador
          de filas de 8 puntos 0xC302, que SUBE al avanzar (p00:57B8): el
          byte es mapa[0xC302 / 4]. Los bytes 0xFC-0xFF son ordenes
          (p00:57BF): 0xFF salta (0xC302 = la palabra que sigue), 0xFC para
          el avance; 0xFD y 0xFE dependen de lo que se lleve (p00:5836).
  0xC306  las SUPERFILAS: palabra de p00:594B + 2*area, 8 bytes cada una, un
          bloque por cada 32 puntos de ancho.
  0xC304  los BLOQUES: palabra de p00:593B + 2*juego (0xC482), 16 bytes
          cada uno, 4x4 dibujos; la fila de dibujos de arriba es la ULTIMA
          (p00:5A03: (0xC302 & 3) xor 3).

El dibujo t de la hoja (tools/hoja.py) se copia tal cual (p00:5024: HMMM de
la pagina 1 a la 0).

Uso: mapa.py <area> [salida.png]
     mapa.py coteja <volcado.ram> <volcado.vram>
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import hoja as H                                              # noqa: E402

B101112 = (10, 11, 12)
N_AREAS = 24


def datos_del_area(area):
    """(fase C481, juego C482, columna C483) de p01:660B."""
    a = 0x660B + 3 * area
    return (H.lee(a, (1, 2, 3)), H.lee(a + 1, (1, 2, 3)),
            H.lee(a + 2, (1, 2, 3)))


def punteros(area, juego):
    mapa = H.palabra(0x597B + 2 * area, B101112)
    superfilas = H.palabra(0x594B + 2 * area, B101112)
    bloques = H.palabra(0x593B + 2 * juego, B101112)
    return mapa, superfilas, bloques


def recorrido(area):
    """Las superfilas del area de abajo arriba, como las lee p00:57BF,
    hasta que el mapa vuelve a empezar (0xFF) o se para (0xFC)."""
    fase, juego, col = datos_del_area(area)
    mapa, _, _ = punteros(area, juego)
    fuera, i = [], 0
    while True:
        v = H.lee(mapa + i, B101112)
        if v == 0xFF:
            return fuera, "vuelve a la fila %d" % H.palabra(mapa + i + 1, B101112)
        if v == 0xFC:
            return fuera, "se para"
        if v >= 0xE0:
            return fuera, "orden %02X" % v
        fuera.append(v)
        i += 1


def fila_de_dibujos(area, sf, sub):
    """Los 32 dibujos de la fila `sub` (0 = la de arriba) de la superfila sf."""
    fase, juego, col = datos_del_area(area)
    _, superfilas, bloques = punteros(area, juego)
    fila = []
    for k in range(8):
        b = H.lee(superfilas + 8 * sf + k, B101112)
        base = bloques + 16 * b + 4 * sub
        fila += [H.lee(base + i, B101112) for i in range(4)]
    return fila


def dibujos_del_area(area):
    """Las filas de dibujos del area, de ARRIBA abajo."""
    sfs, _ = recorrido(area)
    filas = []
    for sf in reversed(sfs):
        for sub in range(4):
            filas.append(fila_de_dibujos(area, sf, 3 - sub))
    return filas


def pinta(area, ruta):
    fase, juego, col = datos_del_area(area)
    v = H.hoja_de_la_fase(juego, col)
    pal = [H.rgb(p) for p in H.paleta(juego, area)]
    filas = dibujos_del_area(area)
    alto = 8 * len(filas)
    pix = bytearray(256 * alto * 3)
    for fy, fila in enumerate(filas):
        for fx, t in enumerate(fila):
            sx, sy = (t & 31) * 8, (t >> 5) * 8
            for y in range(8):
                a = 0x8000 + (sy + y) * 128 + sx // 2
                o = ((fy * 8 + y) * 256 + fx * 8) * 3
                for i in range(4):
                    c = v.m[a + i]
                    pix[o + 6 * i:o + 6 * i + 3] = bytes(pal[c >> 4])
                    pix[o + 6 * i + 3:o + 6 * i + 6] = bytes(pal[c & 15])
    H.png(ruta, 256, alto, pix)
    return alto


def coteja(ram, vram):
    """La tabla de dibujos de la pantalla (0xE000, 32x32, la escribe
    p00:5A1D fila a fila) contra el mapa, en el area del volcado."""
    r = open(ram, "rb").read()
    area, fase, juego, col = r[0x480], r[0x481], r[0x482], r[0x483]
    fila0 = r[0x302] | (r[0x303] << 8)
    buf = r[0x2000:0x2400]
    sfs, _ = recorrido(area)
    n = len(sfs)
    bien = mal = 0
    for k in range(32):
        # la fila de dibujos 0xC302 - k esta en el buffer 0xC30C + 0x20*k
        # (p00:59C2); aqui se busca en todo el buffer, fila a fila
        f = fila0 - k
        sf = sfs[(f >> 2) % n]
        esperada = fila_de_dibujos(area, sf, 3 - (f & 3))
        if any(bytes(esperada) == buf[32 * j:32 * j + 32] for j in range(32)):
            bien += 1
        else:
            mal += 1
    print("area %d (fase %d, juego %d, columna %d), fila 0x%04X: %d filas "
          "del mapa estan en la pantalla, %d no" % (area, fase, juego, col,
                                                    fila0, bien, mal))
    # y los puntos: cada casilla de 8x8 de la pagina 0 contra el dibujo que
    # dice el buffer, sacado de NUESTRA hoja
    v = H.hoja_de_la_fase(juego, col)
    d = open(vram, "rb").read()
    igual = 0
    for f in range(32):
        for c in range(32):
            t = buf[32 * f + c]
            sx, sy = (t & 31) * 8, (t >> 5) * 8
            if all(d[(8 * f + j) * 128 + 4 * c:(8 * f + j) * 128 + 4 * c + 4] ==
                   v.m[0x8000 + (sy + j) * 128 + sx // 2:0x8000 + (sy + j) * 128 + sx // 2 + 4]
                   for j in range(8)):
                igual += 1
    print("  casillas de la pagina 0 identicas al dibujo de la hoja: %d de 1024" % igual)
    return mal


def main(argv):
    if argv[1] == "coteja":
        sys.exit(1 if coteja(argv[2], argv[3]) else 0)
    area = int(argv[1], 0)
    sfs, fin = recorrido(area)
    print("area %d %s: %d superfilas (%s)" % (area, datos_del_area(area), len(sfs), fin))
    if len(argv) > 2:
        pinta(area, argv[2])


if __name__ == "__main__":
    main(sys.argv)
