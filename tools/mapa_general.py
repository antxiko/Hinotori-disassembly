#!/usr/bin/env python3
"""El mapa de todo el juego: las seis fases, sus salas y las puertas que las unen.

Todo sale de las tablas del cartucho:
  - cada area se dibuja con tools/mapa.py (tools/laminas.py las junta);
  - las PUERTAS son cosas del camino (listas de p09:A130 por area, 3 bytes:
    [fila lo][fila hi + 4*tipo][dato]): el tipo 4 (p02:81E8) es el torii
    que lleva a la sala de la fase y el tipo 5 (p02:81AA), la salida de la
    sala. Las dos guardan el dato en ix+0x14, y cuando Gao entra
    (p02:80CE, p02:8119) p01:607C lee la puerta de p09:A269 + 6*dato:
    [area][fila lo][fila hi][y][x][?] y el juego se va alli;
  - la x de la puerta es p02:827E[dato] (p02:8262); la fila es la de la
    lista, que cuenta desde abajo (el contador 0xC302 sube al avanzar);
  - por los lados, las tres columnas de una fase dan la vuelta (p01:653A:
    de la 2 se pasa a la 0 y al reves) y por arriba el mapa vuelve a
    empezar (0xFF de p00:57BF).

Uso: mapa_general.py <dir>   (escribe mapa.png y fase1..6.png con las puertas)
"""
import os
import sys

from PIL import Image, ImageDraw

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import hoja as H                                              # noqa: E402
import mapa as M                                              # noqa: E402
import laminas as L                                           # noqa: E402

B129, B123 = (1, 2, 9), (1, 2, 3)
PUERTA_SALA, PUERTA_SALIDA = 4, 5


def puertas():
    """[(area, fila, x, tipo, n, area_destino, fila_destino)]"""
    fuera = []
    for area in range(M.N_AREAS):
        a = H.palabra(0xA130 + 2 * area, B129)
        while True:
            e, d, dato = H.lee(a, B129), H.lee(a + 1, B129), H.lee(a + 2, B129)
            if e == 0xFF and d == 0xFF:
                break
            tipo = (d >> 2) & 0x3F
            if tipo in (PUERTA_SALA, PUERTA_SALIDA):
                fila = ((d & 1) << 8) | e
                x = H.lee(0x827E + 2 * dato + 1, B123)
                r = 0xA269 + 6 * dato
                fuera.append((area, fila, x, tipo, dato, H.lee(r, B129),
                              H.palabra(r + 1, B129)))
            a += 3
    return fuera


def nombre_area(area):
    fase, juego, col = M.datos_del_area(area)
    return "SALA %d" % fase if col == 3 else "FASE %d" % fase


def imagen_area(area):
    pix = L.pixeles(area)
    im = Image.new("RGB", (256, len(pix)))
    im.putdata([c for fila in pix for c in fila])
    return im


def lamina_fase(f, ps):
    """La fase f (1-6): tres columnas, la sala al lado, puertas marcadas."""
    cols = [imagen_area(3 * (f - 1) + c) for c in range(3)]
    sala = imagen_area(18 + f - 1)
    alto = cols[0].height
    sep = 24
    im = Image.new("RGB", (256 * 3 + sep + 256, alto), (20, 20, 26))
    for c, ic in enumerate(cols):
        im.paste(ic, (256 * c, 0))
    y0 = alto - sala.height
    im.paste(sala, (768 + sep, y0))
    dib = ImageDraw.Draw(im)
    for area, fila, x, tipo, n, dest, fdest in ps:
        fase, juego, col = M.datos_del_area(area)
        if fase != f:
            continue
        filas = 4 * len(M.recorrido(area)[0])
        ox = 256 * col if col < 3 else 768 + sep
        oy = 0 if col < 3 else y0
        y = oy + (filas - 1 - fila) * 8
        caja = (ox + x - 14, y - 10, ox + x + 34, y + 40)
        dib.rectangle(caja, outline=(255, 230, 40), width=3)
        dib.text((caja[0], caja[3] + 3), "-> " + nombre_area(dest), fill=(255, 230, 40))
    # la entrada de la fase: columna 1, fila 0x1F (p01:65CF), abajo
    dib.rectangle((256 + 0x80 - 12, alto - 0x1F * 8 - 16, 256 + 0x80 + 12, alto - 0x1F * 8 + 8),
                  outline=(90, 220, 255), width=3)
    return im


def main(argv):
    dst = argv[1]
    ps = puertas()
    for p in ps:
        print("%-7s fila 0x%03X x 0x%02X  puerta %2d -> %s (area %d, fila 0x%02X)"
              % (nombre_area(p[0]), p[1], p[2], p[4], nombre_area(p[5]), p[5], p[6]))
    laminas = []
    for f in range(1, 7):
        im = lamina_fase(f, ps)
        im.quantize(colors=128).save(os.path.join(dst, "fase%d.png" % f), optimize=True)
        laminas.append(im)
    # el conjunto, en el orden del juego, a la mitad
    esc = 2
    w, h = laminas[0].width // esc, laminas[0].height // esc
    margen, cab = 40, 36
    lineas = []
    for f in range(1, 7):
        sala = [q for q in ps if q[0] == 18 + f - 1]
        ida = [q for q in ps if M.datos_del_area(q[0])[0] == f and q[0] < 18]
        lineas.append("FASE %d  --torii (columna %d, fila 0x%02X)-->  SALA %d  --> %s"
                      % (f, M.datos_del_area(ida[0][0])[2], ida[0][1], f,
                         " o ".join(nombre_area(q[5]) for q in sala)))
    pie = 16 * len(lineas) + margen
    general = Image.new("RGB", (3 * w + 4 * margen, 2 * (h + cab) + 3 * margen + pie), (14, 14, 18))
    dib = ImageDraw.Draw(general)
    for i, t in enumerate(lineas):
        dib.text((margen, 2 * (h + cab) + 3 * margen + 16 * i), t, fill=(255, 230, 40))
    for i, im in enumerate(laminas):
        x = margen + (i % 3) * (w + margen)
        y = margen + (i // 3) * (h + cab + margen)
        dib.text((x, y), "FASE %d  (columnas 0, 1, 2 y su sala)" % (i + 1), fill=(240, 240, 240))
        general.paste(im.resize((w, h)), (x, y + cab))
    general.quantize(colors=128).save(os.path.join(dst, "mapa.png"), optimize=True)
    print("mapa.png: %dx%d" % general.size)


if __name__ == "__main__":
    main(sys.argv)
