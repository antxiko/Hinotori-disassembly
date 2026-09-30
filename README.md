# Hinotori — a commented disassembly

*(También disponible [en castellano](README.es.md).)*

A commented disassembly of ***Hinotori: Hōōhen – Gaō no Bōken***
(火の鳥 鳳凰編 我王の冒険), Konami, 1987, cartridge **RC-747** for the
**MSX2**: a 128 KB MegaROM with Konami's mapper without SCC, sixteen 8 KB
banks.

**The website**: https://antxiko.github.io/Hinotori-disassembly/

| | |
|---|---|
| explained | 100% (32,229 bytes of code, 98,843 of data) |
| commented | 40.4% of the instructions |
| routines | 1,944, none below 10% |
| reassembly | the ROM, byte for byte |
| pictures | drawn from the ROM and checked against openMSX |

## What is here

- The listing of the sixteen banks (`src/hinotori_pNN.asm`), generated from
  the binary and the notes, which reassembles the exact ROM.
- The six stages with their three columns and their room, and the 18 gates
  that join them, from the cartridge's tables.
- Gao in his 20 poses, the 132 sprites of what appears in each area and the
  41 items.
- The secrets: 17 cheat passwords (one that cannot be typed), the menu that
  appears with Q*bert or the Game Master next to it, and King Kong 2, which
  with Hinotori next to it can be saved to tape.

## How to reproduce it

You need Python 3 (with Pillow), GNU make, [Pasmo](https://pasmo.speccy.org/)
and **your own cartridge image** as `hinotori.rom` at the root:

```
sha256  d4d443c18203f1a463b4d0b356a95c5dc578e24e47e5ea596c773b63ad20fba0
make
```

The details are in [Getting started](docs/GETTING-STARTED.md).

## Notice

The game belongs to Konami; only the analysis, the comments and the tools are
here. The ROM is not distributed. See [LEGAL-NOTICE.md](LEGAL-NOTICE.md).
