#!/usr/bin/env python3
"""La VRAM del V9938 en SCREEN 5 y las primitivas del banco 0 que la escriben.

No se ejecuta el cartucho: se leen sus tablas y se hace lo que hace cada
rutina, con codigo nuestro. 128 KB, 128 bytes por linea, dos puntos por byte
(nibble alto a la izquierda); la pagina p empieza en la linea 256*p.

  letras    p00:4867  B letras de 1 bit (8 bytes cada una, de HL) en color C;
                      cada una la expande p00:48E5 y la deja en la PAGINA 1 en
                      (D, E); la siguiente va 8 puntos a la derecha y, al dar
                      la vuelta la x, 8 mas abajo (p00:49CE).
  dibujos   p00:48A6  B dibujos de 8x8 a 4 bits (32 bytes) en la direccion de
                      VRAM DE; 4 bytes a la derecha cada uno y, al llegar a
                      0x80, una fila de dibujos mas abajo.
  hmmm      p00:47D7  copia BxC puntos de (H, L) a (D, E); A lleva la pagina
                      de origen en los bits 0-1 y la de destino en los 2-3.
  lmmm      p00:481B  lo mismo con operacion logica: A = origen en los bits
                      6-7, destino en 4-5 y la operacion en 0-3 (8 = TIMP: el
                      color 0 no pinta).
  hmmv      p00:479B  rellena BxC puntos en (H, L) de la pagina D con A.
  dibujo    p00:49C0  el numero de dibujo t de la hoja: x = (t & 31)*8,
                      y = (t >> 5)*8 (en la pagina que diga la copia).
"""


class VRAM:
    def __init__(self):
        self.m = bytearray(0x20000)

    # -- puntos
    def lee(self, x, y):
        b = self.m[(y * 128 + (x >> 1)) & 0x1FFFF]
        return b >> 4 if not x & 1 else b & 0x0F

    def pon(self, x, y, c):
        i = (y * 128 + (x >> 1)) & 0x1FFFF
        b = self.m[i]
        self.m[i] = ((c << 4) | (b & 0x0F)) if not x & 1 else ((b & 0xF0) | c)

    # -- p00:48E5 + p00:4891: una letra de 1 bit
    def letra(self, bits8, color, x, y):
        for f, b in enumerate(bits8):
            for i in range(8):
                self.pon(x + i, 256 + y + f, color if b & (0x80 >> i) else 0)

    def letras(self, fuente, n, color, x, y):
        """p00:4867. fuente: 8*n bytes."""
        for k in range(n):
            self.letra(fuente[8 * k:8 * k + 8], color, x, y)
            x = (x + 8) & 0xFF                 # p00:49CE
            if x == 0:
                y = (y + 8) & 0xFF

    # -- p00:48A6: dibujos de 8x8 a 4 bits
    def dibujos(self, datos, n, de):
        d, e = de >> 8, de & 0xFF
        for k in range(n):
            base = (d << 8) | e
            for f in range(8):
                for c in range(4):
                    self.m[(base + f * 0x80 + c) & 0x1FFFF] = datos[32 * k + 4 * f + c]
            e += 4
            if e == 0x80:
                e = 0
                d += 4

    # -- copias del VDP
    def hmmm(self, sx, sy, dx, dy, w, h, a):
        ps, pd = a & 3, (a >> 2) & 3
        tmp = [[self.lee(sx + i, ps * 256 + sy + j) for i in range(w)] for j in range(h)]
        for j in range(h):
            for i in range(w):
                self.pon(dx + i, pd * 256 + dy + j, tmp[j][i])

    def lmmm(self, sx, sy, dx, dy, w, h, a):
        ps, pd, op = (a >> 6) & 3, (a >> 4) & 3, a & 0x0F
        for j in range(h):
            for i in range(w):
                c = self.lee(sx + i, ps * 256 + sy + j)
                if op == 8 and c == 0:
                    continue
                self.pon(dx + i, pd * 256 + dy + j, c)

    def hmmv(self, x, y, w, h, pagina, color):
        for j in range(h):
            for i in range(w or 256):
                self.pon(x + i, pagina * 256 + y + j, color)

    @staticmethod
    def de_dibujo(t):
        """p00:49C0: (x, y) del dibujo t en la hoja."""
        return (t & 0x1F) * 8, (t & 0xE0) >> 2

    def region(self, x, y, w, h, pagina=0):
        return [[self.lee(x + i, pagina * 256 + y + j) for i in range(w)] for j in range(h)]
