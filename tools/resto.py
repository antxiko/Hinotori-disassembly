#!/usr/bin/env python3
"""Lo que queda sin explicar tras bloques.py, clasificado por la prueba que lo sostiene.

Para cada tramo sin explicar (tools/presupuesto.py) se busca, por este orden:

  1. una instruccion TRAZADA con un inmediato de 16 bits que caiga dentro
     del tramo (ld hl/de/bc/ix/iy,nn; ld a,(nn); ld hl,(nn)...) y que se
     ejecute con el banco del tramo puesto: es una tabla que lee ESA rutina;
  2. lecturas medidas en openMSX (tools/omsx_lecturas.tcl, work/omsx/): la
     rutina que lo leyo en la partida;
  3. si se desensambla como codigo que acaba en ret/jp/jr y ninguna
     palabra del cartucho apunta a su principio: codigo que no llama nadie;
  4. si todo es 0x00 o 0xFF: relleno;
  5. si no: bytes sin lector conocido (ni puntero, ni lectura medida).

Lo que sale va a una seccion delimitada de src/pNN.notes (la reescribe esta
herramienta entera). Las explicaciones de detalle de cada tabla se escriben a
mano FUERA de la seccion; al hacerlo, el tramo sale de aqui solo.

Uso: resto.py [--escribe]
"""
import glob
import json
import os
import re
import subprocess
import sys
from collections import Counter, defaultdict

AQUI = os.path.dirname(os.path.abspath(__file__))
RAIZ = os.path.dirname(AQUI)
sys.path.insert(0, AQUI)

from bancos import traza_completa                                  # noqa: E402
from paginas import ORG, TAM_PAGINA, N_PAGINAS, nombre              # noqa: E402

ROM = open(os.path.join(RAIZ, "hinotori.rom"), "rb").read()
SRC = os.path.join(RAIZ, "src")
WORK = os.path.join(RAIZ, "work")
INI = "# --- RESTO (seccion que reescribe tools/resto.py; no editar a mano) ---"
FIN = "# --- fin del resto ---"

OPS16 = {0x01, 0x11, 0x21, 0x31, 0x2A, 0x3A}          # ld (nn),a y ld (nn),hl escriben: en la ROM, solo al mapper


def sin_explicar():
    out = subprocess.run([sys.executable, os.path.join(AQUI, "presupuesto.py"), WORK, SRC],
                         capture_output=True, text=True).stdout
    for ln in out.splitlines():
        m = re.match(r"\s+p(\d+) 0x(\w+)\.\.0x(\w+)\s+\((\d+)", ln)
        if m:
            yield int(m[1]), int(m[2], 16), int(m[3], 16) + 1


def lecturas():
    reads = defaultdict(dict)
    for f in glob.glob(os.path.join(WORK, "omsx", "f0*.txt")):
        for ln in open(f):
            p = ln.split()
            if len(p) < 4:
                continue
            b, a, pb, pc = int(p[0]), int(p[1], 16), int(p[2]), int(p[3], 16)
            if pb == b and 0 <= a - pc < 4:
                continue
            reads[b].setdefault(a, "%s:%04X" % (nombre(pb) if pb >= 0 else "bios", pc))
    return reads


def lectores_estaticos(t):
    """{(banco del dato, direccion): ["pNN:PC", ...]}"""
    fuera = defaultdict(list)
    for (b, pc) in t.arranques:
        o = b * TAM_PAGINA + (pc - ORG[b])
        if (pc - ORG[b]) + 4 > TAM_PAGINA:
            continue
        op = ROM[o]
        if op in OPS16:
            w = ROM[o + 1] | (ROM[o + 2] << 8)
        elif op == 0xED and ROM[o + 1] in (0x4B, 0x5B, 0x7B, 0x43, 0x53, 0x73):
            w = ROM[o + 2] | (ROM[o + 3] << 8)
        elif op in (0xDD, 0xFD) and ROM[o + 1] in (0x21, 0x2A, 0x22):
            w = ROM[o + 2] | (ROM[o + 3] << 8)
        else:
            continue
        if not 0x4000 <= w < 0xC000:
            continue
        for s in t.config_de[(b, pc)]:
            db = 0 if w < 0x6000 else s[(w - 0x6000) >> 13]
            fuera[(db, w)].append("%s:%04X" % (nombre(b), pc))
    return fuera


def es_codigo(b, a, f):
    o = b * TAM_PAGINA + (a - ORG[b])
    open(os.path.join(WORK, "_r.bin"), "wb").write(ROM[o:o + (f - a)])
    txt = subprocess.run(["z80dasm", "-g", hex(a), os.path.join(WORK, "_r.bin")],
                         capture_output=True, text=True).stdout
    ins = [ln.strip() for ln in txt.splitlines()
           if ln.strip() and not ln.startswith(";") and "org" not in ln]
    if not ins or any(i.startswith("defb") for i in ins):
        return None
    if not re.match(r"(ret|jp|jr|reti)\b", ins[-1]):
        return None
    return ins


def apuntado(a):
    return ROM.find(bytes([a & 0xFF, a >> 8])) >= 0


def clasifica(t):
    est = lectores_estaticos(t)
    reads = lecturas()
    fuera = defaultdict(list)
    for b, a, f in sin_explicar():
        trozo = ROM[b * TAM_PAGINA + (a - ORG[b]):b * TAM_PAGINA + (f - ORG[b])]
        quien = sorted({q for x in range(a, f) for q in est.get((b, x), [])})
        if quien:
            txt = "tabla que lee %s" % ", ".join(quien[:6])
            nom = "tabla_%04X" % a
        else:
            c = Counter(reads[b][x] for x in range(a, f) if x in reads[b])
            if c:
                txt = "lo leen en la partida medida en openMSX %s" % ", ".join(
                    "%s (%d bytes)" % (q, n) for q, n in c.most_common(4))
                nom = "leido_%04X" % a
            elif set(trozo) <= {0x00} or set(trozo) <= {0xFF}:
                txt = "relleno de 0x%02X: nadie lo lee" % trozo[0]
                nom = "relleno_%04X" % a
            else:
                ins = es_codigo(b, a, f)
                if ins and not apuntado(a):
                    txt = "codigo que no llama nadie (ninguna palabra del cartucho vale 0x%04X): %s" % (
                        a, " / ".join(ins[:4]) + (" ..." if len(ins) > 4 else ""))
                    nom = "sin_llamar_%04X" % a
                else:
                    txt = "bytes sin lector conocido: ninguna instruccion trazada los apunta y la sonda de openMSX no los lee"
                    nom = "sin_lector_%04X" % a
        fuera[b].append("D 0x%04X 0x%04X %s  %s (%d bytes)" % (a, f, nom, txt, f - a))
    return fuera


def escribe(p, lineas):
    ruta = os.path.join(SRC, nombre(p) + ".notes")
    viejas = open(ruta, encoding="utf-8").read().split("\n") if os.path.exists(ruta) else []
    nuevas, dentro = [], False
    for ln in viejas:
        if ln.startswith(INI):
            dentro = True
            continue
        if ln.startswith(FIN):
            dentro = False
            continue
        if not dentro:
            nuevas.append(ln)
    while nuevas and not nuevas[-1].strip():
        nuevas.pop()
    if lineas:
        nuevas += ["", INI] + lineas + [FIN]
    open(ruta, "w", encoding="utf-8", newline="\n").write("\n".join(nuevas).rstrip("\n") + "\n")


def main(argv):
    if "--escribe" in argv:
        for p in range(N_PAGINAS):          # primero se quita la seccion vieja
            escribe(p, [])
        subprocess.run(["make", "listado"], cwd=RAIZ, capture_output=True)
    t, _ = traza_completa(ROM, SRC)
    cl = clasifica(t)
    n = Counter()
    for p in range(N_PAGINAS):
        for ln in cl.get(p, []):
            n[ln.split()[3].rsplit("_", 1)[0]] += int(ln.rsplit("(", 1)[1].split()[0])
        if "--escribe" in argv:
            escribe(p, cl.get(p, []))
    for k, v in n.most_common():
        print("%-12s %6d bytes" % (k, v))


if __name__ == "__main__":
    main(sys.argv[1:])
