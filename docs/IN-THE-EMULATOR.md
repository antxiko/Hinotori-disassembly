# In the emulator

Everything checked by playing was done in **openMSX** with the
`C-BIOS_MSX2_JP` machine and `-romtype Konami`, **one emulator at a time**,
with the probes in `tools/`. The dumps go to `work/`, which does not travel in
the repository: they are made again with these commands.

| probe | what it does |
|---|---|
| `lanza_vuelca.sh <dir> "<seconds>" ["<spaces>"]` | dumps VRAM, palette, RAM and registers at those moments |
| `lanza_bp.sh <dir> <address> [time]` | dumps when the Z80 goes through there |
| `lanza_guion.sh <dir> "<script>"` | waits for the game (state 5) and runs a script: keys, text, dumps |
| `lanza_lecturas.sh` | who reads each byte of the cartridge (a read watchpoint) |

The three that take extra arguments pass them on to openMSX: that is how
another cartridge goes into slot B (`-cartb kingkong2.rom -romtype Konami`).

## What has been checked

| what | how | result |
|---|---|---|
| the logo | `lanza_bp.sh work/logo 0x66F9` | 0 bytes different |
| the title | `lanza_vuelca.sh work/v4 "23"` | 0 bytes and the 16 colours |
| the menu with Q*bert | `lanza_bp.sh work/menu_qbert 0x4735 120 "…" 120 -cartb qbert.rom` | 0 bytes |
| the sheet and the palette | `lanza_bp.sh work/area_1 0x5D6E 1` and `2` | areas 0 and 1: 0 tiles and 0 colours different |
| the map on screen | a dump of the demo | 31 of 32 rows in the RAM table |
| the passwords | `lanza_guion.sh` with F1, HOME, HOME, the text and RETURN | 15 with their change in RAM |
| King Kong 2 next to it | `lanza_guion.sh … -cartb kingkong2.rom` | King Kong 2 boots; F4 → SAVE MODE |

`make coteja` repeats the checks with whatever dumps there are in `work/`.

## Worth knowing

- The game takes its time: the logo and the title appear after 15 or 20
  emulated seconds, and not always at the same moment. That is why the probes
  wait for a RAM state or an address, not for a fixed time.
- State 2 is the **demo**, not the game: playing is 5.
- The pictures openMSX takes with `screenshot` come one step late when it
  runs unthrottled; what counts are the dumps.
