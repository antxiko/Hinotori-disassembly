# Empezar

Para reproducir este desensamblado hace falta Python 3 (con Pillow para el
mapa general), GNU make y [Pasmo](https://pasmo.speccy.org/). La imagen del
cartucho **no viaja en este repositorio**: cada cual pone la suya.

```
hinotori.rom     131.072 bytes
sha256           d4d443c18203f1a463b4d0b356a95c5dc578e24e47e5ea596c773b63ad20fba0
```

Con el fichero en la raíz del repositorio:

```
make            # listado, verificación, coherencia y tests
```

## Qué hace cada paso

| orden | qué hace |
|---|---|
| `make comprueba` | comprueba el sha256 de la ROM |
| `make reconoce` | mide la cabecera, el mapper y la regla banco → dirección |
| `make semillas` | traza el cartucho entero y saca las entradas de cada banco |
| `make listado` | genera los dieciséis `.asm` desde el binario, las notas y las semillas |
| `make verify` | reensambla cada banco y la ROM entera, y compara los sha256 |
| `make sanity` | comprueba que no queda un solo byte sin asignar a código o a datos |
| `make test` | los tests |
| `make densidad` | cuántas instrucciones llevan comentario, rutina a rutina |
| `make imagenes` | dibuja las imágenes de la web desde la ROM |
| `make coteja` | las compara con los volcados de openMSX |
| `make web` | genera las páginas HTML y comprueba los enlaces |

`make verify` es el que decide: tiene que acabar con
`OK: la ROM entera reproducible byte a byte`.

## Dónde está cada cosa

- `src/hinotori_pNN.asm`: el listado, uno por banco. **Se genera**: no se
  edita a mano.
- `src/pNN.notes`: las etiquetas (`L`), los comentarios de línea (`C`), los
  rangos de datos (`D`) y los encabezados de rutina (`B`). Esto **sí** se
  edita. Tiene cuatro partes: la escrita a mano, la de `tools/bloques.py`
  (los datos que lee el código, recorridos con su formato), la de
  `tools/resto.py` (lo que queda, con la prueba que lo sostiene) y la de
  `tools/anota.py` (comentarios que salen de las tablas: la RAM de
  `tools/ram.py`, los campos de las fichas, las llamadas entre bancos).
- `src/semillas.txt`: las entradas de código que el trazador no encuentra
  solo (el código de las contraseñas, una vuelta metida en la pila, lo que
  corre con King Kong 2 al lado).
- `tools/`: el trazador del cartucho entero (`bancos.py`), el generador del
  listado (`mkasm.py`), los que dibujan (`hoja.py`, `mapa.py`,
  `mapa_general.py`, `titulo.py`, `figuras.py`) y las sondas de openMSX
  (`omsx_*.tcl` con sus `lanza_*.sh`).
- `docs/`: esta web, en inglés en la raíz y en castellano en `docs/es/`.
