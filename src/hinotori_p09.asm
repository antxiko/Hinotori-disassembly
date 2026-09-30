; ==========================================================================
; HINOTORI - Konami (1987) - MSX - MegaROM RC-747 de 128 KB (Konami4) - banco 09 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS dibujos_9DB0_cola: 32 dibujos de 8x8 a 4 bits (32 bytes cada uno) que
;   la lista de 0x63A3 sube a la hoja desde el A0 (sigue del banco anterior,
;   0x9DB0); se solapan 5 bloques (0xA000-0xA1B0, 0xA130-0xA162,
;   0xA162-0xA186, 0xA186-0xA1AA, 0xA1AA-0xA1D3); lo leen p00:54CC (lista
;   0x63A3), p01:6CB7, p01:71D4, p01:7328, p01:74DE (467 bytes)
;   0xa000..0xa1d3  (467 bytes)
DATA_dibujos_9DB0_cola:
	defb 000h,000h,000h,0f6h,000h,000h,000h,00fh	; a000  ........
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; a008  ........
	defb 066h,0f9h,06eh,0f0h,0ffh,0ffh,09eh,0f0h	; a010  f.n.....
	defb 0ffh,0ffh,0f6h,0f0h,09fh,0ffh,096h,0f0h	; a018  ........
	defb 0f9h,0f9h,06fh,000h,069h,096h,0f0h,000h	; a020  ..o.i...
	defb 0ffh,0ffh,000h,000h,000h,000h,000h,000h	; a028  ........
	defb 000h,00fh,0c8h,08ch,000h,0fch,088h,0cch	; a030  ........
	defb 00fh,0c8h,08ch,0cch,00fh,0ffh,0cch,0c8h	; a038  ........
	defb 00fh,0ffh,0fch,08fh,0f9h,06fh,0f8h,0f0h	; a040  .....o..
	defb 0feh,09fh,0ffh,000h,00fh,0ffh,000h,000h	; a048  ........
	defb 0cah,08fh,000h,000h,0cah,0f0h,000h,000h	; a050  ........
	defb 08fh,000h,000h,000h,0f0h,000h,000h,000h	; a058  ........
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; a060  ........
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; a068  ........
	defb 0f6h,0eeh,0cch,0cch,0f6h,0ech,0ech,0cch	; a070  ........
	defb 00fh,06eh,0cch,0ech,00fh,06eh,0eeh,0ceh	; a078  .n...n..
	defb 000h,0f6h,0ech,0eeh,000h,00fh,066h,0eeh	; a080  ......f.
	defb 000h,000h,0ffh,066h,000h,000h,000h,0ffh	; a088  ...f....
	defb 0cch,0cch,0ceh,06fh,0cch,0eeh,0eeh,06fh	; a090  ...o...o
	defb 0ceh,0cch,0e6h,0f0h,0ech,0eeh,0e6h,0f0h	; a098  ........
	defb 0ceh,0eeh,06fh,000h,0eeh,066h,0f0h,000h	; a0a0  ..o..f..
	defb 066h,0ffh,000h,000h,0ffh,000h,000h,000h	; a0a8  f.......
	defb 000h,000h,000h,0f6h,000h,000h,00fh,06fh	; a0b0  .......o
	defb 000h,000h,0f6h,0ffh,000h,00fh,06fh,0ffh	; a0b8  ......o.
	defb 000h,00fh,06fh,0fah,000h,00fh,06ah,0aah	; a0c0  ..o...j.
	defb 000h,0f6h,066h,066h,000h,00fh,0ffh,0ffh	; a0c8  ..ff....
	defb 0feh,0f0h,000h,000h,0afh,0efh,000h,000h	; a0d0  ........
	defb 0ffh,0eeh,0f0h,000h,0afh,0ffh,0efh,000h	; a0d8  ........
	defb 0aah,0efh,0efh,000h,0aah,0eeh,0efh,000h	; a0e0  ........
	defb 066h,066h,066h,0f0h,0ffh,0ffh,0ffh,000h	; a0e8  fff.....
	defb 00fh,0f8h,08ah,088h,00fh,09fh,0f8h,088h	; a0f0  ........
	defb 00fh,099h,09fh,0ffh,00fh,099h,099h,099h	; a0f8  ........
	defb 000h,0f9h,099h,096h,000h,00fh,0f9h,066h	; a100  .......f
	defb 000h,000h,00fh,0ffh,000h,000h,000h,000h	; a108  ........
	defb 088h,088h,08fh,0f0h,088h,08fh,0f6h,0f0h	; a110  ........
	defb 0ffh,0f6h,066h,0f0h,096h,066h,066h,0f0h	; a118  ..f..ff.
	defb 066h,066h,06fh,000h,066h,06fh,0f0h,000h	; a120  ffo.fo..
	defb 0ffh,0f0h,000h,000h,000h,000h,000h,000h	; a128  ........
	defb 0aah,0a1h,0d3h,0a1h,00bh,0a2h,0d5h,0a2h	; a130  ........
	defb 00ah,0a3h,03ch,0a3h,062h,0a3h,0a6h,0a3h	; a138  ..<.b...
	defb 0deh,0a3h,01ch,0a4h,05ah,0a4h,08ch,0a4h	; a140  ....Z...
	defb 0d9h,0a4h,01dh,0a5h,064h,0a5h,099h,0a5h	; a148  ....d...
	defb 0e6h,0a5h,02ah,0a6h,043h,0a2h,048h,0a2h	; a150  ..*.C.H.
	defb 04dh,0a2h,055h,0a2h,05ah,0a2h,062h,0a2h	; a158  M.U.Z.b.
	defb 067h,0a2h,07ah,0a6h,0fdh,0a6h,01dh,0a7h	; a160  g.z.....
	defb 070h,0a7h,0a8h,0a7h,004h,0a8h,054h,0a8h	; a168  p.....T.
	defb 080h,0a8h,09ah,0a8h,0c9h,0a8h,016h,0a9h	; a170  ........
	defb 054h,0a9h,086h,0a9h,0f7h,0a9h,02fh,0aah	; a178  T...../.
	defb 085h,0aah,0e7h,0aah,019h,0abh,0dch,0ach	; a180  ........
	defb 0e2h,0ach,0e8h,0ach,0eeh,0ach,0f4h,0ach	; a188  ........
	defb 0fah,0ach,000h,0adh,006h,0adh,00ch,0adh	; a190  ........
	defb 012h,0adh,018h,0adh,01eh,0adh,024h,0adh	; a198  ......$.
	defb 02ah,0adh,030h,0adh,036h,0adh,03ch,0adh	; a1a0  *.0.6.<.
	defb 042h,0adh,00ah,030h,0c8h,014h,03ch,021h	; a1a8  B..0..<!
	defb 026h,034h,096h,001h,000h,0d8h,03ch,030h	; a1b0  &4....<0
	defb 028h,044h,030h,0c8h,04ch,034h,029h,04eh	; a1b8  (D0.L4)N
	defb 030h,068h,056h,034h,082h,05ch,030h,0d8h	; a1c0  0hV4.\0.
	defb 068h,034h,02eh,080h,03ch,0b2h,0a0h,008h	; a1c8  h4..<...
	defb 017h,0ffh,0ffh	; a1d0

; ----------------------------------------------------------------------
; DATOS cosas_A1D3: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (56 bytes)
;   0xa1d3..0xa20b  (56 bytes)
DATA_cosas_A1D3:
	defb 014h,004h,00eh	; a1d3
	defb 026h,034h,091h	; a1d6
	defb 036h,034h,029h	; a1d9
	defb 040h,030h,0c8h	; a1dc
	defb 050h,03ch,040h	; a1df
	defb 052h,034h,0a4h	; a1e2
	defb 05eh,028h,020h	; a1e5
	defb 063h,034h,06bh	; a1e8
	defb 064h,010h,003h	; a1eb
	defb 06ch,030h,028h	; a1ee
	defb 06eh,030h,068h	; a1f1
	defb 076h,034h,085h	; a1f4
	defb 080h,034h,0c9h	; a1f7
	defb 084h,00ch,01dh	; a1fa
	defb 094h,030h,0c8h	; a1fd
	defb 0aeh,034h,029h	; a200
	defb 0b2h,030h,048h	; a203
	defb 0b6h,028h,0c6h	; a206
	defb 0ffh,0ffh	; a209

; ----------------------------------------------------------------------
; DATOS cosas_A20B: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (56 bytes)
;   0xa20b..0xa243  (56 bytes)
DATA_cosas_A20B:
	defb 002h,030h,058h	; a20b
	defb 004h,034h,056h	; a20e
	defb 015h,040h,020h	; a211
	defb 028h,03ch,083h	; a214
	defb 03ah,034h,024h	; a217
	defb 03ah,030h,0d8h	; a21a
	defb 042h,034h,0cah	; a21d
	defb 044h,030h,028h	; a220
	defb 046h,030h,058h	; a223
	defb 04eh,034h,085h	; a226
	defb 06ah,034h,08dh	; a229
	defb 06ah,030h,0d8h	; a22c
	defb 090h,030h,028h	; a22f
	defb 092h,030h,088h	; a232
	defb 09ah,030h,0d8h	; a235
	defb 0a2h,030h,028h	; a238
	defb 0b6h,030h,058h	; a23b
	defb 0b8h,030h,088h	; a23e
	defb 0ffh,0ffh	; a241

; ----------------------------------------------------------------------
; DATOS cosas_A243: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (5 bytes)
;   0xa243..0xa248  (5 bytes)
DATA_cosas_A243:
	defb 026h,014h,006h	; a243
	defb 0ffh,0ffh	; a246

; ----------------------------------------------------------------------
; DATOS cosas_A248: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (5 bytes)
;   0xa248..0xa24d  (5 bytes)
DATA_cosas_A248:
	defb 026h,014h,007h	; a248
	defb 0ffh,0ffh	; a24b

; ----------------------------------------------------------------------
; DATOS cosas_A24D: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (8 bytes)
;   0xa24d..0xa255  (8 bytes)
DATA_cosas_A24D:
	defb 026h,014h,008h	; a24d
	defb 026h,014h,00bh	; a250
	defb 0ffh,0ffh	; a253

; ----------------------------------------------------------------------
; DATOS cosas_A255: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (5 bytes)
;   0xa255..0xa25a  (5 bytes)
DATA_cosas_A255:
	defb 026h,014h,009h	; a255
	defb 0ffh,0ffh	; a258

; ----------------------------------------------------------------------
; DATOS cosas_A25A: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (8 bytes)
;   0xa25a..0xa262  (8 bytes)
DATA_cosas_A25A:
	defb 026h,014h,00ah	; a25a
	defb 026h,014h,00ch	; a25d
	defb 0ffh,0ffh	; a260

; ----------------------------------------------------------------------
; DATOS cosas_A262: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (5 bytes)
;   0xa262..0xa267  (5 bytes)
DATA_cosas_A262:
	defb 026h,014h,00dh	; a262
	defb 0ffh,0ffh	; a265

; ----------------------------------------------------------------------
; DATOS cosas_A267: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (2 bytes)
;   0xa267..0xa269  (2 bytes)
DATA_cosas_A267:
	defb 0ffh,0ffh	; a267

; ----------------------------------------------------------------------
; DATOS puertas: las 18 PUERTAS: [area][fila lo][fila hi][y][x][?] a donde
;   lleva cada una (p01:607C: 0xC486-0xC48B y a cambiar de area); las 0-5 van
;   a las salas, las 6-13 de las salas a las fases, las 14-17 al area 0x18,
;   que no existe; lo leen p01:6083 (108 bytes)
;   0xa269..0xa2d5  (108 bytes)
DATA_puertas:
	defb 014h,01fh,000h,090h,080h,000h	; a269
	defb 013h,01fh,000h,090h,080h,000h	; a26f
	defb 017h,01fh,000h,090h,080h,000h	; a275
	defb 012h,01fh,000h,090h,080h,000h	; a27b
	defb 015h,01fh,000h,090h,080h,000h	; a281
	defb 016h,01fh,000h,090h,080h,000h	; a287
	defb 004h,01fh,000h,090h,080h,000h	; a28d
	defb 007h,01fh,000h,090h,080h,000h	; a293
	defb 00ah,01fh,000h,090h,080h,000h	; a299
	defb 00dh,01fh,000h,090h,080h,000h	; a29f
	defb 010h,01fh,000h,090h,080h,000h	; a2a5
	defb 001h,01fh,000h,090h,080h,000h	; a2ab
	defb 004h,01fh,000h,090h,080h,000h	; a2b1
	defb 00ah,01fh,000h,090h,080h,000h	; a2b7
	defb 018h,01fh,000h,090h,080h,000h	; a2bd
	defb 018h,01fh,000h,090h,080h,000h	; a2c3
	defb 018h,01fh,000h,090h,080h,000h	; a2c9
	defb 018h,01fh,000h,090h,080h,000h	; a2cf

; ----------------------------------------------------------------------
; DATOS cosas_A2D5: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (53 bytes)
;   0xa2d5..0xa30a  (53 bytes)
DATA_cosas_A2D5:
	defb 00ah,030h,0b8h	; a2d5
	defb 014h,034h,021h	; a2d8
	defb 01ch,030h,0d8h	; a2db
	defb 02ah,030h,0d8h	; a2de
	defb 05ah,034h,021h	; a2e1
	defb 05eh,034h,02bh	; a2e4
	defb 074h,010h,001h	; a2e7
	defb 077h,030h,0d8h	; a2ea
	defb 084h,030h,0b8h	; a2ed
	defb 087h,034h,034h	; a2f0
	defb 08eh,030h,0d8h	; a2f3
	defb 09ah,030h,028h	; a2f6
	defb 09ch,034h,022h	; a2f9
	defb 0a8h,030h,028h	; a2fc
	defb 0b2h,030h,0a8h	; a2ff
	defb 0b8h,034h,0d4h	; a302
	defb 0beh,030h,058h	; a305
	defb 0ffh,0ffh	; a308

; ----------------------------------------------------------------------
; DATOS cosas_A30A: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (50 bytes)
;   0xa30a..0xa33c  (50 bytes)
DATA_cosas_A30A:
	defb 014h,004h,00fh	; a30a
	defb 036h,034h,023h	; a30d
	defb 044h,030h,048h	; a310
	defb 058h,030h,098h	; a313
	defb 05bh,034h,0d1h	; a316
	defb 068h,030h,028h	; a319
	defb 06ch,030h,0b8h	; a31c
	defb 075h,034h,0d6h	; a31f
	defb 09ah,028h,0a7h	; a322
	defb 09ch,030h,038h	; a325
	defb 0a2h,030h,098h	; a328
	defb 0aah,030h,0d8h	; a32b
	defb 0ach,030h,038h	; a32e
	defb 0afh,030h,058h	; a331
	defb 0b7h,030h,0a8h	; a334
	defb 0bch,034h,03eh	; a337
	defb 0ffh,0ffh	; a33a

; ----------------------------------------------------------------------
; DATOS cosas_A33C: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (38 bytes)
;   0xa33c..0xa362  (38 bytes)
DATA_cosas_A33C:
	defb 02ah,028h,081h	; a33c
	defb 03ch,03ch,0d1h	; a33f
	defb 040h,034h,051h	; a342
	defb 047h,030h,028h	; a345
	defb 04eh,030h,0d8h	; a348
	defb 050h,034h,0d6h	; a34b
	defb 054h,03ch,020h	; a34e
	defb 060h,00ch,01bh	; a351
	defb 075h,040h,021h	; a354
	defb 093h,034h,0d5h	; a357
	defb 0ach,008h,015h	; a35a
	defb 0b0h,034h,089h	; a35d
	defb 0ffh,0ffh	; a360

; ----------------------------------------------------------------------
; DATOS cosas_A362: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (68 bytes)
;   0xa362..0xa3a6  (68 bytes)
DATA_cosas_A362:
	defb 022h,034h,066h	; a362
	defb 022h,030h,078h	; a365
	defb 029h,030h,098h	; a368
	defb 02eh,030h,058h	; a36b
	defb 02eh,030h,088h	; a36e
	defb 035h,030h,0b8h	; a371
	defb 03ah,034h,0d1h	; a374
	defb 03eh,030h,048h	; a377
	defb 04eh,030h,028h	; a37a
	defb 052h,034h,08dh	; a37d
	defb 054h,010h,000h	; a380
	defb 078h,030h,0d8h	; a383
	defb 07ah,034h,0d4h	; a386
	defb 07ch,034h,046h	; a389
	defb 086h,030h,028h	; a38c
	defb 088h,034h,03dh	; a38f
	defb 09eh,034h,066h	; a392
	defb 0a0h,030h,0d8h	; a395
	defb 0a2h,030h,0d8h	; a398
	defb 0aah,030h,028h	; a39b
	defb 0ach,030h,068h	; a39e
	defb 0aeh,034h,065h	; a3a1
	defb 0ffh,0ffh	; a3a4

; ----------------------------------------------------------------------
; DATOS cosas_A3A6: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (56 bytes)
;   0xa3a6..0xa3de  (56 bytes)
DATA_cosas_A3A6:
	defb 014h,004h,010h	; a3a6
	defb 02eh,030h,048h	; a3a9
	defb 04ah,034h,086h	; a3ac
	defb 04ah,030h,0d8h	; a3af
	defb 05eh,034h,02ah	; a3b2
	defb 06ch,030h,0d8h	; a3b5
	defb 06fh,034h,0dbh	; a3b8
	defb 072h,034h,08dh	; a3bb
	defb 07dh,034h,02eh	; a3be
	defb 07dh,034h,0ddh	; a3c1
	defb 07fh,018h,071h	; a3c4
	defb 092h,028h,088h	; a3c7
	defb 095h,034h,03dh	; a3ca
	defb 09ch,008h,014h	; a3cd
	defb 0aah,030h,048h	; a3d0
	defb 0b4h,028h,0c2h	; a3d3
	defb 0b8h,030h,028h	; a3d6
	defb 0beh,030h,0b8h	; a3d9
	defb 0ffh,0ffh	; a3dc

; ----------------------------------------------------------------------
; DATOS cosas_A3DE: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (62 bytes)
;   0xa3de..0xa41c  (62 bytes)
DATA_cosas_A3DE:
	defb 029h,030h,088h	; a3de
	defb 034h,030h,048h	; a3e1
	defb 038h,030h,048h	; a3e4
	defb 03ah,030h,058h	; a3e7
	defb 044h,030h,0d8h	; a3ea
	defb 048h,034h,0d9h	; a3ed
	defb 05ah,030h,058h	; a3f0
	defb 05ah,034h,08dh	; a3f3
	defb 070h,03ch,020h	; a3f6
	defb 074h,00ch,01ah	; a3f9
	defb 07ah,030h,0c8h	; a3fc
	defb 07dh,040h,022h	; a3ff
	defb 084h,030h,088h	; a402
	defb 08ch,034h,021h	; a405
	defb 09fh,030h,088h	; a408
	defb 0a4h,030h,028h	; a40b
	defb 0a6h,030h,028h	; a40e
	defb 0aah,034h,0d9h	; a411
	defb 0bch,034h,024h	; a414
	defb 0c2h,030h,0b8h	; a417
	defb 0ffh,0ffh	; a41a

; ----------------------------------------------------------------------
; DATOS cosas_A41C: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (62 bytes)
;   0xa41c..0xa45a  (62 bytes)
DATA_cosas_A41C:
	defb 01ah,034h,065h	; a41c
	defb 021h,030h,0b8h	; a41f
	defb 026h,030h,068h	; a422
	defb 02ch,034h,0d9h	; a425
	defb 049h,030h,0a8h	; a428
	defb 04ch,030h,068h	; a42b
	defb 04eh,030h,068h	; a42e
	defb 050h,034h,02eh	; a431
	defb 052h,030h,0d8h	; a434
	defb 056h,030h,058h	; a437
	defb 066h,034h,0d9h	; a43a
	defb 076h,034h,031h	; a43d
	defb 076h,028h,0a9h	; a440
	defb 092h,034h,0bdh	; a443
	defb 094h,008h,018h	; a446
	defb 09eh,028h,063h	; a449
	defb 0a8h,030h,028h	; a44c
	defb 0aah,034h,0d2h	; a44f
	defb 0b0h,030h,0a8h	; a452
	defb 0bah,030h,038h	; a455
	defb 0ffh,0ffh	; a458

; ----------------------------------------------------------------------
; DATOS cosas_A45A: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (50 bytes)
;   0xa45a..0xa48c  (50 bytes)
DATA_cosas_A45A:
	defb 014h,004h,011h	; a45a
	defb 026h,030h,068h	; a45d
	defb 02eh,034h,021h	; a460
	defb 030h,030h,0b8h	; a463
	defb 036h,034h,0b4h	; a466
	defb 040h,034h,081h	; a469
	defb 04dh,040h,043h	; a46c
	defb 05ch,034h,081h	; a46f
	defb 062h,030h,0a8h	; a472
	defb 082h,030h,038h	; a475
	defb 086h,034h,071h	; a478
	defb 092h,034h,04dh	; a47b
	defb 094h,030h,088h	; a47e
	defb 099h,034h,025h	; a481
	defb 0aah,034h,0d9h	; a484
	defb 0bah,030h,068h	; a487
	defb 0ffh,0ffh	; a48a

; ----------------------------------------------------------------------
; DATOS cosas_A48C: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (77 bytes)
;   0xa48c..0xa4d9  (77 bytes)
DATA_cosas_A48C:
	defb 000h,034h,065h	; a48c
	defb 000h,030h,078h	; a48f
	defb 010h,030h,028h	; a492
	defb 01dh,034h,05dh	; a495
	defb 024h,010h,004h	; a498
	defb 030h,034h,029h	; a49b
	defb 030h,030h,048h	; a49e
	defb 044h,030h,058h	; a4a1
	defb 054h,030h,098h	; a4a4
	defb 054h,034h,0d1h	; a4a7
	defb 056h,034h,0d4h	; a4aa
	defb 05ch,034h,026h	; a4ad
	defb 05dh,030h,0d8h	; a4b0
	defb 074h,034h,021h	; a4b3
	defb 076h,034h,0aah	; a4b6
	defb 082h,030h,058h	; a4b9
	defb 089h,030h,068h	; a4bc
	defb 08ch,030h,028h	; a4bf
	defb 098h,030h,0d8h	; a4c2
	defb 0a2h,034h,025h	; a4c5
	defb 0ach,034h,0d1h	; a4c8
	defb 0aeh,034h,0dbh	; a4cb
	defb 0b6h,03ch,0d0h	; a4ce
	defb 0b8h,00ch,01eh	; a4d1
	defb 0bdh,030h,0d8h	; a4d4
	defb 0ffh,0ffh	; a4d7

; ----------------------------------------------------------------------
; DATOS cosas_A4D9: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (68 bytes)
;   0xa4d9..0xa51d  (68 bytes)
DATA_cosas_A4D9:
	defb 011h,034h,0c9h	; a4d9
	defb 034h,030h,028h	; a4dc
	defb 036h,034h,02dh	; a4df
	defb 040h,008h,019h	; a4e2
	defb 04eh,018h,081h	; a4e5
	defb 056h,018h,041h	; a4e8
	defb 066h,018h,082h	; a4eb
	defb 06eh,018h,021h	; a4ee
	defb 06eh,018h,082h	; a4f1
	defb 082h,030h,088h	; a4f4
	defb 082h,034h,0adh	; a4f7
	defb 082h,018h,0c1h	; a4fa
	defb 08ah,028h,0a4h	; a4fd
	defb 08eh,034h,0ddh	; a500
	defb 08eh,018h,081h	; a503
	defb 092h,030h,028h	; a506
	defb 096h,034h,0d1h	; a509
	defb 09eh,030h,048h	; a50c
	defb 09eh,030h,0b8h	; a50f
	defb 0a8h,030h,038h	; a512
	defb 0a8h,030h,0b8h	; a515
	defb 0b2h,034h,0ddh	; a518
	defb 0ffh,0ffh	; a51b

; ----------------------------------------------------------------------
; DATOS cosas_A51D: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (71 bytes)
;   0xa51d..0xa564  (71 bytes)
DATA_cosas_A51D:
	defb 014h,004h,012h	; a51d
	defb 028h,03ch,0d1h	; a520
	defb 038h,034h,022h	; a523
	defb 046h,018h,021h	; a526
	defb 046h,018h,041h	; a529
	defb 046h,018h,061h	; a52c
	defb 046h,018h,081h	; a52f
	defb 046h,018h,0a1h	; a532
	defb 046h,018h,0c1h	; a535
	defb 052h,030h,028h	; a538
	defb 057h,030h,0d8h	; a53b
	defb 060h,034h,09ah	; a53e
	defb 06eh,030h,028h	; a541
	defb 07ah,030h,0d8h	; a544
	defb 082h,034h,0b9h	; a547
	defb 082h,018h,021h	; a54a
	defb 094h,030h,0a8h	; a54d
	defb 0a1h,034h,0adh	; a550
	defb 0a2h,018h,022h	; a553
	defb 0a6h,018h,0a3h	; a556
	defb 0a8h,010h,005h	; a559
	defb 0aeh,028h,02ah	; a55c
	defb 0b6h,030h,098h	; a55f
	defb 0ffh,0ffh	; a562

; ----------------------------------------------------------------------
; DATOS cosas_A564: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (53 bytes)
;   0xa564..0xa599  (53 bytes)
DATA_cosas_A564:
	defb 04ch,030h,028h	; a564
	defb 058h,030h,0b8h	; a567
	defb 05ah,034h,0b5h	; a56a
	defb 062h,030h,0d8h	; a56d
	defb 076h,030h,0d8h	; a570
	defb 078h,030h,0d8h	; a573
	defb 080h,03ch,020h	; a576
	defb 08ah,018h,083h	; a579
	defb 08eh,018h,0c3h	; a57c
	defb 090h,00ch,01fh	; a57f
	defb 094h,030h,0a8h	; a582
	defb 097h,040h,044h	; a585
	defb 09ah,018h,021h	; a588
	defb 0a2h,034h,02dh	; a58b
	defb 0a6h,018h,041h	; a58e
	defb 0ach,034h,02eh	; a591
	defb 0ach,030h,088h	; a594
	defb 0ffh,0ffh	; a597

; ----------------------------------------------------------------------
; DATOS cosas_A599: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (77 bytes)
;   0xa599..0xa5e6  (77 bytes)
DATA_cosas_A599:
	defb 008h,030h,048h	; a599
	defb 008h,030h,068h	; a59c
	defb 010h,030h,0d8h	; a59f
	defb 012h,030h,0d8h	; a5a2
	defb 02ah,030h,038h	; a5a5
	defb 02eh,030h,0d8h	; a5a8
	defb 042h,020h,020h	; a5ab
	defb 042h,020h,0c0h	; a5ae
	defb 04eh,020h,020h	; a5b1
	defb 04eh,020h,0c0h	; a5b4
	defb 052h,020h,040h	; a5b7
	defb 052h,020h,0a0h	; a5ba
	defb 060h,020h,0a0h	; a5bd
	defb 060h,020h,0c0h	; a5c0
	defb 064h,020h,080h	; a5c3
	defb 06ch,010h,002h	; a5c6
	defb 070h,034h,02dh	; a5c9
	defb 076h,018h,041h	; a5cc
	defb 088h,030h,0b8h	; a5cf
	defb 094h,030h,048h	; a5d2
	defb 0a0h,030h,0b8h	; a5d5
	defb 0a6h,018h,0c1h	; a5d8
	defb 0ach,034h,0d9h	; a5db
	defb 0b6h,030h,088h	; a5de
	defb 0b8h,034h,031h	; a5e1
	defb 0ffh,0ffh	; a5e4

; ----------------------------------------------------------------------
; DATOS cosas_A5E6: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (68 bytes)
;   0xa5e6..0xa62a  (68 bytes)
DATA_cosas_A5E6:
	defb 014h,004h,013h	; a5e6
	defb 028h,030h,058h	; a5e9
	defb 02ah,034h,055h	; a5ec
	defb 032h,030h,0a8h	; a5ef
	defb 03ah,034h,031h	; a5f2
	defb 03eh,030h,0c8h	; a5f5
	defb 044h,030h,068h	; a5f8
	defb 04ah,034h,091h	; a5fb
	defb 052h,020h,0c0h	; a5fe
	defb 056h,020h,020h	; a601
	defb 05eh,020h,060h	; a604
	defb 06ch,020h,060h	; a607
	defb 06ch,020h,0c0h	; a60a
	defb 070h,020h,020h	; a60d
	defb 070h,020h,080h	; a610
	defb 074h,020h,0c0h	; a613
	defb 078h,020h,040h	; a616
	defb 07ch,020h,080h	; a619
	defb 09eh,018h,041h	; a61c
	defb 0a0h,008h,016h	; a61f
	defb 0aah,034h,0b5h	; a622
	defb 0b8h,028h,0a5h	; a625
	defb 0ffh,0ffh	; a628

; ----------------------------------------------------------------------
; DATOS cosas_A62A: cosas puestas en el camino: [fila lo][fila hi +
;   4*tipo][dato] de 3 bytes, 0xFFFF acaba (p01:7323); el tipo 4 es el torii
;   que lleva a la sala y el 5 la salida de la sala, con el numero de puerta
;   en el dato; lo leen p01:7328 (80 bytes)
;   0xa62a..0xa67a  (80 bytes)
DATA_cosas_A62A:
	defb 004h,020h,040h	; a62a
	defb 00ah,020h,0c0h	; a62d
	defb 00eh,020h,020h	; a630
	defb 00eh,020h,060h	; a633
	defb 022h,028h,0abh	; a636
	defb 02ah,018h,0c1h	; a639
	defb 032h,034h,03bh	; a63c
	defb 036h,030h,0c8h	; a63f
	defb 03ch,030h,058h	; a642
	defb 042h,034h,0a9h	; a645
	defb 056h,020h,060h	; a648
	defb 05ah,020h,0c0h	; a64b
	defb 05eh,020h,020h	; a64e
	defb 062h,020h,0a0h	; a651
	defb 066h,020h,080h	; a654
	defb 06eh,020h,0c0h	; a657
	defb 076h,020h,020h	; a65a
	defb 08ah,020h,020h	; a65d
	defb 08ah,020h,0c0h	; a660
	defb 09ah,020h,060h	; a663
	defb 09ah,020h,080h	; a666
	defb 0a2h,020h,040h	; a669
	defb 0a2h,020h,0a0h	; a66c
	defb 0b2h,020h,060h	; a66f
	defb 0b2h,020h,0c0h	; a672
	defb 0bah,020h,0a0h	; a675
	defb 0ffh,0ffh	; a678

; ----------------------------------------------------------------------
; DATOS bichos_A67A: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (131 bytes)
;   0xa67a..0xa6fd  (131 bytes)
DATA_bichos_A67A:
	defb 000h,010h,020h	; a67a
	defb 001h,010h,0c0h	; a67d
	defb 003h,00eh,0a0h	; a680
	defb 007h,00eh,060h	; a683
	defb 009h,010h,080h	; a686
	defb 009h,00eh,0c0h	; a689
	defb 00bh,010h,040h	; a68c
	defb 00fh,00eh,0a0h	; a68f
	defb 047h,004h,040h	; a692
	defb 04bh,004h,0c0h	; a695
	defb 057h,018h,060h	; a698
	defb 05dh,010h,0c0h	; a69b
	defb 063h,018h,060h	; a69e
	defb 063h,010h,080h	; a6a1
	defb 067h,00eh,060h	; a6a4
	defb 067h,010h,0c0h	; a6a7
	defb 06fh,00eh,0e0h	; a6aa
	defb 073h,00eh,020h	; a6ad
	defb 077h,018h,010h	; a6b0
	defb 083h,018h,010h	; a6b3
	defb 083h,018h,080h	; a6b6
	defb 087h,00ah,0b0h	; a6b9
	defb 08fh,018h,010h	; a6bc
	defb 08fh,018h,080h	; a6bf
	defb 08fh,00ah,0b0h	; a6c2
	defb 094h,00ah,0d0h	; a6c5
	defb 097h,018h,080h	; a6c8
	defb 097h,018h,010h	; a6cb
	defb 09bh,00ah,0d0h	; a6ce
	defb 0a3h,00eh,080h	; a6d1
	defb 0a7h,00eh,020h	; a6d4
	defb 0abh,00eh,060h	; a6d7
	defb 0afh,00eh,090h	; a6da
	defb 0b0h,00eh,030h	; a6dd
	defb 0b2h,010h,040h	; a6e0
	defb 0b2h,00eh,0c0h	; a6e3
	defb 0b4h,00eh,040h	; a6e6
	defb 0b5h,00eh,070h	; a6e9
	defb 0b9h,00eh,080h	; a6ec
	defb 0bbh,00eh,030h	; a6ef
	defb 0bbh,00eh,0c0h	; a6f2
	defb 0beh,00eh,090h	; a6f5
	defb 0bfh,00eh,050h	; a6f8
	defb 000h,000h	; a6fb

; ----------------------------------------------------------------------
; DATOS bichos_A6FD: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (32 bytes)
;   0xa6fd..0xa71d  (32 bytes)
DATA_bichos_A6FD:
	defb 004h,018h,040h	; a6fd
	defb 007h,018h,0a0h	; a700
	defb 047h,00ah,080h	; a703
	defb 04fh,00ah,060h	; a706
	defb 051h,00ah,0a0h	; a709
	defb 067h,00ah,070h	; a70c
	defb 06fh,00ah,080h	; a70f
	defb 077h,00ah,070h	; a712
	defb 08bh,004h,080h	; a715
	defb 093h,004h,040h	; a718
	defb 000h,000h	; a71b

; ----------------------------------------------------------------------
; DATOS bichos_A71D: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (83 bytes)
;   0xa71d..0xa770  (83 bytes)
DATA_bichos_A71D:
	defb 00bh,018h,060h	; a71d
	defb 013h,018h,060h	; a720
	defb 017h,018h,0f0h	; a723
	defb 027h,004h,040h	; a726
	defb 02bh,004h,020h	; a729
	defb 033h,004h,040h	; a72c
	defb 03fh,004h,0a0h	; a72f
	defb 043h,004h,040h	; a732
	defb 053h,010h,060h	; a735
	defb 05bh,010h,0a0h	; a738
	defb 06bh,004h,050h	; a73b
	defb 06fh,004h,0a0h	; a73e
	defb 079h,004h,040h	; a741
	defb 07bh,004h,0c0h	; a744
	defb 07bh,010h,060h	; a747
	defb 07fh,010h,0a0h	; a74a
	defb 085h,010h,030h	; a74d
	defb 086h,010h,0c0h	; a750
	defb 087h,004h,060h	; a753
	defb 08bh,004h,0c0h	; a756
	defb 08fh,010h,0a0h	; a759
	defb 0a3h,018h,010h	; a75c
	defb 0afh,006h,000h	; a75f
	defb 0afh,018h,070h	; a762
	defb 0afh,018h,0f0h	; a765
	defb 0bbh,018h,070h	; a768
	defb 0bbh,018h,0f0h	; a76b
	defb 000h,000h	; a76e

; ----------------------------------------------------------------------
; DATOS bichos_A770: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (56 bytes)
;   0xa770..0xa7a8  (56 bytes)
DATA_bichos_A770:
	defb 006h,002h,000h	; a770
	defb 01eh,014h,060h	; a773
	defb 055h,016h,080h	; a776
	defb 059h,016h,050h	; a779
	defb 05bh,016h,040h	; a77c
	defb 05dh,016h,060h	; a77f
	defb 05dh,016h,090h	; a782
	defb 05dh,016h,0b0h	; a785
	defb 063h,016h,050h	; a788
	defb 063h,016h,070h	; a78b
	defb 063h,016h,0c0h	; a78e
	defb 065h,016h,0b0h	; a791
	defb 066h,016h,0d0h	; a794
	defb 069h,016h,050h	; a797
	defb 069h,016h,080h	; a79a
	defb 06bh,016h,0b0h	; a79d
	defb 0afh,002h,000h	; a7a0
	defb 0cfh,002h,000h	; a7a3
	defb 000h,000h	; a7a6

; ----------------------------------------------------------------------
; DATOS bichos_A7A8: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (92 bytes)
;   0xa7a8..0xa804  (92 bytes)
DATA_bichos_A7A8:
	defb 02bh,00eh,060h	; a7a8
	defb 02dh,00eh,0b0h	; a7ab
	defb 034h,00eh,030h	; a7ae
	defb 03ah,00eh,090h	; a7b1
	defb 03fh,00eh,050h	; a7b4
	defb 041h,00eh,0a0h	; a7b7
	defb 043h,00eh,030h	; a7ba
	defb 045h,00eh,090h	; a7bd
	defb 047h,00eh,0c0h	; a7c0
	defb 04dh,00eh,080h	; a7c3
	defb 04dh,00eh,0d0h	; a7c6
	defb 04fh,00eh,050h	; a7c9
	defb 053h,00eh,090h	; a7cc
	defb 05bh,00eh,0d0h	; a7cf
	defb 063h,00eh,0a0h	; a7d2
	defb 07fh,010h,0d0h	; a7d5
	defb 087h,010h,0a0h	; a7d8
	defb 089h,010h,050h	; a7db
	defb 089h,010h,030h	; a7de
	defb 08dh,010h,030h	; a7e1
	defb 08fh,010h,070h	; a7e4
	defb 090h,010h,0c0h	; a7e7
	defb 091h,010h,0a0h	; a7ea
	defb 092h,010h,0d0h	; a7ed
	defb 0a5h,00eh,0d0h	; a7f0
	defb 0a6h,00eh,070h	; a7f3
	defb 0adh,00eh,030h	; a7f6
	defb 0adh,00eh,0a0h	; a7f9
	defb 0b5h,00eh,0d0h	; a7fc
	defb 0b7h,00eh,050h	; a7ff
	defb 000h,000h	; a802

; ----------------------------------------------------------------------
; DATOS bichos_A804: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (80 bytes)
;   0xa804..0xa854  (80 bytes)
DATA_bichos_A804:
	defb 00fh,006h,000h	; a804
	defb 025h,006h,000h	; a807
	defb 04bh,014h,080h	; a80a
	defb 059h,014h,090h	; a80d
	defb 05dh,014h,030h	; a810
	defb 063h,018h,0f0h	; a813
	defb 069h,010h,0b0h	; a816
	defb 06bh,010h,060h	; a819
	defb 06ch,010h,030h	; a81c
	defb 06dh,010h,080h	; a81f
	defb 071h,010h,0c0h	; a822
	defb 07dh,010h,0b0h	; a825
	defb 07fh,010h,060h	; a828
	defb 080h,010h,030h	; a82b
	defb 081h,010h,080h	; a82e
	defb 083h,010h,0c0h	; a831
	defb 085h,010h,070h	; a834
	defb 089h,010h,0b0h	; a837
	defb 08dh,010h,070h	; a83a
	defb 091h,010h,090h	; a83d
	defb 093h,010h,0c0h	; a840
	defb 09bh,00ch,080h	; a843
	defb 0a7h,00ch,080h	; a846
	defb 0c0h,010h,090h	; a849
	defb 0c1h,010h,020h	; a84c
	defb 0c3h,010h,0c0h	; a84f
	defb 000h,000h	; a852

; ----------------------------------------------------------------------
; DATOS bichos_A854: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (44 bytes)
;   0xa854..0xa880  (44 bytes)
DATA_bichos_A854:
	defb 008h,014h,030h	; a854
	defb 01bh,014h,050h	; a857
	defb 023h,012h,030h	; a85a
	defb 037h,012h,070h	; a85d
	defb 044h,014h,040h	; a860
	defb 05fh,012h,090h	; a863
	defb 072h,014h,060h	; a866
	defb 06fh,012h,0b0h	; a869
	defb 077h,012h,070h	; a86c
	defb 083h,012h,030h	; a86f
	defb 090h,014h,050h	; a872
	defb 09fh,012h,030h	; a875
	defb 0a8h,012h,0b0h	; a878
	defb 0b7h,012h,050h	; a87b
	defb 000h,000h	; a87e

; ----------------------------------------------------------------------
; DATOS bichos_A880: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (26 bytes)
;   0xa880..0xa89a  (26 bytes)
DATA_bichos_A880:
	defb 034h,014h,070h	; a880
	defb 05fh,002h,000h	; a883
	defb 06fh,002h,000h	; a886
	defb 0ach,018h,0f0h	; a889
	defb 0afh,002h,000h	; a88c
	defb 0b0h,018h,010h	; a88f
	defb 0bch,018h,0f0h	; a892
	defb 0bfh,002h,000h	; a895
	defb 000h,000h	; a898

; ----------------------------------------------------------------------
; DATOS bichos_A89A: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (47 bytes)
;   0xa89a..0xa8c9  (47 bytes)
DATA_bichos_A89A:
	defb 00bh,002h,000h	; a89a
	defb 018h,018h,010h	; a89d
	defb 01fh,002h,000h	; a8a0
	defb 020h,018h,0f0h	; a8a3
	defb 03bh,002h,000h	; a8a6
	defb 04bh,008h,000h	; a8a9
	defb 050h,018h,0f0h	; a8ac
	defb 053h,002h,000h	; a8af
	defb 054h,018h,010h	; a8b2
	defb 058h,018h,0f0h	; a8b5
	defb 063h,008h,000h	; a8b8
	defb 067h,002h,000h	; a8bb
	defb 093h,002h,000h	; a8be
	defb 09bh,002h,000h	; a8c1
	defb 0bbh,002h,000h	; a8c4
	defb 000h,000h	; a8c7

; ----------------------------------------------------------------------
; DATOS bichos_A8C9: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (77 bytes)
;   0xa8c9..0xa916  (77 bytes)
DATA_bichos_A8C9:
	defb 00bh,010h,0c0h	; a8c9
	defb 00fh,010h,030h	; a8cc
	defb 019h,010h,0b0h	; a8cf
	defb 01fh,018h,010h	; a8d2
	defb 027h,018h,050h	; a8d5
	defb 028h,018h,010h	; a8d8
	defb 02bh,018h,010h	; a8db
	defb 02dh,018h,050h	; a8de
	defb 030h,018h,010h	; a8e1
	defb 037h,01ah,080h	; a8e4
	defb 038h,010h,0c0h	; a8e7
	defb 03ah,01ah,060h	; a8ea
	defb 03dh,010h,030h	; a8ed
	defb 043h,00ch,020h	; a8f0
	defb 073h,008h,000h	; a8f3
	defb 077h,01ah,0a0h	; a8f6
	defb 07ah,008h,000h	; a8f9
	defb 07fh,010h,0d0h	; a8fc
	defb 082h,010h,020h	; a8ff
	defb 083h,008h,000h	; a902
	defb 086h,010h,0d0h	; a905
	defb 087h,01ah,070h	; a908
	defb 08ah,01ah,040h	; a90b
	defb 08ch,008h,000h	; a90e
	defb 093h,008h,000h	; a911
	defb 000h,000h	; a914

; ----------------------------------------------------------------------
; DATOS bichos_A916: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (62 bytes)
;   0xa916..0xa954  (62 bytes)
DATA_bichos_A916:
	defb 001h,018h,010h	; a916
	defb 001h,010h,030h	; a919
	defb 001h,010h,0c0h	; a91c
	defb 005h,018h,050h	; a91f
	defb 005h,010h,090h	; a922
	defb 091h,014h,060h	; a925
	defb 0a3h,010h,0d0h	; a928
	defb 0a5h,010h,030h	; a92b
	defb 0a9h,010h,060h	; a92e
	defb 0afh,010h,0d0h	; a931
	defb 0afh,01ah,080h	; a934
	defb 0b1h,018h,010h	; a937
	defb 0b1h,01ah,0a0h	; a93a
	defb 0b3h,018h,050h	; a93d
	defb 0b5h,01ah,0c0h	; a940
	defb 0b6h,010h,0d0h	; a943
	defb 0b9h,018h,010h	; a946
	defb 0bah,010h,060h	; a949
	defb 0bbh,018h,040h	; a94c
	defb 0beh,018h,010h	; a94f
	defb 000h,000h	; a952

; ----------------------------------------------------------------------
; DATOS bichos_A954: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (50 bytes)
;   0xa954..0xa986  (50 bytes)
DATA_bichos_A954:
	defb 011h,002h,000h	; a954
	defb 023h,002h,000h	; a957
	defb 037h,014h,090h	; a95a
	defb 041h,014h,060h	; a95d
	defb 05fh,01eh,000h	; a960
	defb 065h,01eh,000h	; a963
	defb 067h,01eh,000h	; a966
	defb 06fh,01eh,000h	; a969
	defb 074h,01eh,000h	; a96c
	defb 079h,01eh,000h	; a96f
	defb 07dh,01eh,000h	; a972
	defb 083h,01eh,000h	; a975
	defb 097h,01ah,020h	; a978
	defb 0a3h,01ah,0a0h	; a97b
	defb 0a7h,01ah,080h	; a97e
	defb 0afh,01ah,060h	; a981
	defb 000h,000h	; a984

; ----------------------------------------------------------------------
; DATOS bichos_A986: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (113 bytes)
;   0xa986..0xa9f7  (113 bytes)
DATA_bichos_A986:
	defb 001h,010h,0c0h	; a986
	defb 005h,010h,020h	; a989
	defb 005h,010h,0a0h	; a98c
	defb 009h,010h,0c0h	; a98f
	defb 00bh,010h,020h	; a992
	defb 011h,010h,040h	; a995
	defb 019h,010h,0b0h	; a998
	defb 01fh,020h,000h	; a99b
	defb 025h,01ah,0c0h	; a99e
	defb 029h,020h,000h	; a9a1
	defb 02bh,01ah,030h	; a9a4
	defb 030h,01ah,0a0h	; a9a7
	defb 033h,020h,000h	; a9aa
	defb 03bh,020h,000h	; a9ad
	defb 03bh,01ah,080h	; a9b0
	defb 041h,020h,000h	; a9b3
	defb 04bh,018h,0b0h	; a9b6
	defb 04dh,00ah,081h	; a9b9
	defb 04fh,00ah,0d1h	; a9bc
	defb 053h,00ah,0c1h	; a9bf
	defb 057h,00ah,061h	; a9c2
	defb 05bh,018h,0b0h	; a9c5
	defb 05bh,00ah,0d1h	; a9c8
	defb 05fh,00ah,0c1h	; a9cb
	defb 060h,00ah,021h	; a9ce
	defb 063h,018h,070h	; a9d1
	defb 064h,018h,0b0h	; a9d4
	defb 065h,018h,010h	; a9d7
	defb 067h,018h,070h	; a9da
	defb 069h,01ch,000h	; a9dd
	defb 06bh,00ah,031h	; a9e0
	defb 06dh,018h,0a0h	; a9e3
	defb 072h,01ch,000h	; a9e6
	defb 07bh,01ah,0b0h	; a9e9
	defb 07dh,01ah,0c0h	; a9ec
	defb 07fh,01ah,080h	; a9ef
	defb 083h,01ah,050h	; a9f2
	defb 000h,000h	; a9f5

; ----------------------------------------------------------------------
; DATOS bichos_A9F7: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (56 bytes)
;   0xa9f7..0xaa2f  (56 bytes)
DATA_bichos_A9F7:
	defb 02bh,00ah,021h	; a9f7
	defb 02bh,00ah,0c1h	; a9fa
	defb 033h,00ah,0a1h	; a9fd
	defb 039h,00ah,041h	; aa00
	defb 03bh,00ah,0c1h	; aa03
	defb 041h,00ah,031h	; aa06
	defb 043h,00ah,061h	; aa09
	defb 043h,00ah,0b1h	; aa0c
	defb 071h,020h,000h	; aa0f
	defb 079h,020h,000h	; aa12
	defb 07fh,020h,000h	; aa15
	defb 085h,020h,000h	; aa18
	defb 091h,018h,050h	; aa1b
	defb 093h,018h,0e0h	; aa1e
	defb 099h,018h,0e0h	; aa21
	defb 09bh,018h,010h	; aa24
	defb 0a2h,018h,080h	; aa27
	defb 0a7h,01ch,000h	; aa2a
	defb 000h,000h	; aa2d

; ----------------------------------------------------------------------
; DATOS bichos_AA2F: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (86 bytes)
;   0xaa2f..0xaa85  (86 bytes)
DATA_bichos_AA2F:
	defb 007h,00ah,0a1h	; aa2f
	defb 007h,00ah,021h	; aa32
	defb 009h,00ah,071h	; aa35
	defb 027h,01ch,000h	; aa38
	defb 04fh,01eh,000h	; aa3b
	defb 05bh,01eh,000h	; aa3e
	defb 05fh,01eh,000h	; aa41
	defb 063h,01eh,000h	; aa44
	defb 067h,01eh,000h	; aa47
	defb 06bh,016h,040h	; aa4a
	defb 06dh,016h,040h	; aa4d
	defb 06fh,016h,040h	; aa50
	defb 073h,01eh,000h	; aa53
	defb 077h,016h,040h	; aa56
	defb 07bh,016h,040h	; aa59
	defb 07fh,016h,040h	; aa5c
	defb 083h,016h,040h	; aa5f
	defb 093h,018h,0a0h	; aa62
	defb 093h,018h,0e0h	; aa65
	defb 09eh,018h,080h	; aa68
	defb 09eh,018h,0e0h	; aa6b
	defb 0a7h,018h,080h	; aa6e
	defb 0a7h,018h,0e0h	; aa71
	defb 0b3h,00ah,0a1h	; aa74
	defb 0b9h,00ah,041h	; aa77
	defb 0bbh,00ah,091h	; aa7a
	defb 0bbh,00ah,021h	; aa7d
	defb 0bfh,00ah,051h	; aa80
	defb 000h,000h	; aa83

; ----------------------------------------------------------------------
; DATOS bichos_AA85: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (98 bytes)
;   0xaa85..0xaae7  (98 bytes)
DATA_bichos_AA85:
	defb 003h,004h,060h	; aa85
	defb 003h,00eh,080h	; aa88
	defb 01fh,020h,000h	; aa8b
	defb 021h,00eh,0b0h	; aa8e
	defb 029h,00eh,060h	; aa91
	defb 02bh,00eh,0a0h	; aa94
	defb 02dh,00eh,0d0h	; aa97
	defb 033h,00eh,050h	; aa9a
	defb 037h,020h,000h	; aa9d
	defb 037h,00eh,0a0h	; aaa0
	defb 03dh,00eh,040h	; aaa3
	defb 045h,00eh,0a0h	; aaa6
	defb 04bh,00eh,060h	; aaa9
	defb 04fh,00eh,0a0h	; aaac
	defb 064h,014h,060h	; aaaf
	defb 08fh,00ch,080h	; aab2
	defb 093h,00eh,0b0h	; aab5
	defb 097h,00eh,090h	; aab8
	defb 09bh,00ch,080h	; aabb
	defb 09fh,00eh,030h	; aabe
	defb 0a3h,00eh,060h	; aac1
	defb 0a3h,00eh,090h	; aac4
	defb 0a7h,00ch,080h	; aac7
	defb 0a9h,00eh,0a0h	; aaca
	defb 0b1h,00eh,060h	; aacd
	defb 0b2h,004h,080h	; aad0
	defb 0b5h,00eh,030h	; aad3
	defb 0b5h,00eh,080h	; aad6
	defb 0b7h,004h,030h	; aad9
	defb 0bbh,00eh,050h	; aadc
	defb 0bdh,004h,090h	; aadf
	defb 0bfh,00eh,040h	; aae2
	defb 000h,000h	; aae5

; ----------------------------------------------------------------------
; DATOS bichos_AAE7: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (50 bytes)
;   0xaae7..0xab19  (50 bytes)
DATA_bichos_AAE7:
	defb 003h,00ah,071h	; aae7
	defb 097h,014h,060h	; aaea
	defb 09fh,014h,060h	; aaed
	defb 0abh,00ah,081h	; aaf0
	defb 0adh,00ah,0a1h	; aaf3
	defb 0afh,00ah,0c1h	; aaf6
	defb 0b3h,00ah,091h	; aaf9
	defb 0b3h,00ah,0b1h	; aafc
	defb 0b5h,00ah,0d1h	; aaff
	defb 0b7h,00ah,061h	; ab02
	defb 0bbh,00ah,081h	; ab05
	defb 0bdh,00ah,051h	; ab08
	defb 0bdh,00ah,0b1h	; ab0b
	defb 0bfh,00ah,041h	; ab0e
	defb 0bfh,00ah,071h	; ab11
	defb 0bfh,00ah,0c1h	; ab14
	defb 000h,000h	; ab17

; ----------------------------------------------------------------------
; DATOS bichos_AB19: bichos del area: [fila lo][fila hi + 2*tipo][dato] de 3
;   bytes; tipo 0 acaba (p01:6CFC); lo leen p01:6CFC (35 bytes)
;   0xab19..0xab3c  (35 bytes)
DATA_bichos_AB19:
	defb 01bh,018h,050h	; ab19
	defb 024h,018h,010h	; ab1c
	defb 024h,018h,090h	; ab1f
	defb 07fh,002h,000h	; ab22
	defb 09bh,002h,000h	; ab25
	defb 09dh,01ah,080h	; ab28
	defb 0a3h,01ah,080h	; ab2b
	defb 0a5h,01ah,0b0h	; ab2e
	defb 0afh,01ah,060h	; ab31
	defb 0b3h,01ah,0b0h	; ab34
	defb 0bbh,01ah,050h	; ab37
	defb 000h,000h	; ab3a

; ----------------------------------------------------------------------
; DATOS letras_AB3C: 13 letras de 8x8 a 1 bit (8 bytes cada una) que p01:6739
;   sube a la hoja (p00:4ED7); lo leen p01:6739 (104 bytes)
;   0xab3c..0xaba4  (104 bytes)
DATA_letras_AB3C:
	defb 007h,007h,00fh,00fh,00fh,01fh,01fh,03fh	; ab3c  .......?
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ab44  ........
	defb 0f8h,0f8h,0f0h,0f0h,0f0h,0e0h,0e0h,0e0h	; ab4c  ........
	defb 000h,000h,000h,000h,001h,003h,00fh,07fh	; ab54  ........
	defb 03fh,07fh,07fh,0ffh,0ffh,0ffh,0ffh,0ffh	; ab5c  ?.......
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0fch,0f0h,0c0h	; ab64  ........
	defb 0c0h,0c0h,080h,080h,000h,000h,000h,000h	; ab6c  ........
	defb 000h,000h,000h,001h,003h,007h,00fh,00fh	; ab74  ........
	defb 00fh,03fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ab7c  .?......
	defb 0ffh,0ffh,0ffh,0feh,0fch,0f8h,0f8h,0f0h	; ab84  ........
	defb 0f8h,0c0h,000h,000h,000h,000h,000h,000h	; ab8c  ........
	defb 01fh,01fh,01fh,03fh,03fh,03fh,07fh,07fh	; ab94  ...???..
	defb 0f0h,0e0h,0e0h,0c0h,0c0h,0c0h,080h,080h	; ab9c  ........

; ----------------------------------------------------------------------
; DATOS letras_ABA4: 13 letras de 8x8 a 1 bit (8 bytes cada una) que p01:6745
;   sube a la hoja (p00:4ED7); lo leen p01:6745 (104 bytes)
;   0xaba4..0xac0c  (104 bytes)
DATA_letras_ABA4:
	defb 000h,000h,000h,000h,000h,001h,001h,003h	; aba4  ........
	defb 07fh,07fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; abac  ........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0feh,0fch	; abb4  ........
	defb 080h,080h,000h,000h,000h,000h,000h,000h	; abbc  ........
	defb 000h,000h,000h,000h,000h,000h,000h,007h	; abc4  ........
	defb 003h,007h,007h,00fh,01fh,03fh,0ffh,0ffh	; abcc  .....?..
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0f8h	; abd4  ........
	defb 0fch,0f8h,0f8h,0f0h,0e0h,0c0h,000h,000h	; abdc  ........
	defb 000h,003h,00fh,01fh,03fh,07fh,0ffh,0ffh	; abe4  ....?...
	defb 0ffh,0fch,0f0h,0e0h,0c0h,080h,080h,000h	; abec  ........
	defb 001h,001h,001h,003h,003h,003h,007h,007h	; abf4  ........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; abfc  ........
	defb 0ffh,0feh,0feh,0fch,0fch,0fch,0f8h,0f8h	; ac04  ........

; ----------------------------------------------------------------------
; DATOS letras_AC0C: 26 letras de 8x8 a 1 bit (8 bytes cada una) que p01:6751
;   sube a la hoja (p00:4ED7); lo leen p01:6751 (208 bytes)
;   0xac0c..0xacdc  (208 bytes)
DATA_letras_AC0C:
	defb 03ch,03ch,078h,078h,079h,0f3h,0f7h,0ffh	; ac0c  <<xxy...
	defb 01fh,03eh,07ch,0f9h,0f3h,0e3h,0c3h,087h	; ac14  .>|.....
	defb 01fh,07fh,0f8h,0f0h,0e0h,0e0h,0c0h,0c0h	; ac1c  ........
	defb 0c0h,0f0h,0f8h,078h,078h,079h,079h,079h	; ac24  ...xxyyy
	defb 07fh,07fh,0ffh,0f7h,0f7h,0e7h,0e7h,0e7h	; ac2c  ........
	defb 00fh,00fh,01eh,01eh,01eh,03ch,03ch,03ch	; ac34  .....<<<
	defb 003h,007h,00fh,00eh,01eh,03ch,038h,078h	; ac3c  .....<8x
	defb 0e0h,0e0h,0e0h,0e0h,0e0h,0e1h,0e1h,0e1h	; ac44  ........
	defb 07eh,07eh,0feh,0f6h,0f6h,0eeh,0eeh,0eeh	; ac4c  ~~......
	defb 00fh,00fh,01fh,01dh,03dh,03bh,07bh,073h	; ac54  ....=;{s
	defb 0f1h,0f1h,0e3h,0e3h,0e3h,0c7h,0c7h,0c7h	; ac5c  ........
	defb 0e0h,0e0h,0c0h,0c0h,0c0h,080h,080h,080h	; ac64  ........
	defb 001h,001h,001h,003h,003h,003h,007h,007h	; ac6c  ........
	defb 0efh,0e7h,0e7h,0c7h,0c7h,0c3h,083h,083h	; ac74  ........
	defb 087h,087h,087h,0c7h,0c7h,0c7h,0e3h,0e0h	; ac7c  ........
	defb 080h,080h,081h,081h,083h,0c7h,0ffh,0feh	; ac84  ........
	defb 0fbh,0f3h,0f3h,0f7h,0e7h,0c7h,08fh,00fh	; ac8c  ........
	defb 0c7h,0c7h,0c7h,087h,087h,087h,007h,007h	; ac94  ........
	defb 078h,078h,079h,0f1h,0f3h,0f7h,0e7h,0efh	; ac9c  xxy.....
	defb 070h,0f0h,0ffh,0ffh,0ffh,080h,080h,000h	; aca4  p.......
	defb 0e3h,0e3h,0e3h,0e7h,0e7h,0e7h,0efh,0efh	; acac  ........
	defb 0ceh,0ceh,0cfh,08fh,08fh,08fh,00fh,00fh	; acb4  ........
	defb 0f7h,0e7h,0c7h,0cfh,08fh,08fh,01eh,01eh	; acbc  ........
	defb 08fh,08fh,08fh,01eh,01eh,01eh,03ch,03ch	; acc4  ......<<
	defb 007h,008h,017h,014h,017h,014h,008h,007h	; accc  ........
	defb 080h,040h,020h,0a0h,020h,0a0h,040h,080h	; acd4  .@ . .@.

; ----------------------------------------------------------------------
; DATOS ritmo_ACDC: los 6 bytes del area 0 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xacdc..0xace2  (6 bytes)
DATA_ritmo_ACDC:
	defb 000h,008h,000h,000h,000h,000h	; acdc

; ----------------------------------------------------------------------
; DATOS ritmo_ACE2: los 6 bytes del area 1 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xace2..0xace8  (6 bytes)
DATA_ritmo_ACE2:
	defb 000h,008h,000h,000h,000h,008h	; ace2

; ----------------------------------------------------------------------
; DATOS ritmo_ACE8: los 6 bytes del area 2 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xace8..0xacee  (6 bytes)
DATA_ritmo_ACE8:
	defb 000h,008h,008h,001h,000h,000h	; ace8

; ----------------------------------------------------------------------
; DATOS ritmo_ACEE: los 6 bytes del area 3 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xacee..0xacf4  (6 bytes)
DATA_ritmo_ACEE:
	defb 000h,010h,000h,000h,010h,000h	; acee

; ----------------------------------------------------------------------
; DATOS ritmo_ACF4: los 6 bytes del area 4 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xacf4..0xacfa  (6 bytes)
DATA_ritmo_ACF4:
	defb 000h,004h,000h,004h,000h,004h	; acf4

; ----------------------------------------------------------------------
; DATOS ritmo_ACFA: los 6 bytes del area 5 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xacfa..0xad00  (6 bytes)
DATA_ritmo_ACFA:
	defb 000h,000h,000h,000h,000h,000h	; acfa

; ----------------------------------------------------------------------
; DATOS ritmo_AD00: los 6 bytes del area 6 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xad00..0xad06  (6 bytes)
DATA_ritmo_AD00:
	defb 000h,000h,000h,000h,000h,000h	; ad00

; ----------------------------------------------------------------------
; DATOS ritmo_AD06: los 6 bytes del area 7 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xad06..0xad0c  (6 bytes)
DATA_ritmo_AD06:
	defb 000h,000h,000h,000h,000h,008h	; ad06

; ----------------------------------------------------------------------
; DATOS ritmo_AD0C: los 6 bytes del area 8 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xad0c..0xad12  (6 bytes)
DATA_ritmo_AD0C:
	defb 000h,008h,000h,008h,000h,008h	; ad0c

; ----------------------------------------------------------------------
; DATOS ritmo_AD12: los 6 bytes del area 9 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xad12..0xad18  (6 bytes)
DATA_ritmo_AD12:
	defb 028h,000h,000h,000h,000h,008h	; ad12

; ----------------------------------------------------------------------
; DATOS ritmo_AD18: los 6 bytes del area 10 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xad18..0xad1e  (6 bytes)
DATA_ritmo_AD18:
	defb 000h,002h,022h,022h,000h,000h	; ad18

; ----------------------------------------------------------------------
; DATOS ritmo_AD1E: los 6 bytes del area 11 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xad1e..0xad24  (6 bytes)
DATA_ritmo_AD1E:
	defb 020h,000h,000h,002h,000h,020h	; ad1e

; ----------------------------------------------------------------------
; DATOS ritmo_AD24: los 6 bytes del area 12 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xad24..0xad2a  (6 bytes)
DATA_ritmo_AD24:
	defb 020h,000h,000h,000h,000h,022h	; ad24

; ----------------------------------------------------------------------
; DATOS ritmo_AD2A: los 6 bytes del area 13 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xad2a..0xad30  (6 bytes)
DATA_ritmo_AD2A:
	defb 000h,000h,010h,000h,000h,000h	; ad2a

; ----------------------------------------------------------------------
; DATOS ritmo_AD30: los 6 bytes del area 14 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xad30..0xad36  (6 bytes)
DATA_ritmo_AD30:
	defb 000h,030h,000h,000h,000h,000h	; ad30

; ----------------------------------------------------------------------
; DATOS ritmo_AD36: los 6 bytes del area 15 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xad36..0xad3c  (6 bytes)
DATA_ritmo_AD36:
	defb 010h,000h,000h,000h,020h,000h	; ad36

; ----------------------------------------------------------------------
; DATOS ritmo_AD3C: los 6 bytes del area 16 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xad3c..0xad42  (6 bytes)
DATA_ritmo_AD3C:
	defb 000h,010h,004h,000h,000h,000h	; ad3c

; ----------------------------------------------------------------------
; DATOS ritmo_AD42: los 6 bytes del area 17 (p01:71E2); lo leen p01:71E2 (6
;   bytes)
;   0xad42..0xad48  (6 bytes)
DATA_ritmo_AD42:
	defb 004h,010h,000h,010h,000h,000h	; ad42

; ----------------------------------------------------------------------
; DATOS dibujos_AD48: 14 dibujos de 8x8 a 2 bits (16 bytes cada uno) que la
;   lista de 0x62A5 sube a la hoja desde el 01; se solapan 2 bloques
;   (0xAD48-0xAE28, 0xADB8-0xAE28); lo leen p00:54CC (lista 0x62A5) (224
;   bytes)
;   0xad48..0xae28  (224 bytes)
DATA_dibujos_AD48:
	defb 000h,000h,07eh,07eh,0ffh,081h,07fh,080h,00bh,0f4h,000h,0ffh,000h,0ffh,000h,0ffh	; ad48  ..~~............
	defb 000h,000h,006h,006h,09fh,098h,0ffh,040h,0ffh,020h,0d0h,02fh,008h,0f7h,000h,0ffh	; ad58  .......@. ./....
	defb 000h,000h,000h,000h,001h,001h,0c7h,046h,0ffh,018h,07fh,080h,004h,0fbh,080h,07fh	; ad68  .......F........
	defb 000h,000h,08ch,08ch,0fdh,0f3h,0f9h,007h,0f1h,00fh,083h,07dh,002h,0feh,003h,0ffh	; ad78  ...........}....
	defb 0ffh,000h,0ffh,000h,086h,079h,000h,0ffh,000h,0ffh,000h,0ffh,03eh,0feh,0c0h,0c0h	; ad88  .....y......>...
	defb 0ffh,000h,0ffh,000h,003h,0fch,000h,0ffh,030h,0ffh,05fh,0dfh,080h,080h,000h,000h	; ad98  ........0._.....
	defb 0ffh,000h,0fbh,004h,0d6h,029h,002h,0fdh,000h,0ffh,086h,0ffh,07fh,07eh,001h,001h	; ada8  .....).......~..
	defb 0e0h,080h,0bfh,0c1h,09fh,0e0h,0c7h,0f8h,040h,07fh,060h,05fh,060h,05fh,070h,04fh	; adb8  ........@.`_`_pO
	defb 0c0h,0bfh,0e0h,09fh,060h,05fh,060h,05fh,070h,06fh,038h,027h,030h,02fh,030h,02fh	; adc8  ....`_`_po8'0/0/
	defb 040h,07fh,020h,03fh,020h,03fh,020h,03fh,020h,03fh,020h,03fh,020h,03fh,010h,01fh	; add8  @. ? ? ? ? ? ?..
	defb 018h,017h,038h,027h,030h,02fh,030h,02fh,038h,027h,030h,02fh,060h,05fh,060h,05fh	; ade8  ..8'0/0/8'0/`_`_
	defb 020h,03fh,020h,03fh,020h,03fh,020h,03fh,010h,01fh,010h,01fh,00dh,00fh,003h,003h	; adf8   ? ? ? ?........
	defb 041h,07eh,043h,07ch,022h,03dh,026h,039h,048h,077h,080h,0ffh,0a1h,0dfh,07eh,07eh	; ae08  A~C|"=&9Hw....~~
	defb 0ffh,080h,0beh,0c1h,00ch,073h,040h,07fh,040h,07fh,040h,07fh,03fh,03fh,000h,000h	; ae18  .....s@.@.@.??..

; ----------------------------------------------------------------------
; DATOS dibujos_AE28: 31 dibujos de 8x8 a 2 bits (16 bytes cada uno) que la
;   lista de 0x62A5 sube a la hoja desde el 16; se solapan 2 bloques
;   (0xAE28-0xB018, 0xAF78-0xB018); lo leen p00:54CC (lista 0x62A5) (496
;   bytes)
;   0xae28..0xb018  (496 bytes)
DATA_dibujos_AE28:
	defb 055h,0aah,022h,0ddh,09ch,063h,055h,0aah,09ch,063h,022h,0ddh,055h,0aah,088h,077h	; ae28  U."..cU..c".U..w
	defb 0f8h,0f8h,027h,0dfh,09ch,063h,055h,0aah,09ch,063h,022h,0ddh,055h,0aah,088h,077h	; ae38  ..'..cU..c".U..w
	defb 0ffh,0ffh,0ffh,0ffh,09ch,063h,055h,0aah,09ch,063h,022h,0ddh,055h,0aah,088h,077h	; ae48  .....cU..c".U..w
	defb 0ffh,0ffh,0ffh,0ffh,09dh,063h,055h,0abh,09dh,063h,023h,0ddh,055h,0abh,089h,077h	; ae58  .....cU..c#.U..w
	defb 055h,0aah,022h,0ddh,09ch,063h,055h,0aah,09ch,063h,022h,0ddh,0d5h,0eah,03fh,03fh	; ae68  U."..cU..c"...??
	defb 055h,0aah,022h,0ddh,09ch,063h,055h,0aah,09ch,063h,022h,0ddh,05fh,0afh,0f0h,0f0h	; ae78  U."..cU..c"._...
	defb 055h,0abh,023h,0dfh,09fh,063h,055h,0abh,09dh,063h,023h,0ddh,0f5h,0fbh,00eh,00eh	; ae88  U.#..cU..c#.....
	defb 057h,0abh,023h,0dfh,09fh,063h,057h,0abh,09fh,063h,023h,0dfh,05fh,0afh,0f3h,0f3h	; ae98  W.#..cW..c#._...
	defb 0d5h,0eah,0e2h,0ddh,0dch,0e3h,0d5h,0eah,0dch,0e3h,0e2h,0ddh,0f5h,0fah,0cfh,0cfh	; aea8  ................
	defb 0fch,0fch,022h,0deh,09dh,063h,055h,0abh,09dh,063h,023h,0ddh,055h,0abh,089h,077h	; aeb8  .."..cU..c#.U..w
	defb 055h,0aah,022h,0ddh,09ch,063h,055h,0aah,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; aec8  U."..cU.........
	defb 055h,0abh,023h,0ddh,09dh,063h,055h,0abh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; aed8  U.#..cU.........
	defb 0d5h,0aah,0a2h,0ddh,09ch,0e3h,0d5h,0aah,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; aee8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,09ch,063h,022h,0ddh,055h,0aah,088h,077h	; aef8  .........c".U..w
	defb 055h,0abh,023h,0ddh,09dh,063h,055h,0abh,09fh,063h,022h,0deh,056h,0aah,08eh,076h	; af08  U.#..cU..c".V..v
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,09dh,063h,023h,0ddh,055h,0abh,089h,077h	; af18  .........c#.U..w
	defb 07ch,07ch,0a3h,0dfh,09ch,063h,055h,0aah,09ch,063h,022h,0ddh,055h,0aah,088h,077h	; af28  ||...cU..c".U..w
	defb 055h,0abh,023h,0ddh,09dh,063h,055h,0abh,09dh,063h,020h,0deh,056h,0aah,08fh,075h	; af38  U.#..cU..c .V..u
	defb 055h,0aah,0a2h,0ddh,09ch,0e3h,0d5h,0aah,09ch,063h,022h,0ddh,055h,0aah,088h,077h	; af48  U........c".U..w
	defb 055h,0aah,022h,0ddh,09ch,063h,055h,0aah,09ch,063h,022h,0ddh,0ffh,0ffh,0ffh,0ffh	; af58  U."..cU..c".....
	defb 055h,0abh,023h,0ddh,09dh,063h,055h,0abh,09dh,063h,023h,0ddh,0ffh,0ffh,0ffh,0ffh	; af68  U.#..cU..c#.....
	defb 055h,0aah,022h,0ddh,09ch,063h,055h,0aah,09fh,063h,023h,0dfh,057h,0abh,08bh,077h	; af78  U."..cU..c#.W..w
	defb 0ffh,0ffh,0e2h,0ddh,0dch,0e3h,0d5h,0eah,0dch,0e3h,0e2h,0ddh,0d5h,0eah,088h,077h	; af88  ...............w
	defb 0eah,0d5h,0c4h,0fbh,0f9h,0c6h,0fah,0f5h,0f9h,0e6h,0c4h,0fbh,0aah,0d5h,011h,0eeh	; af98  ................
	defb 055h,0abh,023h,0dfh,09fh,067h,05fh,0afh,09fh,063h,023h,0dfh,057h,0afh,0fbh,0fbh	; afa8  U.#..g_..c#.W...
	defb 0ffh,0feh,0feh,0fdh,09ch,07bh,055h,0bah,09ch,063h,022h,0ddh,055h,0aah,088h,077h	; afb8  .....{U..c".U..w
	defb 088h,077h,055h,0aah,022h,0ddh,09ch,063h,055h,0bah,09ch,07bh,0feh,0fdh,0ffh,0feh	; afc8  .wU."..cU..{....
	defb 057h,0abh,023h,0dfh,09fh,063h,057h,0abh,09fh,063h,023h,0dfh,057h,0abh,08bh,077h	; afd8  W.#..cW..c#.W..w
	defb 055h,0abh,023h,0dfh,09fh,067h,05fh,0afh,09fh,063h,023h,0dfh,057h,0abh,08bh,077h	; afe8  U.#..g_..c#.W..w
	defb 057h,0abh,023h,0dfh,09fh,063h,057h,0abh,09ch,063h,022h,0ddh,055h,0aah,0b8h,047h	; aff8  W.#..cW..c".U..G
	defb 0dfh,0dfh,023h,0ffh,09fh,063h,05fh,0afh,09fh,067h,023h,0dfh,055h,0abh,088h,077h	; b008  ..#..c_..g#.U..w

; ----------------------------------------------------------------------
; DATOS sin_lector_B018: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (216 bytes)
;   0xb018..0xb0f0  (216 bytes)
DATA_sin_lector_B018:
	defb 008h,001h,002h,003h,002h,004h,009h,016h,02bh,020h,020h,021h,00ah,016h,037h,02dh	; b018  ........+  !..7-
	defb 016h,027h,00bh,016h,040h,041h,029h,02ah,009h,016h,050h,051h,018h,019h,00ch,01ah	; b028  .'..@A)*..PQ....
	defb 01bh,01bh,01ah,01ch,002h,001h,003h,001h,002h,004h,020h,020h,020h,020h,020h,021h	; b038  ..........     !
	defb 028h,016h,016h,016h,016h,027h,029h,030h,042h,043h,029h,02ah,018h,02fh,052h,053h	; b048  (....')0BC)*./RS
	defb 018h,019h,01ah,01bh,02eh,038h,01bh,01ch,001h,001h,002h,003h,001h,00fh,020h,020h	; b058  .....8........
	defb 020h,035h,016h,012h,016h,016h,031h,03bh,016h,010h,029h,030h,044h,045h,016h,013h	; b068   5....1;..)0DE..
	defb 018h,02fh,054h,055h,016h,012h,01ah,01bh,01dh,01eh,01ah,013h,00bh,017h,026h,017h	; b078  ./TU..........&.
	defb 017h,01fh,009h,016h,04ah,04bh,03ah,02ah,00ah,016h,05ah,05bh,039h,019h,00ch,016h	; b088  ....JK:*..Z[9...
	defb 031h,03bh,016h,024h,00bh,016h,033h,023h,023h,025h,00dh,005h,006h,007h,005h,015h	; b098  1;.$..3##%......
	defb 026h,017h,036h,02ch,026h,01fh,029h,029h,048h,049h,03ah,02ah,018h,018h,058h,059h	; b0a8  &.6,&.))HI:*..XY
	defb 039h,019h,028h,016h,016h,016h,016h,024h,023h,023h,023h,023h,023h,025h,00eh,005h	; b0b8  9.(....$#####%..
	defb 006h,005h,007h,015h,017h,026h,034h,03eh,026h,012h,029h,029h,046h,047h,016h,012h	; b0c8  .....&4>&.))FG..
	defb 018h,018h,056h,057h,016h,010h,016h,016h,032h,03ch,016h,011h,023h,023h,023h,03dh	; b0d8  ..VW....2<..###=
	defb 016h,012h,00eh,006h,007h,005h,006h,014h	; b0e8  ........

; ----------------------------------------------------------------------
; DATOS dibujos_B0F0: 1 dibujos de 8x8 a 1 bit (8 bytes cada uno) que la lista
;   de 0x62D2 sube a la hoja desde el 01; lo leen p00:54CC (lista 0x62D2) (8
;   bytes)
;   0xb0f0..0xb0f8  (8 bytes)
DATA_dibujos_B0F0:
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; b0f0  ........

; ----------------------------------------------------------------------
; DATOS dibujos_B0F8: 1 dibujos de 8x8 a 1 bit (8 bytes cada uno) que la lista
;   de 0x62D2 sube a la hoja desde el A8; se solapan 6 bloques (0xB0F8-0xB100,
;   0xB0F8-0xB148, 0xB0F8-0xB2E8, 0xB100-0xB108, 0xB118-0xB120,
;   0xB140-0xB148); lo leen p00:54CC (lista 0x62D2) (496 bytes)
;   0xb0f8..0xb2e8  (496 bytes)
DATA_dibujos_B0F8:
	defb 0c0h,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h	; b0f8  ........
	defb 003h,003h,003h,003h,000h,000h,000h,000h	; b100  ........
	defb 0ffh,0ffh,0c0h,0c0h,0c0h,0c0h,0c3h,0c3h	; b108  ........
	defb 003h,003h,003h,003h,003h,003h,0ffh,0ffh	; b110  ........
	defb 003h,003h,000h,000h,000h,000h,003h,003h	; b118  ........
	defb 0f3h,0f3h,003h,003h,003h,003h,003h,003h	; b120  ........
	defb 0f0h,0f0h,000h,000h,000h,000h,0c0h,0c0h	; b128  ........
	defb 0c0h,0c0h,0c0h,0c0h,0c0h,0c0h,000h,000h	; b130  ........
	defb 000h,000h,003h,003h,003h,003h,003h,003h	; b138  ........
	defb 000h,000h,000h,000h,0c0h,0c0h,0c0h,0c0h	; b140  ........
	defb 033h,033h,033h,033h,033h,033h,030h,030h	; b148  33333300
	defb 07eh,07eh,060h,060h,060h,060h,000h,000h	; b150  ~~````..
	defb 0c0h,0c0h,0c0h,0c0h,0cfh,0cfh,0c0h,0c0h	; b158  ........
	defb 03fh,03fh,000h,000h,0ffh,0ffh,003h,003h	; b160  ??......
	defb 07fh,07fh,001h,001h,061h,061h,061h,061h	; b168  ....aaaa
	defb 081h,081h,081h,081h,081h,081h,081h,081h	; b170  ........
	defb 003h,003h,0ffh,0ffh,003h,003h,003h,003h	; b178  ........
	defb 060h,060h,060h,060h,060h,060h,07fh,07fh	; b180  ``````..
	defb 001h,001h,001h,001h,01fh,01fh,098h,098h	; b188  ........
	defb 0c0h,0c0h,0c0h,0c0h,0ffh,0ffh,0c0h,0c0h	; b190  ........
	defb 000h,000h,000h,000h,0ffh,0ffh,03fh,03fh	; b198  ......??
	defb 001h,001h,001h,001h,061h,061h,061h,061h	; b1a0  ....aaaa
	defb 098h,098h,099h,099h,099h,099h,099h,099h	; b1a8  ........
	defb 0c0h,0c0h,0fch,0fch,0c0h,0c0h,0c0h,0c0h	; b1b0  ........
	defb 001h,001h,001h,001h,000h,000h,000h,000h	; b1b8  ........
	defb 003h,003h,003h,003h,003h,003h,0f3h,0f3h	; b1c0  ........
	defb 0b0h,0b0h,0bfh,0bfh,003h,003h,003h,003h	; b1c8  ........
	defb 000h,000h,03fh,03fh,030h,030h,030h,030h	; b1d0  ..??0000
	defb 030h,030h,030h,030h,030h,030h,030h,030h	; b1d8  00000000
	defb 07eh,07eh,006h,006h,006h,006h,066h,066h	; b1e0  ~~....ff
	defb 066h,066h,066h,066h,07eh,07eh,006h,006h	; b1e8  ffff~~..
	defb 0b0h,0b0h,0b0h,0b0h,0bfh,0bfh,000h,000h	; b1f0  ........
	defb 000h,000h,000h,000h,0f0h,0f0h,030h,030h	; b1f8  ......00
	defb 006h,006h,066h,066h,066h,066h,066h,066h	; b200  ..ffffff
	defb 060h,060h,061h,061h,061h,061h,061h,061h	; b208  ``aaaaaa
	defb 000h,000h,0bfh,0bfh,0b0h,0b0h,0b0h,0b0h	; b210  ........
	defb 030h,030h,0f0h,0f0h,030h,030h,030h,030h	; b218  00..0000
	defb 066h,066h,006h,006h,006h,006h,07eh,07eh	; b220  ff....~~
	defb 061h,061h,060h,060h,060h,060h,07fh,07fh	; b228  aa````..
	defb 0fch,0fch,0cch,0cch,0cch,0cch,0fch,0fch	; b230  ........
	defb 0f3h,0f3h,033h,033h,033h,033h,033h,033h	; b238  ..333333
	defb 0c3h,0c3h,0c3h,0c3h,0ffh,0ffh,0c0h,0c0h	; b240  ........
	defb 033h,033h,033h,033h,033h,033h,033h,033h	; b248  33333333
	defb 060h,060h,060h,060h,07fh,07fh,060h,060h	; b250  ````..``
	defb 001h,001h,001h,001h,0ffh,0ffh,001h,001h	; b258  ........
	defb 066h,066h,066h,066h,066h,066h,066h,066h	; b260  ffffffff
	defb 01fh,01fh,001h,001h,000h,000h,000h,000h	; b268  ........
	defb 066h,066h,060h,060h,060h,060h,07fh,07fh	; b270  ff````..
	defb 001h,001h,001h,001h,000h,000h,080h,080h	; b278  ........
	defb 001h,001h,000h,000h,060h,060h,060h,060h	; b280  ....````
	defb 0ffh,0ffh,001h,001h,001h,001h,000h,000h	; b288  ........
	defb 000h,000h,001h,001h,001h,001h,001h,001h	; b290  ........
	defb 001h,001h,001h,001h,001h,001h,000h,000h	; b298  ........
	defb 0c0h,0c0h,0cch,0cch,0cfh,0cfh,0c0h,0c0h	; b2a0  ........
	defb 003h,003h,000h,000h,0f0h,0f0h,03fh,03fh	; b2a8  ......??
	defb 060h,060h,000h,000h,000h,000h,060h,060h	; b2b0  ``....``
	defb 0c0h,0c0h,0fch,0fch,00fh,00fh,000h,000h	; b2b8  ........
	defb 003h,003h,000h,000h,0c0h,0c0h,0ffh,0ffh	; b2c0  ........
	defb 07fh,07fh,001h,001h,000h,000h,060h,060h	; b2c8  ......``
	defb 080h,080h,0f8h,0f8h,01fh,01fh,000h,000h	; b2d0  ........
	defb 080h,080h,0ffh,0ffh,07fh,07fh,007h,007h	; b2d8  ........
	defb 0c0h,0c0h,0cch,0cch,0cch,0cch,0cch,0cch	; b2e0  ........

; ----------------------------------------------------------------------
; DATOS dibujos_B2E8: 62 dibujos de 8x8 a 1 bit (8 bytes cada uno) que la
;   lista de 0x62D2 sube a la hoja desde el 40; lo leen p00:54CC (lista
;   0x62D2) (496 bytes)
;   0xb2e8..0xb4d8  (496 bytes)
DATA_dibujos_B2E8:
	defb 060h,060h,060h,060h,060h,060h,000h,000h	; b2e8  ``````..
	defb 007h,007h,007h,007h,007h,007h,007h,007h	; b2f0  ........
	defb 0c0h,0c0h,0ffh,0ffh,000h,000h,000h,000h	; b2f8  ........
	defb 0b0h,0b0h,0bfh,0bfh,000h,000h,000h,000h	; b300  ........
	defb 0b0h,0b0h,0b0h,0b0h,0bfh,0bfh,003h,003h	; b308  ........
	defb 000h,000h,000h,000h,000h,000h,0ffh,0ffh	; b310  ........
	defb 000h,000h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h	; b318  ........
	defb 0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,000h,000h	; b320  ........
	defb 000h,000h,000h,000h,0bfh,0bfh,000h,000h	; b328  ........
	defb 000h,000h,000h,000h,0c0h,0c0h,0f0h,0f0h	; b330  ........
	defb 03fh,03fh,000h,000h,000h,000h,000h,000h	; b338  ??......
	defb 000h,000h,000h,000h,0bfh,0bfh,0b0h,0b0h	; b340  ........
	defb 060h,060h,07fh,07fh,060h,060h,000h,000h	; b348  ``..``..
	defb 000h,000h,060h,060h,060h,060h,060h,060h	; b350  ..``````
	defb 07fh,07fh,060h,060h,060h,060h,07fh,07fh	; b358  ..````..
	defb 000h,000h,000h,000h,060h,060h,060h,060h	; b360  ....````
	defb 0c0h,0c0h,000h,000h,000h,000h,0c3h,0c3h	; b368  ........
	defb 0c3h,0c3h,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h	; b370  ........
	defb 060h,060h,060h,060h,07fh,07fh,001h,001h	; b378  ````....
	defb 001h,001h,001h,001h,081h,081h,081h,081h	; b380  ........
	defb 001h,001h,079h,079h,079h,079h,060h,060h	; b388  ..yyyy``
	defb 081h,081h,081h,081h,0f9h,0f9h,001h,001h	; b390  ........
	defb 0b0h,0b0h,0b0h,0b0h,000h,000h,000h,000h	; b398  ........
	defb 0ffh,0ffh,000h,000h,000h,000h,000h,000h	; b3a0  ........
	defb 0b0h,0b0h,0b0h,0b0h,0b3h,0b3h,0b0h,0b0h	; b3a8  ........
	defb 000h,000h,000h,000h,0fch,0fch,000h,000h	; b3b0  ........
	defb 07eh,07eh,060h,060h,060h,060h,060h,060h	; b3b8  ~~``````
	defb 01fh,01fh,001h,001h,001h,001h,001h,001h	; b3c0  ........
	defb 060h,060h,060h,060h,000h,000h,000h,000h	; b3c8  ````....
	defb 07fh,07fh,060h,060h,060h,060h,060h,060h	; b3d0  ..``````
	defb 0ffh,0ffh,000h,000h,000h,000h,001h,001h	; b3d8  ........
	defb 00ch,00ch,00ch,00ch,0fch,0fch,0c0h,0c0h	; b3e0  ........
	defb 0c0h,0c0h,0c0h,0c0h,0c3h,0c3h,0c3h,0c3h	; b3e8  ........
	defb 0c3h,0c3h,0c3h,0c3h,003h,003h,003h,003h	; b3f0  ........
	defb 0b0h,0b0h,000h,000h,000h,000h,0b3h,0b3h	; b3f8  ........
	defb 0b3h,0b3h,0b3h,0b3h,0b3h,0b3h,0b3h,0b3h	; b400  ........
	defb 0bfh,0bfh,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h	; b408  ........
	defb 0ffh,0ffh,000h,000h,000h,000h,0ffh,0ffh	; b410  ........
	defb 07eh,07eh,078h,078h,060h,060h,060h,060h	; b418  ~~xx````
	defb 01fh,01fh,007h,007h,001h,001h,001h,001h	; b420  ........
	defb 060h,060h,060h,060h,060h,060h,060h,060h	; b428  ````````
	defb 001h,001h,001h,001h,001h,001h,001h,001h	; b430  ........
	defb 060h,060h,000h,000h,000h,000h,07fh,07fh	; b438  ``......
	defb 001h,001h,001h,001h,07fh,07fh,0e1h,0e1h	; b440  ........
	defb 0c3h,0c3h,0c3h,0c3h,0c3h,0c3h,0c3h,0c3h	; b448  ........
	defb 000h,000h,000h,000h,001h,001h,0ffh,0ffh	; b450  ........
	defb 0c0h,0c0h,0f0h,0f0h,03fh,03fh,003h,003h	; b458  ....??..
	defb 001h,001h,000h,000h,060h,060h,078h,078h	; b460  ....``xx
	defb 0f8h,0f8h,078h,078h,019h,019h,019h,019h	; b468  ..xx....
	defb 01eh,01eh,006h,006h,066h,066h,066h,066h	; b470  ....ffff
	defb 0c3h,0c3h,003h,003h,003h,003h,0ffh,0ffh	; b478  ........
	defb 066h,066h,066h,066h,006h,006h,01eh,01eh	; b480  ffff....
	defb 019h,019h,018h,018h,018h,018h,01fh,01fh	; b488  ........
	defb 0ffh,0ffh,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h	; b490  ........
	defb 078h,078h,060h,060h,060h,060h,060h,060h	; b498  xx``````
	defb 007h,007h,001h,001h,001h,001h,001h,001h	; b4a0  ........
	defb 07eh,07eh,07eh,07eh,07eh,07eh,07eh,07eh	; b4a8  ~~~~~~~~
	defb 01fh,01fh,01fh,01fh,01fh,01fh,01fh,01fh	; b4b0  ........
	defb 0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h	; b4b8  ........
	defb 000h,000h,003h,003h,0bfh,0bfh,0b0h,0b0h	; b4c0  ........
	defb 000h,000h,000h,000h,0b0h,0b0h,0b0h,0b0h	; b4c8  ........
	defb 0b0h,0b0h,000h,000h,000h,000h,0bfh,0bfh	; b4d0  ........

; ----------------------------------------------------------------------
; DATOS dibujos_B4D8: 7 dibujos de 8x8 a 2 bits (16 bytes cada uno) que la
;   lista de 0x62D2 sube a la hoja desde el 90; lo leen p00:54CC (lista
;   0x62D2) (112 bytes)
;   0xb4d8..0xb548  (112 bytes)
DATA_dibujos_B4D8:
	defb 000h,000h,000h,000h,000h,07eh,000h,07eh,000h,006h,000h,006h,001h,007h,001h,007h	; b4d8  .....~.~........
	defb 000h,000h,000h,000h,000h,018h,000h,018h,000h,01fh,000h,01fh,0e0h,0ffh,0e0h,0ffh	; b4e8  ................
	defb 000h,07eh,000h,07eh,000h,07eh,000h,07eh,000h,07eh,000h,07eh,001h,07fh,001h,07fh	; b4f8  .~.~.~.~.~.~....
	defb 000h,01fh,000h,01fh,000h,01fh,000h,01fh,000h,01fh,000h,01fh,0e0h,0ffh,0e0h,0ffh	; b508  ................
	defb 000h,000h,000h,000h,000h,01fh,000h,01fh,000h,01fh,000h,01fh,0e0h,0ffh,0e0h,0ffh	; b518  ................
	defb 000h,060h,000h,060h,000h,07eh,000h,07eh,000h,07eh,000h,07eh,001h,07fh,001h,07fh	; b528  .`.`.~.~.~.~....
	defb 000h,001h,000h,001h,000h,01fh,000h,01fh,000h,01fh,000h,01fh,0e0h,0ffh,0e0h,0ffh	; b538  ................

; ----------------------------------------------------------------------
; DATOS dibujos_B548: 6 dibujos de 8x8 a 2 bits (16 bytes cada uno) que la
;   lista de 0x62D2 sube a la hoja desde el 97; lo leen p00:54CC (lista
;   0x62D2) (96 bytes)
;   0xb548..0xb5a8  (96 bytes)
DATA_dibujos_B548:
	defb 000h,03fh,000h,03fh,00ch,03fh,00ch,03fh,000h,003h,000h,003h,000h,003h,000h,003h	; b548  .?.?.?.?........
	defb 000h,019h,000h,019h,000h,019h,000h,019h,000h,019h,000h,019h,006h,01fh,006h,01fh	; b558  ................
	defb 000h,01fh,000h,01fh,000h,07fh,000h,07fh,018h,07fh,018h,07fh,000h,060h,000h,060h	; b568  .............`.`
	defb 000h,0b0h,000h,0b0h,000h,0bfh,000h,0bfh,000h,0bfh,000h,0bfh,003h,0bfh,003h,0bfh	; b578  ................
	defb 000h,003h,000h,003h,000h,003h,000h,003h,000h,003h,000h,003h,030h,0ffh,030h,0ffh	; b588  ............0.0.
	defb 000h,0c0h,000h,0c0h,000h,0c0h,000h,0c0h,000h,0fch,000h,0fch,030h,0fch,030h,0fch	; b598  ............0.0.

; ----------------------------------------------------------------------
; DATOS dibujos_B5A8: 5 dibujos de 8x8 a 2 bits (16 bytes cada uno) que la
;   lista de 0x62D2 sube a la hoja desde el 9D; lo leen p00:54CC (lista
;   0x62D2) (80 bytes)
;   0xb5a8..0xb5f8  (80 bytes)
DATA_dibujos_B5A8:
	defb 000h,000h,000h,000h,000h,0c0h,000h,0c0h,00ch,0ffh,00ch,0ffh,000h,000h,000h,000h	; b5a8  ................
	defb 003h,0bfh,003h,0bfh,000h,000h,000h,000h,000h,000h,000h,000h,000h,0bfh,000h,0bfh	; b5b8  ................
	defb 00ch,0bfh,00ch,0bfh,000h,0b3h,000h,0b3h,000h,0b0h,000h,0b0h,000h,0b0h,000h,0b0h	; b5c8  ................
	defb 000h,060h,000h,060h,000h,060h,000h,060h,000h,060h,000h,060h,018h,07fh,018h,07fh	; b5d8  .`.`.`.`.`.`....
	defb 000h,0bfh,000h,0bfh,000h,000h,000h,000h,000h,000h,000h,000h,003h,0bfh,003h,0bfh	; b5e8  ................

; ----------------------------------------------------------------------
; DATOS dibujos_B5F8: 6 dibujos de 8x8 a 2 bits (16 bytes cada uno) que la
;   lista de 0x62D2 sube a la hoja desde el A2; lo leen p00:54CC (lista
;   0x62D2) (96 bytes)
;   0xb5f8..0xb658  (96 bytes)
DATA_dibujos_B5F8:
	defb 000h,001h,000h,001h,006h,0ffh,006h,0ffh,000h,018h,000h,018h,000h,018h,000h,018h	; b5f8  ................
	defb 000h,0c0h,000h,0c0h,000h,0c0h,000h,0c0h,000h,0f0h,000h,0f0h,00ch,0ffh,00ch,0ffh	; b608  ................
	defb 00ch,03fh,00ch,03fh,000h,0f0h,000h,0f0h,000h,0c0h,000h,0c0h,000h,0c3h,000h,0c3h	; b618  .?.?............
	defb 00ch,0ffh,00ch,0ffh,000h,0c0h,000h,0c0h,000h,0c0h,000h,0c0h,000h,0c0h,000h,0c0h	; b628  ................
	defb 060h,0ffh,060h,0ffh,000h,001h,000h,001h,000h,001h,000h,001h,000h,001h,000h,001h	; b638  `.`.............
	defb 000h,0b0h,000h,0b0h,003h,0bfh,003h,0bfh,000h,0b0h,000h,0b0h,000h,0b0h,000h,0b0h	; b648  ................

; ----------------------------------------------------------------------
; DATOS tabla_B658: tabla que lee p09:BD7D, p09:BD88, p09:BDD1, p09:BEF3,
;   p09:BEFE (552 bytes)
;   0xb658..0xb880  (552 bytes)
DATA_tabla_B658:
	defb 002h,080h,066h,067h,07ah,002h,0a8h,002h,080h,068h,069h,07ah,002h,0a8h,002h,0a4h	; b658  ..fgz....hiz....
	defb 06ah,06bh,07ah,002h,0a8h,002h,06ch,0a0h,06dh,07bh,081h,0a8h,002h,06eh,06fh,070h	; b668  jkz...l.m{...nop
	defb 07ch,001h,0a8h,002h,089h,071h,098h,07ah,001h,0a8h,072h,003h,073h,074h,07dh,088h	; b678  |....q.z..r.st}.
	defb 0abh,075h,080h,076h,077h,07ah,001h,0a8h,002h,080h,068h,069h,07ah,001h,0a8h,002h	; b688  .u.vwz....hiz...
	defb 080h,068h,069h,07ah,002h,0a8h,002h,080h,095h,096h,07ah,002h,0a8h,002h,080h,078h	; b698  .hiz......z....x
	defb 079h,07ah,002h,0a8h,002h,080h,05ah,05bh,07ah,002h,0a8h,002h,080h,068h,069h,0a7h	; b6a8  yz....Z[z....hi.
	defb 081h,0a8h,002h,003h,05ch,069h,07ah,001h,0a8h,002h,080h,05dh,05eh,062h,001h,0a8h	; b6b8  ....\iz....]^b..
	defb 09ch,080h,068h,069h,063h,001h,0a8h,05fh,080h,068h,069h,063h,001h,0a9h,002h,080h	; b6c8  ..hic.._.hic....
	defb 068h,069h,09fh,001h,0a8h,060h,080h,068h,069h,07ah,001h,0a8h,061h,080h,068h,069h	; b6d8  hi...`.hiz..a.hi
	defb 07ah,001h,0aah,072h,080h,068h,069h,064h,065h,0abh,00bh,080h,095h,096h,07ah,002h	; b6e8  z..r.hide.....z.
	defb 0a9h,002h,080h,078h,079h,07ah,002h,0a8h,002h,080h,05ah,05bh,07ah,001h,0a8h,002h	; b6f8  ...xyz....Z[z...
	defb 080h,068h,069h,07ah,001h,0a8h,002h,087h,04ch,0a2h,056h,001h,0a8h,002h,00ah,04dh	; b708  .hiz....L.V....M
	defb 079h,07ah,001h,0a8h,002h,080h,04eh,065h,0a1h,002h,0a8h,084h,089h,04fh,069h,07ah	; b718  yz....Ne.....Oiz
	defb 001h,0abh,050h,09bh,068h,069h,064h,057h,0abh,051h,087h,052h,053h,07ah,001h,0a8h	; b728  ..P.hidW.Q.RSz..
	defb 002h,00ah,054h,055h,07ah,001h,0a8h,002h,080h,068h,069h,07ah,001h,0a8h,002h,080h	; b738  ..TUz....hiz....
	defb 095h,096h,058h,059h,0a8h,002h,080h,078h,079h,07ah,001h,0a8h,002h,080h,02fh,030h	; b748  ..XY...xyz..../0
	defb 043h,09dh,0a8h,002h,080h,02fh,069h,07ah,001h,0a8h,0a3h,005h,031h,032h,056h,001h	; b758  C..../iz....12V.
	defb 0a8h,008h,089h,033h,034h,044h,045h,0abh,002h,080h,068h,035h,046h,001h,0a8h,002h	; b768  ...34DE...h5F...
	defb 080h,068h,036h,047h,001h,0a8h,037h,038h,039h,035h,046h,001h,0a8h,03ah,03bh,03ch	; b778  .h6G..7895F..:;<
	defb 03dh,048h,049h,0aah,002h,086h,03ch,03eh,046h,04ah,0a8h,03fh,087h,040h,041h,09ah	; b788  =HI...<>FJ.?.@A.
	defb 088h,0a8h,085h,042h,090h,091h,04bh,009h,0a8h,002h,080h,02fh,079h,07ah,001h,0a8h	; b798  ...B..K..../yz..
	defb 002h,006h,01fh,079h,07ah,001h,0a8h,002h,087h,020h,099h,021h,022h,0a8h,002h,00ah	; b7a8  ...yz.... .!"...
	defb 023h,024h,025h,026h,0a8h,06ch,065h,027h,028h,09eh,029h,0a8h,002h,080h,068h,069h	; b7b8  #$%&.le'(.)...hi
	defb 07ah,001h,0a8h,082h,02ah,068h,069h,07ah,001h,0abh,02bh,02ch,068h,069h,07ah,001h	; b7c8  z...*hiz..+,hiz.
	defb 0a8h,075h,02ah,02dh,02eh,07ah,001h,0a8h,0a5h,007h,068h,069h,07ah,001h,0a8h,002h	; b7d8  .u*-.z....hiz...
	defb 080h,068h,036h,021h,00bh,0a8h,002h,080h,095h,094h,046h,002h,0a8h,002h,080h,078h	; b7e8  .h6!......F....x
	defb 079h,07ah,001h,0a8h,00bh,00ch,00dh,05bh,07ah,001h,0a9h,00eh,00fh,010h,011h,07ah	; b7f8  yz.....[z......z
	defb 001h,0a8h,002h,012h,05dh,0a6h,07ah,001h,0a8h,004h,072h,013h,014h,047h,001h,0a8h	; b808  ....].z...r..G..
	defb 015h,016h,017h,018h,046h,001h,0a8h,019h,097h,068h,069h,07ah,001h,0a8h,002h,080h	; b818  ....F....hiz....
	defb 068h,069h,07ah,001h,0a8h,002h,080h,068h,069h,07ah,001h,0a8h,002h,080h,068h,069h	; b828  hiz....hiz....hi
	defb 07ah,001h,0a8h,002h,080h,068h,01ah,01ch,01dh,0a8h,002h,080h,092h,093h,063h,01eh	; b838  z....h........c.
	defb 0a8h,083h,01bh,078h,079h,07ah,001h,0a8h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b848  ...xyz..........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b858  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b868  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b878  ........

; ======================================================================
; CODIGO 0xb880..0xb925  (165 bytes)
; ======================================================================


L_B880:
	call rutina		;b880
	ld (0f100h),a		;b883   ; 0xF100: la ranura de Hinotori (p09:B883)
	ld hl,04002h		;b886
	call mira_ranura_del_otro		;b889
	ld (0f102h),de		;b88c   ; 0xF102: el INIT de King Kong 2, leido de su 0x4002 (p09:B88C)
	ld hl,0f87fh		;b890
	ld b,0a0h		;b893
	call bucle		;b895
	call mira_init_de_king_kong		;b898
	call mira_codigo_en_ram		;b89b
	call pon_grabando		;b89e
	jp 0f120h		;b8a1   ; 0xF120: el INIT de King Kong 2 y el gancho de Hinotori, copiados (p09:B8EA, p09:B919)
pon_grabando:
	ld a,0c9h		;b8a4
	ld (0fd9fh),a		;b8a6
	ld hl,0f220h		;b8a9   ; 0xF220: el INIT de King Kong 2 y el gancho de Hinotori, copiados (p09:B8EA, p09:B919)
	ld (0fda0h),hl		;b8ac
	ld hl,00000h		;b8af
	ld (0f106h),hl		;b8b2   ; 0xF106: se esta grabando o cargando la partida de King Kong 2
	ld a,(0f101h)		;b8b5   ; 0xF101: la ranura del otro cartucho (p00:5E36)
	ld h,040h		;b8b8
	jp 00024h		;b8ba   ; BIOS ENASLT - Switches to specified slot and page definitively
rutina:
	call 00138h		;b8bd   ; BIOS RSLREG - Reads the primary slot register
	rrca			;b8c0
	rrca			;b8c1
	and 003h		;b8c2
	ld c,a			;b8c4
	ld b,000h		;b8c5
	ld hl,0fcc1h		;b8c7
	add hl,bc			;b8ca
	or (hl)			;b8cb
	ld c,a			;b8cc
	inc hl			;b8cd
	inc hl			;b8ce
	inc hl			;b8cf
	inc hl			;b8d0
	ld a,(hl)			;b8d1
	and 00ch		;b8d2
	or c			;b8d4
	ret			;b8d5
mira_ranura_del_otro:
	ld a,(0f101h)		;b8d6   ; 0xF101: la ranura del otro cartucho (p00:5E36)
	ld c,a			;b8d9
	call lee_de_otra_ranura		;b8da
	ld e,d			;b8dd
lee_de_otra_ranura:
	ld a,c			;b8de
	push bc			;b8df
	push de			;b8e0
	call 0000ch		;b8e1   ; BIOS RDSLT - Reads the value of an address in another slot
	pop de			;b8e4
	pop bc			;b8e5
	ld d,a			;b8e6
	or e			;b8e7
	inc hl			;b8e8
	ret			;b8e9
mira_init_de_king_kong:
	ld hl,(0f102h)		;b8ea   ; 0xF102: el INIT de King Kong 2, leido de su 0x4002 (p09:B88C)
	ld de,0f120h		;b8ed   ; 0xF120: el INIT de King Kong 2 y el gancho de Hinotori, copiados (p09:B8EA, p09:B919)
	ld b,000h		;b8f0   ; 0 vueltas
L_B8F2:
	push bc			;b8f2
	push de			;b8f3
	ld a,(0f101h)		;b8f4   ; 0xF101: la ranura del otro cartucho (p00:5E36)
	call 0000ch		;b8f7   ; BIOS RDSLT - Reads the value of an address in another slot
	pop de			;b8fa
	pop bc			;b8fb
	ld (de),a			;b8fc
	inc hl			;b8fd
	inc de			;b8fe
	djnz L_B8F2		;b8ff
	ld bc,00100h		;b901
	ld hl,0f120h		;b904   ; 0xF120: el INIT de King Kong 2 y el gancho de Hinotori, copiados (p09:B8EA, p09:B919)
L_B907:
	ld a,0a0h		;b907
	cpir		;b909
	ret nz			;b90b
	ret po			;b90c
	ld a,0fdh		;b90d
	cp (hl)			;b90f
	jr nz,L_B907		;b910
	ld de,0f104h		;b912   ; 0xF104: la interrupcion de King Kong 2 (p09:B917)
	ld (hl),d			;b915
	dec hl			;b916
	ld (hl),e			;b917
	ret			;b918
mira_codigo_en_ram:
	ld hl,0b925h		;b919   ; p09:B925 codigo_para_f220: 0xAA bytes de CODIGO que p09:B919 copia a 0xF220 (ldir) y que corre alli: p09:B8A4 pone 0xF220 en el gancho H.
	ld de,0f220h		;b91c   ; 0xF220: el INIT de King Kong 2 y el gancho de Hinotori, copiados (p09:B8EA, p09:B919)
	ld bc,000aah		;b91f
	ldir		;b922
	ret			;b924

; ----------------------------------------------------------------------
; DATOS codigo_para_f220: 0xAA bytes de CODIGO que p09:B919 copia a 0xF220
;   (ldir) y que corre alli: p09:B8A4 pone 0xF220 en el gancho H.TIMI (0xFD9F)
;   antes de saltar al INIT de King Kong 2 copiado en 0xF120; solo pasa si
;   p00:5DFF encontro King Kong 2 en otra ranura (0xC110 = 2). Se deja como
;   datos porque se ensambla para 0xF220 y no para aqui
;   0xb925..0xb9cf  (170 bytes)
DATA_codigo_para_f220:
	defb 0f3h,03ah,006h,0f1h,0a7h,0c0h,03ah,000h,0c1h,0feh,005h,028h,004h,02ah,004h,0f1h	; b925  .:....:....(.*..
	defb 0e9h,03ah,007h,0f1h,03dh,028h,068h,03dh,028h,073h,03ah,001h,0c2h,0a7h,020h,0edh	; b935  .:..=(h=(s:... .
	defb 03ah,033h,0c1h,0a7h,020h,0e7h,03ah,060h,0c5h,0a7h,020h,0e1h,03ah,000h,0c3h,0feh	; b945  :3.. .:`.. .:...
	defb 005h,030h,0dah,03eh,007h,0cdh,041h,001h,0cbh,047h,028h,006h,0cbh,04fh,028h,031h	; b955  .0.>..A..G(..O(1
	defb 018h,0cbh,03ah,005h,0c1h,0a7h,020h,0c5h,021h,001h,000h,022h,007h,0f1h,0cdh,0e2h	; b965  ..:... .!.."....
	defb 041h,021h,000h,0e0h,011h,000h,0cah,001h,000h,003h,0edh,0b0h,03ah,000h,0f1h,026h	; b975  A!..........:..&
	defb 080h,0f5h,0cdh,024h,000h,0f1h,026h,040h,0cdh,024h,000h,0cdh,054h,0bch,0c3h,0edh	; b985  ...$..&@.$..T...
	defb 04ch,03ah,005h,0c1h,0a7h,020h,096h,021h,002h,000h,022h,007h,0f1h,018h,0cfh,03eh	; b995  L:... .!.."....>
	defb 001h,032h,006h,0f1h,0cdh,0cfh,0b9h,0f3h,0afh,032h,006h,0f1h,0c9h,03eh,001h,032h	; b9a5  .2.......2...>.2
	defb 006h,0f1h,0cdh,09ch,0bah,0f3h,0afh,032h,006h,0f1h,0c9h,03ah,001h,0f1h,026h,040h	; b9b5  .......2...:..&@
	defb 0f5h,0cdh,024h,000h,0f1h,026h,080h,0c3h,024h,000h	; b9c5  ..$..&..$.

; ======================================================================
; CODIGO 0xb9cf..0xb9d5  (6 bytes)
; ======================================================================


L_B9CF:
	ld a,(0f108h)		;b9cf   ; 0xF108: lo de arrancar King Kong 2 (p09:B880)
	call 040aeh		;b9d2   ; p00:40AE despacha

; ----------------------------------------------------------------------
; DATOS sin_lector_B9D5: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (10 bytes)
;   0xb9d5..0xb9df  (10 bytes)
DATA_sin_lector_B9D5:
	defb 0dfh,0b9h,0f3h,0b9h,00ch,0bah,034h,0bah,06ah,0bah	; b9d5  ......4.j.

; ======================================================================
; CODIGO 0xb9df..0xbaa2  (195 bytes)
; ======================================================================


L_B9DF:
	call con_hmmv		;b9df   ; entrada 0 de la tabla de p09:B9D2 (L_B9CF)
	call rutina_2		;b9e2
	ld hl,0bc6eh		;b9e5
	call 04f87h		;b9e8
	call mira_king_kong_4		;b9eb
L_B9EE:
	ld hl,0f108h		;b9ee   ; 0xF108: lo de arrancar King Kong 2 (p09:B880)
	inc (hl)			;b9f1
	ret			;b9f2
L_B9F3:
	call mira_king_kong_2		;b9f3   ; entrada 1 de la tabla de p09:B9D2 (L_B9CF)
	jp c,L_BB39		;b9f6
	push af			;b9f9
	ld hl,0bcb3h		;b9fa
	call 04f8bh		;b9fd
	pop af			;ba00
	cp 00dh		;ba01
	ret nz			;ba03
	ld hl,0bcaah		;ba04
	call 04f87h		;ba07
	jr L_B9EE		;ba0a
L_BA0C:
	ld a,001h		;ba0c   ; entrada 2 de la tabla de p09:B9D2 (L_B9CF)
	call 000eah		;ba0e   ; BIOS TAPOON - Turns on the cassette motor and writes the header
	ld b,00ah		;ba11   ; 10 vueltas
L_BA13:
	push bc			;ba13
	ld a,0eah		;ba14
	call 000edh		;ba16   ; BIOS TAPOUT - Writes data on the tape
	pop bc			;ba19
	jp c,L_BA84		;ba1a
	djnz L_BA13		;ba1d
	ld b,006h		;ba1f   ; 6 vueltas
	ld hl,0f10ah		;ba21   ; 0xF10A: lo de arrancar King Kong 2 (p09:B880)
L_BA24:
	push hl			;ba24
	push bc			;ba25
	ld a,(hl)			;ba26
	call 000edh		;ba27   ; BIOS TAPOUT - Writes data on the tape
	jp c,L_BA84		;ba2a
	pop bc			;ba2d
	pop hl			;ba2e
	inc hl			;ba2f
	djnz L_BA24		;ba30
	jr L_B9EE		;ba32
L_BA34:
	xor a			;ba34   ; entrada 3 de la tabla de p09:B9D2 (L_B9CF)
	call 000eah		;ba35   ; BIOS TAPOON - Turns on the cassette motor and writes the header
	jp c,L_BA84		;ba38
	ld hl,0bcfbh		;ba3b
L_BA3E:
	ld e,(hl)			;ba3e
	inc hl			;ba3f
	ld d,(hl)			;ba40
	ld a,e			;ba41
	or d			;ba42
	jr z,L_BA5E		;ba43
	inc hl			;ba45
	ld c,(hl)			;ba46
	inc hl			;ba47
	ld b,(hl)			;ba48
	inc hl			;ba49
	push hl			;ba4a
L_BA4B:
	push de			;ba4b
	push bc			;ba4c
	ld a,(de)			;ba4d
	call 000edh		;ba4e   ; BIOS TAPOUT - Writes data on the tape
	pop bc			;ba51
	pop de			;ba52
	jr c,L_BA83		;ba53
	inc de			;ba55
	dec bc			;ba56
	ld a,b			;ba57
	or c			;ba58
	jr nz,L_BA4B		;ba59
	pop hl			;ba5b
	jr L_BA3E		;ba5c
L_BA5E:
	call 000f0h		;ba5e   ; BIOS TAPOOF - Stops writing on the tape
	ld hl,0bcc0h		;ba61
	call 04f87h		;ba64
	jp L_B9EE		;ba67
L_BA6A:
	call 0009fh		;ba6a   ; BIOS CHGET - One character input (waiting)
	cp 059h		;ba6d
	jp z,L_BB39		;ba6f
	cp 079h		;ba72
	jp z,L_BB39		;ba74
	cp 04eh		;ba77
	jr z,L_BA7E		;ba79
	cp 06eh		;ba7b
	ret nz			;ba7d
L_BA7E:
	xor a			;ba7e
	ld (0f108h),a		;ba7f   ; 0xF108: lo de arrancar King Kong 2 (p09:B880)
	ret			;ba82
L_BA83:
	pop hl			;ba83
L_BA84:
	call 000f0h		;ba84   ; BIOS TAPOOF - Stops writing on the tape
	ld hl,0bcaah		;ba87
	call 04f8bh		;ba8a
	ld hl,0bcb3h		;ba8d
	call 04f87h		;ba90
	call mira_king_kong_4		;ba93
	ld a,001h		;ba96
	ld (0f108h),a		;ba98   ; 0xF108: lo de arrancar King Kong 2 (p09:B880)
	ret			;ba9b
L_BA9C:
	ld a,(0f108h)		;ba9c   ; 0xF108: lo de arrancar King Kong 2 (p09:B880)
	call 040aeh		;ba9f   ; p00:40AE despacha

; ----------------------------------------------------------------------
; DATOS sin_lector_BAA2: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (6 bytes)
;   0xbaa2..0xbaa8  (6 bytes)
DATA_sin_lector_BAA2:
	defb 0a8h,0bah,0bah,0bah,0ceh,0bah	; baa2

; ======================================================================
; CODIGO 0xbaa8..0xbc67  (447 bytes)
; ======================================================================


L_BAA8:
	call con_hmmv		;baa8   ; entrada 0 de la tabla de p09:BA9F (L_BA9C)
	call rutina_2		;baab
	ld hl,0bc8ch		;baae
	call 04f87h		;bab1
	call mira_king_kong_4		;bab4
	jp L_B9EE		;bab7
L_BABA:
	call mira_king_kong_2		;baba   ; entrada 1 de la tabla de p09:BA9F (L_BA9C)
	jp c,L_BB39		;babd
	push af			;bac0
	ld hl,0bcebh		;bac1
	call 04f8bh		;bac4
	pop af			;bac7
	cp 00dh		;bac8
	ret nz			;baca
	jp L_B9EE		;bacb
L_BACE:
	call 000e1h		;bace   ; BIOS TAPION - Reads the header block after turning the cassette motor on
	jp c,L_BB91		;bad1
	ld b,00ah		;bad4   ; 10 vueltas
L_BAD6:
	push bc			;bad6
	call 000e4h		;bad7   ; BIOS TAPIN - Reads data from the tape
	pop bc			;bada
	jp c,L_BB91		;badb
	cp 0eah		;bade
	jr nz,L_BACE		;bae0
	djnz L_BAD6		;bae2
	ld b,006h		;bae4   ; 6 vueltas
	ld hl,0f110h		;bae6   ; 0xF110: lo de arrancar King Kong 2 (p09:B880)
L_BAE9:
	push bc			;bae9
	push hl			;baea
	call 000e4h		;baeb   ; BIOS TAPIN - Reads data from the tape
	pop hl			;baee
	pop bc			;baef
	ld (hl),a			;baf0
	inc hl			;baf1
	djnz L_BAE9		;baf2
	ld hl,0f110h		;baf4   ; 0xF110: lo de arrancar King Kong 2 (p09:B880)
	ld de,0f10ah		;baf7   ; 0xF10A: lo de arrancar King Kong 2 (p09:B880)
	ld b,006h		;bafa   ; 6 vueltas
L_BAFC:
	ld a,(de)			;bafc
	cp (hl)			;bafd
	jp nz,L_BBA3		;bafe
	inc hl			;bb01
	inc de			;bb02
	djnz L_BAFC		;bb03
	ld hl,0bce3h		;bb05
	call 04f87h		;bb08
	call mira_king_kong		;bb0b
	call 000e1h		;bb0e   ; BIOS TAPION - Reads the header block after turning the cassette motor on
	jr c,L_BB91		;bb11
	ld hl,0bcfbh		;bb13
L_BB16:
	ld e,(hl)			;bb16
	inc hl			;bb17
	ld d,(hl)			;bb18
	ld a,e			;bb19
	or d			;bb1a
	jr z,L_BB36		;bb1b
	inc hl			;bb1d
	ld c,(hl)			;bb1e
	inc hl			;bb1f
	ld b,(hl)			;bb20
	inc hl			;bb21
	push hl			;bb22
L_BB23:
	push de			;bb23
	push bc			;bb24
	call 000e4h		;bb25   ; BIOS TAPIN - Reads data from the tape
	pop bc			;bb28
	pop de			;bb29
	jr c,L_BB90		;bb2a
	ld (de),a			;bb2c
	inc de			;bb2d
	dec bc			;bb2e
	ld a,b			;bb2f
	or c			;bb30
	jr nz,L_BB23		;bb31
	pop hl			;bb33
	jr L_BB16		;bb34
L_BB36:
	call 000e7h		;bb36   ; BIOS TAPIOF - Stops reading from the tape
L_BB39:
	call mira_pantalla		;bb39
	ld a,(0c125h)		;bb3c   ; 0xC125: la fila 7 del teclado que se tiene pulsada
	and a			;bb3f
	jr nz,L_BB56		;bb40
	ld hl,0c321h		;bb42
	ld a,(hl)			;bb45
	cp 080h		;bb46
	jr c,L_BB4C		;bb48
	ld (hl),080h		;bb4a
L_BB4C:
	ld hl,0c307h		;bb4c
	ld a,(hl)			;bb4f
	cp 004h		;bb50
	jr nc,L_BB56		;bb52
	ld (hl),004h		;bb54
L_BB56:
	xor a			;bb56
	ld (0f107h),a		;bb57   ; 0xF107: 1 grabar (F4), 2 cargar (F5)
	ld (0c325h),a		;bb5a
	ld a,0ffh		;bb5d
	ld (0c148h),a		;bb5f   ; 0xC148: variables del juego
	ld (0c139h),a		;bb62   ; 0xC139: semaforo de la interrupcion (p00:4051)
	ld a,001h		;bb65
	ld (0c201h),a		;bb67   ; 0xC201: el logotipo y el titulo (p01:66D4)
	ld (0c11ah),a		;bb6a
	ld (0c13bh),a		;bb6d   ; 0xC13B: la demostracion se esta acabando (p01:63DB)
	call pon_canales		;bb70
	jp 0f2bbh		;bb73   ; 0xF2BB: el INIT de King Kong 2 y el gancho de Hinotori, copiados (p09:B8EA, p09:B919)
pon_canales:
	ld a,001h		;bb76
	ld (0c023h),a		;bb78   ; 0xC023: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ld (0c037h),a		;bb7b   ; 0xC037: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ld (0c04bh),a		;bb7e   ; 0xC04B: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ld hl,0c098h		;bb81   ; 0xC098: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ld (hl),0ffh		;bb84
	ld (0c01ah),hl		;bb86   ; 0xC01A: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ld (0c02eh),hl		;bb89   ; 0xC02E: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ld (0c042h),hl		;bb8c   ; 0xC042: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ret			;bb8f
L_BB90:
	pop hl			;bb90
L_BB91:
	call 000e7h		;bb91   ; BIOS TAPIOF - Stops reading from the tape
	ld hl,0bcebh		;bb94
	call 04f87h		;bb97
	call mira_king_kong_4		;bb9a
	ld a,001h		;bb9d
	ld (0f108h),a		;bb9f   ; 0xF108: lo de arrancar King Kong 2 (p09:B880)
	ret			;bba2
L_BBA3:
	call 000e1h		;bba3   ; BIOS TAPION - Reads the header block after turning the cassette motor on
	ld hl,0bcdch		;bba6
	call 04f87h		;bba9
mira_king_kong:
	ld de,05860h		;bbac
	ld hl,0f110h		;bbaf   ; 0xF110: lo de arrancar King Kong 2 (p09:B880)
	jp L_BC3A		;bbb2
rutina_2:
	ld hl,0fbf0h		;bbb5
	ld b,028h		;bbb8
	jp bucle		;bbba
mira_pantalla:
	ld hl,0e058h		;bbbd   ; 0xE058: la tabla de 32x32 dibujos de la pantalla
	ld bc,01020h		;bbc0
	jr con_hmmv_2		;bbc3
con_hmmv:
	ld hl,00808h		;bbc5
	ld bc,0a0a0h		;bbc8
	call con_hmmv_2		;bbcb
	ld hl,008b0h		;bbce
	ld bc,0a018h		;bbd1
con_hmmv_2:
	xor a			;bbd4
	ld d,a			;bbd5
	jp 04e0bh		;bbd6   ; p00:4E0B hmmv
mira_king_kong_2:
	xor a			;bbd9
	ld (0fcach),a		;bbda
	call 0009fh		;bbdd   ; BIOS CHGET - One character input (waiting)
	ld c,a			;bbe0
	ld hl,0f109h		;bbe1   ; 0xF109: lo de arrancar King Kong 2 (p09:B880)
	ld de,0f10ah		;bbe4   ; 0xF10A: lo de arrancar King Kong 2 (p09:B880)
	ld a,(hl)			;bbe7
	call 040a9h		;bbe8   ; p00:40A9 de_mas_a
	ld a,c			;bbeb
	cp 01bh		;bbec
	jr z,L_BC18		;bbee
	cp 00dh		;bbf0
	jr z,L_BC1A		;bbf2
	cp 008h		;bbf4
	jr z,L_BC20		;bbf6
	sub 030h		;bbf8
	cp 00ah		;bbfa
	jr c,L_BC0D		;bbfc
	sub 011h		;bbfe
	cp 01ah		;bc00
	jr c,L_BC0D		;bc02
	sub 020h		;bc04
	cp 01ah		;bc06
	ret nc			;bc08
	ld a,c			;bc09
	sub 020h		;bc0a
	ld c,a			;bc0c
L_BC0D:
	ld a,c			;bc0d
	ld (de),a			;bc0e
	ld a,(hl)			;bc0f
	inc a			;bc10
	cp 006h		;bc11
	jr nc,mira_king_kong_3		;bc13
	ld (hl),a			;bc15
	jr mira_king_kong_3		;bc16
L_BC18:
	scf			;bc18
	ret			;bc19
L_BC1A:
	call mira_king_kong_3		;bc1a
	ld a,00dh		;bc1d
	ret			;bc1f
L_BC20:
	ex de,hl			;bc20
	ld c,(hl)			;bc21
	ld (hl),000h		;bc22
	ld a,(de)			;bc24
	dec a			;bc25
	jp m,mira_king_kong_3		;bc26
	ld (de),a			;bc29
	ld a,c			;bc2a
	and a			;bc2b
	jr nz,L_BC32		;bc2c
	dec hl			;bc2e
	ld (hl),a			;bc2f
	jr mira_king_kong_3		;bc30
L_BC32:
	ex de,hl			;bc32
	inc (hl)			;bc33
mira_king_kong_3:
	ld de,03050h		;bc34
	ld hl,0f10ah		;bc37   ; 0xF10A: lo de arrancar King Kong 2 (p09:B880)
L_BC3A:
	ld b,006h		;bc3a   ; 6 vueltas
L_BC3C:
	ld a,(hl)			;bc3c
	inc hl			;bc3d
	call 04fa3h		;bc3e
	ld a,d			;bc41
	add a,008h		;bc42
	ld d,a			;bc44
	djnz L_BC3C		;bc45
	xor a			;bc47
	ret			;bc48
mira_king_kong_4:
	ld hl,0f109h		;bc49   ; 0xF109: lo de arrancar King Kong 2 (p09:B880)
	ld b,00eh		;bc4c   ; 14 vueltas
bucle:
	ld (hl),000h		;bc4e
	inc hl			;bc50
	djnz bucle		;bc51
	ret			;bc53
L_BC54:
	ld e,000h		;bc54
	ld a,008h		;bc56
	call 00093h		;bc58   ; BIOS WRTPSG - Writes data to PSG-register
	ld e,000h		;bc5b
	inc a			;bc5d
	call 00093h		;bc5e   ; BIOS WRTPSG - Writes data to PSG-register
	ld e,000h		;bc61
	inc a			;bc63
	jp 00093h		;bc64   ; BIOS WRTPSG - Writes data to PSG-register

; ----------------------------------------------------------------------
; DATOS tabla_BC67: tabla que lee p09:B9E5, p09:B9FA, p09:BA04, p09:BA3B,
;   p09:BA61, p09:BA87 (202 bytes)
;   0xbc67..0xbd31  (202 bytes)
DATA_tabla_BC67:
	defb 01eh,0bfh,03eh,007h,0c3h,093h,000h,010h,030h,053h,041h,056h,045h,000h,04dh,04fh	; bc67  ..>.....0SAVE.MO
	defb 044h,045h,0feh,018h,040h,049h,04eh,050h,055h,054h,000h,046h,049h,04ch,045h,000h	; bc77  DE..@INPUT.FILE.
	defb 04eh,041h,04dh,045h,0ffh,010h,030h,04ch,04fh,041h,044h,000h,04dh,04fh,044h,045h	; bc87  NAME..0LOAD.MODE
	defb 0feh,018h,040h,049h,04eh,050h,055h,054h,000h,046h,049h,04ch,045h,000h,04eh,041h	; bc97  ..@INPUT.FILE.NA
	defb 04dh,045h,0ffh,028h,060h,053h,041h,056h,049h,04eh,047h,0ffh,028h,060h,053h,041h	; bca7  ME.(`SAVING.(`SA
	defb 056h,045h,000h,045h,052h,052h,04fh,052h,0ffh,018h,070h,04fh,04bh,03bh,0feh,020h	; bcb7  VE.ERROR..pOK;.
	defb 080h,059h,045h,053h,000h,000h,000h,000h,059h,0feh,020h,088h,04eh,04fh,000h,000h	; bcc7  .YES....Y. .NO..
	defb 000h,000h,000h,04eh,0ffh,028h,060h,053h,04bh,049h,050h,0ffh,028h,060h,046h,04fh	; bcd7  ...N.(`SKIP.(`FO
	defb 055h,04eh,044h,0ffh,028h,060h,04ch,04fh,041h,044h,000h,045h,052h,052h,04fh,052h	; bce7  UND.(`LOAD.ERROR
	defb 000h,000h,000h,0ffh,020h,0c1h,060h,000h,0a0h,0c2h,060h,000h,021h,0c3h,00ah,000h	; bcf7  .... .`...`.!...
	defb 040h,0c3h,080h,000h,080h,0c5h,030h,000h,080h,0c6h,001h,000h,000h,0deh,020h,000h	; bd07  @.....0....... .
	defb 000h,0dfh,090h,000h,0c0h,0dfh,020h,000h,010h,0c8h,008h,000h,007h,0c3h,001h,000h	; bd17  ...... .........
	defb 000h,0c6h,010h,000h,000h,0c8h,010h,000h,000h,000h	; bd27  ..........

; ======================================================================
; CODIGO 0xbd31..0xbd96  (101 bytes)
; ======================================================================


L_BD31:
	ld a,(0c205h)		;bd31   ; 0xC205: el logotipo y el titulo (p01:66D4)
	or a			;bd34
	ld a,005h		;bd35
	jp nz,0432eh		;bd37
	ld a,b			;bd3a
	dec a			;bd3b
	jp z,L_BE91		;bd3c
	jp p,L_BF34		;bd3f
	ld a,02fh		;bd42   ; el sonido 0x2F (p14:9C47 + 2*0x2F)
	call 041c1h		;bd44
	call mira_pantalla_2		;bd47
	ld hl,01720h		;bd4a
	ld a,0cch		;bd4d
	ld bc,0d040h		;bd4f   ; 0xD040: la ficha del bicho 0, byte 0x40 (p01:74B7)
	call 04941h		;bd52
	call 04cedh		;bd55   ; p00:4CED apaga_los_sprites
	ld a,0ffh		;bd58
	ld hl,01923h		;bd5a
	ld bc,0ca3ah		;bd5d   ; 0xCA3A: 6 fichas de 0x20 (p02:9368)
	call 04961h		;bd60
	ld hl,0bd96h		;bd63   ; p09:BD96 tabla_BD96: tabla que lee p09:BD63, p09:BD80, p09:BD8B, p09:BEF6, p09:BF01 (13 bytes)
	call 04fbeh		;bd66
	call mira_nivel_c840		;bd69
	call pon_buffer		;bd6c
	ld hl,0d0c0h		;bd6f   ; 0xD0C0: la ficha del bicho 1, byte 0x40 (p01:74B7)
	ld de,0a828h		;bd72
	ld a,048h		;bd75
	ld bc,01010h		;bd77
	call 051eah		;bd7a
	ld de,0b82ch		;bd7d
	ld hl,0bda1h		;bd80
	ld c,000h		;bd83
	call 04fc8h		;bd85
	ld de,0b82ch		;bd88
	ld hl,0bda1h		;bd8b
	ld c,0ffh		;bd8e
	call 04fc8h		;bd90
	jp 04348h		;bd93

; ----------------------------------------------------------------------
; DATOS tabla_BD96: tabla que lee p09:BD63, p09:BD80, p09:BD8B, p09:BEF6,
;   p09:BF01 (13 bytes)
;   0xbd96..0xbda3  (13 bytes)
DATA_tabla_BD96:
	defb 028h,028h,050h,04fh,057h,045h,052h,040h,055h,050h,0ffh,03ch,0ffh	; bd96  ((POWER@UP.<.

; ======================================================================
; CODIGO 0xbda3..0xbe63  (192 bytes)
; ======================================================================


mira_pantalla_2:
	ld hl,0e000h		;bda3   ; 0xE000: la tabla de 32x32 dibujos de la pantalla (p00:58A4)
	ld bc,01414h		;bda6
	ld d,001h		;bda9
	ld a,077h		;bdab
	call 0527eh		;bdad
	ret			;bdb0
pon_buffer:
	ld de,02cb8h		;bdb1
	ld (0e800h),de		;bdb4   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	ld (0e802h),de		;bdb8   ; 0xE802: buffer de trabajo
	ld (0e804h),de		;bdbc   ; 0xE804: buffer de trabajo
	ld a,0ffh		;bdc0
	ld (0e806h),a		;bdc2   ; 0xE806: buffer de trabajo
	ld hl,0e800h		;bdc5   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	call 04fc2h		;bdc8
	ld a,(0c845h)		;bdcb   ; 0xC845: la VIDA de Gao, hasta 200 (p03:AD1C; METALSLAVE la llena)
	ld l,a			;bdce
	ld h,000h		;bdcf
	ld de,0b82ch		;bdd1
	push de			;bdd4
	call 04893h		;bdd5
	ld (0e802h),de		;bdd8   ; 0xE802: buffer de trabajo
	ld hl,0e803h		;bddc   ; 0xE803: buffer de trabajo
	pop de			;bddf
	ld b,002h		;bde0
	jp 04853h		;bde2
L_BDE5:
	push de			;bde5
	call 04893h		;bde6
	ld (0e802h),de		;bde9   ; 0xE802: buffer de trabajo
	ld hl,0e802h		;bded   ; 0xE802: buffer de trabajo
	pop de			;bdf0
	ld b,001h		;bdf1
	jp 04853h		;bdf3
mira_nivel_c840:
	ld a,(0c840h)		;bdf6   ; 0xC840: elige los 32 bytes de p07:70AE que van a los patrones de 0xF8A0 (p00:5671) y el sumando de la dificultad (p01:704D); 6 es especial (p02:8F4F)
	or a			;bdf9
	jr nz,L_BDFD		;bdfa
	inc a			;bdfc
L_BDFD:
	ld (0c4d2h),a		;bdfd   ; 0xC4D2: variables de la partida
	ld b,006h		;be00
	call multiplica		;be02
	jp mira_pantalla_3		;be05
mira_pantalla_3:
	ld a,043h		;be08
	ex af,af'			;be0a
	ld a,(0c4d2h)		;be0b   ; 0xC4D2: variables de la partida
	dec a			;be0e
	add a,a			;be0f
	ld b,a			;be10
	add a,a			;be11
	add a,a			;be12
	ld c,a			;be13
	add a,a			;be14
	add a,c			;be15
	add a,b			;be16
	ld de,0253ch		;be17
	add a,d			;be1a
	ld d,a			;be1b
	ld hl,0e000h		;be1c   ; 0xE000: la tabla de 32x32 dibujos de la pantalla (p00:58A4)
	ld bc,01414h		;be1f
	ex af,af'			;be22
	jp 051eah		;be23
multiplica:
	ld hl,00090h		;be26
	ld de,0273eh		;be29
	ld a,b			;be2c
	or a			;be2d
	ret z			;be2e
L_BE2F:
	push bc			;be2f
	push hl			;be30
	push de			;be31
	call con_hl_mas_a		;be32
	pop de			;be35
	pop hl			;be36
	pop bc			;be37
	ld a,h			;be38
	add a,010h		;be39
	ld h,a			;be3b
	ld a,d			;be3c
	add a,01ah		;be3d
	ld d,a			;be3f
	djnz L_BE2F		;be40
	push de			;be42
	ld a,d			;be43
	add a,004h		;be44
	ld d,a			;be46
	ld hl,0be63h		;be47   ; p09:BE63 tabla_BE63: tabla que lee p09:BE47, p09:BE55 (5 bytes)
	ld c,0ffh		;be4a
	call 04fc8h		;be4c
	pop de			;be4f
	push de			;be50
	ld a,e			;be51
	add a,008h		;be52
	ld e,a			;be54
	ld hl,0be65h		;be55
	ld c,0ffh		;be58
	call 04fc8h		;be5a
	pop de			;be5d
	ld hl,00024h		;be5e
	jr $+31		;be61

; ----------------------------------------------------------------------
; DATOS tabla_BE63: tabla que lee p09:BE47, p09:BE55 (5 bytes)
;   0xbe63..0xbe68  (5 bytes)
DATA_tabla_BE63:
	defb 031h,0ffh,055h,050h,0ffh	; be63

; ======================================================================
; CODIGO 0xbe68..0xbe89  (33 bytes)
; ======================================================================


con_hl_mas_a:
	push de			;be68
	push bc			;be69
	ld a,048h		;be6a
	ld bc,01010h		;be6c
	call 051eah		;be6f
	pop bc			;be72
	ld a,007h		;be73
	sub b			;be75
	ld hl,0be89h		;be76   ; p09:BE89 tabla_BE89: tabla que lee p09:BE76, p09:BEBB (8 bytes)
	call 040a4h		;be79   ; p00:40A4 hl_mas_a
	ld l,(hl)			;be7c
	ld h,000h		;be7d
	pop de			;be7f
L_BE80:
	ld a,e			;be80
	add a,012h		;be81
	ld e,a			;be83
	ld b,001h		;be84
	jp L_BDE5		;be86

; ----------------------------------------------------------------------
; DATOS tabla_BE89: tabla que lee p09:BE76, p09:BEBB (8 bytes)
;   0xbe89..0xbe91  (8 bytes)
DATA_tabla_BE89:
	defb 000h,008h,010h,018h,020h,020h,028h,024h	; be89  ....  ($

; ======================================================================
; CODIGO 0xbe91..0xbf58  (199 bytes)
; ======================================================================


L_BE91:
	ld a,001h		;be91
	ld (0c104h),a		;be93   ; 0xC104: cuenta atras del paso del estado (p00:4345)
	ld a,(0c106h)		;be96   ; 0xC106: cursores, ESPACIO y los disparos pulsados en este cuadro (p00:533B)
	ld c,a			;be99
	and 008h		;be9a
	jr nz,L_BF1D		;be9c
	ld a,c			;be9e
	and 004h		;be9f
	jr nz,L_BF14		;bea1
	ld a,c			;bea3
	and 010h		;bea4
	jr nz,L_BEB1		;bea6
	ld a,(0c108h)		;bea8   ; 0xC108: F1, F2 y F3 pulsadas en este cuadro, bits 0-2 (p00:5318)
	rra			;beab
	rra			;beac
	ret nc			;bead
	jp 04348h		;beae
L_BEB1:
	ld a,(0c4d2h)		;beb1   ; 0xC4D2: variables de la partida
	ld hl,0c840h		;beb4   ; 0xC840: elige los 32 bytes de p07:70AE que van a los patrones de 0xF8A0 (p00:5671) y el sumando de la dificultad (p01:704D); 6 es especial (p02:8F4F)
	cp (hl)			;beb7
	jp z,04348h		;beb8
	ld hl,0be89h		;bebb   ; p09:BE89 tabla_BE89: tabla que lee p09:BE76, p09:BEBB (8 bytes)
	call 040a4h		;bebe   ; p00:40A4 hl_mas_a
	ld a,(0c845h)		;bec1   ; 0xC845: la VIDA de Gao, hasta 200 (p03:AD1C; METALSLAVE la llena)
	sub (hl)			;bec4
	jr c,L_BF0C		;bec5
	ld (0c845h),a		;bec7   ; 0xC845: la VIDA de Gao, hasta 200 (p03:AD1C; METALSLAVE la llena)
	ld a,(0c4d2h)		;beca   ; 0xC4D2: variables de la partida
	cp 007h		;becd
	jr nz,L_BEE3		;becf
	ld a,(0c160h)		;bed1   ; 0xC160: las VIDAS, en BCD (p00:4417; GAOOOOOOOOOOH suma 10)
	add a,001h		;bed4
	daa			;bed6
	jr z,L_BEEB		;bed7
	ld (0c160h),a		;bed9   ; 0xC160: las VIDAS, en BCD (p00:4417; GAOOOOOOOOOOH suma 10)
	ld a,036h		;bedc   ; el sonido 0x36 (p14:9C47 + 2*0x36)
	call 041c1h		;bede
	jr L_BEEB		;bee1
L_BEE3:
	ld (0c840h),a		;bee3   ; 0xC840: elige los 32 bytes de p07:70AE que van a los patrones de 0xF8A0 (p00:5671) y el sumando de la dificultad (p01:704D); 6 es especial (p02:8F4F)
	ld a,033h		;bee6   ; el sonido 0x33 (p14:9C47 + 2*0x33)
	call 041c1h		;bee8
L_BEEB:
	ld a,01eh		;beeb
	ld (0c104h),a		;beed   ; 0xC104: cuenta atras del paso del estado (p00:4345)
	call pon_buffer		;bef0
	ld de,0b82ch		;bef3
	ld hl,0bda1h		;bef6
	ld c,000h		;bef9
	call 04fc8h		;befb
	ld de,0b82ch		;befe
	ld hl,0bda1h		;bf01
	ld c,0ffh		;bf04
	call 04fc8h		;bf06
	jp 04348h		;bf09
L_BF0C:
	ld a,004h		;bf0c   ; el sonido 0x04 (p14:9C47 + 2*0x04)
	call 041c1h		;bf0e
	jp 04348h		;bf11
L_BF14:
	ld a,(0c4d2h)		;bf14   ; 0xC4D2: variables de la partida
	cp 002h		;bf17
	ret c			;bf19
	dec a			;bf1a
	jr L_BF24		;bf1b
L_BF1D:
	ld a,(0c4d2h)		;bf1d   ; 0xC4D2: variables de la partida
	cp 007h		;bf20
	ret nc			;bf22
	inc a			;bf23
L_BF24:
	push af			;bf24
	call mira_pantalla_3		;bf25
	pop af			;bf28
	ld (0c4d2h),a		;bf29   ; 0xC4D2: variables de la partida
	call mira_pantalla_3		;bf2c
	ld a,002h		;bf2f
	jp nz,041c1h		;bf31
L_BF34:
	ld a,(0c103h)		;bf34   ; 0xC103: cuenta los cuadros (p00:4238)
	and 001h		;bf37
	call z,mira_pantalla_3		;bf39
	ld hl,0c104h		;bf3c   ; 0xC104: cuenta atras del paso del estado (p00:4345)
	dec (hl)			;bf3f
	ret nz			;bf40
	ld hl,01720h		;bf41
	ld bc,0d040h		;bf44   ; 0xD040: la ficha del bicho 0, byte 0x40 (p01:74B7)
	call 0496dh		;bf47
	call 04cf8h		;bf4a   ; p00:4CF8 enciende_los_sprites
	call 0488dh		;bf4d
	ld b,005h		;bf50
	call 043edh		;bf52
	jp 0566eh		;bf55

; ----------------------------------------------------------------------
; DATOS relleno_p09: 0xFF hasta el final del banco: nadie lo lee; lo leen
;   nadie (168 bytes)
;   0xbf58..0xc000  (168 bytes)
DATA_relleno_p09:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf58  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf68  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf78  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf88  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf98  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfa8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfb8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfc8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfd8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfe8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff8  ........
