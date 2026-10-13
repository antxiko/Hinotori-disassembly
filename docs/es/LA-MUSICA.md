# La música

Todo lo que suena aquí sale de ejecutar el motor de sonido del cartucho (`el_sonido_de_un_cuadro`, p14:9497, y la rutina de petición de p14:9400; lo llama la interrupción en p00:4073 con los bancos 14 y 15) en un Z80 emulado, cuadro a cuadro y a 60 por segundo, igual que lo llama el juego. Lo que el motor escribe en el PSG pasa a sonido con un AY-3-8910 (`tools/musica.py`). Cada MP3 es la pieza entera hasta donde vuelve a empezar, más 8 segundos de la vuelta apagándose; las que no se repiten acaban donde acaba el motor.

## Cotejado con openMSX

Las escrituras al PSG se han comparado cuadro a cuadro con las de openMSX (C-BIOS MSX2 japonés). En todos los cuadros el PSG queda igual:

- la pista 0x37, sus primeros 157 cuadros;
- la pista 0x6A, 166 cuadros, tal como el juego la pide.

El timbre no está cotejado: es el de un AY-3-8910 de manual, no una grabación del emulador. Las sondas están en `tools/omsx_psg.tcl` y `tools/coteja_psg.py`.

## Cómo se pide una pieza

La rutina de p14:9400 recibe el número en A: del 0x00 al 0x36 son efectos de un canal y del 0x37 en adelante hay música de más; el juego calcula el número, así que todas las pistas son «de la tabla». Hay cuatro canales de 32 bytes desde 0xC010 y 0xC0F0 guarda la copia del mezclador del PSG, que el arranque deja en 0xB8. Las pistas que suenan igual que otra se publican una sola vez; se omiten las casi mudas, y las que duran más de 75 segundos sin volver a empezar se cortan a los 75. Solo se han cotejado con openMSX las pistas 0x37 y 0x6A.

## Las músicas

**Pista 0x37** (0x37)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_37.mp3?v=dda52ada"></audio>

**Pista 0x38** (0x38)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_38.mp3?v=71214c7f"></audio>

**Pista 0x39** (0x39)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_39.mp3?v=dcc4a35e"></audio>

**Pista 0x3A** (0x3A)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 35,6 s y vuelve a empezar en el segundo 5,7.

<audio controls preload="none" src="../audio/musica_3A.mp3?v=cbc6169b"></audio>

**Pista 0x3B** (0x3B)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_3B.mp3?v=9fe8956c"></audio>

**Pista 0x3C** (0x3C)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_3C.mp3?v=6cea6406"></audio>

**Pista 0x3D** (0x3D)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 49,5 s y vuelve a empezar en el segundo 23,4.

<audio controls preload="none" src="../audio/musica_3D.mp3?v=e7a5a62b"></audio>

**Pista 0x3E** (0x3E)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_3E.mp3?v=03e74b06"></audio>

**Pista 0x3F** (0x3F)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_3F.mp3?v=00b9a0cb"></audio>

**Pista 0x40** (0x40)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 45,2 s y vuelve a empezar en el segundo 32,4.

<audio controls preload="none" src="../audio/musica_40.mp3?v=0794f642"></audio>

**Pista 0x41** (0x41)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_41.mp3?v=46dd6e41"></audio>

**Pista 0x42** (0x42)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_42.mp3?v=9127a853"></audio>

**Pista 0x43** (0x43)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 17,5 s y vuelve a empezar en el segundo 7,1.

<audio controls preload="none" src="../audio/musica_43.mp3?v=6f835d39"></audio>

**Pista 0x44** (0x44)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_44.mp3?v=29484d44"></audio>

**Pista 0x45** (0x45)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_45.mp3?v=b7c060bc"></audio>

**Pista 0x46** (0x46)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 27,4 s y vuelve a empezar en el segundo 18,8.

<audio controls preload="none" src="../audio/musica_46.mp3?v=8ae6fe48"></audio>

**Pista 0x47** (0x47)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 27,4 s y vuelve a empezar en el segundo 18,8.

<audio controls preload="none" src="../audio/musica_47.mp3?v=f3810872"></audio>

**Pista 0x48** (0x48)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 26,7 s y vuelve a empezar en el segundo 18,1.

<audio controls preload="none" src="../audio/musica_48.mp3?v=31380c8b"></audio>

**Pista 0x49** (0x49)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 9,1 s y vuelve a empezar en el segundo 0,6.

<audio controls preload="none" src="../audio/musica_49.mp3?v=039c890a"></audio>

**Pista 0x4A** (0x4A)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_4A.mp3?v=687a8bc8"></audio>

**Pista 0x4B** (0x4B)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_4B.mp3?v=afd118ca"></audio>

**Pista 0x53** (0x53)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 3,4 s.

<audio controls preload="none" src="../audio/musica_53.mp3?v=847db45c"></audio>

**Pista 0x54** (0x54)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 3,4 s.

<audio controls preload="none" src="../audio/musica_54.mp3?v=d5e92d6c"></audio>

**Pista 0x55** (0x55)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 3,4 s.

<audio controls preload="none" src="../audio/musica_55.mp3?v=92f911e7"></audio>

**Pista 0x56** (0x56)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 3,4 s.

<audio controls preload="none" src="../audio/musica_56.mp3?v=01d186b6"></audio>

**Pista 0x57** (0x57)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 3,4 s.

<audio controls preload="none" src="../audio/musica_57.mp3?v=2924f079"></audio>

**Pista 0x5F** (0x5F)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 8,8 s.

<audio controls preload="none" src="../audio/musica_5F.mp3?v=0ecc3e92"></audio>

**Pista 0x60** (0x60)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 8,8 s.

<audio controls preload="none" src="../audio/musica_60.mp3?v=ebd9250f"></audio>

**Pista 0x61** (0x61)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 8,8 s.

<audio controls preload="none" src="../audio/musica_61.mp3?v=688316d3"></audio>

**Pista 0x62** (0x62)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 8,8 s.

<audio controls preload="none" src="../audio/musica_62.mp3?v=0a66ce83"></audio>

**Pista 0x63** (0x63)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 8,8 s.

<audio controls preload="none" src="../audio/musica_63.mp3?v=0dbc7c3a"></audio>

**Pista 0x65** (0x65)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 49,1 s y vuelve a empezar en el segundo 14,9.

<audio controls preload="none" src="../audio/musica_65.mp3?v=3f25aaaf"></audio>

**Pista 0x66** (0x66)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 49,1 s y vuelve a empezar en el segundo 14,9.

<audio controls preload="none" src="../audio/musica_66.mp3?v=46501f18"></audio>

**Pista 0x67** (0x67)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 49,1 s y vuelve a empezar en el segundo 14,9.

<audio controls preload="none" src="../audio/musica_67.mp3?v=81659d7f"></audio>

**Pista 0x68** (0x68)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 49,1 s y vuelve a empezar en el segundo 14,9.

<audio controls preload="none" src="../audio/musica_68.mp3?v=c8170681"></audio>

**Pista 0x69** (0x69)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 36,9 s y vuelve a empezar en el segundo 2,8.

<audio controls preload="none" src="../audio/musica_69.mp3?v=1f57af11"></audio>

**Pista 0x6B** (0x6B)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 5,2 s.

<audio controls preload="none" src="../audio/musica_6B.mp3?v=cb560d00"></audio>

**Pista 0x6C** (0x6C)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 5,2 s.

<audio controls preload="none" src="../audio/musica_6C.mp3?v=d4c262c2"></audio>

**Pista 0x6D** (0x6D)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 5,2 s.

<audio controls preload="none" src="../audio/musica_6D.mp3?v=3ba397ab"></audio>

**Pista 0x6E** (0x6E)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 5,2 s.

<audio controls preload="none" src="../audio/musica_6E.mp3?v=cf0f32ce"></audio>

**Pista 0x6F** (0x6F)

Lo pide ninguna llamada directa: sale de la tabla de pistas por un número calculado; dura 5,2 s.

<audio controls preload="none" src="../audio/musica_6F.mp3?v=3155996f"></audio>
