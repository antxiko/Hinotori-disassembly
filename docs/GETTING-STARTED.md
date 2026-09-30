# Getting started

To reproduce this disassembly you need Python 3 (with Pillow for the overall
map), GNU make and [Pasmo](https://pasmo.speccy.org/). The cartridge image
**does not travel in this repository**: bring your own.

```
hinotori.rom     131,072 bytes
sha256           d4d443c18203f1a463b4d0b356a95c5dc578e24e47e5ea596c773b63ad20fba0
```

With the file in the root of the repository:

```
make            # listing, verification, consistency and tests
```

## What each step does

| target | what it does |
|---|---|
| `make comprueba` | checks the ROM's sha256 |
| `make reconoce` | measures the header, the mapper and the bank → address rule |
| `make semillas` | traces the whole cartridge and gets the entry points of each bank |
| `make listado` | generates the sixteen `.asm` files from the binary, the notes and the seeds |
| `make verify` | reassembles each bank and the whole ROM, and compares the sha256 |
| `make sanity` | checks that not one byte is left unassigned to code or data |
| `make test` | the tests |
| `make densidad` | how many instructions carry a comment, routine by routine |
| `make imagenes` | draws the pictures of the web from the ROM |
| `make coteja` | compares them with the openMSX dumps |
| `make web` | builds the HTML pages and checks the links |

`make verify` is the one that decides: it has to end with
`OK: la ROM entera reproducible byte a byte`.

## Where everything is

- `src/hinotori_pNN.asm`: the listing, one per bank. **It is generated**: do
  not edit it by hand.
- `src/pNN.notes`: the labels (`L`), line comments (`C`), data ranges (`D`)
  and routine headers (`B`). This **is** edited. It has four parts: the one
  written by hand, the one from `tools/bloques.py` (the data the code reads,
  walked through with its format), the one from `tools/resto.py` (what is
  left, with the evidence behind it) and the one from `tools/anota.py`
  (comments that come from the tables: the RAM in `tools/ram.py`, the fields
  of the records, the calls between banks).
- `src/semillas.txt`: the code entry points the tracer cannot find on its own
  (the code of the passwords, a return address pushed on the stack, what runs
  with King Kong 2 next to it).
- `tools/`: the whole-cartridge tracer (`bancos.py`), the listing generator
  (`mkasm.py`), the ones that draw (`hoja.py`, `mapa.py`, `mapa_general.py`,
  `titulo.py`, `figuras.py`) and the openMSX probes (`omsx_*.tcl` with their
  `lanza_*.sh`).
- `docs/`: this website, in English at the root and in Spanish in `docs/es/`.
