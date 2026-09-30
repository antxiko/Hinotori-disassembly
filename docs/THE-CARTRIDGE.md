# The cartridge

**Hinotori: Hōōhen – Gaō no Bōken** (火の鳥 鳳凰編 我王の冒険), by Konami,
1987, catalogue number **RC-747**. It is for the **MSX2**: the first thing it
does (`p00:4D4D`) is wait for the V9938 to finish a command by reading the CE
bit of status register 2, and on an MSX1 it stays there.

## The mapper

It is 128 KB in sixteen 8 KB banks, with Konami's mapper **without SCC**
(Konami4): bank 0 is fixed at `0x4000` and the other three are chosen by
writing to `0x6000`, `0x8000` and `0xA000`. `tools/reconocimiento.py`
measures it on the ROM: not one write to the registers of the SCC mapper
(`0x5000`, `0x7000`, `0x9000`, `0xB000`).

As in King Kong 2, every bank always goes to the same slot, and it is the
remainder of dividing by three: banks 1, 4, 7, 10 and 13 at `0x6000`; 2, 5,
8, 11 and 14 at `0x8000`; 3, 6, 9, 12 and 15 at `0xA000`. They are switched
**three at a time** by `p00:5408` (A, A+1 and A+2, with a copy at
`0xF0F1`–`0xF0F3`), which has five doors (`5420`, `5405`, `5425`, `542A`,
`542F`); `p00:53E9` puts 1, 2 and at `0xA000` whatever `0xC10C` says (3 nearly
always, 6 or 9 for a moment), and `p00:5434` / `543D` put a single one.

| banks | what is there |
|---|---|
| 0 | the framework: start-up, interrupt, states, VDP, sheet, map, texts |
| 1, 2, 3 | Gao, the enemies (58 types), the things on the way, the shots |
| 4, 5 | the tile lists of every stage and their sources; the palettes |
| 6 | Gao's sprites, the pause, the passwords, the ending |
| 7, 8 | the sprites of what appears in each area; 18 strips nobody uses |
| 9 | what appears in each area, the 18 gates, saving and loading King Kong 2 |
| 10, 11, 12 | blocks, superrows and maps of the 24 areas |
| 13 | letters and the title |
| 14, 15 | the sound player and its 120 tracks |

## Start-up

INIT (`0x40B8`) clears the RAM, looks at the other slots (`p00:5DFF`), puts
the interrupt on H.TIMI (`jp 0x4048`) and stays on `jr $`: the whole game
runs from the interrupt. Every frame, the interrupt plays the sound with
banks 14 and 15 in, puts them back and calls the game (`p00:4200`), which
branches on the state `0xC100`.

If there is a **King Kong 2** in another slot, Hinotori does not start: King
Kong 2 starts, with a hook of Hinotori's (see [Findings](FINDINGS.md)).

## What belongs to nobody

After the `AB` and INIT, the header carries a second header at `0x4010`:
`'C'`, `'D'` and a list of addresses in this game's RAM (the stage at
`0xC161`, the lives at `0xC160`…). No code in this cartridge reads it: it is
for another cartridge placed next to it. King Kong 2 carries its own in the
same place, and that is exactly what Hinotori looks for in it.
