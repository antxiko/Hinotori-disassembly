#!/usr/bin/env python3
"""La musica del cartucho, ejecutando su motor de sonido (ver motor_musica.py).

El reproductor `el_sonido_de_un_cuadro` (p14:9497, con el banco 14 en 0x8000 y
el 15 en 0xA000) lo llama la interrupcion en cada cuadro (p00:4073). El sonido
se pide con la rutina de p14:9400 (A = numero), que p00:41E4 llama con esos
mismos bancos. Cuatro canales de 32 bytes desde 0xC010; la copia del
registro 7 del PSG, en 0xC0F0. MegaROM Konami4 de 128 KB, MSX2, sin SCC.
Uso:  musica.py registros 0x37 [cuadros] | mp3 0x37 f.mp3 | todas docs/audio
      musica.py barrido 0x00 0xFF | emu | python tools/unicas.py 0x37 0xA0
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import motor_musica  # noqa: E402
from motor_musica import P  # noqa: E402

PIEZAS = [P(n, "Pista 0x%02X" % n, "Track 0x%02X" % n,
            "ninguna llamada directa: sale de la tabla de pistas por un "
            "número calculado")
          for n in list(range(0x37, 0x4C)) + list(range(0x53, 0x58))
          + list(range(0x5F, 0x64)) + list(range(0x65, 0x6A))
          + list(range(0x6B, 0x70))]

PAGINA = motor_musica.pagina_basica(
    "`el_sonido_de_un_cuadro`, p14:9497, y la rutina de petición de "
    "p14:9400; lo llama la interrupción en p00:4073 con los bancos 14 y 15",
    "`el_sonido_de_un_cuadro`, p14:9497, and the request routine at "
    "p14:9400; the interrupt calls it at p00:4073 with banks 14 and 15",
    "C-BIOS MSX2 japonés",
    [("la pista 0x37, sus primeros 157 cuadros",
      "track 0x37, its first 157 frames"),
     ("la pista 0x6A, 166 cuadros, tal como el juego la pide",
      "track 0x6A, 166 frames, as the game asks for it")],
    [("Cómo se pide una pieza",
      "La rutina de p14:9400 recibe el número en A: del 0x00 al 0x36 son "
      "efectos de un canal y del 0x37 en adelante hay música de más; el "
      "juego calcula el número, así que todas las pistas son «de la "
      "tabla». Hay cuatro canales de 32 bytes desde 0xC010 y 0xC0F0 guarda la "
      "copia del mezclador del PSG, que el arranque deja en 0xB8. Las "
      "pistas que suenan igual que otra se publican una sola vez; se "
      "omiten las casi mudas, y las que duran más de 75 segundos sin "
      "volver a empezar se cortan a los 75. Solo se han cotejado con "
      "openMSX las pistas 0x37 y 0x6A.",
      "How a piece is asked for",
      "The routine at p14:9400 takes the number in A: 0x00 to 0x36 are "
      "one-channel effects and from 0x37 up there is more music; the game "
      "computes the number, so all the tracks are «in the table». There are "
      "four 32-byte channels from 0xC010 and 0xC0F0 holds the copy of the "
      "PSG mixer, which start-up leaves at 0xB8. Tracks that sound like "
      "another are published once; nearly silent ones are left out, and "
      "those that last over 75 seconds without starting again are cut at "
      "75. Only tracks 0x37 and 0x6A have been checked against openMSX.")])

CFG = dict(rom="hinotori.rom", org=0x4000, mapper="konami",
           bancos0=((0x4000, 0), (0x6000, 1), (0x8000, 14), (0xA000, 15)),
           bancos_frame=((0x8000, 14), (0xA000, 15)),
           frame=0x9497, pide=0x9400, banco_frame=14, banco_pide=14,
           ram=(0xC010, 0xC0F4), ram0=[(0xC0F0, 0xB8)], hz=60,
           psg0={7: 0xB8}, romtype="konami", maquina="C-BIOS_MSX2_JP",
           max_s=75, piezas=PIEZAS, pagina=PAGINA,
           cotejado=[(0x37, 4500, None)])

if __name__ == "__main__":
    sys.exit(motor_musica.main(CFG, sys.argv[1:]))
