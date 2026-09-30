# El código

## Cómo se ha hecho el listado

Un MegaROM no se puede trazar banco a banco: la dirección `0x8123` no dice
nada si no se sabe qué banco hay puesto. `tools/bancos.py` traza el
**cartucho entero** llevando la cuenta de las tres ranuras y de sus copias en
la RAM (`0xF0F1`–`0xF0F5` y `0xC10C`), y modela las rutinas que cambian de
banco. De ahí salen las entradas de cada banco (`src/pNN.entries`) y las
tablas del despachador (`src/pNN.nocode`). Después, `tools/z80trace.py` traza
cada banco con esas entradas y `tools/mkasm.py` escribe el listado.

Dos reglas medidas que el trazador necesita:

- el código de los bancos 1 y 2 solo salta a `0xA000` con el **banco 3**
  puesto: las tablas de los 58 tipos de bicho (`p01:6875`, `p01:6E80`) llevan
  ahí, y en los bancos 6 y 9 esas direcciones son dibujos;
- la entrada 8 de la tabla de `p01:737D` cae en medio de una instrucción del
  banco 3: ese tipo de cosa no lo pone ninguna lista, y no se sigue.

`make verify` reensambla los dieciséis bancos con Pasmo y la ROM sale **byte
a byte**. `make sanity` comprueba que no queda ni un byte sin asignar: cada
rango de datos lleva su explicación, y la mayoría la saca
`tools/bloques.py` recorriendo el formato como lo recorre la rutina que lo lee
(listas de dibujos, paletas, mapas, superfilas, bloques, pistas de sonido,
fichas de los bichos, lo de cada área, las puertas).

## El armazón (banco 0)

| dirección | qué hace |
|---|---|
| `0x40B8` | INIT: RAM a cero, otros cartuchos, gancho, `jr $` |
| `0x4048` | la interrupción: sonido (bancos 14 y 15) y un cuadro de juego |
| `0x4200` | el cuadro: teclas y reparto por el estado `0xC100` |
| `0x40AE` | el despachador: salta a la entrada A de la tabla pegada detrás del `call` |
| `0x5408` | los bancos A, A+1 y A+2 |
| `0x54CC` | las listas de dibujos a la hoja (ocho formatos) |
| `0x5900`, `0x59E5` | el mapa: superfilas, bloques y la tabla de 32 × 32 de la pantalla |
| `0x57B8` | el avance: una fila de 8 puntos más y las órdenes del mapa |
| `0x4B7A` | los 32 sprites, repartidos en dos tandas que se alternan |
| `0x4E0B`–`0x4E8B` | las órdenes HMMV, HMMM y LMMM del V9938 |
| `0x4F87`, `0x4FBE` | los textos: `[x][y]` y letras, `0xFE` otro sitio, `0xFF` acaba |
| `0x5DFF` | busca King Kong 2, Q*bert o el Game Master en las otras ranuras |

Los estados del juego (`0xC100`): 1 el título, 2 la demostración, 4 empieza
el área, 5 jugando, 6 se pierde una vida, 9 el menú, 0x0A la pausa y las
contraseñas, 0x0C el final, 0x0D la ventana POWER UP (F2), 0x0E y 0x0F los
mapas (F4 y F5), 0x11 ITEM INFORMATION (F3).

## Los bichos y las cosas

Las fichas de los bichos son de `0x80` bytes (seis en `0xD000`); `ix+0` es
el tipo, `ix+1` el paso (cada tipo reparte por él con el despachador),
`ix+3` y `ix+5` la y y la x, `ix+0x70`–`0x73` la caja de choque. Las rutinas
comunes de `p01` (acercarse a Gao, copiar trozos de ficha, contar cuadros)
las usan todos; lo demás es propio de cada tipo, en los bancos 2 y 3.

## Las cifras

Medidas con `make sanity` y `make densidad`: todo el cartucho asignado,
código y datos, y el porcentaje de instrucciones con comentario de línea.
Los comentarios que salen de tablas (la RAM, los campos de las fichas, los
datos a los que apunta cada instrucción) los pone `tools/anota.py`; los
nombres de las rutinas que nadie había bautizado salen de lo que hacen.
