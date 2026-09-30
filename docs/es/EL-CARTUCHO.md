# El cartucho

**Hinotori: Hōōhen – Gaō no Bōken** (火の鳥 鳳凰編 我王の冒険), de Konami,
1987, número de catálogo **RC-747**. Es para **MSX2**: la primera cosa que
hace (`p00:4D4D`) es esperar a que el V9938 acabe una orden mirando el bit CE
del registro de estado 2, y con un MSX1 se queda ahí.

## El mapper

Son 128 KB en dieciséis bancos de 8 KB, con el mapper de Konami **sin SCC**
(Konami4): el banco 0 está fijo en `0x4000` y los otros tres se eligen
escribiendo en `0x6000`, `0x8000` y `0xA000`. `tools/reconocimiento.py` lo
mide sobre la ROM: ni una escritura a los registros del mapper con SCC
(`0x5000`, `0x7000`, `0x9000`, `0xB000`).

Como en King Kong 2, cada banco va siempre a la misma ranura, y es el resto
de dividir entre tres: los bancos 1, 4, 7, 10 y 13 en `0x6000`; los 2, 5, 8,
11 y 14 en `0x8000`; los 3, 6, 9, 12 y 15 en `0xA000`. Se ponen **de tres en
tres** con `p00:5408` (A, A+1 y A+2, con copia en `0xF0F1`–`0xF0F3`), que
tiene cinco puertas (`5420`, `5405`, `5425`, `542A`, `542F`); `p00:53E9` pone
el 1, el 2 y en `0xA000` el que diga `0xC10C` (el 3 casi siempre, el 6 o el 9
un momento), y `p00:5434` / `543D` ponen uno suelto.

| bancos | qué hay |
|---|---|
| 0 | el armazón: arranque, interrupción, estados, VDP, hoja, mapa, textos |
| 1, 2, 3 | Gao, los bichos (58 tipos), las cosas del camino, los disparos |
| 4, 5 | las listas de dibujos de cada fase y sus fuentes; las paletas |
| 6 | los sprites de Gao, la pausa, las contraseñas, el final |
| 7, 8 | los sprites de lo que sale en cada área; 18 tiras que nadie usa |
| 9 | qué sale en cada área, las 18 puertas, grabar y cargar King Kong 2 |
| 10, 11, 12 | bloques, superfilas y mapas de las 24 áreas |
| 13 | letras y el título |
| 14, 15 | el reproductor de sonido y sus 120 pistas |

## El arranque

INIT (`0x40B8`) borra la RAM, mira las otras ranuras (`p00:5DFF`), pone la
interrupción en H.TIMI (`jp 0x4048`) y se queda en `jr $`: todo el juego
corre desde la interrupción. Cada cuadro, la interrupción toca el sonido con
los bancos 14 y 15 puestos, los devuelve y llama al juego (`p00:4200`), que
reparte por el estado `0xC100`.

Si en otra ranura hay un **King Kong 2**, no arranca Hinotori: arranca King
Kong 2 con un gancho de Hinotori (ver [Hallazgos](HALLAZGOS.md)).

## Lo que no es de nadie

La cabecera lleva, detrás del `AB` e INIT, una segunda cabecera en `0x4010`:
`'C'`, `'D'` y una lista de direcciones de la RAM de este juego (la fase en
`0xC161`, las vidas en `0xC160`…). Ningún código de este cartucho la lee: es
para otro cartucho puesto al lado. King Kong 2 lleva la suya en el mismo
sitio, y es justo lo que Hinotori busca en él.
