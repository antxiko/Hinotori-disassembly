# The code

## How the listing was made

A MegaROM cannot be traced bank by bank: address `0x8123` says nothing unless
you know which bank is in. `tools/bancos.py` traces the **whole cartridge**
keeping track of the three slots and their copies in RAM (`0xF0F1`–`0xF0F5`
and `0xC10C`), and models the routines that switch banks. That gives the
entry points of each bank (`src/pNN.entries`) and the dispatcher tables
(`src/pNN.nocode`). Then `tools/z80trace.py` traces each bank with those
entries and `tools/mkasm.py` writes the listing.

Two measured rules the tracer needs:

- the code in banks 1 and 2 only jumps to `0xA000` with **bank 3** in: the
  tables of the 58 enemy types (`p01:6875`, `p01:6E80`) lead there, and in
  banks 6 and 9 those addresses are graphics;
- entry 8 of the table at `p01:737D` falls in the middle of an instruction in
  bank 3: no list places that type of thing, and it is not followed.

`make verify` reassembles the sixteen banks with Pasmo and the ROM comes out
**byte for byte**. `make sanity` checks that not one byte is left unassigned:
every data range carries its explanation, and most of them come from
`tools/bloques.py` walking through the format as the routine that reads it
does (tile lists, palettes, maps, superrows, blocks, sound tracks, enemy
records, what each area holds, the gates).

## The framework (bank 0)

| address | what it does |
|---|---|
| `0x40B8` | INIT: RAM to zero, other cartridges, hook, `jr $` |
| `0x4048` | the interrupt: sound (banks 14 and 15) and one game frame |
| `0x4200` | the frame: keys and branching on the state `0xC100` |
| `0x40AE` | the dispatcher: jumps to entry A of the table stuck behind the `call` |
| `0x5408` | banks A, A+1 and A+2 |
| `0x54CC` | the tile lists to the sheet (eight formats) |
| `0x5900`, `0x59E5` | the map: superrows, blocks and the 32 × 32 screen table |
| `0x57B8` | scrolling: one more 8-pixel row and the map commands |
| `0x4B7A` | the 32 sprites, in two alternating halves |
| `0x4E0B`–`0x4E8B` | the V9938's HMMV, HMMM and LMMM commands |
| `0x4F87`, `0x4FBE` | texts: `[x][y]` and letters, `0xFE` another place, `0xFF` ends |
| `0x5DFF` | looks for King Kong 2, Q*bert or the Game Master in the other slots |

The game states (`0xC100`): 1 the title, 2 the demo, 4 the area starts, 5
playing, 6 a life is lost, 9 the menu, 0x0A the pause and the passwords, 0x0C
the ending, 0x0D the POWER UP window (F2), 0x0E and 0x0F the maps (F4 and
F5), 0x11 ITEM INFORMATION (F3).

## The enemies and the things

The enemy records are `0x80` bytes long (six at `0xD000`); `ix+0` is the
type, `ix+1` the step (every type branches on it through the dispatcher),
`ix+3` and `ix+5` y and x, `ix+0x70`–`0x73` the collision box. The common
routines in `p01` (getting close to Gao, copying pieces of a record, counting
frames) are used by all; the rest belongs to each type, in banks 2 and 3.

## The numbers

Measured with `make sanity` and `make densidad`: the whole cartridge assigned,
code and data, and the percentage of instructions with a line comment. The
comments that come from tables (the RAM, the record fields, the data each
instruction points at) are put in by `tools/anota.py`; the names of the
routines nobody had christened come from what they do.
