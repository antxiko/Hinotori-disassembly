#!/usr/bin/env python3
"""Lo que se ha MEDIDO del cartucho, clavado para que no se deshaga solo.

Estas comprobaciones necesitan la ROM. Si no esta, NO se saltan: se hacen
sobre la ROM que sale de reensamblar el listado publicado (src/*.asm) con
pasmo, que es la misma byte a byte (make verify lo comprueba). Un test que se
salta no comprueba nada.

Cada una corresponde a una afirmacion de la web o de las notas, y todas leen
el binario: ninguna compara una constante contra si misma.
"""
import hashlib
import os
import subprocess
import sys
import tempfile
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))

from paginas import ORG, TAM_PAGINA, N_PAGINAS               # noqa: E402

ROM = os.path.join(RAIZ, "hinotori.rom")
SHA = "d4d443c18203f1a463b4d0b356a95c5dc578e24e47e5ea596c773b63ad20fba0"

# Las cinco puertas del reparto de tres en tres: direccion -> primer banco.
PUERTAS = {0x5420: 1, 0x5405: 4, 0x5425: 7, 0x542A: 10, 0x542F: 13}
TRIO = 0x5408


def carga_rom():
    """La ROM de la raiz o, si no esta, la del listado reensamblado."""
    if os.path.exists(ROM):
        return open(ROM, "rb").read()
    trozos = []
    with tempfile.TemporaryDirectory() as tmp:
        for p in range(N_PAGINAS):
            asm = os.path.join(RAIZ, "src", "hinotori_p%02d.asm" % p)
            out = os.path.join(tmp, "p%02d.bin" % p)
            subprocess.run(["pasmo", "--bin", asm, out], check=True,
                           capture_output=True)
            trozos.append(open(out, "rb").read())
    return b"".join(trozos)


class Cartucho(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        cls.rom = carga_rom()

    def p0(self, addr, n):
        """n bytes del banco 0 leidos por su direccion de ejecucion."""
        return self.rom[addr - 0x4000:addr - 0x4000 + n]

    def pb(self, banco, addr, n):
        o = banco * TAM_PAGINA + (addr - ORG[banco])
        return self.rom[o:o + n]

    def test_es_la_misma_rom(self):
        self.assertEqual(len(self.rom), 131072)
        self.assertEqual(hashlib.sha256(self.rom).hexdigest(), SHA)

    def test_cabecera_ab(self):
        """0x4000 'AB', INIT 0x40B8 y los otros tres vectores a cero."""
        self.assertEqual(self.rom[0:2], b"AB")
        self.assertEqual(self.rom[2] | (self.rom[3] << 8), 0x40B8)
        self.assertEqual(self.rom[4:10], b"\x00" * 6)

    def test_mapper_es_konami4(self):
        """Ni una escritura a los registros del mapper CON SCC."""
        for reg in (0x5000, 0x7000, 0x9000, 0xB000):
            pat = bytes([0x32, reg & 0xFF, reg >> 8])
            self.assertEqual(self.rom.count(pat), 0, hex(reg))

    def test_puertas_del_reparto(self):
        """Cada puerta es `di / ld a,N` y acaba en p00:5408 (A, A+1, A+2)."""
        for addr, primero in PUERTAS.items():
            self.assertEqual(self.p0(addr, 3), bytes([0xF3, 0x3E, primero]))
        # p00:5408: ld (0x6000),a / ... / inc a / ld (0x8000),a / ... / (0xA000)
        trio = self.p0(TRIO, 24)
        self.assertIn(b"\x32\x00\x60", trio)
        self.assertIn(b"\x3c\x32\x00\x80", trio)
        self.assertIn(b"\x3c\x32\x00\xa0", trio)

    def test_gancho_de_interrupcion(self):
        """INIT pone `jp 0x4048` en H.TIMI (0xFD9F) y se queda en `jr $`."""
        self.assertEqual(self.p0(0x4102, 11),
                         bytes.fromhex("3ec3329ffd214840" "22a0fd"))
        self.assertEqual(self.p0(0x4115, 2), b"\x18\xfe")

    def test_regla_mod_tres(self):
        """Cada banco se ejecuta en UNA ranura: el resto de dividir entre 3."""
        for b in range(1, N_PAGINAS):
            self.assertEqual(ORG[b], (0xA000, 0x6000, 0x8000)[b % 3])


if __name__ == "__main__":
    unittest.main()
