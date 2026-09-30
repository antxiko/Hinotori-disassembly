#!/usr/bin/env python3
"""Un trozo del listado en compacto: etiquetas y una instruccion por celda.

Para leer codigo deprisa sin abrir el .asm: salen las instrucciones entre dos
direcciones de un banco, con sus etiquetas y comentarios, en N columnas.

Uso: ve.py <banco> <desde> <hasta> [columnas]
"""
import os
import re
import sys

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def main(argv):
    b, a, f = int(argv[1]), int(argv[2], 16), int(argv[3], 16)
    cols = int(argv[4]) if len(argv) > 4 else 3
    ruta = os.path.join(RAIZ, "src", "hinotori_p%02d.asm" % b)
    celdas, etiqueta = [], None
    for ln in open(ruta, encoding="utf-8"):
        m = re.match(r"([A-Za-z_][\w]*):", ln)
        if m:
            etiqueta = m.group(1)
            continue
        m = re.match(r"\t([a-z][^\t;]*)\t+;([0-9a-f]{4})(.*)", ln)
        if not m:
            continue
        d = int(m.group(2), 16)
        if not a <= d < f:
            etiqueta = None
            continue
        txt = "%04X %s" % (d, m.group(1).strip())
        com = m.group(3).strip().lstrip(";").strip()
        if etiqueta:
            celdas.append("[%s]" % etiqueta)
            etiqueta = None
        celdas.append(txt + ("  ; " + com[:40] if com else ""))
    ancho = max(len(c) for c in celdas) + 2 if celdas else 0
    ancho = min(ancho, 46)
    for i in range(0, len(celdas), cols):
        print("".join(c[:ancho - 1].ljust(ancho) for c in celdas[i:i + cols]))


if __name__ == "__main__":
    main(sys.argv)
