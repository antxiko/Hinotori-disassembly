#!/usr/bin/env python3
"""Pone en el listado lo que ya se sabe, instruccion a instruccion.

No inventa nada: cada comentario sale de una tabla de esta casa -la RAM de
tools/ram.py, los campos de las fichas, los nombres de las rutinas de las
notas- y dice que es lo que toca esa instruccion. Y a las rutinas que se
llaman y no tienen nombre les pone uno sacado de su papel:

  - las entradas de las tablas del despachador con papel conocido (los 58
    tipos de bicho de p01:6E80 -nacer- y p01:6875 -moverse-, las 31 cosas de
    p01:737D, los estados de p00:4254) llevan ese papel y su numero;
  - el resto, lo primero que ESCRIBE de la RAM conocida (pon_x), o lo
    primero que lee (mira_x), o el campo de la ficha que toca; y si nada de
    eso, el nombre de quien la llama y "_ayuda".

Lo que sale va a una seccion delimitada de src/pNN.notes, que esta
herramienta reescribe entera; lo que haya escrito a mano en la misma
direccion manda, y aqui se salta.

Uso: anota.py [--escribe]
"""
import os
import re
import sys
from collections import defaultdict

AQUI = os.path.dirname(os.path.abspath(__file__))
RAIZ = os.path.dirname(AQUI)
sys.path.insert(0, AQUI)

from bancos import traza_completa                                  # noqa: E402
from paginas import ORG, N_PAGINAS, nombre                          # noqa: E402
import ram as R                                                     # noqa: E402

SRC = os.path.join(RAIZ, "src")
ROM = open(os.path.join(RAIZ, "hinotori.rom"), "rb").read()
INI = "# --- ANOTA (seccion que reescribe tools/anota.py; no editar a mano) ---"
FIN = "# --- fin de anota ---"

PAPELES = {
    (1, 0x6E80): "nace_tipo_%02d",
    (1, 0x6875): "tipo_%02d",
    (1, 0x737D): "cosa_tipo_%02d",
    (0, 0x4254): "estado_%02d",
}

RE_INS = re.compile(r"^\t([a-z].*?)\s*;([0-9a-f]{4})(?:\s+;\s*(.*))?$")
RE_LAB = re.compile(r"^([A-Za-z_][A-Za-z_0-9]*):")


def lee_listado(p):
    """[(addr, texto, comentario)], {addr: etiqueta}"""
    ins, labs = [], {}
    pend = []
    for ln in open(os.path.join(SRC, "hinotori_%s.asm" % nombre(p)), encoding="utf-8"):
        m = RE_LAB.match(ln)
        if m and "equ" not in ln:
            pend.append(m.group(1))
            continue
        m = RE_INS.match(ln.rstrip("\n"))
        if m:
            a = int(m.group(2), 16)
            for e in pend:
                labs[a] = e
            pend = []
            ins.append((a, m.group(1), m.group(3)))
    return ins, labs


def notas_a_mano(p):
    """Direcciones con C/L/B escritas fuera de la seccion de anota."""
    c, l, nombres = set(), set(), set()
    ruta = os.path.join(SRC, nombre(p) + ".notes")
    dentro = False
    for ln in open(ruta, encoding="utf-8"):
        if ln.startswith(INI):
            dentro = True
        elif ln.startswith(FIN):
            dentro = False
        elif not dentro:
            q = ln.split(None, 2)
            if len(q) >= 2 and q[0] in ("C", "L"):
                (c if q[0] == "C" else l).add(int(q[1], 0))
                if q[0] == "L" and len(q) > 2:
                    nombres.add(q[2].strip())
    return c, l, nombres


def nombres_de_todo():
    """{(banco, addr): nombre} de las L de todas las notas (a mano y anota)."""
    fuera = {}
    for p in range(N_PAGINAS):
        ruta = os.path.join(SRC, nombre(p) + ".notes")
        for ln in open(ruta, encoding="utf-8"):
            q = ln.split()
            if len(q) >= 3 and q[0] == "L":
                fuera[(p, int(q[1], 0))] = q[2]
    return fuera


def descripciones():
    """{(banco, addr): el primer comentario C escrito a mano en esa direccion}."""
    fuera = {}
    for p in range(N_PAGINAS):
        dentro = False
        for ln in open(os.path.join(SRC, nombre(p) + ".notes"), encoding="utf-8"):
            if ln.startswith(INI):
                dentro = True
            elif ln.startswith(FIN):
                dentro = False
            elif not dentro and ln.startswith("C "):
                q = ln.rstrip().split(None, 2)
                if len(q) == 3:
                    fuera.setdefault((p, int(q[1], 0)), q[2][:100])
    return fuera


def bloques_d():
    """{(banco, addr): (nombre, que)} de todas las D de las notas (su principio)."""
    fuera = {}
    for p in range(N_PAGINAS):
        for ln in open(os.path.join(SRC, nombre(p) + ".notes"), encoding="utf-8"):
            if ln.startswith("D "):
                q = ln.rstrip().split(None, 4)
                if len(q) >= 5:
                    que = q[4].strip()
                    que = re.split(r"; lo leen|; lo lee", que)[0]
                    fuera[(p, int(q[1], 0))] = (q[3], que[:110])
    return fuera


def comentario_ram(texto, banco=None):
    """El comentario de la RAM que toca la instruccion, o None."""
    for m in re.finditer(r"\b0([cdef][0-9a-f]{3})h\b", texto):
        a = int(m.group(1), 16)
        q = R.que_es(a)
        if q:
            return "0x%04X: %s" % (a, q[1])
    m = re.search(r"\(i([xy])([+-])0?([0-9a-f]+)h?\)", texto)
    if m:
        n = int(m.group(3), 16) * (1 if m.group(2) == "+" else -1)
        tabla = R.CANAL if banco == 14 else R.CAMPOS
        if n in tabla:
            return "i%s+0x%02X: %s" % (m.group(1), n, tabla[n])
        if banco in (2, 3, 6) and n >= 0x12:
            return "i%s+0x%02X: campo propio de este tipo de ficha (el codigo comun de p01 no lo usa)" % (m.group(1), n)
    return None


def idioma(tx, ins, i):
    """Comentarios de los giros del codigo que dicen algo de la ficha."""
    sig = ins[i + 1][1] if i is not None and i + 1 < len(ins) else ""
    if tx == "ld a,(ix+001h)" and re.match(r"call (despacha|040aeh)", sig):
        return "reparte por el PASO de la ficha (ix+1): la tabla va detras del call"
    if tx == "inc (ix+001h)":
        return "la ficha pasa al paso siguiente"
    m = re.match(r"ld \(ix\+001h\),0?([0-9a-f]+)h$", tx)
    if m:
        return "la ficha pasa al paso %d" % int(m.group(1), 16)
    if tx == "ld (ix+000h),000h":
        return "la ficha queda LIBRE (tipo 0)"
    m = re.match(r"dec \(ix\+0?([0-9a-f]+)h\)$", tx)
    if m and sig.startswith("ret nz"):
        return "cuenta atras en ix+0x%02X: hasta que llegue a 0, nada mas" % int(m.group(1), 16)
    if tx == "push ix" and sig == "pop hl":
        return "HL = la ficha"
    if tx == "push hl" and sig == "pop ix":
        return "la ficha es la de HL"
    m = re.match(r"ld de,0*([0-9a-f]+)h$", tx)
    if m and i is not None and re.match(r"add (hl|ix|iy),de", sig):
        for k in range(i + 2, min(i + 6, len(ins))):
            if ins[k][1].startswith(("djnz", "dec c", "dec b")):
                return "la siguiente, 0x%X bytes mas alla" % int(m.group(1), 16)
    # ld a,(var) / or a|and a / salto: se dice que se mira
    if i is not None and tx in ("or a", "and a") and i > 0:
        m = re.match(r"ld a,\(0([cdef][0-9a-f]{3})h\)$", ins[i - 1][1])
        if m:
            q = R.VARS.get(int(m.group(1), 16))
            if q:
                return "¿es 0 %s?" % q[0]
    m = re.match(r"cp 0?([0-9a-f]+)h$", tx)
    if m and i is not None and i > 0:
        mm = re.match(r"ld a,\(0([cdef][0-9a-f]{3})h\)$", ins[i - 1][1])
        if mm:
            q = R.VARS.get(int(mm.group(1), 16))
            if q:
                return "¿%s = 0x%02X?" % (q[0], int(m.group(1), 16))
    m = re.match(r"ld b,0?([0-9a-f]+)h$", tx)
    if m and i is not None:
        for k in range(i + 1, min(i + 12, len(ins))):
            if ins[k][1].startswith("djnz"):
                return "%d vueltas" % int(m.group(1), 16)
    return None


SALTO_CC = re.compile(r"(jr|jp|ret|call) (nz|z|nc|c|po|pe|p|m)\b|djnz")


def resumenes(ins, labs, todos, p, t):
    """{addr: "tramo: ..."}: lo que toca cada tramo del codigo (desde una
    etiqueta o desde lo que sigue a un salto condicional hasta el siguiente
    corte): que variables pone o mira, a que llama, que sonido pide."""
    nombres = {v: k for k, v in labs.items()}
    fuera = {}
    n = len(ins)
    inicios = [i for i in range(n) if ins[i][0] in labs or (i and SALTO_CC.match(ins[i - 1][1]))]
    for k, i0 in enumerate(inicios):
        fin = inicios[k + 1] if k + 1 < len(inicios) else n
        cosas = []
        for j in range(i0, fin):
            tx = ins[j][1]
            for m in re.finditer(r"\b0([cdef][0-9a-f]{3})h\b", tx):
                v = int(m.group(1), 16)
                q = R.VARS.get(v) or R.que_es(v)
                if not q:
                    continue
                w = bool(re.match(r"ld \(0[cdef][0-9a-f]{3}h\)", tx)) or tx.startswith(("inc (", "dec ("))
                cosas.append(("pone " if w else "mira ") + q[0])
            m = re.match(r"(?:call|jp)\s+(?:[a-z]+,)?([A-Za-z_][A-Za-z_0-9]*)$", tx)
            if m and not m.group(1).startswith("L_"):
                cosas.append(("llama a " if tx.startswith("call") else "sigue en ") + m.group(1))
            m = re.match(r"(?:call|jp)\s+(?:[a-z]+,)?0([0-9a-f]{4})h$", tx)
            if m:
                d = int(m.group(1), 16)
                nb = todos.get((0, d)) if d < 0x6000 else None
                if nb is None and 0x6000 <= d < 0xC000:
                    for s_ in t.config_de.get((p, ins[j][0]), ()):
                        nb = todos.get((s_[(d - 0x6000) >> 13], d))
                        break
                if nb and not nb.startswith("L_"):
                    cosas.append(("llama a " if tx.startswith("call") else "sigue en ") + nb)
            if tx.startswith(("ret", "jp ", "jr ")) and not SALTO_CC.match(tx):
                break
        vistas = []
        for c in cosas:
            if c not in vistas:
                vistas.append(c)
        if vistas:
            fuera[ins[i0][0]] = "tramo: " + ", ".join(vistas[:4]) + (" ..." if len(vistas) > 4 else "")
    return fuera


def destino(texto):
    m = re.match(r"(call|jp)\s+(?:[a-z]+,)?0([0-9a-f]{4})h$", texto)
    if m:
        return int(m.group(2), 16)
    return None


BIOS = {0x0093: "escribe_psg", 0x0096: "lee_psg", 0x0141: "lee_teclado", 0x0047: "escribe_vdp",
        0x000C: "lee_de_otra_ranura", 0x0024: "cambia_de_ranura", 0x009F: "espera_una_tecla",
        0x0156: "vacia_el_teclado", 0x00E1: "cinta", 0x00E4: "cinta", 0x00EA: "cinta",
        0x00ED: "cinta", 0x00F0: "cinta", 0x00E7: "cinta"}


def nombre_por_cuerpo(ins, i0, labs, todos, p, t):
    """El nombre de la rutina que empieza en ins[i0], por lo que hace."""
    escr = lect = campo = zona_e = zona_l = llama = bios = None
    ops = []
    for j in range(i0, min(i0 + 40, len(ins))):
        tx = ins[j][1]
        ops.append(tx.split()[0])
        for m in re.finditer(r"\b0([cdef][0-9a-f]{3})h\b", tx):
            v = int(m.group(1), 16)
            q = R.VARS.get(v)
            z = R.que_es(v)
            w = bool(re.match(r"ld \(0[cdef][0-9a-f]{3}h\)", tx)) or tx.startswith(("inc (", "dec ("))
            if q:
                if w:
                    escr = escr or q[0]
                else:
                    lect = lect or q[0]
            elif z:
                if w:
                    zona_e = zona_e or z[0]
                else:
                    zona_l = zona_l or z[0]
        if campo is None:
            m = re.search(r"\(ix\+0?([0-9a-f]+)h?\)", tx)
            if m and int(m.group(1), 16) in R.CAMPOS:
                campo = int(m.group(1), 16)
        m = re.match(r"(?:call|jp)\s+(?:[a-z]+,)?([A-Za-z_][A-Za-z_0-9]*)$", tx)
        if m and not llama and not m.group(1).startswith(("L_", "rutina")):
            llama = m.group(1)
        m = re.match(r"(?:call|jp)\s+0([0-9a-f]{4})h", tx)
        if m:
            d = int(m.group(1), 16)
            if d in BIOS:
                bios = bios or BIOS[d]
            elif not llama:
                n = todos.get((0, d)) if d < 0x6000 else None
                if n and not n.startswith(("L_", "rutina")):
                    llama = n
        if tx.startswith(("ret", "jp ", "jr ")) and j > i0 and not tx.startswith(("ret ", "jr ", "jp ")):
            break
        if tx in ("ret",) or tx.startswith("jp ") and "(" not in tx and "," not in tx:
            if j > i0:
                break
    if escr:
        return "pon_" + escr
    if lect:
        return "mira_" + lect
    if campo is not None:
        return "ficha_" + {0: "tipo", 1: "paso", 3: "y", 5: "x", 0x10: "patron", 0x42: "banderas",
                           0x60: "cuenta", 0x61: "cuenta_atras"}.get(campo, "campo_%02x" % campo)
    if zona_e:
        return "pon_" + zona_e
    if zona_l:
        return "mira_" + zona_l
    if bios:
        return bios
    if llama:
        return "con_" + llama
    if "out" in ops:
        return "escribe_puerto"
    if "ldir" in ops or "ldi" in ops:
        return "copia_bytes"
    if "cpl" in ops and "inc" in ops[:8] and len(ops) < 10:
        return "cambia_de_signo"
    if ops.count("add") >= 3 and "djnz" in ops:
        return "multiplica"
    if "djnz" in ops:
        return "bucle"
    return "rutina"


def papeles(t):
    """{(banco, addr): nombre} de las entradas de tablas con papel."""
    fuera = {}
    for (b, pc), (tab, n, dest, s) in t.tablas.items():
        if (b, pc) not in PAPELES:
            continue
        for i, w in enumerate(dest):
            bb = 0 if w < 0x6000 else s[(w - 0x6000) >> 13]
            if (b, pc) in ((1, 0x6E80), (1, 0x6875)) and w >= 0xA000:
                bb = 3
            fuera.setdefault((bb, w), PAPELES[(b, pc)] % (i + 1 if pc == 0x737D else i))
    return fuera


def main(argv):
    if "--escribe" in argv:
        import subprocess
        for p in range(N_PAGINAS):          # primero se quita la seccion vieja
            escribe(p, [])
        subprocess.run(["make", "listado"], cwd=RAIZ, capture_output=True)
    t, _ = traza_completa(ROM, SRC)
    roles = papeles(t)
    todos = nombres_de_todo()
    total_c = total_l = 0
    for p in range(N_PAGINAS):
        if not any(b == p for b, _ in t.arranques):
            continue
        ins, labs = lee_listado(p)
        c_mano, l_mano, usados = notas_a_mano(p)
        usados |= set(labs.values())
        lineas = []
        # --- quien llama a quien (dentro del banco)
        llamados = set()
        for a, tx, _ in ins:
            m = re.match(r"call\s+(?:[a-z]+,)?(L_[0-9A-F]{4})", tx)
            if m:
                llamados.add(int(m.group(1)[2:], 16))
        for (b, a) in roles:
            if b == p:
                llamados.add(a)
        # --- nombres
        orden = [a for a, _, _ in ins]
        idx = {a: i for i, a in enumerate(orden)}
        nuevos = {}
        for a in sorted(llamados):
            if a in l_mano or (a in labs and not labs[a].startswith("L_")) or a not in idx:
                continue
            nom = roles.get((p, a))
            if not nom:
                nom = nombre_por_cuerpo(ins, idx[a], labs, todos, p, t)
            base, k = nom, 2
            while nom in usados:
                nom = "%s_%d" % (base, k)
                k += 1
            usados.add(nom)
            nuevos[a] = nom
            lineas.append("L 0x%04X %s" % (a, nom))
        total_l += len(nuevos)
        # --- comentarios
        dbloques = bloques_d()
        j_sig = {}
        for i, (a, tx, _) in enumerate(ins[:-1]):
            m = re.match(r"(?:call|jp)\s+(?:0([0-9a-f]{4})h|([A-Za-z_][A-Za-z_0-9]*))$", ins[i + 1][1])
            if m:
                if m.group(1):
                    j_sig[a] = int(m.group(1), 16)
                else:
                    for aa, ee in labs.items():
                        if ee == m.group(2):
                            j_sig[a] = aa
                            break
        # los pasos de las tablas del despachador de este banco
        pasos = {}
        for (b, pc), (tab, n, dest, s_) in t.tablas.items():
            if b != p:
                continue
            rut = None
            for aa in sorted(labs):
                if aa <= pc:
                    rut = labs[aa]
            papel = PAPELES.get((b, pc))
            for k, w in enumerate(dest):
                if papel:
                    pasos.setdefault(w, (papel % (k + 1 if pc == 0x737D else k)).replace("_", " "))
                else:
                    pasos.setdefault(w, "entrada %d de la tabla de %s:%04X (%s)" % (k, nombre(b), pc, rut))
        descr = descripciones()
        tramos = resumenes(ins, labs, todos, p, t)
        for a, tx, com in ins:
            if a in c_mano or com:
                continue
            if a in pasos:
                lineas.append("C 0x%04X %s" % (a, pasos[a]))
                total_c += 1
                continue
            c = idioma(tx, ins, idx.get(a))
            if not c:
                c = comentario_ram(tx, p)
            if not c:
                m = re.match(r"ld (?:hl|de|bc|ix|iy),0([4-9ab][0-9a-f]{3})h$", tx)
                if m:
                    w = int(m.group(1), 16)
                    for s_ in t.config_de.get((p, a), ()):
                        b = 0 if w < 0x6000 else s_[(w - 0x6000) >> 13]
                        if (b, w) in dbloques:
                            n, q = dbloques[(b, w)]
                            c = "%s:%04X %s: %s" % (nombre(b), w, n, q)
                        break
            if not c:
                m = re.match(r"ld a,0([0-9a-f]{2})h$", tx)
                if m and j_sig.get(a):
                    d = j_sig[a]
                    v = int(m.group(1), 16)
                    if d in (0x41AC, 0x41C1):
                        c = "el sonido 0x%02X (p14:9C47 + 2*0x%02X)" % (v, v)
                    elif d == 0x5434:
                        c = "el banco %d en 0xA000" % v
                    elif d == 0x543D:
                        c = "el banco %d en 0x8000" % v
            if not c:
                m = re.match(r"(?:call|jp)\s+(?:[a-z]+,)?([A-Za-z_][A-Za-z_0-9]*)$", tx)
                if m:
                    for aa, ee in labs.items():
                        if ee == m.group(1) and (p, aa) in descr:
                            c = "%s: %s" % (ee, descr[(p, aa)])
                            break
            if not c and tx.startswith("out (c)"):
                c = "al VDP"
            if not c:
                d = destino(tx)
                if d is not None and not (0x4000 <= d < 0x6000 and p == 0):
                    b = 0 if d < 0x6000 else None
                    if b is None:
                        for s in t.config_de.get((p, a), ()):
                            b = s[(d - 0x6000) >> 13]
                            break
                    n = todos.get((b, d)) if b is not None else None
                    if n and not n.startswith("L_"):
                        c = "%s:%04X %s" % (nombre(b), d, n)
            if not c and a in tramos:
                c = tramos[a]
            if c:
                lineas.append("C 0x%04X %s" % (a, c))
                total_c += 1
        if "--escribe" in argv:
            escribe(p, lineas)
    print("anota: %d comentarios y %d nombres" % (total_c, total_l))


def escribe(p, lineas):
    ruta = os.path.join(SRC, nombre(p) + ".notes")
    viejas = open(ruta, encoding="utf-8").read().split("\n")
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


if __name__ == "__main__":
    main(sys.argv[1:])
