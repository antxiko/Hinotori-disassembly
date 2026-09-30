#!/usr/bin/env python3
"""Declara los bloques de datos que el codigo LEE, recorriendolos como el cartucho.

Un rango de datos no se declara porque sobre: se declara porque hay una
instruccion que lo lee. Cada recorrido de abajo sigue a una rutina concreta
-la que se nombra en su docstring- y saca el principio y el final del bloque
de recorrer el formato como ella, o de la cuenta que le pasa quien la llama.
El banco al que cae cada puntero sale del trio de bancos que esa rutina pone.

Lo que sale se escribe, banco a banco, en una seccion delimitada de
src/pNN.notes que esta herramienta reescribe entera; lo de fuera no lo toca.
Un bloque que pise codigo trazado o una D escrita a mano NO se escribe: se
avisa, porque algo esta mal y hay que mirarlo.

Uso: bloques.py              informa de lo que encontraria
     bloques.py --escribe    y lo escribe en las notas
"""
import json
import os
import sys
from collections import defaultdict

AQUI = os.path.dirname(os.path.abspath(__file__))
RAIZ = os.path.dirname(AQUI)
sys.path.insert(0, AQUI)

from bancos import traza_completa                                  # noqa: E402
from paginas import ORG, TAM_PAGINA, N_PAGINAS, nombre              # noqa: E402
import hoja as H                                                    # noqa: E402
import mapa as M                                                    # noqa: E402

ROM = os.path.join(RAIZ, "hinotori.rom")
SRC = os.path.join(RAIZ, "src")
WORK = os.path.join(RAIZ, "work")

INI = "# --- BLOQUES QUE LEE EL CODIGO (seccion que reescribe tools/bloques.py; no editar a mano) ---"
FIN = "# --- fin de los bloques de bloques.py ---"

B123, B456, B789 = (1, 2, 3), (4, 5, 6), (7, 8, 9)
B101112, B131415 = (10, 11, 12), (13, 14, 15)


def banco_de(a, s):
    if 0x4000 <= a < 0x6000:
        return 0
    return s[(a - 0x6000) >> 13]


def trozos(s, a, f):
    """[a, f) de la ventana del Z80, partido por bancos: [(banco, ini, fin)]."""
    fuera = []
    while a < f:
        corte = min(f, (a & 0xE000) + TAM_PAGINA)
        fuera.append((banco_de(a, s), a, corte))
        a = corte
    return fuera


class Bloques:
    """{banco: {(ini, fin): {"nom", "que", "desde": set, "ancho"}}}"""

    def __init__(self):
        self.d = defaultdict(dict)
        self.avisos = []

    def anota(self, s, a, f, nom, que, quien, ancho=16):
        for b, i, j in trozos(s, a, f):
            e = self.d[b].setdefault((i, j), {"nom": nom if i == a else "%s_cola" % nom,
                                              "que": que, "desde": set(), "ancho": ancho})
            e["desde"].add(quien)
            if i != a:
                e["que"] = "%s (sigue del banco anterior, 0x%04X)" % (que, a)


# ------------------------------------------------------------------ la cabecera
def cabecera(t, bl):
    """0x4000: 'AB' e INIT (0x40B8). 0x4010: 'C', 'D' y una lista de
    direcciones de la RAM de este juego; ningun codigo de este cartucho la
    lee."""
    bl.anota(B123, 0x4000, 0x4010, "cabecera_ab",
             "la cabecera del cartucho: 'AB', INIT (0x40B8) y STATEMENT, DEVICE y TEXT a cero",
             "la BIOS")
    bl.anota(B123, 0x4010, 0x4048, "cabecera_de_konami",
             "'C', 0, 'D', 0, 3, 0, 0x15, 0... y las direcciones de la RAM del juego (0xC161 la fase, "
             "0xC160 las vidas, 0xC155 los puntos...): ningun codigo de este cartucho la lee; "
             "es para que la lea otro cartucho de Konami puesto al lado",
             "otro cartucho", ancho=8)


def tablas_del_despachador(t, bl):
    """Las tablas pegadas detras de cada `call 0x40AE` (tools/bancos.py)."""
    for (b, pc), (tab, n, dest, ss) in sorted(t.tablas.items()):
        if n:
            bl.anota(ss, tab, tab + 2 * n, "tabla_%04X" % tab,
                     "%d destinos del despachador de 0x%04X (call en %s:%04X): %s"
                     % (n, t.lector.get((b, pc), 0x40AE), nombre(b), pc,
                        ", ".join("0x%04X" % w for w in dest[:8]) + (" ..." if n > 8 else "")),
                     "%s:%04X" % (nombre(b), pc), ancho=2)


# ------------------------------------------------------------------ la hoja
FORMATOS = {0: ("4 bits", 32), 1: ("4 bits al reves", 32), 2: ("1 bit", 8),
            3: ("1 bit al reves", 8), 4: ("2 bits", 16), 5: ("2 bits al reves", 16),
            6: ("3 bits", 24), 7: ("3 bits al reves", 24)}

# Las listas de dibujos: (direccion con los bancos 4-5-6, base 0xC4B2, quien)
LISTAS_FIJAS = [
    (0x63F9, 0x36 * 4, "p00:5485"), (0x6423, 0x38 * 4, "p00:548D"),
    (0x6430, 0x2A * 4, "p00:5495"), (0x61E9, 5 * 32, "p00:54A2"),
    (0x6271, 0x80, "p00:54AF"), (0x63A3, 0x32 * 4, "p00:5582"),
    (0x638A, 4 * 32, "p00:558A"), (0x6371, 4 * 32, "p00:5592"),
    (0x632C, 4 * 32, "p00:559A"), (0x6443, 4 * 32, "p00:5A84"),
    (0x6458, 4 * 32, "p00:5A9B"), (0x6468, 4 * 32, "p00:5AB2"),
    (0x62D2, 4 * 32, "p02:82DB"), (0x62A5, 4 * 32, "p02:8449"),
]
N_JUEGOS = 8


def recorre_lista(a):
    """p00:54CC: [(ini, fin) de la lista, [(fuente, bytes, trio, formato, n, dibujo)]]"""
    ini, fuentes = a, []
    while True:
        n = H.lee(a, B456)
        a += 1
        if n == 0:
            return (ini, a), fuentes
        if n >= 0xFD:
            a += {0xFD: 4, 0xFE: 2, 0xFF: 1}[n]
            continue
        dib = H.lee(a, B456)
        fuente = H.palabra(a + 2, B456)
        tipo = H.lee(a + 4, B456)
        a += 5
        forma = tipo >> 5
        if forma >= 2:
            n = min(n, 0x40)
        fuentes.append((fuente, n * FORMATOS[forma][1], H.trio(tipo & 0x0F), forma, n, dib))


def listas_de_dibujos(t, bl):
    listas = [(a, b, q) for a, b, q in LISTAS_FIJAS]
    bl.anota(B456, 0x6000, 0x6000 + 2 * N_JUEGOS, "listas_de_cada_juego",
             "las listas de dibujos de cada juego (0xC482 = 0..7), una palabra cada una",
             "p00:54C0", ancho=2)
    for j in range(N_JUEGOS):
        listas.append((H.palabra(0x6000 + 2 * j, B456), 0x80, "p00:54C3 (juego %d)" % j))
    vistas = set()
    for a, base, quien in listas:
        if a in vistas:
            continue
        vistas.add(a)
        (i, f), fuentes = recorre_lista(a)
        bl.anota(B456, i, f, "lista_%04X" % a,
                 "lista de dibujos para la hoja (p00:54CC): [n][dibujo][propiedad][fuente][tipo], "
                 "0xFD-0xFF ponen colores, 0 acaba; %d entradas" % len(fuentes), quien, ancho=6)
        for fuente, nb, trio_, forma, n, dib in fuentes:
            bl.anota(trio_, fuente, fuente + nb, "dibujos_%04X" % fuente,
                     "%d dibujos de 8x8 a %s (%d bytes cada uno) que la lista de 0x%04X sube a "
                     "la hoja desde el %02X" % (n, FORMATOS[forma][0], FORMATOS[forma][1], a, dib),
                     "p00:54CC (lista 0x%04X)" % a, ancho=FORMATOS[forma][1] if FORMATOS[forma][1] <= 16 else 8)


def fin_paleta(a, s):
    while H.lee(a, s) != 0xFF:
        a += 3
    return a + 1


def paletas(t, bl):
    """p00:55A2: 0x9D58, la del juego (0x9D77 + 2*C482) y la del area
    (0x9E2C + 2*C480), bancos 4-5-6; p00:4D3F: [color][RB][G] ... 0xFF."""
    bl.anota(B456, 0x9D58, fin_paleta(0x9D58, B456), "paleta_comun",
             "la paleta comun a todas las fases: [color][RB][G] ... 0xFF (p00:4D3F)", "p00:55A5", ancho=3)
    bl.anota(B456, 0x9D77, 0x9D77 + 2 * N_JUEGOS, "paletas_de_cada_juego",
             "la paleta de cada juego de dibujos (0xC482), una palabra", "p00:55AE", ancho=2)
    bl.anota(B456, 0x9E2C, 0x9E2C + 2 * M.N_AREAS, "paletas_de_cada_area",
             "la paleta de cada area (0xC480), una palabra", "p00:55BA", ancho=2)
    for base, n, que, quien in ((0x9D77, N_JUEGOS, "juego", "p00:55B4"),
                                (0x9E2C, M.N_AREAS, "area", "p00:55C0")):
        for k in range(n):
            a = H.palabra(base + 2 * k, B456)
            bl.anota(B456, a, fin_paleta(a, B456), "paleta_%04X" % a,
                     "la paleta del %s %d (y de los que la comparten): [color][RB][G] ... 0xFF"
                     % (que, k), quien, ancho=3)


# ------------------------------------------------------------------ el mapa
def mapas(t, bl):
    """p00:5900 y p00:59E5, con los bancos 10-11-12."""
    bl.anota(B123, 0x593B, 0x593B + 2 * N_JUEGOS, "bloques_de_cada_juego",
             "donde empiezan los bloques de 4x4 dibujos de cada juego (0xC482)", "p00:5918", ancho=2)
    bl.anota(B123, 0x594B, 0x594B + 2 * M.N_AREAS, "superfilas_de_cada_area",
             "donde empiezan las superfilas (8 bloques) de cada area (0xC480)", "p00:590C", ancho=2)
    bl.anota(B123, 0x597B, 0x597B + 2 * M.N_AREAS, "mapa_de_cada_area",
             "el mapa de cada area (0xC480): una superfila por cada 32 puntos", "p00:5900", ancho=2)
    bl.anota(B123, 0x660B, 0x660B + 3 * M.N_AREAS, "fase_juego_columna",
             "por area (0xC480): la fase (0xC481), el juego de dibujos (0xC482) y la columna (0xC483)",
             "p01:65BF", ancho=3)
    usados = defaultdict(set)                     # juego -> bloques
    sf_max = defaultdict(int)                     # superfilas -> la mas alta
    for area in range(M.N_AREAS):
        fase, juego, col = M.datos_del_area(area)
        mapa, superfilas, bloques = M.punteros(area, juego)
        sfs, fin = M.recorrido(area)
        largo = len(sfs) + (3 if fin.startswith("vuelve") else 1)
        bl.anota(B101112, mapa, mapa + largo, "mapa_%04X" % mapa,
                 "el mapa de las areas que lo usan: %d superfilas de abajo arriba y %s "
                 "(0xFF + palabra: vuelve; 0xFC: se para) (p00:57BF)" % (len(sfs), fin),
                 "p00:59F3", ancho=16)
        sf_max[superfilas] = max(sf_max[superfilas], max(sfs) + 1)
        for sf in sfs:
            for k in range(8):
                usados[bloques].add(H.lee(superfilas + 8 * sf + k, B101112))
    for sfp, n in sf_max.items():
        bl.anota(B101112, sfp, sfp + 8 * n, "superfilas_%04X" % sfp,
                 "%d superfilas de 8 bloques de 32x32 puntos (p00:5A1D)" % n, "p00:5A20", ancho=8)
    for bp, bs in usados.items():
        n = max(bs) + 1
        bl.anota(B101112, bp, bp + 16 * n, "bloques_%04X" % bp,
                 "%d bloques de 4x4 dibujos; la fila de arriba es la ultima (p00:5A03)" % n,
                 "p00:5A2F", ancho=16)


# p01:706A copia 6 bytes de HL a la ficha (ix+0); p01:7073, 11 a ix+7;
# p01:7084 y p01:7080, 4 a ix+0x70 (y un 0 o un 3 detras).
COPIAS_A_LA_FICHA = {0x706A: (6, 0, "los 6 primeros bytes de la ficha del bicho (ix+0..5)"),
                     0x7073: (11, 7, "11 bytes de la ficha del bicho desde ix+7"),
                     0x7084: (4, 0x70, "4 bytes de la ficha desde ix+0x70 (y ix+0x74 = 0)"),
                     0x7080: (4, 0x70, "4 bytes de la ficha desde ix+0x70 (y ix+0x74 = 3)")}


def fichas(t, bl):
    """`ld hl,nn` seguido de `call` a una de COPIAS_A_LA_FICHA."""
    rom = open(ROM, "rb").read()
    for (b, pc) in sorted(t.arranques):
        o = b * TAM_PAGINA + (pc - ORG[b])
        if (pc - ORG[b]) + 6 > TAM_PAGINA or rom[o] != 0x21 or rom[o + 3] != 0xCD:
            continue
        dst = rom[o + 4] | (rom[o + 5] << 8)
        if dst not in COPIAS_A_LA_FICHA:
            continue
        nn = rom[o + 1] | (rom[o + 2] << 8)
        n, _, que = COPIAS_A_LA_FICHA[dst]
        for s in t.config_de[(b, pc)]:
            bl.anota(s, nn, nn + n, "ficha_%04X" % nn, que + " (p01:%04X)" % dst,
                     "%s:%04X" % (nombre(b), pc), ancho=n)
            break


def fin_rle(a, s):
    """p00:4A8D: n=0 acaba; 0x80 + palabra: otra direccion de VRAM; bit 7:
    n & 0x7F bytes tal cual; sin el: el byte siguiente, n veces."""
    while True:
        n = H.lee(a, s)
        a += 1
        if n == 0:
            return a
        if n == 0x80:
            a += 2
        elif n & 0x80:
            a += n & 0x7F
        else:
            a += 1


def banco_7(t, bl):
    """p00:4AB0 (listas a la VRAM, bancos 7-8-9), p00:5686 (lo de cada area)
    y p00:566E (0x70AE)."""
    for a0, quien in ((0x6030, "p00:564A"), (0x604C, "p06:AD68")):
        a = a0
        while True:
            k = H.lee(a, B789)
            if k == 0xFF:
                break
            if k == 0:
                src = H.palabra(a + 1, B789)
                bl.anota(B789, src, fin_rle(src, B789), "rle_%04X" % src,
                         "patrones en RLE para la VRAM 0x%04X (p00:4A8D: 0 acaba, 0x80 cambia de "
                         "direccion, bit 7 = tal cual, sin el = repetir)" % H.palabra(a + 3, B789),
                         "p00:4ACA (lista 0x%04X)" % a0)
                a += 5
            elif k == 1:
                a += 6
            else:
                src, n, dst = H.palabra(a + 1, B789), H.palabra(a + 3, B789), H.palabra(a + 5, B789)
                bl.anota(B789, src, src + n, "vram_%04X" % src,
                         "%d bytes tal cual a la VRAM 0x%04X (p00:4B07)" % (n, dst),
                         "p00:4B07 (lista 0x%04X)" % a0)
                a += 7
        bl.anota(B789, a0, a + 1, "lista_vram_%04X" % a0,
                 "lista de p00:4AB0: 0 [rle][vram]; 1 [vram][n][vram]: n dibujos de la VRAM "
                 "girados; 2+ [fuente][n][vram]: n bytes tal cual; 0xFF acaba", quien, ancho=7)
    # p00:5686: por area, pares [cosa][sitio] hasta 0xFF; cada cosa, 6 bytes de 0x6173
    bl.anota(B789, 0x6000, 0x6000 + 2 * M.N_AREAS, "sprites_de_cada_area",
             "la lista de patrones de sprite de cada area (0xC480), una palabra", "p00:5662", ancho=2)
    cosas = set()
    for area in range(M.N_AREAS):
        a0 = a = H.palabra(0x6000 + 2 * area, B789)
        while H.lee(a, B789) != 0xFF:
            cosas.add(H.lee(a, B789))
            a += 2
        bl.anota(B789, a0, a + 1, "sprites_%04X" % a0,
                 "pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones 0xF800 + 8*sitio] ... 0xFF "
                 "(p00:5686)", "p00:5686", ancho=2)
    n = 41                  # la 41 ya no es una entrada: su fuente seria 0x0388
    bl.anota(B789, 0x6173, 0x6173 + 6 * n, "cosas_con_sprite",
             "%d cosas: [ficha 0xCF00+][tipo 0 = RLE, 1 = nada, 2+ = tal cual][fuente][bytes] "
             "(p00:5694); las listas de las areas piden de la 0 a la %d" % (n, max(cosas)),
             "p00:5694", ancho=6)
    for k in range(n):
        e = 0x6173 + 6 * k
        tipo, src = H.lee(e + 1, B789), H.palabra(e + 2, B789)
        if tipo == 0:
            bl.anota(B789, src, fin_rle(src, B789), "rle_%04X" % src,
                     "patrones de sprite en RLE de la cosa %d (p00:56C1)" % k, "p00:56C7")
        elif tipo >= 2 and tipo != 0xFF:
            nb = H.palabra(e + 4, B789)
            bl.anota(B789, src, src + nb, "patrones_%04X" % src,
                     "%d bytes de patrones de sprite de la cosa %d (p00:56CA)" % (nb, k), "p00:56D5")
    bl.anota(B789, 0x70AE, 0x70AE + 14, "patrones_f8a0",
             "7 palabras, por 0xC840: los 32 bytes que p00:566E sube a la VRAM 0xF8A0 (un patron de sprite de 16x16)", "p00:5674", ancho=2)
    for k in range(7):
        a = H.palabra(0x70AE + 2 * k, B789)
        bl.anota(B789, a, a + 32, "f8a0_%04X" % a, "32 bytes para la VRAM 0xF8A0 (p00:566E)", "p00:5680")


def antes(rom, b, pc, n=12):
    """Las instrucciones `ld hl,nn` / `ld bc,nn` de los n bytes de antes de pc."""
    o = b * TAM_PAGINA + (pc - ORG[b])
    fuera = {}
    for k in range(3, n + 1):
        if pc - k < ORG[b]:
            break
        op = rom[o - k]
        if op in (0x21, 0x01, 0x11) and ((0x21, 0x01, 0x11)[(0x21, 0x01, 0x11).index(op)]) not in fuera:
            fuera[op] = rom[o - k + 1] | (rom[o - k + 2] << 8)
    return fuera


def letras(t, bl):
    """p00:4ED7 (B letras de 8 bytes de HL, 1 bit por punto) y p00:4EE0 (una)."""
    rom = open(ROM, "rb").read()
    for (b, pc) in sorted(t.arranques):
        o = b * TAM_PAGINA + (pc - ORG[b])
        if (pc - ORG[b]) + 3 > TAM_PAGINA or rom[o] not in (0xCD, 0xC3):
            continue
        dst = rom[o + 1] | (rom[o + 2] << 8)
        if dst not in (0x4ED7, 0x4EE0) or (b == 0 and pc == 0x4ED7):
            continue
        r = antes(rom, b, pc)
        if 0x21 not in r:
            continue
        n = (r.get(0x01, 0x100) >> 8) if dst == 0x4ED7 else 1
        for s_ in t.config_de[(b, pc)]:
            bl.anota(s_, r[0x21], r[0x21] + 8 * n, "letras_%04X" % r[0x21],
                     "%d letras de 8x8 a 1 bit (8 bytes cada una) que %s:%04X sube a la hoja "
                     "(p00:%04X)" % (n, nombre(b), pc, dst), "%s:%04X" % (nombre(b), pc), ancho=8)
            break


B141415 = (13, 14, 15)
N_SONIDOS = 0x78


def sonido(t, bl):
    """p14:9454: el sonido A lee sus pistas de la tabla p14:9C47 + 2*A, una
    palabra por canal (los de varios canales ocupan varias entradas
    seguidas). Cada pista va de su puntero al siguiente que se pide."""
    bl.anota(B141415, 0x9C47, 0x9C47 + 2 * N_SONIDOS, "sonidos",
             "%d palabras: la pista de cada sonido y canal (p14:9454); 0xBF49 es la pista vacia"
             % N_SONIDOS, "p14:946B", ancho=2)
    ptr = sorted({H.palabra(0x9C47 + 2 * k, B141415) for k in range(N_SONIDOS)} - {0xFFFF})
    fin_pistas = 0xBF58                     # detras, 0xFF hasta el final del banco 15
    for i, a in enumerate(ptr):
        f = ptr[i + 1] if i + 1 < len(ptr) else fin_pistas
        # la pista de p14 que acaba en la tabla no se la come
        if a < 0x9C47 < f:
            f = 0x9C47
        quien = [k for k in range(N_SONIDOS) if H.palabra(0x9C47 + 2 * k, B141415) == a]
        bl.anota(B141415, a, f, "pista_%04X" % a,
                 "pista de los sonidos %s (p14:94FA: notas, 0xDx octava, 0xEx ordenes, 0xFx "
                 "volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente"
                 % ", ".join("0x%02X" % k for k in quien), "p14:9500")


B126 = (1, 2, 6)


def gao(t, bl):
    """p02:93D6 (con el banco 6 en 0xA000): la pose 0xC81C elige dos
    punteros de p06:A0BB y sube 0x40 bytes de cada uno a los patrones de
    sprite 0xF800 y 0xF840."""
    n = 20
    bl.anota(B126, 0xA0BB, 0xA0BB + 4 * n, "poses_de_gao",
             "%d poses de Gao: dos punteros cada una, a 0xF800 y a 0xF840 (p02:93D6)" % n,
             "p02:93EC", ancho=4)
    for k in range(2 * n):
        a = H.palabra(0xA0BB + 2 * k, B126)
        bl.anota(B126, a, a + 0x40, "patrones_%04X" % a,
                 "dos patrones de sprite de 16x16 (0x40 bytes) de Gao (p02:93F8)", "p02:93F8", ancho=16)


def rellenos(t, bl):
    """Los 0xFF con los que acaban los bancos (tools/bancos.py relleno_de_cola)."""
    from bancos import relleno_de_cola
    rom = open(ROM, "rb").read()
    for b, a in relleno_de_cola(rom).items():
        s_ = {0: B123}.get(b) or tuple(b if ORG[b] == o else 1 for o in (0x6000, 0x8000, 0xA000))
        bl.anota(s_, a, ORG[b] + TAM_PAGINA, "relleno_p%02d" % b,
                 "0xFF hasta el final del banco: nadie lo lee", "nadie")


B129 = (1, 2, 9)


def por_area_banco_9(t, bl):
    """Lo que sale en cada area, con el banco 9 en 0xA000 (p01:74D3,
    p01:6CA7, p01:71C0)."""
    bl.anota(B129, 0xA130, 0xA162, "cosas_de_cada_area",
             "la lista de cosas de cada area (0xC480, p01:74D8), una palabra; hay 25 y la "
             "ultima (0xA267) no la pide ninguna de las 24 areas", "p01:74DE", ancho=2)
    bl.anota(B129, 0xA162, 0xA186, "bichos_de_cada_area",
             "la lista de bichos de cada una de las 18 areas de camino (p01:6CB4)", "p01:6CB7", ancho=2)
    bl.anota(B129, 0xA186, 0xA1AA, "ritmo_de_cada_area",
             "6 bytes por cada una de las 18 areas de camino, uno por cada 32 filas de 8 puntos "
             "(p01:71D1): que bichos salen en ese tramo", "p01:71D4", ancho=2)
    cosas = sorted({H.palabra(0xA130 + 2 * k, B129) for k in range(25)})
    for a in cosas:
        f = a
        while not (H.lee(f, B129) == 0xFF and H.lee(f + 1, B129) == 0xFF):
            f += 3
        bl.anota(B129, a, f + 2, "cosas_%04X" % a,
                 "cosas puestas en el camino: [fila lo][fila hi + 4*tipo][dato] de 3 bytes, "
                 "0xFFFF acaba (p01:7323); el tipo 4 es el torii que lleva a la sala y el 5 la "
                 "salida de la sala, con el numero de puerta en el dato", "p01:7328", ancho=3)
    bl.anota(B129, 0xA269, 0xA269 + 6 * 18, "puertas",
             "las 18 PUERTAS: [area][fila lo][fila hi][y][x][?] a donde lleva cada una "
             "(p01:607C: 0xC486-0xC48B y a cambiar de area); las 0-5 van a las salas, las "
             "6-13 de las salas a las fases, las 14-17 al area 0x18, que no existe",
             "p01:6083", ancho=6)
    bichos = sorted({H.palabra(0xA162 + 2 * k, B129) for k in range(18)})
    for i, a in enumerate(bichos):
        if i + 1 < len(bichos):
            f = bichos[i + 1]
        else:
            f = a
            while H.lee(f + 1, B129) >> 1:
                f += 3
            f += 2
        bl.anota(B129, a, f, "bichos_%04X" % a,
                 "bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3 bytes; tipo 0 acaba "
                 "(p01:6CFC)", "p01:6CFC", ancho=3)
    for k in range(18):
        a = H.palabra(0xA186 + 2 * k, B129)
        bl.anota(B129, a, a + 6, "ritmo_%04X" % a, "los 6 bytes del area %d (p01:71E2)" % k,
                 "p01:71E2", ancho=6)


RECORRIDOS = [por_area_banco_9, rellenos, gao, sonido, letras, banco_7, fichas, cabecera, tablas_del_despachador, listas_de_dibujos, paletas, mapas]


def ocupado(p):
    """bytearray del banco: 1 = codigo trazado, 2 = D escrita fuera de la seccion."""
    o = ORG[p]
    m = bytearray(TAM_PAGINA)
    ruta = os.path.join(WORK, nombre(p) + ".trace.json")
    if os.path.exists(ruta):
        for k, a, b in json.load(open(ruta))["blocks"]:
            if k == "c":
                for i in range(a - o, b - o):
                    m[i] = 1
    notas = os.path.join(SRC, nombre(p) + ".notes")
    dentro = False
    if os.path.exists(notas):
        for ln in open(notas, encoding="utf-8"):
            if ln.startswith(INI) or ln.startswith("# --- RESTO"):
                dentro = True
            elif ln.startswith(FIN) or ln.startswith("# --- fin del resto"):
                dentro = False
            elif not dentro and ln.startswith("D "):
                q = ln.split(None, 3)
                for i in range(max(0, int(q[1], 0) - o), min(TAM_PAGINA, int(q[2], 0) - o)):
                    m[i] = 2
    return m


def une(bloques_banco):
    """Los que se solapan se juntan en uno."""
    fuera = []
    for (a, f), e in sorted(bloques_banco.items()):
        if fuera and a < fuera[-1][1]:
            pa, pf, pe = fuera[-1]
            fuera[-1] = (pa, max(pf, f), pe + [(a, f, e)])
        else:
            fuera.append((a, f, [(a, f, e)]))
    return fuera


def linea_d(a, f, partes):
    e0 = partes[0][2]
    desde = sorted({d for _, _, e in partes for d in e["desde"]})
    if len(partes) == 1:
        txt = e0["que"]
    else:
        txt = "%s; se solapan %d bloques (%s)" % (
            e0["que"], len(partes),
            ", ".join("0x%04X-0x%04X" % (x, y) for x, y, _ in partes[:6]))
    txt += "; lo leen %s" % ", ".join(desde[:8])
    if len(desde) > 8:
        txt += " y %d mas" % (len(desde) - 8)
    txt += " (%d bytes)" % (f - a)
    return ["D 0x%04X 0x%04X %s  %s" % (a, f, e0["nom"], txt), "F 0x%04X %d" % (a, e0["ancho"])]


def escribe(p, lineas):
    ruta = os.path.join(SRC, nombre(p) + ".notes")
    viejas = open(ruta, encoding="utf-8").read().split("\n") if os.path.exists(ruta) else []
    nuevas, dentro, puesto = [], False, False
    for ln in viejas:
        if ln.startswith(INI):
            dentro = True
            if lineas:
                nuevas += [INI] + lineas + [FIN]
            puesto = True
            continue
        if ln.startswith(FIN):
            dentro = False
            continue
        if not dentro:
            nuevas.append(ln)
    if not puesto and lineas:
        while nuevas and not nuevas[-1].strip():
            nuevas.pop()
        nuevas += ["", INI] + lineas + [FIN, ""]
    open(ruta, "w", encoding="utf-8", newline="\n").write("\n".join(nuevas).rstrip("\n") + "\n")


def main(argv):
    rom = open(ROM, "rb").read()
    t, _ = traza_completa(rom, SRC)
    bl = Bloques()
    for r in RECORRIDOS:
        r(t, bl)
    total = 0
    for p in range(N_PAGINAS):
        m = ocupado(p)
        buenas, conflictos = [], []
        for a, f, partes in une(bl.d.get(p, {})):
            marcas = set(m[i - ORG[p]] for i in range(a, f))
            if marcas == {2}:
                continue
            pisa = marcas - {0}
            if pisa:
                conflictos.append("  %s 0x%04X-0x%04X (%s) pisa %s" % (
                    nombre(p), a, f, partes[0][2]["nom"],
                    " y ".join({1: "codigo trazado", 2: "una D escrita a mano"}[x] for x in sorted(pisa))))
                continue
            buenas.append((a, f, partes))
        n = sum(f - a for a, f, _ in buenas)
        total += n
        if buenas or conflictos:
            print("%s: %d bloques, %d bytes%s" % (nombre(p), len(buenas), n,
                                                  ", %d en conflicto" % len(conflictos) if conflictos else ""))
            for c in conflictos:
                print(c)
        if "--escribe" in argv:
            lineas = []
            for a, f, partes in buenas:
                lineas += linea_d(a, f, partes)
            escribe(p, lineas)
    print("en total: %d bytes en bloques que lee el codigo" % total)
    for x in bl.avisos:
        print("aviso: " + x)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
