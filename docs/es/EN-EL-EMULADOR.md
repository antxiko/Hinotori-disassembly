# En el emulador

Todo lo que se ha comprobado jugando se ha hecho en **openMSX** con la
máquina `C-BIOS_MSX2_JP` y `-romtype Konami`, **un emulador cada vez**, con
las sondas de `tools/`. Los volcados van a `work/`, que no viaja en el
repositorio: se rehacen con estas órdenes.

| sonda | qué hace |
|---|---|
| `lanza_vuelca.sh <dir> "<segundos>" ["<espacios>"]` | vuelca VRAM, paleta, RAM y registros en esos instantes |
| `lanza_bp.sh <dir> <dirección> [vez]` | vuelca cuando el Z80 pasa por ahí |
| `lanza_guion.sh <dir> "<guion>"` | espera a la partida (estado 5) y hace un guion: teclas, texto, volcados |
| `lanza_lecturas.sh` | quién lee cada byte del cartucho (un watchpoint de lectura) |

Los tres que admiten más argumentos se los pasan a openMSX: así se pone otro
cartucho en la ranura B (`-cartb kingkong2.rom -romtype Konami`).

## Lo que se ha comprobado

| qué | cómo | resultado |
|---|---|---|
| el logotipo | `lanza_bp.sh work/logo 0x66F9` | 0 bytes distintos |
| el título | `lanza_vuelca.sh work/v4 "23"` | 0 bytes y los 16 colores |
| el menú con Q*bert | `lanza_bp.sh work/menu_qbert 0x4735 120 "…" 120 -cartb qbert.rom` | 0 bytes |
| la hoja y la paleta | `lanza_bp.sh work/area_1 0x5D6E 1` y `2` | áreas 0 y 1: 0 dibujos y 0 colores distintos |
| el mapa en pantalla | volcado de la demostración y `work/area_1`, `area_2` | las filas de la pantalla, seguidas y en orden en el mapa (25/25, 31/31, 31/31) |
| las contraseñas | `lanza_guion.sh` con F1, HOME, HOME, el texto y RETURN | 15 con su cambio en la RAM |
| King Kong 2 al lado | `lanza_guion.sh … -cartb kingkong2.rom` | arranca King Kong 2; F4 → SAVE MODE |

`make coteja` repite los cotejos con los volcados que haya en `work/`.

## Lo que hay que saber

- El juego tarda: el logotipo y el título salen a partir de los 15 o 20
  segundos emulados, y no siempre en el mismo instante. Por eso las sondas
  esperan a un estado de la RAM o a una dirección, no a un tiempo fijo.
- El estado 2 es la **demostración**, no la partida: jugando es el 5.
- Las fotos que hace openMSX con `screenshot` salen con un paso de retraso
  cuando va sin freno; lo que vale son los volcados.
