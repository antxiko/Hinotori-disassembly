# Findings

What the code hides. Each item carries the address where it is and how it is
known: **measured in openMSX** (with RAM or VRAM dumps) or **from the code**
(read, not played).

## With King Kong 2 next to it, it boots King Kong 2 and saves its game

At power-on, `p00:5DFF` reads the other slots with `RDSLT` looking for three
signatures (`p00:5E78`): six bytes at `0x7FFA` (the Game Master, RC-735), the
header `'CD' 07 45 FF` at `0x4010` (King Kong 2, RC-745) and six bytes at
`0xBFFA` (Q*bert, RC-746). With **King Kong 2**, `0xC110` = 2 and INIT goes
to `p09:B880`:

1. it reads King Kong 2's INIT from the other slot (its word at `0x4002`) and
   copies 256 bytes from there to `0xF120`;
2. it copies 170 bytes of its own (`p09:B925`) to `0xF220` and puts
   `jp 0xF220` on the interrupt hook;
3. it jumps to `0xF120`: King Kong 2 boots.

Every frame, the hook checks whether King Kong 2 is being played (its
`0xC100` = 5) and the keys: with **F4**, it puts Hinotori in pages 1 and 2
(`ENASLT`) and calls its **save** code (`p09:B9CF`); with **F5**, the **load**
code (`p09:BA9C`). Both use the BIOS tape routines (`TAPOON`, `TAPOUT`,
`TAPION`, `TAPIN`) and ask for a file name.

**Measured in openMSX** with Hinotori in slot A and King Kong 2 in slot B:
King Kong 2 boots (the PC runs at `0xF1xx`, `0xFD9F` = `jp 0xF220`), and
pressing F4 while playing sets `0xF106` = 1 and `0xF107` = 1 and «SAVE MODE /
INPUT FILE NAME» appears on its screen.

## With Q*bert or the Game Master, a menu and the STOP key

With either of the other two, `0xC110` = 1. Pressing SPACE on the title,
`p00:46B1` goes to state 9 instead of starting: a menu with START GAME, MODIFY
STAGE NUMBER and MODIFY PLAYER NUMBER, where the stage (`0xC115`) and the
lives (`0xC117`) are typed with the number keys. **Measured in openMSX** with
Q*bert in slot B: the menu, built here from the ROM, gives 0 bytes different.

And the interrupt, with `0xC110` not 0, watches the **STOP** key
(`p00:4124`): the game freezes and the PSG goes quiet until the next press.
**From the code.**

## The cheat passwords

**F1** pauses; **HOME** shows the game's password and **HOME** again lets you
type one. `p06:B85E` compares it with the 17 strings at `p06:B8A0`; each
string is followed by the code it runs, which is jumped to with `jp (hl)`
(`p06:B89A`), and each works **once per game** (`0xC600` + n). It is accepted
with «CORRECT». The other passwords are the real ones: they carry the state
of the game and a check (`p06:B7EE`: the XOR of all the characters has to be
0).

| password | what the code does | measured |
|---|---|---|
| GAOOOOOOOOOOH | lives + 10 (`0xC160`, in BCD) | 2 → 12 |
| ILOVEHINOTORI | `0xC4E2` = 1: invulnerable every frame (`p02:8600`) | yes |
| NANDANANDANANDA | `0xC4E0` = 1: a lost life is given back (`p00:441A`) | yes |
| METALSLAVE | energy (`0xC845`) to 200, the maximum | from the code |
| HANEYOKAGAYAKE | `0xC4E3` = 1: what gives 1 energy gives 10 (`p03:AC8F`) | yes |
| FULLITEMDAYOON | 1 in every byte of items 1-15 | yes |
| KINOOOIHITODANE | 1 in every byte of items 16-33 | yes |
| SUPERBALL | 1 in items 36-40 | yes |
| TURBO | item 1 to 3 | yes |
| HAYAME | the weapon (`0xC85C`, item 4) to 3 | yes |
| AUTOSHOT | the weapon to 3 and `0xC4E1` = 1: weapon 4 every frame (`p02:8F56`) | yes |
| ULTRABOX | item 9 to 9 | yes |
| KOKOWADOKO | item 10 to 6 | yes |
| DOKODEMOMAP | item 11 to 6 | yes |
| HOIHOIHOINOHOI | item 14, the stage jumper, to 9 | yes |
| ENDDEMOGAMITAINA | `0xC4DA` = 0x000C: on returning, state 12, the ending | yes |
| aaaaa | items to 3 and invulnerable (`0xC4D1`) | **cannot be typed** |

«aaaaa» is in lower case, and `p06:B5AB` turns everything typed into capitals
before storing it: it can never match. «Measured» means it was typed in
openMSX (`tools/omsx_guion.tcl`) and the change was seen in RAM.

## The stages wrap round, and the only way out is a torii

The columns of a stage are joined at the sides: leaving column 2 on the right
you come into column 0, and leaving 0 on the left, into 2 (`p01:6522`,
`p01:653A`). At the top, each column's map ends in `0xFF 0x0000`: back to row
0 (`p00:580E`). The only way out is the stage's torii. **From the tables and
the code.**

## 18 gates, and a route that is not straight

The table at `p09:A269` has 18 six-byte gates. 0-5 are the stages' torii and
lead to their room; 6-13, the rooms', lead to the next stage, except that
room 3 has another one back to **stage 1**, room 5 another back to **stage
2**, and room 6's leads to **stage 4**. Gates 14-17 lead to area `0x18`,
which does not exist: no list of things uses them. The whole route is in
[The game](THE-GAME.md). **From the tables.**

## The stage jump

F5 opens a map of the six stages (`p02:8555`). Carrying item 14 (`0xC884`),
the cursor keys choose one (`0xC887`) and SPACE jumps there, using one up
(`p02:859F`); you arrive through column 1 (`p01:65CF`). **From the code.**

## Six figures nobody uses

From `p07:7457` to `p08:82B3` there are 18 strips in a row in the sprite RLE
(`p00:4A8D`), 3,676 bytes; opened up they give 128 to 320 bytes each, the
sizes of pattern sets. That RLE is only opened by `p00:4AD5`, which walks the
lists of each area, and no entry names any of them; the openMSX read probe
does not read them either.

Opened and read like the sprites that are used (two patterns in a row are the
two layers of a 16 × 16 sprite, and a figure's sprites go by columns), they
are six figures that never appear in the game, and none matches any of the 41
sprite sets that are loaded:

| strips | figure |
|---|---|
| 0-2, read in a row | a hunched beast, 32 × 32, three frames |
| 3-7 and 12 | a one-eyed monster with huge arms, 32 × 32, six poses |
| 8-9 | a face, 32 × 32, two frames |
| 10-11 | something rising from the ground with two claws, 32 × 32 |
| 13-15, read in a row | a demon, 32 × 48, two frames: the largest drawing in the cartridge |
| 16-17 | a small warrior with a headband, 16 × 32, two frames |

![The six figures](imagenes/huerfanas.png)

In two tones, like the enemies: the colour is set by each enemy's code, and
these have none. What they were is not known. **Measured in the ROM**
(`tools/figuras.py huerfanas`).

## The header for other cartridges

At `0x4010`: `'C'`, `'D'` and a list of addresses in this game's RAM. No code
in Hinotori reads it. King Kong 2 carries another one like it in the same
place, and that is what Hinotori looks for in it to know it is there.

## The ending credits, and a cheat named after a designer

The ending scrolls the credits up from the bottom of the screen line by line
(`p06:AF12`, with the pointer list at `p06:AB23`). Transcribed from the ROM,
as they are:

| | |
|---|---|
| PROGRAMMER | ULTRAMAN ADACHI · ADDE EDA · YOSHIMOTO OHTA · DARENANDA SUZUKI · 27INCH NAGAE |
| DESIGNER | SHU IWAMOTO · KI MIZUTANI · HAAAA MAKITANI · METALSLAVE NAOKI |
| SOUND | MOAI SASAKI · SG FURUKAWA |
| SPECIAL THANKS TO | PAKEMI KAMIO · ROOM 1013 · AND YOU |
| | PRESENTED BY KONAMI · © KONAMI 1987 |

METALSLAVE, the nickname of one of the designers, is also one of the cheat
passwords: the one that fills up the energy. **Measured in the ROM.**
