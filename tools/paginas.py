#!/usr/bin/env python3
"""La regla banco -> direccion del MegaROM, compartida por todas las herramientas.

Hinotori es un cartucho de 128 KB con el mapper Konami
SIN SCC (Konami4): 16 bancos de 8 KB. El banco de 0x4000-0x5FFF es FIJO -no hay
registro para el- y los otros tres se eligen escribiendo el numero de banco en
0x6000 (para 0x6000-0x7FFF), 0x8000 (para 0x8000-0x9FFF) y 0xA000 (para
0xA000-0xBFFF).

Lo que dice la ROM (tools/reconocimiento.py lo vuelve a medir cada vez):
  - NO hay ni una escritura a 0x5000, 0x7000, 0x9000 ni 0xB000, que son los
    registros del OTRO mapper de Konami, el que lleva SCC. Por eso este es
    Konami4 y no Konami5.
  - Los bancos se meten DE TRES EN TRES con una sola rutina, p00:42C6, que
    escribe A en 0x6000, A+1 en 0x8000 y A+2 en 0xA000 (y sus copias en
    0xF0F1..3). Tiene cinco puertas, una por trio: p00:42BC (1-2-3), 42C2
    (4-5-6), 42DE (7-8-9), 42E4 (10-11-12) y 42EA (13-14-15).
  - Las escrituras sueltas respetan el mismo reparto (p00:5F61 el banco 8 en
    0x8000, p00:5DA0 el 12 en 0xA000, el 9 y el 15 en 0xA000...).
  De ahi sale la tabla de abajo, que es "el resto de dividir entre tres":
        0x6000   bancos 1, 4, 7, 10, 13
        0x8000   bancos 2, 5, 8, 11, 14
        0xA000   bancos 3, 6, 9, 12, 15
  Cada banco tiene UNA sola direccion donde se ejecuta, y los 16 estan
  cubiertos. Si alguna vez aparece un banco mapeado en otra ranura, esta
  regla deja de valer para ESE banco y habra que partirlo en dos modulos.

Uso como programa:
    paginas.py org <n>               imprime el org del banco n
    paginas.py lista                 imprime "n org" para los 16
    paginas.py corta <rom> <dir>     escribe <dir>/pNN.bin con cada banco
"""
import os
import sys

TAM_PAGINA = 0x2000
N_PAGINAS = 16

# banco -> direccion de ejecucion. Medido, no supuesto: ver reconocimiento.py.
ORG = {0: 0x4000}
ORG.update({b: (0xA000, 0x6000, 0x8000)[b % 3] for b in range(1, 16)})

# Todos los bancos los selecciona alguien: aqui no hay ninguno huerfano.
NUNCA_MAPEADOS = ()


def org(p):
    """Direccion en la que se ejecuta el banco p."""
    return ORG[p]


def nombre(p):
    """Nombre del modulo del banco p: p00..p15."""
    return "p%02d" % p


def main(argv):
    if len(argv) < 2:
        sys.exit(__doc__)
    if argv[1] == "org":
        print("%#06x" % org(int(argv[2], 10)))
    elif argv[1] == "lista":
        for p in range(N_PAGINAS):
            print("%d %#06x" % (p, org(p)))
    elif argv[1] == "corta":
        rom, dst = argv[2], argv[3]
        d = open(rom, "rb").read()
        if len(d) != TAM_PAGINA * N_PAGINAS:
            sys.exit("la ROM mide %d bytes y no %d" % (len(d), TAM_PAGINA * N_PAGINAS))
        os.makedirs(dst, exist_ok=True)
        for p in range(N_PAGINAS):
            with open(os.path.join(dst, nombre(p) + ".bin"), "wb") as f:
                f.write(d[p * TAM_PAGINA:(p + 1) * TAM_PAGINA])
        print("16 bancos de %d bytes en %s/" % (TAM_PAGINA, dst))
    else:
        sys.exit(__doc__)


if __name__ == "__main__":
    main(sys.argv)
