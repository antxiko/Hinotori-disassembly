# The game

Gao, the sculptor of Tezuka's story, crosses six stages from bottom to top
until he reaches the torii, the gates that lead to each stage's room. The map
scrolls up as you go and the sides never end.

Every picture on this page is **drawn from the bytes of the ROM** with the
tools in `tools/`, which follow the cartridge's own steps. Under each one it
says which table it comes from and how it was checked against openMSX (MSX2,
`C-BIOS_MSX2_JP`).

## The logo and the title

![The Konami logo](imagenes/konami.png)

The logo is 52 one-bit letters in bank 9 (`p09:AB3C`, `ABA4` and `AC0C`)
that `p00:4ED7` uploads to page 1 in three colours, and that `p01:6710` puts
together with the list at `p01:675E`; then `p01:66F0` uncovers it from the
top with HMMM. Checked against openMSX: **0 bytes different**.

![The title screen](imagenes/titulo.png)

The title is a tile sheet (the lists at `p04:6443`, `6458` and `6468`)
painted with the maps at `p13:7640` and `p13:79A0` (32 × 18) and the
火の鳥 鳳凰編 lettering (`p13:7D00` and `7D30`) on top with colour 0
transparent; the texts, with the sheet's font (`p00:4F87`). Checked: **0
bytes different** and the 16 colours at `p00:5BE9`.

## The six stages and their gates

![The six stages and the route between them](imagenes/mapa.png)

Every stage is **three columns** of 256 × 1,536 pixels, side by side, plus a
**room**. At the sides, the columns wrap round (`p01:653A`: from 2 you go to
0 and back); at the top, the map starts again. The 24 areas (`0xC480`) are
3 × 6 columns and 6 rooms, and the table at `p01:660B` gives the stage, the
tile set and the column of each.

A map is a list of **superrows** (one per 32 pixels of height, `p00:597B`);
each superrow is eight **blocks** of 4 × 4 tiles (`p00:594B`, `p00:593B`);
and each tile is one of the 256 in the **sheet** on page 1 of the VRAM,
uploaded by the bank-4 lists in eight formats (4 bits as they are, 1, 2 or 3
bits with a palette, and the four mirrored, `p00:54CC`).

The **gates** are things on the way: type 4 is each stage's torii and type 5
the room's exit. Both carry a number, and `p01:607C` reads the gate from
`p09:A269`: the area, the row and the arrival point. The route that comes out
of the table:

| from | through | to |
|---|---|---|
| stage 1 | torii in column 1, row 0x64 | room 1 |
| room 1 | its torii | stage 2 |
| stage 2 | torii in column 0, row 0x74 | room 2 |
| room 2 | its torii | stage 3 |
| stage 3 | torii in column 0, row 0x54 | room 3 |
| room 3 | left torii / right torii | stage 4 / **stage 1** |
| stage 4 | torii in column 2, row 0x24 | room 4 |
| room 4 | its torii | stage 5 |
| stage 5 | torii in column 1, row 0xA8 | room 5 |
| room 5 | left torii / right torii | stage 6 / **stage 2** |
| stage 6 | torii in column 0, row 0x6C | room 6 |
| room 6 | its torii | stage 4 |

You always come in through column 1, on row 0x1F. It comes from the tables;
we have not walked it. One plate per stage, full size:

![Stage 1](imagenes/fase1.png)
![Stage 2](imagenes/fase2.png)
![Stage 3](imagenes/fase3.png)
![Stage 4](imagenes/fase4.png)
![Stage 5](imagenes/fase5.png)
![Stage 6](imagenes/fase6.png)

Checking: the tile sheet and the palette of areas 0 and 1, dumped in openMSX
when they have just been built (`p00:5D6E`), are **identical**: 189 and 225
tiles, 0 different, and the 16 colours. On screen, the rows of the map are in
the RAM tile table (31 of 32; the other is trodden on by what moves).

## Gao

![Gao in his 20 poses](imagenes/gao.png)

Every pose is two 16 × 16 sprites (top and bottom), and each one two patterns
laid one over the other with the V9938's OR mixing: colours 13 and 14 and,
where they meet, 15. `p02:93D6` uploads the two of pose `0xC81C` from
`p06:A0BB`.

## What appears in each area

![The sprites of the 41 sets](imagenes/cosas.png)

Every area loads into the sprite patterns the **sets** it is going to use
(`p07:6000` + 2 × area, [set][slot] pairs); the 41 sets at `p07:6173` are RLE
or plain bytes. Here are the 132 two-layer sprites: the enemies, the bosses
in pieces and what they throw. The colour is set by each enemy as it moves,
so they are in two tones.

Which enemy appears and when is up to bank 9: `p09:A162` gives each area's
list ([row][type][data], `p01:6CFC`) and `p09:A186`, which types appear in
each stretch of 32 rows. There are 58 enemy types, each with its birth
routine (`p01:6E80`) and its movement routine (`p01:6875`).

## The items

![The 41 items](imagenes/objetos.png)

There are 41, with their count at `0xC850` + 4 × (item − 1). The ITEM
INFORMATION window (F3, `p06:BAC2`) draws them with `p01:7B60`: 16 × 16 icons
from the sheet; from 16 on, an icon over a background. F5 shows the map of
the stages and, with item 14, lets you jump to another (`p02:8555`).

## The secret menu

![The menu](imagenes/menu.png)

With Q*bert or the Game Master in another slot, SPACE on the title opens this
menu (`p00:4705`): START GAME, MODIFY STAGE NUMBER and MODIFY PLAYER NUMBER.
Seen in openMSX with Q*bert and built from the ROM: 0 bytes different.

## The sound

`p14:9C47` has 120 entries, one per sound and channel; pieces with several
channels take several in a row. The tracks are in banks 14 and 15, with
notes, octave, tempo, volume, vibrato and repeat commands (`p14:94FA`).
