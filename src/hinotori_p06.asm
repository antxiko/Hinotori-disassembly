; ==========================================================================
; HINOTORI - Konami (1987) - MSX - MegaROM RC-747 de 128 KB (Konami4) - banco 06 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS dibujos_9F9B_cola: 6 dibujos de 8x8 a 3 bits (24 bytes cada uno) que
;   la lista de 0x61E9 sube a la hoja desde el 10 (sigue del banco anterior,
;   0x9F9B); lo leen p00:54CC (lista 0x61E9) (43 bytes)
;   0xa000..0xa02b  (43 bytes)
DATA_dibujos_9F9B_cola:
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; a000  ........
	defb 000h,000h,000h,000h,000h,006h,007h,007h	; a008  ........
	defb 018h,018h,01fh,000h,000h,000h,000h,000h	; a010  ........
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; a018  ........
	defb 000h,000h,000h,000h,000h,018h,078h,0f8h	; a020  ......x.
	defb 044h,00ch,0fch	; a028

; ----------------------------------------------------------------------
; DATOS dibujos_A02B: 6 dibujos de 8x8 a 3 bits (24 bytes cada uno) que la
;   lista de 0x61E9 sube a la hoja desde el 2A; se solapan 2 bloques
;   (0xA02B-0xA0BB, 0xA05A-0xA05E); lo leen p00:54CC (lista 0x61E9), p02:9FFA
;   (144 bytes)
;   0xa02b..0xa0bb  (144 bytes)
DATA_dibujos_A02B:
	defb 0cfh,09fh,0ffh,0afh,0ffh,0ffh,0ffh,0bfh	; a02b  ........
	defb 0ffh,0bfh,0bfh,0ffh,0dfh,0ffh,0ffh,0f5h	; a033  ........
	defb 0cfh,0ffh,07eh,070h,07fh,01fh,01dh,01fh	; a03b  ..~p....
	defb 0f5h,0f9h,0ffh,0f5h,0fdh,0ffh,0fdh,0ffh	; a043  ........
	defb 0ffh,0fdh,0fdh,0ffh,0f3h,0fbh,0ffh,0a7h	; a04b  ........
	defb 0f3h,0ffh,06eh,00eh,0feh,0f8h,0b8h,0f8h	; a053  ..n.....
	defb 0ffh,086h,0ffh,0aeh,0c0h,0ffh,0eah,0b5h	; a05b  ........
	defb 0ffh,0bdh,097h,0ffh,0efh,0dfh,0ffh,0f5h	; a063  ........
	defb 0cfh,0ffh,07eh,070h,07fh,01fh,01dh,01fh	; a06b  ..~p....
	defb 0fdh,061h,0ffh,071h,085h,0ffh,015h,0afh	; a073  .a.q....
	defb 0ffh,0bdh,0e9h,0ffh,0f3h,0fbh,0ffh,0a7h	; a07b  ........
	defb 0f3h,0ffh,06eh,00eh,0feh,0f8h,0b8h,0f8h	; a083  ..n.....
	defb 02ah,026h,03fh,077h,04eh,07fh,0beh,0dch	; a08b  *&?wN...
	defb 0ffh,07fh,090h,0ffh,0d7h,023h,0ffh,07bh	; a093  .....#.{
	defb 09ch,0ffh,0d7h,080h,0ffh,07fh,07dh,07fh	; a09b  ......}.
	defb 0b2h,0c6h,0feh,0c5h,0f3h,0ffh,0fdh,07bh	; a0a3  .......{
	defb 0ffh,0fah,009h,0ffh,0b9h,0c5h,0ffh,0f4h	; a0ab  ........
	defb 071h,0ffh,0e9h,003h,0ffh,0f6h,0b6h,0f6h	; a0b3  q.......

; ----------------------------------------------------------------------
; DATOS poses_de_gao: 20 poses de Gao: dos punteros cada una, a 0xF800 y a
;   0xF840 (p02:93D6); lo leen p02:93EC (80 bytes)
;   0xa0bb..0xa10b  (80 bytes)
DATA_poses_de_gao:
	defb 00bh,0a1h,04bh,0a1h	; a0bb
	defb 08bh,0a1h,0cbh,0a1h	; a0bf
	defb 00bh,0a2h,04bh,0a2h	; a0c3
	defb 08bh,0a2h,0cbh,0a2h	; a0c7
	defb 00bh,0a3h,04bh,0a3h	; a0cb
	defb 00bh,0a5h,04bh,0a5h	; a0cf
	defb 00bh,0a5h,04bh,0a5h	; a0d3
	defb 00bh,0a5h,04bh,0a5h	; a0d7
	defb 00bh,0a5h,04bh,0a5h	; a0db
	defb 04bh,0a5h,08bh,0a5h	; a0df
	defb 04bh,0a6h,08bh,0a6h	; a0e3
	defb 0cbh,0a6h,00bh,0a7h	; a0e7
	defb 04bh,0a7h,08bh,0a7h	; a0eb
	defb 08bh,0a3h,0cbh,0a3h	; a0ef
	defb 08bh,0a4h,0cbh,0a4h	; a0f3
	defb 00bh,0a4h,04bh,0a4h	; a0f7
	defb 0cbh,0a5h,00bh,0a6h	; a0fb
	defb 04bh,0a6h,08bh,0a6h	; a0ff
	defb 0cbh,0a6h,00bh,0a7h	; a103
	defb 04bh,0a7h,08bh,0a7h	; a107

; ----------------------------------------------------------------------
; DATOS patrones_A10B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa10b..0xa14b  (64 bytes)
DATA_patrones_A10B:
	defb 000h,000h,000h,000h,000h,000h,007h,00fh,00fh,00fh,00fh,03fh,067h,0cfh,0ffh,0ffh	; a10b  ...........?g...
	defb 000h,000h,000h,000h,000h,000h,080h,0c0h,0cch,0f2h,0deh,0eeh,0feh,0fah,0feh,0fch	; a11b  ................
	defb 000h,000h,000h,000h,000h,000h,007h,00eh,00fh,00eh,00fh,03bh,05bh,0f1h,0a1h,0b0h	; a12b  ...........;[...
	defb 000h,000h,000h,000h,000h,000h,080h,0c0h,0cch,0feh,06ah,056h,0c6h,08eh,01ah,01ch	; a13b  ..........jV....

; ----------------------------------------------------------------------
; DATOS patrones_A14B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa14b..0xa18b  (64 bytes)
DATA_patrones_A14B:
	defb 0ffh,0ffh,06eh,01fh,01fh,01fh,00fh,00eh,00fh,01fh,01fh,03fh,03fh,03fh,01fh,003h	; a14b  ..n........???..
	defb 0e0h,0a0h,070h,0d0h,090h,0f0h,0fch,0dch,0fch,09ch,0dch,0f8h,0d8h,090h,0e0h,080h	; a15b  ..p.............
	defb 0dch,0dfh,06dh,01fh,018h,01ch,00fh,00ah,00fh,01fh,01fh,03fh,03fh,03fh,01fh,003h	; a16b  ..m........???..
	defb 060h,0e0h,0f0h,0f0h,070h,030h,0dch,0bch,0dch,0fch,0bch,0b8h,038h,0f0h,0e0h,080h	; a17b  `...p0......8...

; ----------------------------------------------------------------------
; DATOS patrones_A18B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa18b..0xa1cb  (64 bytes)
DATA_patrones_A18B:
	defb 000h,000h,000h,000h,000h,007h,00fh,00fh,00fh,00fh,03fh,04fh,0dfh,0ffh,0ffh,0ffh	; a18b  ..........?O....
	defb 000h,000h,000h,000h,000h,080h,0c0h,0c0h,0c0h,0f0h,0d8h,0e6h,0ffh,0fbh,0f9h,0fdh	; a19b  ................
	defb 000h,000h,000h,000h,000h,007h,00eh,00fh,00dh,00eh,036h,076h,0e3h,0a2h,0b0h,0d8h	; a1ab  ..........6v....
	defb 000h,000h,000h,000h,000h,080h,0c0h,040h,0c0h,0f0h,0a8h,09eh,005h,00fh,01fh,07bh	; a1bb  .......@.......{

; ----------------------------------------------------------------------
; DATOS patrones_A1CB: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa1cb..0xa20b  (64 bytes)
DATA_patrones_A1CB:
	defb 07fh,02eh,01fh,01fh,01fh,01fh,01ch,013h,00bh,037h,073h,07fh,07fh,03fh,00fh,000h	; a1cb  .........7s..?..
	defb 0e7h,066h,0d0h,010h,0b0h,0f0h,0f0h,090h,0d8h,0fch,09ch,0fch,0f8h,0e0h,0c0h,000h	; a1db  .f..............
	defb 05fh,02dh,017h,018h,018h,01fh,014h,01fh,00fh,03fh,07fh,073h,07fh,03fh,00fh,000h	; a1eb  _-.......?.s.?..
	defb 0a5h,0e6h,0f0h,0f0h,070h,0d0h,0b0h,0f0h,0b8h,0bch,0fch,0fch,0f8h,0e0h,0c0h,000h	; a1fb  ....p...........

; ----------------------------------------------------------------------
; DATOS patrones_A20B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa20b..0xa24b  (64 bytes)
DATA_patrones_A20B:
	defb 000h,000h,000h,000h,000h,000h,007h,00fh,00fh,00fh,00fh,03fh,05fh,07fh,07fh,07fh	; a20b  ...........?_...
	defb 000h,000h,000h,000h,000h,000h,080h,0c0h,0c0h,0c0h,0fch,08eh,0eah,0f9h,0fdh,0ffh	; a21b  ................
	defb 000h,000h,000h,000h,000h,000h,007h,00ch,00fh,00bh,00bh,03dh,06dh,047h,062h,050h	; a22b  ...........=mGbP
	defb 000h,000h,000h,000h,000h,000h,080h,0c0h,040h,0c0h,0fch,0f6h,01eh,00fh,00fh,015h	; a23b  ........@.......

; ----------------------------------------------------------------------
; DATOS patrones_A24B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa24b..0xa28b  (64 bytes)
DATA_patrones_A24B:
	defb 03fh,00fh,00eh,01fh,01fh,01fh,017h,01eh,013h,033h,07bh,07fh,073h,03dh,03fh,01ch	; a24b  ?........3{.s=?.
	defb 0fbh,0e7h,0d9h,096h,030h,0f0h,0d0h,060h,0e0h,0f0h,0fch,0fch,0fch,0d8h,080h,000h	; a25b  ....0..`........
	defb 03ch,00fh,00dh,017h,010h,018h,01fh,016h,01fh,03fh,07fh,07bh,07fh,033h,03fh,01ch	; a26b  <........?.{.3?.
	defb 07bh,0e5h,07fh,0f6h,0f0h,050h,0f0h,060h,0e0h,0f0h,0fch,0fch,0fch,0d8h,080h,000h	; a27b  {....P.`........

; ----------------------------------------------------------------------
; DATOS patrones_A28B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa28b..0xa2cb  (64 bytes)
DATA_patrones_A28B:
	defb 000h,000h,000h,000h,000h,003h,007h,007h,01fh,02fh,07fh,0ffh,0ffh,0ffh,07fh,00eh	; a28b  ........./......
	defb 000h,000h,000h,000h,000h,080h,0c0h,0e0h,0f8h,01ch,032h,0bah,0ffh,0ffh,0f7h,069h	; a29b  ..........2....i
	defb 000h,000h,000h,000h,000h,003h,007h,006h,01dh,036h,064h,0a0h,0b0h,0d0h,077h,00dh	; a2ab  .........6d...w.
	defb 000h,000h,000h,000h,000h,080h,040h,0e0h,0f8h,0e4h,0deh,056h,01fh,00fh,0d5h,0efh	; a2bb  ......@....V....

; ----------------------------------------------------------------------
; DATOS patrones_A2CB: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa2cb..0xa30b  (64 bytes)
DATA_patrones_A2CB:
	defb 01fh,01fh,01fh,01fh,01fh,016h,01eh,009h,00ch,007h,003h,000h,000h,000h,000h,000h	; a2cb  ................
	defb 0feh,0f8h,0f8h,0f8h,0d0h,090h,060h,000h,080h,080h,000h,000h,000h,000h,000h,000h	; a2db  ......`.........
	defb 017h,010h,018h,01fh,017h,01eh,01eh,00fh,00bh,004h,003h,000h,000h,000h,000h,000h	; a2eb  ................
	defb 09eh,028h,078h,0c8h,0b0h,0f0h,060h,000h,080h,080h,000h,000h,000h,000h,000h,000h	; a2fb  .(x...`.........

; ----------------------------------------------------------------------
; DATOS patrones_A30B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa30b..0xa34b  (64 bytes)
DATA_patrones_A30B:
	defb 000h,000h,000h,000h,000h,000h,000h,007h,00fh,00fh,00fh,01fh,07fh,09fh,0bfh,0ffh	; a30b  ................
	defb 000h,000h,000h,000h,000h,000h,000h,080h,0c0h,0c0h,0c0h,0f0h,0dch,0e6h,0fah,0fbh	; a31b  ................
	defb 000h,000h,000h,000h,000h,000h,000h,007h,00ch,00fh,00fh,01dh,06eh,0e6h,0c6h,0c3h	; a32b  ............n...
	defb 000h,000h,000h,000h,000h,000h,000h,080h,0c0h,040h,0c0h,0f0h,0ech,09eh,086h,00fh	; a33b  .........@......

; ----------------------------------------------------------------------
; DATOS patrones_A34B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa34b..0xa38b  (64 bytes)
DATA_patrones_A34B:
	defb 0ffh,0ffh,07fh,02fh,01fh,01fh,01fh,01fh,012h,01fh,03fh,067h,077h,07fh,03fh,00fh	; a34b  .../......?gw.?.
	defb 0fbh,0fdh,0fdh,067h,0f7h,0ffh,0f9h,0d7h,090h,0dch,0fch,0cch,0dch,0f8h,0f0h,0c0h	; a35b  ...g............
	defb 0a2h,098h,05fh,02ch,017h,018h,018h,017h,01eh,013h,037h,07bh,07bh,07fh,03fh,00fh	; a36b  .._,......7{{.?.
	defb 00fh,03bh,0ffh,0e5h,0d7h,03dh,03fh,0f7h,0f0h,0fch,0dch,0bch,0bch,0f8h,0f0h,0c0h	; a37b  .;...=?.........

; ----------------------------------------------------------------------
; DATOS patrones_A38B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa38b..0xa3cb  (64 bytes)
DATA_patrones_A38B:
	defb 000h,000h,000h,007h,00fh,00fh,00fh,00fh,03fh,067h,0cfh,0ffh,0ffh,0ffh,0ffh,06eh	; a38b  ........?g.....n
	defb 000h,000h,000h,080h,0c0h,0cch,0f2h,0deh,0eeh,0feh,0fah,0feh,0fch,0e0h,0a0h,060h	; a39b  ...............`
	defb 000h,000h,000h,007h,00eh,00fh,00eh,00fh,03bh,05bh,0f1h,0a1h,0b0h,0dch,0dfh,06dh	; a3ab  ........;[.....m
	defb 000h,000h,000h,080h,0c0h,0cch,0feh,06ah,056h,0c6h,08eh,01ah,01ch,060h,0e0h,0e0h	; a3bb  .......jV....`..

; ----------------------------------------------------------------------
; DATOS patrones_A3CB: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa3cb..0xa40b  (64 bytes)
DATA_patrones_A3CB:
	defb 010h,010h,00ah,003h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a3cb  ................
	defb 008h,018h,050h,0c0h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a3db  ..P.............
	defb 007h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a3eb  ................
	defb 0c0h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a3fb  ................

; ----------------------------------------------------------------------
; DATOS patrones_A40B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa40b..0xa44b  (64 bytes)
DATA_patrones_A40B:
	defb 000h,000h,007h,00fh,00fh,00fh,00fh,03fh,04fh,0dfh,0ffh,0ffh,0ffh,07fh,02eh,01fh	; a40b  .......?O.......
	defb 000h,000h,080h,0c0h,0c0h,0c0h,0f0h,0d8h,0e6h,0ffh,0fbh,0f9h,0fdh,0e7h,066h,0d0h	; a41b  ..............f.
	defb 000h,000h,007h,00eh,00fh,00dh,00eh,036h,076h,0e3h,0a2h,0b0h,0d8h,05fh,02dh,017h	; a42b  .......6v...._-.
	defb 000h,000h,080h,0c0h,040h,0c0h,0f0h,0a8h,09eh,005h,00fh,01fh,07bh,0a5h,0e6h,0f0h	; a43b  ....@.......{...

; ----------------------------------------------------------------------
; DATOS patrones_A44B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa44b..0xa48b  (64 bytes)
DATA_patrones_A44B:
	defb 000h,010h,000h,005h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a44b  ................
	defb 000h,010h,020h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a45b  .. .............
	defb 00fh,003h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a46b  ................
	defb 0e0h,080h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a47b  ................

; ----------------------------------------------------------------------
; DATOS patrones_A48B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa48b..0xa4cb  (64 bytes)
DATA_patrones_A48B:
	defb 000h,000h,000h,007h,00fh,00fh,00fh,00fh,03fh,05fh,07fh,07fh,07fh,03fh,00fh,00eh	; a48b  ........?_...?..
	defb 000h,000h,000h,080h,0c0h,0c0h,0c0h,0fch,08eh,0eah,0f9h,0fdh,0ffh,0fbh,0e7h,0e9h	; a49b  ................
	defb 000h,000h,000h,007h,00ch,00fh,00bh,00bh,03dh,06dh,047h,062h,050h,03ch,00fh,00dh	; a4ab  ........=mGbP<..
	defb 000h,000h,000h,080h,0c0h,040h,0c0h,0fch,0f6h,01eh,00fh,00fh,015h,07bh,0e5h,06fh	; a4bb  .....@.......{.o

; ----------------------------------------------------------------------
; DATOS patrones_A4CB: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa4cb..0xa50b  (64 bytes)
DATA_patrones_A4CB:
	defb 010h,010h,00bh,001h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a4cb  ................
	defb 010h,010h,060h,080h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a4db  ..`.............
	defb 007h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a4eb  ................
	defb 0c6h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a4fb  ................

; ----------------------------------------------------------------------
; DATOS patrones_A50B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa50b..0xa54b  (64 bytes)
DATA_patrones_A50B:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,007h,01fh,03fh,03fh,03fh,01fh,007h,000h	; a50b  ..........???...
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0e0h,0f8h,0fch,0fch,0fch,0f8h,0e0h,000h	; a51b  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a52b  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a53b  ................

; ----------------------------------------------------------------------
; DATOS patrones_A54B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa54b..0xa58b  (64 bytes)
DATA_patrones_A54B:
	defb 000h,000h,000h,000h,003h,004h,007h,00fh,00fh,00fh,03fh,06fh,0dfh,0ffh,0ffh,0ffh	; a54b  ..........?o....
	defb 000h,000h,000h,006h,009h,091h,09bh,0d7h,0cfh,0d9h,0f9h,0dbh,0ffh,0ffh,0feh,0fch	; a55b  ................
	defb 000h,000h,000h,000h,003h,007h,007h,00ch,00fh,00fh,03dh,05eh,0a6h,0c6h,0a3h,0a3h	; a56b  ..........=^....
	defb 000h,000h,000h,006h,00fh,09fh,09dh,0dbh,049h,05fh,0efh,0fdh,09bh,08dh,082h,00ch	; a57b  ........I_......

; ----------------------------------------------------------------------
; DATOS patrones_A58B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa58b..0xa5cb  (64 bytes)
DATA_patrones_A58B:
	defb 0ffh,07fh,00eh,01fh,01fh,01fh,01fh,01ch,01bh,00fh,03bh,079h,07fh,07fh,03fh,00fh	; a58b  ..........;y..?.
	defb 0f8h,0e0h,070h,0d0h,0d0h,0f0h,0f0h,0f0h,090h,0d8h,0fch,09ch,0fch,0f8h,0e0h,0c0h	; a59b  ..p.............
	defb 0dah,07fh,00dh,017h,013h,018h,01fh,014h,017h,00fh,03fh,07fh,079h,07fh,03fh,00fh	; a5ab  ..........?.y.?.
	defb 038h,0e0h,0f0h,0f0h,0b0h,030h,0d0h,0b0h,0f0h,0b8h,0bch,0fch,0fch,0f8h,0e0h,0c0h	; a5bb  8....0..........

; ----------------------------------------------------------------------
; DATOS patrones_A5CB: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa5cb..0xa60b  (64 bytes)
DATA_patrones_A5CB:
	defb 000h,003h,004h,007h,00fh,00fh,00fh,03fh,06fh,0dfh,0ffh,0ffh,0ffh,0ffh,07fh,00eh	; a5cb  .......?o.......
	defb 006h,009h,091h,09bh,0d7h,0cfh,0d9h,0f9h,0dbh,0ffh,0ffh,0feh,0fch,0f8h,0e0h,060h	; a5db  ...............`
	defb 000h,003h,007h,007h,00ch,00fh,00fh,03dh,05eh,0a6h,0c6h,0a3h,0a3h,0dah,07fh,00dh	; a5eb  .......=^.......
	defb 006h,00fh,09fh,09dh,0dbh,049h,05fh,0efh,0fdh,09bh,08dh,082h,00ch,038h,0e0h,0e0h	; a5fb  .....I_......8..

; ----------------------------------------------------------------------
; DATOS patrones_A60B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa60b..0xa64b  (64 bytes)
DATA_patrones_A60B:
	defb 000h,010h,000h,005h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a60b  ................
	defb 010h,010h,020h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a61b  .. .............
	defb 007h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a62b  ................
	defb 0c0h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a63b  ................

; ----------------------------------------------------------------------
; DATOS patrones_A64B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa64b..0xa68b  (64 bytes)
DATA_patrones_A64B:
	defb 004h,006h,043h,023h,027h,06fh,07fh,03fh,03fh,07fh,0fch,0fch,0eeh,0fch,0f6h,072h	; a64b  ..C#'o.??......r
	defb 006h,008h,010h,090h,0b8h,0bch,03eh,01eh,0deh,0ffh,0ffh,07bh,073h,076h,0feh,0cch	; a65b  ......>....{sv..
	defb 000h,000h,000h,001h,001h,003h,002h,006h,007h,03fh,06fh,047h,047h,063h,023h,001h	; a66b  .........?oGGc#.
	defb 000h,000h,000h,000h,000h,010h,018h,00ch,00ch,086h,086h,0ceh,0deh,0dch,08ch,000h	; a67b  ................

; ----------------------------------------------------------------------
; DATOS patrones_A68B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa68b..0xa6cb  (64 bytes)
DATA_patrones_A68B:
	defb 00eh,01eh,01ch,039h,03bh,03bh,03bh,01dh,01fh,00fh,047h,067h,03fh,01eh,000h,000h	; a68b  ...9;;;...Gg?...
	defb 0e0h,070h,0b0h,0d8h,0e8h,068h,068h,0bah,0bbh,0afh,0bfh,01eh,00ch,000h,000h,000h	; a69b  .p...hh.........
	defb 001h,007h,00fh,00fh,00eh,00eh,00eh,007h,007h,003h,003h,002h,004h,000h,000h,000h	; a6ab  ................
	defb 080h,0e0h,0e0h,070h,030h,030h,030h,010h,010h,012h,00ch,000h,000h,000h,000h,000h	; a6bb  ...p000.........

; ----------------------------------------------------------------------
; DATOS patrones_A6CB: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa6cb..0xa70b  (64 bytes)
DATA_patrones_A6CB:
	defb 001h,001h,002h,006h,006h,007h,003h,003h,007h,00fh,01fh,03bh,037h,06fh,06fh,05bh	; a6cb  ...........;7oo[
	defb 010h,020h,044h,088h,0d8h,05ch,06eh,0eah,0eah,0b4h,0b8h,0f8h,0fch,08ch,036h,07ah	; a6db  . D..\n.......6z
	defb 000h,000h,000h,000h,000h,002h,001h,001h,003h,003h,006h,00ch,018h,01ah,035h,035h	; a6eb  ..............55
	defb 000h,000h,000h,000h,000h,008h,004h,044h,044h,048h,040h,080h,070h,0f8h,0c8h,084h	; a6fb  .......DDH@.p...

; ----------------------------------------------------------------------
; DATOS patrones_A70B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa70b..0xa74b  (64 bytes)
DATA_patrones_A70B:
	defb 05bh,04dh,02dh,026h,013h,079h,06dh,0dch,0deh,0deh,0deh,0ech,071h,07fh,03fh,01eh	; a70b  [M-&.ym.....q.?.
	defb 07ah,09ah,0f6h,0ech,05ch,09ch,0eeh,0ebh,0f5h,0f5h,0f5h,0f3h,0e7h,0feh,07ch,000h	; a71b  z...\.........|.
	defb 035h,032h,01bh,01dh,00eh,007h,033h,073h,061h,061h,073h,03fh,03fh,01eh,000h,000h	; a72b  52....3saas??...
	defb 0d4h,0e4h,00ch,098h,0f8h,070h,070h,0b6h,0bah,09ah,09ah,01eh,03ch,018h,000h,000h	; a73b  .....pp.....<...

; ----------------------------------------------------------------------
; DATOS patrones_A74B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa74b..0xa78b  (64 bytes)
DATA_patrones_A74B:
	defb 000h,000h,000h,000h,001h,001h,003h,003h,001h,000h,010h,024h,007h,047h,003h,031h	; a74b  ...........$.G.1
	defb 040h,040h,040h,080h,080h,000h,000h,080h,0c4h,0c2h,0e2h,0a2h,024h,06ch,0d8h,090h	; a75b  @@@.........$l..
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,002h,001h,000h	; a76b  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,080h,000h,040h,040h,0c0h,0c0h,080h,000h	; a77b  ..........@@....

; ----------------------------------------------------------------------
; DATOS patrones_A78B: dos patrones de sprite de 16x16 (0x40 bytes) de Gao
;   (p02:93F8); lo leen p02:93F8 (64 bytes)
;   0xa78b..0xa7cb  (64 bytes)
DATA_patrones_A78B:
	defb 018h,008h,00ch,00ch,01ch,018h,038h,078h,070h,0f0h,0d0h,0dah,06ch,030h,000h,000h	; a78b  ......8xp...l0..
	defb 030h,030h,038h,03ch,01eh,01ah,00bh,00bh,00eh,014h,038h,000h,000h,000h,000h,000h	; a79b  008<......8.....
	defb 000h,000h,000h,000h,008h,000h,010h,030h,020h,060h,060h,070h,030h,000h,000h,000h	; a7ab  .......0 ``p0...
	defb 000h,000h,010h,018h,00ch,00ch,006h,006h,004h,008h,000h,000h,000h,000h,000h,000h	; a7bb  ................

; ----------------------------------------------------------------------
; DATOS tabla_A7CB: tabla que lee p06:AD4A, p06:ADCB, p06:AE10, p06:AE4C,
;   p06:AEE8, p06:AF12 (1333 bytes)
;   0xa7cb..0xad00  (1333 bytes)
DATA_tabla_A7CB:
	defb 054h,055h,03ah,05ah,05bh,039h,05fh,060h,000h,000h,000h,068h,069h,000h,000h,000h	; a7cb  TU:Z[9_`...hi...
	defb 000h,000h,000h,07ch,07dh,000h,000h,000h,017h,056h,058h,05ch,05dh,05eh,061h,01eh	; a7db  ...|}....VX\]^a.
	defb 000h,000h,000h,06ah,06bh,000h,000h,000h,000h,000h,000h,07eh,04fh,000h,000h,000h	; a7eb  ...jk......~O...
	defb 018h,046h,057h,059h,062h,063h,021h,01dh,035h,042h,06ch,06dh,06eh,06fh,043h,036h	; a7fb  .FWYbc!.5BlmnoC6
	defb 000h,000h,03ch,07fh,080h,038h,000h,000h,000h,019h,01ah,064h,065h,020h,01ch,000h	; a80b  ..<..8.....de ..
	defb 070h,071h,072h,073h,074h,075h,076h,077h,000h,000h,081h,082h,083h,084h,000h,000h	; a81b  pqrstuvw........
	defb 000h,000h,01fh,066h,047h,01bh,000h,000h,02dh,078h,048h,049h,04ah,04bh,02eh,02fh	; a82b  ...fG...-xHIJK./
	defb 000h,000h,085h,086h,087h,088h,000h,000h,000h,000h,03eh,067h,040h,034h,000h,000h	; a83b  ..........>g@4..
	defb 000h,033h,04ch,079h,029h,02bh,000h,000h,000h,03dh,089h,050h,052h,08ah,037h,000h	; a84b  .3Ly)+...=.PR.7.
	defb 000h,000h,08dh,027h,026h,025h,03fh,000h,000h,000h,07ah,04dh,02ah,000h,000h,000h	; a85b  ...'&%?...zM*...
	defb 000h,044h,030h,053h,08bh,08ch,03bh,000h,000h,000h,000h,028h,024h,023h,022h,000h	; a86b  .D0S..;....($#".
	defb 000h,000h,07bh,045h,02ch,000h,000h,000h,000h,000h,032h,031h,051h,000h,000h,000h	; a87b  ..{E,.....21Q...
	defb 000h,040h,041h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,066h,06ah,06bh	; a88b  .@A..........fjk
	defb 042h,043h,044h,045h,000h,000h,000h,000h,000h,000h,000h,066h,067h,068h,06ch,06dh	; a89b  BCDE.......fghlm
	defb 047h,022h,020h,046h,000h,000h,000h,060h,061h,062h,064h,065h,01fh,025h,028h,06eh	; a8ab  G" F...`abde.%(n
	defb 048h,023h,021h,00fh,04ch,04dh,00eh,029h,007h,063h,018h,01ah,01bh,026h,06fh,050h	; a8bb  H#!.LM.).c...&oP
	defb 049h,04ah,024h,04bh,04eh,00dh,009h,008h,006h,015h,016h,019h,01ch,027h,051h,000h	; a8cb  IJ$KN........'Q.
	defb 000h,030h,031h,04fh,032h,00ch,00ah,005h,011h,013h,017h,01dh,01eh,052h,000h,000h	; a8db  .01O2........R..
	defb 000h,000h,080h,08fh,033h,034h,001h,001h,012h,014h,053h,054h,055h,056h,000h,057h	; a8eb  ....34....STUV.W
	defb 000h,000h,081h,035h,036h,037h,00bh,02ah,010h,004h,090h,091h,05bh,05ah,059h,058h	; a8fb  ...567.*....[ZYX
	defb 000h,000h,09bh,0a1h,0a3h,0a2h,038h,002h,003h,03bh,03ch,092h,07ah,000h,000h,000h	; a90b  ......8..;<.z...
	defb 070h,071h,072h,09ch,08eh,082h,098h,039h,03ah,03dh,03eh,094h,000h,079h,000h,000h	; a91b  pqr....9:=>..y..
	defb 000h,000h,000h,077h,02bh,09dh,09eh,09ah,05ch,03fh,095h,093h,000h,07eh,000h,000h	; a92b  ...w+...\?...~..
	defb 073h,074h,075h,076h,085h,086h,07bh,09fh,05dh,096h,0a0h,0a5h,069h,07dh,000h,000h	; a93b  stuv..{.]...i}..
	defb 000h,000h,083h,084h,087h,000h,089h,08ah,08bh,08ch,097h,07ch,07fh,099h,05eh,05fh	; a94b  ...........|..^_
	defb 000h,000h,088h,000h,000h,000h,000h,000h,000h,08dh,078h,0a4h,02ch,02dh,02eh,02fh	; a95b  ..........x.,-./
	defb 007h,005h,010h,006h,00dh,004h,00eh,00fh,00dh,004h,00eh,00fh,007h,005h,010h,006h	; a96b  ................
	defb 007h,005h,010h,006h,00dh,004h,00eh,00fh,00dh,004h,00eh,00fh,007h,005h,010h,006h	; a97b  ................
	defb 013h,014h,015h,016h,011h,012h,008h,00bh,011h,012h,008h,009h,013h,014h,015h,016h	; a98b  ................
	defb 011h,012h,015h,016h,011h,012h,008h,00bh,011h,012h,008h,009h,013h,014h,015h,016h	; a99b  ................
	defb 000h,000h,000h,002h,00ch,00ah,003h,001h,002h,00ah,003h,001h,001h,000h,001h,002h	; a9ab  ................
	defb 003h,001h,003h,002h,00ch,00ah,003h,001h,002h,00ah,003h,001h,001h,000h,000h,000h	; a9bb  ................
	defb 0d1h,0a9h,026h,0aah,07ah,0aah,048h,090h,065h,092h,064h,062h,085h,094h,071h,061h	; a9cb  ..&.z.H.e.db..qa
	defb 075h,060h,074h,06fh,079h,0feh,030h,0a0h,06fh,06fh,092h,06bh,061h,069h,069h,08ah	; a9db  u`toy.0.oo.kaii.
	defb 08ch,082h,091h,06fh,0a9h,075h,08dh,068h,092h,08dh,075h,0feh,038h,0b0h,062h,07eh	; a9eb  ...o.u.h..u.8.b~
	defb 089h,065h,08bh,088h,069h,073h,065h,092h,072h,092h,066h,07eh,06bh,06fh,095h,0feh	; a9fb  .e..ise.r.f~ko..
	defb 020h,0c0h,060h,074h,06fh,06bh,092h,06bh,08dh,073h,078h,0a9h,06fh,06fh,065h,061h	; aa0b   .`tok.k.sx.ooea
	defb 075h,0a9h,065h,091h,06fh,078h,072h,092h,06ch,095h,0ffh,028h,090h,06bh,065h,06bh	; aa1b  u.e.oxr.l..(.kek
	defb 094h,069h,089h,072h,092h,060h,08dh,06bh,08dh,06bh,072h,079h,0a9h,061h,068h,07eh	; aa2b  .i.r.`.k.kry.ah~
	defb 06dh,08dh,095h,0feh,050h,0a0h,060h,067h,087h,090h,062h,06fh,070h,079h,0a9h,061h	; aa3b  m...P.`g..bopy.a
	defb 071h,082h,0feh,030h,0b0h,075h,08dh,068h,092h,08dh,078h,069h,069h,08ah,078h,074h	; aa4b  q..0.u.h..xii.xt
	defb 065h,075h,0a9h,079h,061h,087h,069h,082h,062h,073h,0feh,040h,0c0h,06ch,066h,08ch	; aa5b  eu.ya.i.bs.@.lf.
	defb 0a9h,062h,065h,065h,092h,091h,072h,061h,088h,078h,072h,092h,06ch,095h,0ffh,040h	; aa6b  .bee..ra.xr.l..@
	defb 090h,065h,092h,064h,062h,085h,094h,06ah,060h,0a9h,064h,084h,066h,074h,06ah,061h	; aa7b  .e.db..j`.d.ftja
	defb 095h,0feh,048h,0a0h,060h,06fh,086h,06bh,061h,0a9h,060h,074h,06fh,078h,07fh,070h	; aa8b  ..H.`o.ka.`tox.p
	defb 08ch,094h,0feh,040h,0b0h,069h,078h,085h,075h,0a9h,060h,061h,078h,0a9h,060h,088h	; aa9b  ...@.ix.u.`ax.`.
	defb 065h,066h,092h,087h,095h,0ffh,068h,090h,064h,081h,072h,092h,073h,062h,095h,0feh	; aaab  ef....h.d.r.sb..
	defb 058h,0a0h,064h,071h,065h,089h,06ah,07eh,072h,092h,06bh,06fh,095h,0feh,048h,0b0h	; aabb  X.dqe.j~r.ko..H.
	defb 060h,068h,07fh,065h,086h,078h,0a9h,060h,061h,078h,0a9h,069h,073h,079h,092h,079h	; aacb  `h.e.x.`ax.isy.y
	defb 094h,0feh,048h,0c0h,046h,055h,04ch,04ch,049h,054h,045h,04dh,044h,041h,059h,04fh	; aadb  ..H.FULLITEMDAYO
	defb 04fh,04eh,0a9h,085h,095h,0ffh,033h,0abh,031h,0abh,03ah,0abh,057h,0abh,061h,0abh	; aaeb  ON....3.1.:.W.a.
	defb 071h,0abh,031h,0abh,083h,0abh,031h,0abh,091h,0abh,0aah,0abh,0b7h,0abh,031h,0abh	; aafb  q.1...1.......1.
	defb 0c7h,0abh,031h,0abh,0d9h,0abh,0f2h,0abh,031h,0abh,031h,0abh,0ffh,0abh,031h,0abh	; ab0b  ..1.....1.1...1.
	defb 012h,0ach,01fh,0ach,031h,0abh,02ah,0ach,0ffh,0ffh,033h,0ach,03eh,0ach,042h,0ach	; ab1b  ....1.*...3.>.B.
	defb 031h,0abh,04ah,0ach,0ffh,0ffh,000h,0ffh,068h,053h,054h,041h,046h,046h,0ffh,010h	; ab2b  1.J.....hSTAFF..
	defb 050h,052h,04fh,047h,052h,041h,04dh,04dh,045h,052h,0a9h,0a9h,055h,04ch,054h,052h	; ab3b  PROGRAMMER..ULTR
	defb 041h,04dh,041h,04eh,0a9h,041h,044h,041h,043h,048h,049h,0ffh,070h,041h,044h,044h	; ab4b  AMAN.ADACHI.pADD
	defb 045h,0a9h,045h,044h,041h,0ffh,070h,059h,04fh,053h,048h,049h,04dh,04fh,054h,04fh	; ab5b  E.EDA.pYOSHIMOTO
	defb 0a9h,04fh,048h,054h,041h,0ffh,070h,044h,041h,052h,045h,04eh,041h,04eh,044h,041h	; ab6b  .OHTA.pDARENANDA
	defb 0a9h,053h,055h,05ah,055h,04bh,049h,0ffh,070h,032h,037h,049h,04eh,043h,048h,0a9h	; ab7b  .SUZUKI.p27INCH.
	defb 04eh,041h,047h,041h,045h,0ffh,010h,044h,045h,053h,049h,047h,04eh,045h,052h,0a9h	; ab8b  NAGAE..DESIGNER.
	defb 0a9h,0a9h,0a9h,053h,048h,055h,0a9h,049h,057h,041h,04dh,04fh,054h,04fh,0ffh,070h	; ab9b  ...SHU.IWAMOTO.p
	defb 04bh,049h,0a9h,04dh,049h,05ah,055h,054h,041h,04eh,049h,0ffh,070h,048h,041h,041h	; abab  KI.MIZUTANI.pHAA
	defb 041h,041h,0a9h,04dh,041h,04bh,049h,054h,041h,04eh,049h,0ffh,070h,04dh,045h,054h	; abbb  AA.MAKITANI.pMET
	defb 041h,04ch,053h,04ch,041h,056h,045h,0a9h,04eh,041h,04fh,04bh,049h,0ffh,010h,053h	; abcb  ALSLAVE.NAOKI..S
	defb 04fh,055h,04eh,044h,0a9h,0a9h,0a9h,0a9h,0a9h,0a9h,0a9h,04dh,04fh,041h,049h,0a9h	; abdb  OUND.......MOAI.
	defb 053h,041h,053h,041h,04bh,049h,0ffh,070h,053h,047h,0a9h,046h,055h,052h,055h,04bh	; abeb  SASAKI.pSG.FURUK
	defb 041h,057h,041h,0ffh,038h,053h,050h,045h,043h,049h,041h,04ch,0a9h,054h,048h,041h	; abfb  AWA.8SPECIAL.THA
	defb 04eh,04bh,053h,0a9h,054h,04fh,0ffh,050h,041h,04bh,045h,04dh,049h,0a9h,04bh,041h	; ac0b  NKS.TO.PAKEMI.KA
	defb 04dh,049h,04fh,0ffh,058h,052h,04fh,04fh,04dh,0a9h,031h,030h,031h,033h,0ffh,060h	; ac1b  MIO.XROOM.1013.`
	defb 041h,04eh,044h,0a9h,059h,04fh,055h,0ffh,058h,050h,052h,045h,053h,045h,04eh,054h	; ac2b  AND.YOU.XPRESENT
	defb 045h,044h,0ffh,078h,042h,059h,0ffh,068h,04bh,04fh,04eh,041h,04dh,049h,0ffh,050h	; ac3b  ED.xBY.hKONAMI.P
	defb 03ah,04bh,04fh,04eh,041h,04dh,049h,0a9h,031h,039h,038h,037h,0ffh,0ffh,0ffh,0ffh	; ac4b  :KONAMI.1987....
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ac5b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ac6b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ac7b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ac8b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ac9b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; acab  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; acbb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; accb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; acdb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; aceb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh	; acfb

; ======================================================================
; CODIGO 0xad00..0xad0a  (10 bytes)
; ======================================================================


L_AD00:
	ld hl,0c4b0h		;ad00   ; 0xC4B0: cuenta los cuadros; el bit 0 alterna los colores de los sprites (p02:93AA)
	inc (hl)			;ad03
	ld a,(0cd00h)		;ad04   ; 0xCD00: la escena del final y las pantallas de p06
	call 040aeh		;ad07   ; p00:40AE despacha

; ----------------------------------------------------------------------
; DATOS tabla_AD0A: 18 destinos del despachador de 0x40AE (call en p06:AD07):
;   0xAD2E, 0xAD63, 0xAD76, 0xAD86, 0xAD8C, 0xADB6, 0xADBD, 0xADD4 ...; lo
;   leen p06:AD07 (36 bytes)
;   0xad0a..0xad2e  (36 bytes)
DATA_tabla_AD0A:
	defb 02eh,0adh	; ad0a
	defb 063h,0adh	; ad0c
	defb 076h,0adh	; ad0e
	defb 086h,0adh	; ad10
	defb 08ch,0adh	; ad12
	defb 0b6h,0adh	; ad14
	defb 0bdh,0adh	; ad16
	defb 0d4h,0adh	; ad18
	defb 027h,0aeh	; ad1a
	defb 05bh,0aeh	; ad1c
	defb 0b6h,0adh	; ad1e
	defb 07fh,0aeh	; ad20
	defb 091h,0aeh	; ad22
	defb 0aah,0aeh	; ad24
	defb 032h,0afh	; ad26
	defb 028h,0afh	; ad28
	defb 0b6h,0adh	; ad2a
	defb 047h,044h	; ad2c

; ======================================================================
; CODIGO 0xad2e..0xaed4  (422 bytes)
; ======================================================================


L_AD2E:
	call pon_escena_2		;ad2e
	ld a,(0cd81h)		;ad31   ; 0xCD81: la escena del final y las pantallas de p06
	or a			;ad34
	ret z			;ad35
	call 05900h		;ad36
	call 04c8dh		;ad39
	ld bc,00f07h		;ad3c
	call 00047h		;ad3f   ; BIOS WRTVDP - Writes data in the VDP-register
	call 05592h		;ad42
	ld a,005h		;ad45
	ld (0c138h),a		;ad47   ; 0xC138: las paginas de origen y destino de las copias de dibujos (p00:502D)
	ld hl,0a7cbh		;ad4a   ; p06:A7CB tabla_A7CB: tabla que lee p06:AD4A, p06:ADCB, p06:AE10, p06:AE4C, p06:AEE8, p06:AF12 (1333 bytes)
	ld bc,01808h		;ad4d
	ld de,00090h		;ad50
	call 058adh		;ad53
	call mira_pantalla		;ad56
	call rutina_2		;ad59
	call 0589fh		;ad5c
	ld a,01eh		;ad5f
	jr L_ADAE		;ad61
L_AD63:
	ld hl,0c10eh		;ad63   ; 0xC10E: cuadros que quedan de la tecla de la demostracion (p01:63FF)
	dec (hl)			;ad66
	ret nz			;ad67
	ld hl,0604ch		;ad68
	call 0563eh		;ad6b
	call mira_sitios_de_sprite		;ad6e
	call pon_escena_3		;ad71
	jr L_ADB1		;ad74
L_AD76:
	call rutina		;ad76
	ld hl,0b0a0h		;ad79   ; p06:B0A0 tabla_B0A0: tabla que lee p06:AD79, p06:ADC0, p06:AE7F, p06:B20D (88 bytes)
	call pon_escena		;ad7c
	ld a,(0cd81h)		;ad7f   ; 0xCD81: la escena del final y las pantallas de p06
	or a			;ad82
	ret z			;ad83
	jr L_ADB1		;ad84
L_AD86:
	call pon_escena_4		;ad86
	jp rutina		;ad89
L_AD8C:
	call rutina		;ad8c
	call pon_escena_2		;ad8f
	ld a,(0cd81h)		;ad92   ; 0xCD81: la escena del final y las pantallas de p06
	or a			;ad95
	ret z			;ad96
	call 05900h		;ad97
	call 04c8dh		;ad9a
	call 0559ah		;ad9d
	call mira_pantalla		;ada0
	call rutina_3		;ada3
	call 0589fh		;ada6
	call bucle_2		;ada9
	ld a,00fh		;adac
L_ADAE:
	ld (0c10eh),a		;adae   ; 0xC10E: cuadros que quedan de la tecla de la demostracion (p01:63FF)
L_ADB1:
	ld hl,0cd00h		;adb1   ; 0xCD00: la escena del final y las pantallas de p06
	inc (hl)			;adb4
	ret			;adb5
L_ADB6:
	ld hl,0c10eh		;adb6   ; 0xC10E: cuadros que quedan de la tecla de la demostracion (p01:63FF)
	dec (hl)			;adb9
	ret nz			;adba
	jr L_ADB1		;adbb
L_ADBD:
	call rutina		;adbd
	ld hl,0b0c0h		;adc0
	call pon_escena		;adc3
	ld a,(0cd81h)		;adc6   ; 0xCD81: la escena del final y las pantallas de p06
	or a			;adc9
	ret z			;adca
	ld hl,0a9d1h		;adcb
	call 04fbeh		;adce
	xor a			;add1
	jr L_ADAE		;add2
L_ADD4:
	call rutina		;add4
	ld a,(0cd01h)		;add7   ; 0xCD01: la escena del final y las pantallas de p06
	dec a			;adda
	jr z,L_ADFC		;addb
	jp p,L_AE1B		;addd
	ld a,(0cd85h)		;ade0   ; 0xCD85: la escena del final y las pantallas de p06
	cp 002h		;ade3
	jr z,L_ADB1		;ade5
	ld hl,0c10eh		;ade7   ; 0xC10E: cuadros que quedan de la tecla de la demostracion (p01:63FF)
	dec (hl)			;adea
	ret nz			;adeb
	ld hl,0cd87h		;adec   ; 0xCD87: la escena del final y las pantallas de p06
	ld (hl),077h		;adef
	inc hl			;adf1
	ld (hl),007h		;adf2
L_ADF4:
	ld a,007h		;adf4
	ld (0cd89h),a		;adf6   ; 0xCD89: la escena del final y las pantallas de p06
	jp L_AEE3		;adf9
L_ADFC:
	call mira_cuadros_2		;adfc
	ret nz			;adff
	ld hl,00090h		;ae00
	ld bc,00040h		;ae03
	ld a,000h		;ae06
	call 04961h		;ae08
	ld hl,0cd85h		;ae0b   ; 0xCD85: la escena del final y las pantallas de p06
	inc (hl)			;ae0e
	ld a,(hl)			;ae0f
	ld hl,0a9cbh		;ae10
	call 04878h		;ae13
	call 04fbeh		;ae16
	jr L_ADF4		;ae19
L_AE1B:
	call mira_cuadros_2_2		;ae1b
	ret nz			;ae1e
	xor a			;ae1f
	ld (0c10eh),a		;ae20   ; 0xC10E: cuadros que quedan de la tecla de la demostracion (p01:63FF)
	ld (0cd01h),a		;ae23   ; 0xCD01: la escena del final y las pantallas de p06
	ret			;ae26
L_AE27:
	call rutina		;ae27
	ld a,(0cd86h)		;ae2a   ; 0xCD86: la escena del final y las pantallas de p06
	and a			;ae2d
	call z,pon_demo_cuenta		;ae2e
	jp L_ADB6		;ae31
pon_demo_cuenta:
	ld a,008h		;ae34
	call 00141h		;ae36   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	bit 1,a		;ae39
	ret nz			;ae3b
	ld hl,00090h		;ae3c
	ld bc,00040h		;ae3f
	ld a,000h		;ae42
	call 04961h		;ae44
	ld a,034h		;ae47   ; el sonido 0x34 (p14:9C47 + 2*0x34)
	call 041ach		;ae49
	ld hl,0aab1h		;ae4c
	call 04fbeh		;ae4f
	xor a			;ae52
	ld (0c10eh),a		;ae53   ; 0xC10E: cuadros que quedan de la tecla de la demostracion (p01:63FF)
	inc a			;ae56
	ld (0cd86h),a		;ae57   ; 0xCD86: la escena del final y las pantallas de p06
	ret			;ae5a
L_AE5B:
	call pon_escena_2		;ae5b
	ld a,(0cd81h)		;ae5e   ; 0xCD81: la escena del final y las pantallas de p06
	or a			;ae61
	ret z			;ae62
	call 05900h		;ae63
	call 04c8dh		;ae66
	ld hl,06468h		;ae69
	ld a,004h		;ae6c
	call 05469h		;ae6e
	ld de,05020h		;ae71
	ld hl,06050h		;ae74
	call 05ac0h		;ae77
	ld a,01eh		;ae7a
	jp L_ADAE		;ae7c
L_AE7F:
	ld hl,0b0c0h		;ae7f
	call pon_escena		;ae82
	ld a,(0cd81h)		;ae85   ; 0xCD81: la escena del final y las pantallas de p06
	or a			;ae88
	ret z			;ae89
	call mira_pantalla_2		;ae8a
	xor a			;ae8d
	jp L_ADAE		;ae8e
L_AE91:
	ld hl,0c10eh		;ae91   ; 0xC10E: cuadros que quedan de la tecla de la demostracion (p01:63FF)
	dec (hl)			;ae94
	jr z,L_AEA1		;ae95
	ld a,(hl)			;ae97
	cp 05ah		;ae98
	ret nz			;ae9a
	ld a,067h		;ae9b
	ld (0c0f4h),a		;ae9d   ; 0xC0F4: el sonido que se pide para el cuadro siguiente (p14:94C1)
	ret			;aea0
L_AEA1:
	xor a			;aea1
	ld (0cd01h),a		;aea2   ; 0xCD01: la escena del final y las pantallas de p06
	ld a,008h		;aea5
	jp L_ADAE		;aea7
L_AEAA:
	ld hl,(0c384h)		;aeaa   ; 0xC384: lo que ha avanzado el mapa, 8.8 (p00:56D8)
	ld de,00080h		;aead
	add hl,de			;aeb0
	ld (0c384h),hl		;aeb1   ; 0xC384: lo que ha avanzado el mapa, 8.8 (p00:56D8)
	call 04c65h		;aeb4
	call 04b4dh		;aeb7
	call 04b7ah		;aeba
	ld a,(0c4b0h)		;aebd   ; 0xC4B0: cuenta los cuadros; el bit 0 alterna los colores de los sprites (p02:93AA)
	and 01fh		;aec0
	ret nz			;aec2
	ld hl,000f0h		;aec3
	ld bc,00010h		;aec6
	ld a,000h		;aec9
	call 04961h		;aecb
	ld a,(0cd01h)		;aece   ; 0xCD01: la escena del final y las pantallas de p06
	call 040aeh		;aed1   ; p00:40AE despacha

; ----------------------------------------------------------------------
; DATOS tabla_AED4: 5 destinos del despachador de 0x40AE (call en p06:AED1):
;   0xAEDE, 0xAEE8, 0xAF07, 0xAF12, 0xAF1E; lo leen p06:AED1 (10 bytes)
;   0xaed4..0xaede  (10 bytes)
DATA_tabla_AED4:
	defb 0deh,0aeh	; aed4
	defb 0e8h,0aeh	; aed6
	defb 007h,0afh	; aed8
	defb 012h,0afh	; aeda
	defb 01eh,0afh	; aedc

; ======================================================================
; CODIGO 0xaede..0xafdf  (257 bytes)
; ======================================================================


L_AEDE:
	ld hl,0c10eh		;aede   ; 0xC10E: cuadros que quedan de la tecla de la demostracion (p01:63FF)
	dec (hl)			;aee1
	ret nz			;aee2
L_AEE3:
	ld hl,0cd01h		;aee3   ; 0xCD01: la escena del final y las pantallas de p06
	inc (hl)			;aee6
	ret			;aee7
L_AEE8:
	ld hl,0aaefh		;aee8
pon_demo_cuenta_2:
	ld a,(0cd80h)		;aeeb   ; 0xCD80: la escena del final y las pantallas de p06
	inc a			;aeee
	ld (0cd80h),a		;aeef   ; 0xCD80: la escena del final y las pantallas de p06
	call 04878h		;aef2
	ld a,h			;aef5
	inc a			;aef6
	ld a,009h		;aef7
	ld (0c10eh),a		;aef9   ; 0xC10E: cuadros que quedan de la tecla de la demostracion (p01:63FF)
	jr z,L_AEE3		;aefc
	ld d,(hl)			;aefe
	inc hl			;aeff
	ld e,0d8h		;af00
	ld c,0ffh		;af02
	jp 04fc8h		;af04
L_AF07:
	ld hl,0c10eh		;af07   ; 0xC10E: cuadros que quedan de la tecla de la demostracion (p01:63FF)
	dec (hl)			;af0a
	ret nz			;af0b
	xor a			;af0c
	ld (0cd80h),a		;af0d   ; 0xCD80: la escena del final y las pantallas de p06
	jr L_AEE3		;af10
L_AF12:
	ld hl,0ab23h		;af12
	call pon_demo_cuenta_2		;af15
	ld a,005h		;af18
	ld (0c10eh),a		;af1a   ; 0xC10E: cuadros que quedan de la tecla de la demostracion (p01:63FF)
	ret			;af1d
L_AF1E:
	ld hl,0c10eh		;af1e   ; 0xC10E: cuadros que quedan de la tecla de la demostracion (p01:63FF)
	dec (hl)			;af21
	ret nz			;af22
	ld a,078h		;af23
	jp L_ADAE		;af25
L_AF28:
	ld a,074h		;af28
	ld (0c0f4h),a		;af2a   ; 0xC0F4: el sonido que se pide para el cuadro siguiente (p14:94C1)
	ld a,05ah		;af2d
	jp L_ADAE		;af2f
L_AF32:
	ld hl,0c10eh		;af32   ; 0xC10E: cuadros que quedan de la tecla de la demostracion (p01:63FF)
	dec (hl)			;af35
	ret nz			;af36
	ld a,00ah		;af37
	jp L_ADAE		;af39
pon_escena:
	ld a,001h		;af3c
	ld (0cd83h),a		;af3e   ; 0xCD83: la escena del final y las pantallas de p06
pon_escena_2:
	ld a,(0cd82h)		;af41   ; 0xCD82: la escena del final y las pantallas de p06
	dec a			;af44
	jr z,L_AF5E		;af45
	push hl			;af47
	call 05b5eh		;af48
	pop hl			;af4b
	ld a,(0cd83h)		;af4c   ; 0xCD83: la escena del final y las pantallas de p06
	and a			;af4f
	jr z,L_AF55		;af50
	call 05b70h		;af52
L_AF55:
	xor a			;af55
	ld (0cd81h),a		;af56   ; 0xCD81: la escena del final y las pantallas de p06
	ld hl,0cd82h		;af59   ; 0xCD82: la escena del final y las pantallas de p06
	inc (hl)			;af5c
	ret			;af5d
L_AF5E:
	ld a,(0cd83h)		;af5e   ; 0xCD83: la escena del final y las pantallas de p06
	and a			;af61
	jr nz,L_AF74		;af62
	call 05b31h		;af64
	ret nz			;af67
L_AF68:
	xor a			;af68
	ld (0cd83h),a		;af69   ; 0xCD83: la escena del final y las pantallas de p06
	ld (0cd82h),a		;af6c   ; 0xCD82: la escena del final y las pantallas de p06
	inc a			;af6f
	ld (0cd81h),a		;af70   ; 0xCD81: la escena del final y las pantallas de p06
	ret			;af73
L_AF74:
	call 05b25h		;af74
	ret nz			;af77
	jr L_AF68		;af78
rutina:
	call 04c65h		;af7a
	call 04b4dh		;af7d
	call 06656h		;af80
	call 0681eh		;af83
	call 06b21h		;af86
	call 06bdch		;af89
	call 07539h		;af8c
	call 07603h		;af8f
	call 04b7ah		;af92
	ret			;af95
mira_sitios_de_sprite:
	ld a,031h		;af96
	ld hl,0cf00h		;af98   ; 0xCF00: que cosa hay en cada sitio de los patrones (p00:56A2)
	call 040a4h		;af9b   ; p00:40A4 hl_mas_a
	ld b,003h		;af9e   ; 3 vueltas
	xor a			;afa0
L_AFA1:
	ld (hl),a			;afa1
	inc hl			;afa2
	djnz L_AFA1		;afa3
	ret			;afa5
mira_pantalla:
	ld hl,0e000h		;afa6   ; 0xE000: la tabla de 32x32 dibujos de la pantalla (p00:58A4)
	ld bc,003ffh		;afa9
	jp 05de9h		;afac
rutina_2:
	ld hl,0a96bh		;afaf
	ld bc,02003h		;afb2
	ld de,000bch		;afb5
	jr L_AFC3		;afb8
rutina_3:
	ld hl,0a88bh		;afba
	ld bc,0100eh		;afbd
	ld de,04010h		;afc0   ; p00:4010 cabecera_de_konami: 'C', 0, 'D', 0, 3, 0, 0x15, 0... y las direcciones de la RAM del juego (0xC161 la fase, 0xC160 las vidas, 0xC1
L_AFC3:
	jp 051c2h		;afc3
rutina_4:
	ex af,af'			;afc6
	dec hl			;afc7
	ld a,h			;afc8
	or l			;afc9
	ret nz			;afca
	ex af,af'			;afcb
	add a,a			;afcc
	add a,a			;afcd
	ld l,a			;afce
	ld h,000h		;afcf
	add hl,de			;afd1
	ld a,(hl)			;afd2
	inc hl			;afd3
	ld b,(hl)			;afd4
	inc hl			;afd5
	ld e,(hl)			;afd6
	inc hl			;afd7
	ld d,(hl)			;afd8
	ex de,hl			;afd9
	cp a			;afda
	ret			;afdb
L_AFDC:
	call 040aeh		;afdc   ; p00:40AE despacha

; ----------------------------------------------------------------------
; DATOS tabla_AFDF: 6 destinos del despachador de 0x40AE (call en p06:AFDC):
;   0xB256, 0xB25C, 0xAFEB, 0xAFF0, 0xAFF0, 0xADB1; lo leen p06:AFDC (12
;   bytes)
;   0xafdf..0xafeb  (12 bytes)
DATA_tabla_AFDF:
	defb 056h,0b2h	; afdf
	defb 05ch,0b2h	; afe1
	defb 0ebh,0afh	; afe3
	defb 0f0h,0afh	; afe5
	defb 0f0h,0afh	; afe7
	defb 0b1h,0adh	; afe9

; ======================================================================
; CODIGO 0xafeb..0xaff5  (10 bytes)
; ======================================================================


L_AFEB:
	ld b,009h		;afeb
	jp 0734bh		;afed
L_AFF0:
	ld hl,0d001h		;aff0   ; 0xD001: la ficha del bicho 0, byte 0x01 (p01:74B7)
	inc (hl)			;aff3
	ret			;aff4

; ----------------------------------------------------------------------
; DATOS sin_lector_AFF5: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (1 bytes)
;   0xaff5..0xaff6  (1 bytes)
DATA_sin_lector_AFF5:
	defb 0c9h	; aff5

; ======================================================================
; CODIGO 0xaff6..0xb0a0  (170 bytes)
; ======================================================================


mira_pantalla_2:
	ld de,07090h		;aff6
	ld hl,0e090h		;aff9   ; 0xE090: la tabla de 32x32 dibujos de la pantalla
	ld bc,02020h		;affc
	ld a,001h		;afff
	jp 04e47h		;b001   ; p00:4E47 hmmm
pon_avance:
	ld a,(0cd84h)		;b004   ; 0xCD84: la escena del final y las pantallas de p06
	and a			;b007
	ret nz			;b008
	ld hl,(0c384h)		;b009   ; 0xC384: lo que ha avanzado el mapa, 8.8 (p00:56D8)
	ld de,(0ce87h)		;b00c   ; 0xCE87: la escena del final y las pantallas de p06
	and a			;b010
	sbc hl,de		;b011
	ld (0c384h),hl		;b013   ; 0xC384: lo que ha avanzado el mapa, 8.8 (p00:56D8)
	ld a,(0ce98h)		;b016   ; 0xCE98: la escena del final y las pantallas de p06
	sub 020h		;b019
	jr c,L_B022		;b01b
	ld a,001h		;b01d
	ld (0cd84h),a		;b01f   ; 0xCD84: la escena del final y las pantallas de p06
L_B022:
	ld hl,000d5h		;b022
	ld bc,00002h		;b025
	ld a,000h		;b028
	jp 04961h		;b02a
mira_cuadros_2:
	ld a,(0c4b0h)		;b02d   ; 0xC4B0: cuenta los cuadros; el bit 0 alterna los colores de los sprites (p02:93AA)
	and 001h		;b030
	ret nz			;b032
	ld hl,0cd87h		;b033   ; 0xCD87: la escena del final y las pantallas de p06
	ld c,00ch		;b036
	call con_pon_un_color		;b038
	ld hl,0cd89h		;b03b   ; 0xCD89: la escena del final y las pantallas de p06
	dec (hl)			;b03e
	ret			;b03f
con_pon_un_color:
	ld a,(hl)			;b040
	and 0f0h		;b041
	jr z,L_B047		;b043
	sub 010h		;b045
L_B047:
	ld d,a			;b047
	ld a,(hl)			;b048
	and 00fh		;b049
	jr z,L_B04E		;b04b
	dec a			;b04d
L_B04E:
	or d			;b04e
	ld (hl),a			;b04f
	ld d,a			;b050
	inc hl			;b051
	ld a,(hl)			;b052
	and 00fh		;b053
	jr z,L_B058		;b055
	dec a			;b057
L_B058:
	ld (hl),a			;b058
	ld e,a			;b059
	ld a,c			;b05a
	jp 04d03h		;b05b   ; p00:4D03 pon_un_color
mira_cuadros_2_2:
	ld a,(0c4b0h)		;b05e   ; 0xC4B0: cuenta los cuadros; el bit 0 alterna los colores de los sprites (p02:93AA)
	and 001h		;b061
	ret nz			;b063
	ld hl,0cd87h		;b064   ; 0xCD87: la escena del final y las pantallas de p06
	ld bc,0070ch		;b067
	exx			;b06a
	ld bc,00707h		;b06b
	exx			;b06e
	call con_pon_un_color_2		;b06f
	ld hl,0cd89h		;b072   ; 0xCD89: la escena del final y las pantallas de p06
	dec (hl)			;b075
	ret			;b076
con_pon_un_color_2:
	ld a,(hl)			;b077
	and 0f0h		;b078
	cp b			;b07a
	jr z,L_B07F		;b07b
	add a,010h		;b07d
L_B07F:
	ld d,a			;b07f
	exx			;b080
	ld a,b			;b081
	exx			;b082
	ld b,a			;b083
	ld a,(hl)			;b084
	and 00fh		;b085
	cp b			;b087
	jr z,L_B08B		;b088
	inc a			;b08a
L_B08B:
	or d			;b08b
	ld (hl),a			;b08c
	ld d,a			;b08d
	exx			;b08e
	ld a,c			;b08f
	exx			;b090
	ld b,a			;b091
	inc hl			;b092
	ld a,(hl)			;b093
	and 00fh		;b094
	cp b			;b096
	jr z,L_B09A		;b097
	inc a			;b099
L_B09A:
	ld (hl),a			;b09a
	ld e,a			;b09b
	ld a,c			;b09c
	jp 04d03h		;b09d   ; p00:4D03 pon_un_color

; ----------------------------------------------------------------------
; DATOS tabla_B0A0: tabla que lee p06:AD79, p06:ADC0, p06:AE7F, p06:B20D (88
;   bytes)
;   0xb0a0..0xb0f8  (88 bytes)
DATA_tabla_B0A0:
	defb 000h,000h,053h,004h,061h,002h,071h,000h,024h,003h,077h,007h,000h,000h,000h,000h	; b0a0  ..S.a.q.$.w.....
	defb 024h,002h,000h,000h,000h,000h,000h,000h,012h,001h,051h,001h,074h,005h,000h,000h	; b0b0  $.........Q.t...
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,057h,005h,000h,000h	; b0c0  ............W...
	defb 000h,000h,000h,000h,070h,000h,000h,000h,077h,007h,077h,007h,072h,003h,000h,000h	; b0d0  ....p...w.w.r...
	defb 000h,000h,008h,000h,001h,000h,0f0h,000h,002h,000h,05ah,000h,003h,000h,05ah,000h	; b0e0  ..........Z...Z.
	defb 004h,000h,078h,000h,005h,000h,000h,000h	; b0f0  ..x.....

; ======================================================================
; CODIGO 0xb0f8..0xb115  (29 bytes)
; ======================================================================


rutina_5:
	ld de,080dch		;b0f8
	ld c,031h		;b0fb
	jp 06d64h		;b0fd
bucle:
	ld b,008h		;b100
	ld c,032h		;b102
	ld hl,0b115h		;b104   ; p06:B115 tabla_B115: tabla que lee p06:B104 (185 bytes)
L_B107:
	ld e,(hl)			;b107
	inc hl			;b108
	ld d,(hl)			;b109
	inc hl			;b10a
	push bc			;b10b
	push hl			;b10c
	call 06d64h		;b10d
	pop hl			;b110
	pop bc			;b111
	djnz L_B107		;b112
	ret			;b114

; ----------------------------------------------------------------------
; DATOS tabla_B115: tabla que lee p06:B104 (185 bytes)
;   0xb115..0xb1ce  (185 bytes)
DATA_tabla_B115:
	defb 020h,080h,040h,050h,050h,0b0h,060h,0a0h,070h,060h,090h,0c0h,0a0h,0c0h,0b0h,040h	; b115   .@PP.`.p`.....@
	defb 021h,000h,0ceh,011h,017h,000h,019h,05eh,023h,056h,023h,04eh,0d9h,021h,080h,0ceh	; b125  !......^#V#N.!..
	defb 011h,017h,000h,019h,05eh,023h,056h,023h,04eh,0d9h,0cdh,065h,0b1h,0c5h,0d5h,0d9h	; b135  ....^#V#N..e....
	defb 0d1h,0c1h,0d9h,021h,0cch,000h,01eh,000h,055h,04ch,0cdh,065h,0b1h,0ddh,073h,002h	; b145  ...!....UL.e..s.
	defb 0ddh,072h,003h,0ddh,07eh,011h,03dh,0ddh,077h,011h,0c0h,0ddh,036h,011h,008h,0c9h	; b155  .r..~.=.w...6...
	defb 0ebh,0d9h,0d5h,0d9h,0d1h,0a7h,0edh,052h,079h,0d9h,099h,0d9h,0ebh,04fh,0c9h,006h	; b165  .......Ry....O..
	defb 008h,011h,097h,0b1h,0cdh,0ffh,070h,021h,080h,0ceh,011h,007h,000h,019h,05eh,023h	; b175  ......p!......^#
	defb 056h,0cdh,099h,0b1h,0cdh,02ch,079h,0ddh,07eh,003h,0feh,0d4h,0d8h,0afh,0ddh,077h	; b185  V....,y.~......w
	defb 003h,0c9h,005h,00fh,0ddh,0e5h,0e1h,029h,07ch,0e6h,003h,03ch,03dh,0c8h,0d5h,0cbh	; b195  .......)|..<=...
	defb 02ah,0cbh,01bh,0cbh,02ah,0cbh,01bh,0cbh,02ah,0cbh,01bh,0e1h,0edh,052h,0ebh,018h	; b1a5  *...*...*....R..
	defb 0ebh,0ddh,036h,010h,053h,0c3h,092h,0b3h,0afh,0ddh,077h,006h,0ddh,036h,011h,008h	; b1b5  ..6.S.....w..6..
	defb 0ddh,036h,010h,052h,0ddh,036h,003h,0cch,0c9h	; b1c5  .6.R.6...

; ======================================================================
; CODIGO 0xb1ce..0xb270  (162 bytes)
; ======================================================================


pon_escena_3:
	xor a			;b1ce
	ld (0cd12h),a		;b1cf   ; 0xCD12: la escena del final y las pantallas de p06
	ld h,a			;b1d2
	ld l,03ch		;b1d3
	ld (0cd10h),hl		;b1d5   ; 0xCD10: la escena del final y las pantallas de p06
	ld hl,0ce00h		;b1d8   ; 0xCE00: la escena del final y las pantallas de p06
	call rutina_6		;b1db
	ld hl,0ce80h		;b1de   ; 0xCE80: la escena del final y las pantallas de p06
	call rutina_7		;b1e1
	call 07b03h		;b1e4
	call 074e9h		;b1e7
	call rutina_5		;b1ea
	call bucle		;b1ed
	ret			;b1f0
rutina_6:
	ld de,00010h		;b1f1
	jr L_B1F9		;b1f4
rutina_7:
	ld de,00010h		;b1f6
L_B1F9:
	ld a,00ch		;b1f9
	add a,l			;b1fb
	ld l,a			;b1fc
	ld (hl),e			;b1fd
	inc hl			;b1fe
	ld (hl),d			;b1ff
	ret			;b200
pon_escena_4:
	call ficha_campo_07		;b201
	call pon_avance		;b204
	ld hl,(0cd10h)		;b207   ; 0xCD10: la escena del final y las pantallas de p06
	ld a,(0cd12h)		;b20a   ; 0xCD12: la escena del final y las pantallas de p06
	ld de,0b0e0h		;b20d
	call rutina_4		;b210
	ld (0cd10h),hl		;b213   ; 0xCD10: la escena del final y las pantallas de p06
	ret nz			;b216
	ld hl,0cd12h		;b217   ; 0xCD12: la escena del final y las pantallas de p06
	inc (hl)			;b21a
	jp L_AFDC		;b21b
ficha_campo_07:
	ld ix,0ce00h		;b21e   ; 0xCE00: la escena del final y las pantallas de p06
	call ficha_campo_07_2		;b222
	ld ix,0ce80h		;b225   ; 0xCE80: la escena del final y las pantallas de p06
ficha_campo_07_2:
	ld a,(ix+00bh)		;b229
	or a			;b22c
	call nz,068f9h		;b22d
	ld h,(ix+018h)		;b230   ; ix+0x18: campo propio de este tipo de ficha (el codigo comun de p01 no lo usa)
	ld l,(ix+017h)		;b233   ; ix+0x17: campo propio de este tipo de ficha (el codigo comun de p01 no lo usa)
	ld d,(ix+008h)		;b236
	ld e,(ix+007h)		;b239   ; ix+0x07: el paso de la animacion (p01:6124)
	xor a			;b23c
	add hl,de			;b23d
	adc a,(ix+019h)		;b23e   ; ix+0x19: campo propio de este tipo de ficha (el codigo comun de p01 no lo usa)
	ld (ix+019h),a		;b241   ; ix+0x19: campo propio de este tipo de ficha (el codigo comun de p01 no lo usa)
	ld (ix+018h),h		;b244   ; ix+0x18: campo propio de este tipo de ficha (el codigo comun de p01 no lo usa)
	ld (ix+017h),l		;b247   ; ix+0x17: campo propio de este tipo de ficha (el codigo comun de p01 no lo usa)
	ld hl,01000h		;b24a
	or a			;b24d
	sbc hl,de		;b24e
	ret nc			;b250
	ld (ix+00bh),000h		;b251
	ret			;b255
L_B256:
	ld ix,0ce00h		;b256   ; 0xCE00: la escena del final y las pantallas de p06
	jr L_B260		;b25a
L_B25C:
	ld ix,0ce80h		;b25c   ; 0xCE80: la escena del final y las pantallas de p06
L_B260:
	push ix		;b260   ; HL = la ficha
	pop hl			;b262
	ld a,006h		;b263
	add a,l			;b265
	ld l,a			;b266
	ld (hl),001h		;b267
	ld a,005h		;b269
	add a,l			;b26b
	ld l,a			;b26c
	ld (hl),001h		;b26d
	ret			;b26f

; ----------------------------------------------------------------------
; DATOS sin_lector_B270: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (235 bytes)
;   0xb270..0xb35b  (235 bytes)
DATA_sin_lector_B270:
	defb 0cdh,03eh,062h,0ddh,07eh,001h,0cdh,0aeh,040h,07fh,0b2h,09ch,0b2h,0a8h,0b2h,0cdh	; b270  .>b.~...@.......
	defb 0ech,0b2h,03ah,0b0h,0c4h,00fh,00fh,038h,00ah,03eh,001h,032h,014h,0d7h,0ddh,036h	; b280  ..:....8.>.2...6
	defb 046h,0c0h,0c9h,0afh,032h,014h,0d7h,0ddh,036h,046h,030h,0c9h,0afh,032h,014h,0d7h	; b290  F...2...6F0..2..
	defb 0cdh,0ech,0b2h,0ddh,036h,046h,0c0h,0c9h,0afh,032h,014h,0d7h,0ddh,0cbh,046h,07eh	; b2a0  ....6F...2....F~
	defb 0c4h,0e2h,0b2h,0ddh,0cbh,046h,076h,020h,02eh,0ddh,07eh,046h,0eeh,0c0h,0cah,0ceh	; b2b0  .....Fv ..~F....
	defb 075h,0cdh,0ech,0b2h,0ddh,036h,046h,0c0h,02ah,084h,0c3h,011h,000h,001h,019h,022h	; b2c0  u....6F.*......"
	defb 084h,0c3h,0ddh,066h,003h,0ddh,06eh,002h,0b7h,0edh,052h,0ddh,074h,003h,0ddh,075h	; b2d0  ...f..n...R.t..u
	defb 002h,0c9h,0ddh,0cbh,030h,0feh,0c9h,0ddh,0cbh,038h,0f6h,0c9h,0ddh,035h,006h,0c0h	; b2e0  ....0....8...5..
	defb 0ddh,036h,006h,008h,0ddh,07eh,048h,03dh,0f2h,0fdh,0b2h,03eh,003h,0ddh,077h,048h	; b2f0  .6...~H=...>..wH
	defb 021h,00dh,0b3h,0cdh,078h,048h,0ddh,074h,026h,0ddh,075h,02eh,0c9h,000h,000h,040h	; b300  !...xH.t&.u....@
	defb 040h,080h,080h,040h,040h,0cdh,036h,061h,0ddh,036h,005h,060h,0ddh,036h,003h,060h	; b310  @..@@.6a.6.`.6.`
	defb 0ddh,036h,006h,001h,011h,03fh,0b3h,0cdh,062h,061h,011h,046h,0b3h,0cdh,0a5h,061h	; b320  .6...?..ba.F...a
	defb 011h,04dh,0b3h,0cdh,0a5h,061h,011h,054h,0b3h,0cdh,0a5h,061h,0c3h,0cfh,061h,003h	; b330  .M...a.T...a..a.
	defb 0c0h,000h,020h,040h,090h,000h,003h,0e0h,000h,020h,040h,0b0h,000h,00bh,0c0h,000h	; b340  .. @..... @.....
	defb 040h,040h,000h,0ffh,00bh,0e0h,000h,020h,040h,000h,0ffh	; b350  @@..... @..

; ======================================================================
; CODIGO 0xb35b..0xb376  (27 bytes)
; ======================================================================


bucle_2:
	call 074e9h		;b35b
	call 07b03h		;b35e
	ld b,00ah		;b361
	ld c,033h		;b363
	ld hl,0b376h		;b365   ; p06:B376 tabla_B376: tabla que lee p06:B365 (50 bytes)
L_B368:
	ld e,(hl)			;b368
	inc hl			;b369
	ld d,(hl)			;b36a
	inc hl			;b36b
	push bc			;b36c
	push hl			;b36d
	call 06d64h		;b36e
	pop hl			;b371
	pop bc			;b372
	djnz L_B368		;b373
	ret			;b375

; ----------------------------------------------------------------------
; DATOS tabla_B376: tabla que lee p06:B365 (50 bytes)
;   0xb376..0xb3a8  (50 bytes)
DATA_tabla_B376:
	defb 060h,020h,040h,028h,020h,030h,070h,034h,010h,050h,020h,070h,010h,0a0h,030h,0c8h	; b376  ` @( 0p4.P p..0.
	defb 050h,0d8h,078h,0d0h,0ddh,036h,006h,000h,0ddh,036h,010h,054h,0cdh,07fh,098h,0ddh	; b386  P.x..6...6.T....
	defb 086h,003h,0ddh,08eh,005h,0ddh,077h,060h,0c9h,006h,008h,011h,0a7h,0b3h,0c3h,0ffh	; b396  ......w`........
	defb 070h,00fh	; b3a6

; ======================================================================
; CODIGO 0xb3a8..0xb3ec  (68 bytes)
; ======================================================================


L_B3A8:
	ld a,(0c137h)		;b3a8   ; 0xC137: la ventana de la pausa: contrasena, teclear, comprobar... (p06:B3A8)
	dec a			;b3ab
	jr z,$+99		;b3ac
	dec a			;b3ae
	jp z,L_B78C		;b3af
	dec a			;b3b2
	jp z,L_B7FA		;b3b3
	dec a			;b3b6
	jp z,L_BA36		;b3b7
	jp p,L_BA4A		;b3ba
	ld hl,01720h		;b3bd
	ld a,0cch		;b3c0
	ld bc,0d040h		;b3c2   ; 0xD040: la ficha del bicho 0, byte 0x40 (p01:74B7)
	call 04941h		;b3c5
	ld a,0ffh		;b3c8
	ld hl,01923h		;b3ca
	ld bc,0ca3ah		;b3cd   ; 0xCA3A: 6 fichas de 0x20 (p02:9368)
	call 04961h		;b3d0
	ld hl,0b3ech		;b3d3   ; p06:B3EC tabla_B3EC: tabla que lee p06:B3D3, p06:B3D9, p06:B42B, p06:B436, p06:B827, p06:B852 (35 bytes)
	call 04fbeh		;b3d6
	ld hl,0b3f7h		;b3d9
	call 04fbeh		;b3dc
	call mira_contrasena		;b3df
	ld a,049h		;b3e2   ; el sonido 0x49 (p14:9C47 + 2*0x49)
	call 041ach		;b3e4
L_B3E7:
	ld hl,0c137h		;b3e7   ; 0xC137: la ventana de la pausa: contrasena, teclear, comprobar... (p06:B3A8)
	inc (hl)			;b3ea
	ret			;b3eb

; ----------------------------------------------------------------------
; DATOS tabla_B3EC: tabla que lee p06:B3D3, p06:B3D9, p06:B42B, p06:B436,
;   p06:B827, p06:B852 (35 bytes)
;   0xb3ec..0xb40f  (35 bytes)
DATA_tabla_B3EC:
	defb 050h,028h,050h,041h,053h,053h,057h,04fh,052h,044h,0ffh,038h,048h,045h,04eh,054h	; b3ec  P(PASSWORD.8HENT
	defb 052h,059h,03eh,050h,055h,053h,048h,000h,048h,04fh,04dh,045h,000h,04bh,045h,059h	; b3fc  RY>PUSH.HOME.KEY
	defb 000h,000h,0ffh	; b40c

; ======================================================================
; CODIGO 0xb40f..0xb7d3  (964 bytes)
; ======================================================================


L_B40F:
	ld a,008h		;b40f
	call 00141h		;b411   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	bit 1,a		;b414
	jr z,L_B42B		;b416
	ld a,(0c106h)		;b418   ; 0xC106: cursores, ESPACIO y los disparos pulsados en este cuadro (p00:533B)
	and 010h		;b41b
	ret z			;b41d
	ld a,05bh		;b41e
	ld (0c0f4h),a		;b420   ; 0xC0F4: el sonido que se pide para el cuadro siguiente (p14:94C1)
	ld a,004h		;b423
	ld (0c137h),a		;b425   ; 0xC137: la ventana de la pausa: contrasena, teclear, comprobar... (p06:B3A8)
	jp L_BA36		;b428
L_B42B:
	ld hl,0b3f7h		;b42b
	call 04fc2h		;b42e
	ld de,03038h		;b431
	ld c,000h		;b434
	ld hl,0b3f9h		;b436
	call 04fc8h		;b439
	jr $-85		;b43c
mira_contrasena:
	call mira_area_nueva		;b43e
	ld hl,0e902h		;b441   ; 0xE902: la contrasena: la que se ensena y la tecleada (p06:B43E)
	call rutina_8		;b444
	ld hl,0e902h		;b447   ; 0xE902: la contrasena: la que se ensena y la tecleada (p06:B43E)
	call rutina_15		;b44a
	ld hl,0e900h		;b44d   ; 0xE900: la contrasena: la que se ensena y la tecleada (p06:B43E)
	call 04fbeh		;b450
	call pon_cursor_de_la_contrasena		;b453
	ret			;b456
pon_cursor_de_la_contrasena:
	ld hl,04830h		;b457
	ld (0e980h),hl		;b45a   ; 0xE980: la contrasena: la que se ensena y la tecleada (p06:B43E)
	ld hl,0e982h		;b45d   ; 0xE982: la contrasena tecleada (p06:B7EF)
	ld (0c4b4h),hl		;b460   ; 0xC4B4: donde va la siguiente letra de la contrasena (p06:B7BC)
	ld de,0e983h		;b463   ; 0xE983: la contrasena: la que se ensena y la tecleada (p06:B43E)
	ld bc,0007fh		;b466
	ld (hl),0ffh		;b469
	ldir		;b46b
	ret			;b46d
rutina_8:
	ld a,(hl)			;b46e
	ld e,a			;b46f
	ex de,hl			;b470
	ld h,050h		;b471
	inc de			;b473
L_B474:
	ld a,(de)			;b474
	cp 0ffh		;b475
	ret z			;b477
	xor (hl)			;b478
	and 01fh		;b479
	ld (de),a			;b47b
	inc de			;b47c
	inc hl			;b47d
	jr L_B474		;b47e
rutina_9:
	cp 01fh		;b480
	jr c,L_B486		;b482
	ld a,01fh		;b484
L_B486:
	ld (bc),a			;b486
	inc bc			;b487
	xor d			;b488
	ld d,a			;b489
	ret			;b48a
mira_area_nueva:
	call 0882ch		;b48b
	ld d,000h		;b48e
	ld bc,03830h		;b490
	ld (0e900h),bc		;b493   ; 0xE900: la contrasena: la que se ensena y la tecleada (p06:B43E)
	ld bc,0e902h		;b497   ; 0xE902: la contrasena: la que se ensena y la tecleada (p06:B43E)
	ld a,r		;b49a
	rrca			;b49c
	rrca			;b49d
	and 01fh		;b49e
	call rutina_9		;b4a0
	ld a,(0c486h)		;b4a3   ; 0xC486: el area a la que se va (p01:6549)
	call rutina_9		;b4a6
	ld a,(0c483h)		;b4a9   ; 0xC483: la COLUMNA: 0-2 el camino, 3 la sala (p01:6543)
	cp 003h		;b4ac
	ld a,(0c487h)		;b4ae   ; 0xC487: la fila del mapa con que se entra (p00:5924)
	jr nz,L_B4B5		;b4b1
	ld a,01fh		;b4b3
L_B4B5:
	ld h,a			;b4b5
	and 00fh		;b4b6
	call rutina_9		;b4b8
	ld a,h			;b4bb
	rrca			;b4bc
	rrca			;b4bd
	rrca			;b4be
	rrca			;b4bf
	and 00fh		;b4c0
	call rutina_9		;b4c2
	ld a,(0c160h)		;b4c5   ; 0xC160: las VIDAS, en BCD (p00:4417; GAOOOOOOOOOOH suma 10)
	ld l,a			;b4c8
	and 00fh		;b4c9
	ld h,a			;b4cb
	xor l			;b4cc
	rrca			;b4cd
	rrca			;b4ce
	rrca			;b4cf
	rrca			;b4d0
	add a,a			;b4d1
	ld l,a			;b4d2
	add a,a			;b4d3
	add a,a			;b4d4
	add a,l			;b4d5
	add a,h			;b4d6
	call rutina_9		;b4d7
	ld a,(0c48ah)		;b4da   ; 0xC48A: la x de Gao al entrar (p01:6553)
	rrca			;b4dd
	rrca			;b4de
	rrca			;b4df
	and 01fh		;b4e0
	call rutina_9		;b4e2
	ld a,(0c489h)		;b4e5   ; 0xC489: la y de Gao al entrar (p01:6571)
	rrca			;b4e8
	rrca			;b4e9
	rrca			;b4ea
	and 01fh		;b4eb
	call rutina_9		;b4ed
	ld a,(0c8a0h)		;b4f0   ; 0xC8A0: el OBJETO 21 (byte 0 de 4; p06:BAC2)
	and 001h		;b4f3
	rlca			;b4f5
	ld l,a			;b4f6
	ld a,(0c8b8h)		;b4f7   ; 0xC8B8: el OBJETO 27 (byte 0 de 4; p06:BAC2)
	and 001h		;b4fa
	or l			;b4fc
	rlca			;b4fd
	rlca			;b4fe
	ld l,a			;b4ff
	ld a,(0c875h)		;b500   ; 0xC875: el OBJETO 10 (byte 1 de 4; p06:BAC2)
	and 020h		;b503
	rrca			;b505
	or l			;b506
	ld l,a			;b507
	ld a,(0c850h)		;b508   ; 0xC850: el OBJETO 1 (byte 0 de 4; p06:BAC2)
	and 003h		;b50b
	or l			;b50d
	call rutina_9		;b50e
	ld hl,0c88ch		;b511   ; 0xC88C: el OBJETO 16 (byte 0 de 4; p06:BAC2)
	call rutina_13		;b514
	call rutina_9		;b517
	ld hl,0c8a4h		;b51a   ; 0xC8A4: el OBJETO 22 (byte 0 de 4; p06:BAC2)
	call rutina_13		;b51d
	call rutina_9		;b520
	ld a,(0c884h)		;b523   ; 0xC884: el OBJETO 14 (byte 0 de 4; p06:BAC2)
	or a			;b526
	ld l,000h		;b527
	jr z,L_B52D		;b529
	ld l,010h		;b52b
L_B52D:
	ld a,(0c879h)		;b52d   ; 0xC879: el OBJETO 11 (byte 1 de 4; p06:BAC2)
	and 020h		;b530
	or l			;b532
	rrca			;b533
	ld l,a			;b534
	ld a,(0c85ch)		;b535   ; 0xC85C: el ARMA de Gao: su cuenta es la del objeto 4 (p01:7FAB)
	and 007h		;b538
	or l			;b53a
	call rutina_9		;b53b
	ld hl,0c8bch		;b53e   ; 0xC8BC: el OBJETO 28 (byte 0 de 4; p06:BAC2)
	call rutina_13		;b541
	call rutina_9		;b544
	ld a,(0c845h)		;b547   ; 0xC845: la VIDA de Gao, hasta 200 (p03:AD1C; METALSLAVE la llena)
	rrca			;b54a
	rrca			;b54b
	and 03fh		;b54c
	call rutina_9		;b54e
	ld a,(0c870h)		;b551   ; 0xC870: el OBJETO 9 (byte 0 de 4; p06:BAC2)
	call rutina_9		;b554
	ld a,(0c874h)		;b557   ; 0xC874: el OBJETO 10 (byte 0 de 4; p06:BAC2)
	and 01fh		;b55a
	call rutina_9		;b55c
	ld a,(0c879h)		;b55f   ; 0xC879: el OBJETO 11 (byte 1 de 4; p06:BAC2)
	and 01fh		;b562
	call rutina_9		;b564
	ld a,(0e907h)		;b567   ; 0xE907: la contrasena: la que se ensena y la tecleada (p06:B43E)
	ld h,a			;b56a
	ld a,(0e908h)		;b56b   ; 0xE908: la contrasena: la que se ensena y la tecleada (p06:B43E)
	add a,h			;b56e
	and 01fh		;b56f
	call rutina_9		;b571
	ld hl,0c8dch		;b574   ; 0xC8DC: el OBJETO 36 (byte 0 de 4; p06:BAC2)
	call rutina_13		;b577
	call rutina_9		;b57a
	ld a,(0c840h)		;b57d   ; 0xC840: elige los 32 bytes de p07:70AE que van a los patrones de 0xF8A0 (p00:5671) y el sumando de la dificultad (p01:704D); 6 es especial (p02:8F4F)
	call rutina_9		;b580
	ld a,(0c4aah)		;b583   ; 0xC4AA: la dificultad: 0xC172 + lo de la tabla p01:7062 segun 0xC840, hasta 15 (p01:7049)
	call rutina_9		;b586
	ld a,d			;b589
	and 01fh		;b58a
	call rutina_9		;b58c
	ld a,0ffh		;b58f
	ld (bc),a			;b591
	ret			;b592
rutina_10:
	cp 05ah		;b593
	jr nz,L_B599		;b595
	ld a,030h		;b597
L_B599:
	cp 059h		;b599
	ret nz			;b59b
	ld a,04fh		;b59c
	ret			;b59e
rutina_11:
	cp 030h		;b59f
	jr nz,L_B5A5		;b5a1
	ld a,05ah		;b5a3
L_B5A5:
	cp 04fh		;b5a5
	ret nz			;b5a7
	ld a,059h		;b5a8
	ret			;b5aa
rutina_12:
	cp 061h		;b5ab
	ret c			;b5ad
	cp 07bh		;b5ae
	ret nc			;b5b0
	sub 020h		;b5b1
	ret			;b5b3
rutina_13:
	push hl			;b5b4
	exx			;b5b5
	pop hl			;b5b6
	ld e,000h		;b5b7
	ld bc,00004h		;b5b9
	ld a,(hl)			;b5bc
	rra			;b5bd
	rl e		;b5be
	add hl,bc			;b5c0
	ld a,(hl)			;b5c1
	rra			;b5c2
	rl e		;b5c3
	add hl,bc			;b5c5
	ld a,(hl)			;b5c6
	rra			;b5c7
	rl e		;b5c8
	add hl,bc			;b5ca
	ld a,(hl)			;b5cb
	rra			;b5cc
	rl e		;b5cd
	add hl,bc			;b5cf
	ld a,(hl)			;b5d0
	rra			;b5d1
	rl e		;b5d2
	ld a,e			;b5d4
	and 01fh		;b5d5
	exx			;b5d7
	ret			;b5d8
rutina_14:
	push hl			;b5d9
	exx			;b5da
	pop hl			;b5db
	ld bc,00004h		;b5dc
	rlca			;b5df
	rlca			;b5e0
	rlca			;b5e1
	rl a		;b5e2
	rl (hl)		;b5e4
	add hl,bc			;b5e6
	rl a		;b5e7
	rl (hl)		;b5e9
	add hl,bc			;b5eb
	rl a		;b5ec
	rl (hl)		;b5ee
	add hl,bc			;b5f0
	rl a		;b5f1
	rl (hl)		;b5f3
	add hl,bc			;b5f5
	rl a		;b5f6
	rl (hl)		;b5f8
	and 01fh		;b5fa
	exx			;b5fc
	ret			;b5fd
pon_buffers:
	ld bc,0e983h		;b5fe   ; 0xE983: la contrasena: la que se ensena y la tecleada (p06:B43E)
	ld a,(bc)			;b601
	inc bc			;b602
	ld (0ec0ah),a		;b603   ; 0xEC0A: buffers de pantallas y dibujos
	ld a,(bc)			;b606
	inc bc			;b607
	ld h,a			;b608
	ld a,(bc)			;b609
	inc bc			;b60a
	add a,a			;b60b
	add a,a			;b60c
	add a,a			;b60d
	add a,a			;b60e
	or h			;b60f
	ld l,a			;b610
	ld h,000h		;b611
	ld (0ec10h),hl		;b613   ; 0xEC10: buffers de pantallas y dibujos
	ld a,(bc)			;b616
	inc bc			;b617
	ld (0ec12h),a		;b618   ; 0xEC12: buffers de pantallas y dibujos
	ld a,(bc)			;b61b
	add a,a			;b61c
	add a,a			;b61d
	add a,a			;b61e
	inc bc			;b61f
	ld (0ec13h),a		;b620   ; 0xEC13: buffers de pantallas y dibujos
	ld a,(bc)			;b623
	add a,a			;b624
	add a,a			;b625
	add a,a			;b626
	inc bc			;b627
	ld (0ec14h),a		;b628   ; 0xEC14: buffers de pantallas y dibujos
	ld a,(bc)			;b62b
	inc bc			;b62c
	ld (0ec00h),a		;b62d   ; 0xEC00: buffers de pantallas y dibujos
	ld a,(bc)			;b630
	inc bc			;b631
	ld (0ec01h),a		;b632   ; 0xEC01: buffers de pantallas y dibujos
	ld a,(bc)			;b635
	inc bc			;b636
	ld (0ec02h),a		;b637   ; 0xEC02: buffers de pantallas y dibujos
	ld a,(bc)			;b63a
	inc bc			;b63b
	ld (0ec03h),a		;b63c   ; 0xEC03: buffers de pantallas y dibujos
	ld a,(bc)			;b63f
	inc bc			;b640
	ld (0ec04h),a		;b641   ; 0xEC04: buffers de pantallas y dibujos
	ld a,(bc)			;b644
	inc bc			;b645
	ld (0ec05h),a		;b646   ; 0xEC05: buffers de pantallas y dibujos
	ld a,(bc)			;b649
	inc bc			;b64a
	ld (0ec06h),a		;b64b   ; 0xEC06: buffers de pantallas y dibujos
	ld a,(bc)			;b64e
	inc bc			;b64f
	ld (0ec07h),a		;b650   ; 0xEC07: buffers de pantallas y dibujos
	ld a,(bc)			;b653
	inc bc			;b654
	ld (0ec08h),a		;b655   ; 0xEC08: buffers de pantallas y dibujos
	ld a,(0e987h)		;b658   ; 0xE987: la contrasena: la que se ensena y la tecleada (p06:B43E)
	ld h,a			;b65b
	ld a,(0e988h)		;b65c   ; 0xE988: la contrasena: la que se ensena y la tecleada (p06:B43E)
	add a,h			;b65f
	and 01fh		;b660
	ld h,a			;b662
	ld a,(bc)			;b663
	inc bc			;b664
	sub h			;b665
	ret nz			;b666
	push hl			;b667
	push de			;b668
	push bc			;b669
	ld hl,0c850h		;b66a   ; 0xC850: el OBJETO 1 (byte 0 de 4; p06:BAC2)
	ld bc,000afh		;b66d
	call 05de9h		;b670
	pop bc			;b673
	pop de			;b674
	pop hl			;b675
	ld a,(bc)			;b676
	inc bc			;b677
	ld (0ec09h),a		;b678   ; 0xEC09: buffers de pantallas y dibujos
	ld a,(bc)			;b67b
	inc bc			;b67c
	ld (0c840h),a		;b67d   ; 0xC840: elige los 32 bytes de p07:70AE que van a los patrones de 0xF8A0 (p00:5671) y el sumando de la dificultad (p01:704D); 6 es especial (p02:8F4F)
	ld a,(bc)			;b680
	ld (0c4aah),a		;b681   ; 0xC4AA: la dificultad: 0xC172 + lo de la tabla p01:7062 segun 0xC840, hasta 15 (p01:7049)
	ld a,(0ec0ah)		;b684   ; 0xEC0A: buffers de pantallas y dibujos
	ld (0c486h),a		;b687   ; 0xC486: el area a la que se va (p01:6549)
	ld hl,(0ec10h)		;b68a   ; 0xEC10: buffers de pantallas y dibujos
	ld (0c487h),hl		;b68d   ; 0xC487: la fila del mapa con que se entra (p00:5924)
	ld a,(0ec12h)		;b690   ; 0xEC12: buffers de pantallas y dibujos
	ld l,a			;b693
	ld h,000h		;b694
	call 04893h		;b696
	ld a,e			;b699
	ld (0c160h),a		;b69a   ; 0xC160: las VIDAS, en BCD (p00:4417; GAOOOOOOOOOOH suma 10)
	ld a,(0ec13h)		;b69d   ; 0xEC13: buffers de pantallas y dibujos
	ld (0c48ah),a		;b6a0   ; 0xC48A: la x de Gao al entrar (p01:6553)
	ld a,(0ec14h)		;b6a3   ; 0xEC14: buffers de pantallas y dibujos
	ld (0c489h),a		;b6a6   ; 0xC489: la y de Gao al entrar (p01:6571)
	ld a,(0ec00h)		;b6a9   ; 0xEC00: buffers de pantallas y dibujos
	and 003h		;b6ac
	ld (0c850h),a		;b6ae   ; 0xC850: el OBJETO 1 (byte 0 de 4; p06:BAC2)
	ld a,(0ec03h)		;b6b1   ; 0xEC03: buffers de pantallas y dibujos
	and 007h		;b6b4
	ld (0c85ch),a		;b6b6   ; 0xC85C: el ARMA de Gao: su cuenta es la del objeto 4 (p01:7FAB)
	ld a,(0ec05h)		;b6b9   ; 0xEC05: buffers de pantallas y dibujos
	add a,a			;b6bc
	add a,a			;b6bd
	ld (0c845h),a		;b6be   ; 0xC845: la VIDA de Gao, hasta 200 (p03:AD1C; METALSLAVE la llena)
	ld a,(0ec06h)		;b6c1   ; 0xEC06: buffers de pantallas y dibujos
	ld (0c870h),a		;b6c4   ; 0xC870: el OBJETO 9 (byte 0 de 4; p06:BAC2)
	ld a,(0ec07h)		;b6c7   ; 0xEC07: buffers de pantallas y dibujos
	ld (0c874h),a		;b6ca   ; 0xC874: el OBJETO 10 (byte 0 de 4; p06:BAC2)
	ld a,(0ec03h)		;b6cd   ; 0xEC03: buffers de pantallas y dibujos
	and 010h		;b6d0
	rlca			;b6d2
	ld l,a			;b6d3
	ld a,(0ec08h)		;b6d4   ; 0xEC08: buffers de pantallas y dibujos
	or l			;b6d7
	ld (0c879h),a		;b6d8   ; 0xC879: el OBJETO 11 (byte 1 de 4; p06:BAC2)
	call bucle_3		;b6db
	ld (0c878h),a		;b6de   ; 0xC878: el OBJETO 11 (byte 0 de 4; p06:BAC2)
	ld a,(0ec03h)		;b6e1   ; 0xEC03: buffers de pantallas y dibujos
	and 008h		;b6e4
	jr z,L_B6ED		;b6e6
	ld a,001h		;b6e8
	ld (0c884h),a		;b6ea   ; 0xC884: el OBJETO 14 (byte 0 de 4; p06:BAC2)
L_B6ED:
	ld a,(0ec00h)		;b6ed   ; 0xEC00: buffers de pantallas y dibujos
	and 004h		;b6f0
	rrca			;b6f2
	rrca			;b6f3
	ld (0c8b8h),a		;b6f4   ; 0xC8B8: el OBJETO 27 (byte 0 de 4; p06:BAC2)
	ld a,(0ec01h)		;b6f7   ; 0xEC01: buffers de pantallas y dibujos
	ld hl,0c88ch		;b6fa   ; 0xC88C: el OBJETO 16 (byte 0 de 4; p06:BAC2)
	call rutina_14		;b6fd
	ld a,(0ec02h)		;b700   ; 0xEC02: buffers de pantallas y dibujos
	ld hl,0c8a4h		;b703   ; 0xC8A4: el OBJETO 22 (byte 0 de 4; p06:BAC2)
	call rutina_14		;b706
	ld a,(0ec00h)		;b709   ; 0xEC00: buffers de pantallas y dibujos
	and 008h		;b70c
	rrca			;b70e
	rrca			;b70f
	rrca			;b710
	ld (0c8a0h),a		;b711   ; 0xC8A0: el OBJETO 21 (byte 0 de 4; p06:BAC2)
	ld a,(0ec04h)		;b714   ; 0xEC04: buffers de pantallas y dibujos
	ld hl,0c8bch		;b717   ; 0xC8BC: el OBJETO 28 (byte 0 de 4; p06:BAC2)
	call rutina_14		;b71a
	ld a,(0ec09h)		;b71d   ; 0xEC09: buffers de pantallas y dibujos
	ld hl,0c8dch		;b720   ; 0xC8DC: el OBJETO 36 (byte 0 de 4; p06:BAC2)
	call rutina_14		;b723
	ld hl,0c158h		;b726   ; 0xC158: variables del juego
	ld bc,00002h		;b729
	call 05de9h		;b72c
	ld a,080h		;b72f
	ld (0c481h),a		;b731   ; 0xC481: la FASE, 1-6 (p01:65B4)
	ld (0c485h),a		;b734   ; 0xC485: bit 7: hay que cambiar de area (p01:64CD)
	call 07fabh		;b737
	call 0566eh		;b73a
	call 080d1h		;b73d
	ld a,005h		;b740
	ld (0c4dah),a		;b742   ; 0xC4DA: el final: lo pone ENDDEMOGAMITAINA (p06:B98A)
	ld a,058h		;b745   ; el sonido 0x58 (p14:9C47 + 2*0x58)
	call 041ach		;b747
	jp 04ca3h		;b74a
bucle_3:
	ld bc,00800h		;b74d
L_B750:
	rra			;b750
	jr nc,L_B754		;b751
	inc c			;b753
L_B754:
	djnz L_B750		;b754
	ld a,c			;b756
	ret			;b757
rutina_15:
	ld a,(hl)			;b758
	cp 0ffh		;b759
	ret z			;b75b
	call rutina_16		;b75c
	call rutina_11		;b75f
	ld (hl),a			;b762
	inc hl			;b763
	jr rutina_15		;b764
rutina_16:
	cp 00ah		;b766
	ld c,030h		;b768
	jr c,L_B76E		;b76a
	ld c,037h		;b76c
L_B76E:
	add a,c			;b76e
	ret			;b76f
rutina_17:
	ld a,(hl)			;b770
	cp 0ffh		;b771
	ret z			;b773
	call rutina_10		;b774
	call rutina_18		;b777
	ld (hl),a			;b77a
	inc hl			;b77b
	jr rutina_17		;b77c
rutina_18:
	sub 030h		;b77e
	ret c			;b780
	cp 00ah		;b781
	ccf			;b783
	ret nc			;b784
	sub 007h		;b785
	ret c			;b787
	cp 023h		;b788
	ccf			;b78a
	ret			;b78b
L_B78C:
	call 00156h		;b78c   ; BIOS KILBUF - Clears keyboard buffer
L_B78F:
	ld hl,0e980h		;b78f   ; 0xE980: la contrasena: la que se ensena y la tecleada (p06:B43E)
	call 04fbeh		;b792
L_B795:
	call 00156h		;b795   ; BIOS KILBUF - Clears keyboard buffer
	xor a			;b798
	ld (0fcach),a		;b799
	call 0009fh		;b79c   ; BIOS CHGET - One character input (waiting)
	call rutina_12		;b79f
	cp 008h		;b7a2
	jr z,$+56		;b7a4
	cp 00dh		;b7a6
	jp z,L_B3E7		;b7a8
	cp 030h		;b7ab
	jr c,L_B795		;b7ad
	cp 05bh		;b7af
	jr nc,L_B795		;b7b1
	ld c,a			;b7b3
	cp 041h		;b7b4
	jr nc,L_B7BC		;b7b6
	cp 03ah		;b7b8
	jr nc,L_B795		;b7ba
L_B7BC:
	ld de,(0c4b4h)		;b7bc   ; 0xC4B4: donde va la siguiente letra de la contrasena (p06:B7BC)
	ld a,e			;b7c0
	cp 097h		;b7c1
	jr nc,L_B78F		;b7c3
	ld a,c			;b7c5
	ld (de),a			;b7c6
	inc de			;b7c7
	ld (0c4b4h),de		;b7c8   ; 0xC4B4: donde va la siguiente letra de la contrasena (p06:B7BC)
	ld a,001h		;b7cc   ; el sonido 0x01 (p14:9C47 + 2*0x01)
	call 041ach		;b7ce
	jr L_B78F		;b7d1

; ----------------------------------------------------------------------
; DATOS sin_llamar_B7D3: codigo que no llama nadie (ninguna palabra del
;   cartucho vale 0xB7D3): ld de,(0c4b4h) / ld a,e / cp 095h / jr nc,$-75 (9
;   bytes)
;   0xb7d3..0xb7dc  (9 bytes)
DATA_sin_llamar_B7D3:
	defb 0edh,05bh,0b4h,0c4h,07bh,0feh,095h,030h,0b3h	; b7d3  .[..{..0.

; ======================================================================
; CODIGO 0xb7dc..0xb840  (100 bytes)
; ======================================================================


L_B7DC:
	ld de,(0c4b4h)		;b7dc   ; 0xC4B4: donde va la siguiente letra de la contrasena (p06:B7BC)
	ld a,e			;b7e0
	cp 082h		;b7e1
	jr z,$-84		;b7e3
	dec de			;b7e5
	xor a			;b7e6
	ld (de),a			;b7e7
	ld (0c4b4h),de		;b7e8   ; 0xC4B4: donde va la siguiente letra de la contrasena (p06:B7BC)
	jr $-93		;b7ec
pon_espera:
	xor a			;b7ee
	ld hl,0e982h		;b7ef   ; 0xE982: la contrasena tecleada (p06:B7EF)
L_B7F2:
	ld d,(hl)			;b7f2
	inc hl			;b7f3
	inc d			;b7f4
	ret z			;b7f5
	dec d			;b7f6
	xor d			;b7f7
	jr L_B7F2		;b7f8
L_B7FA:
	call pon_contrasena_buena		;b7fa
	jr nz,L_B822		;b7fd
	ld hl,0e982h		;b7ff   ; 0xE982: la contrasena tecleada (p06:B7EF)
	call rutina_17		;b802
	ld hl,0e982h		;b805   ; 0xE982: la contrasena tecleada (p06:B7EF)
	call rutina_8		;b808
	call pon_espera		;b80b
	or a			;b80e
	jr nz,L_B827		;b80f
	call pon_buffers		;b811
	ld a,(0c485h)		;b814   ; 0xC485: bit 7: hay que cambiar de area (p01:64CD)
	cp 080h		;b817
	jr nz,L_B827		;b819
	ld a,(0e902h)		;b81b   ; 0xE902: la contrasena: la que se ensena y la tecleada (p06:B43E)
	cp 0ffh		;b81e
	jr z,L_B827		;b820
L_B822:
	call rutina_19		;b822
	jr L_B833		;b825
L_B827:
	ld hl,0b3ech		;b827   ; p06:B3EC tabla_B3EC: tabla que lee p06:B3D3, p06:B3D9, p06:B42B, p06:B436, p06:B827, p06:B852 (35 bytes)
	call 04fc2h		;b82a
	ld hl,0b84ah		;b82d
	call 04fbeh		;b830
L_B833:
	ld a,01eh		;b833
	ld (0c104h),a		;b835   ; 0xC104: cuenta atras del paso del estado (p00:4345)
	ld a,05bh		;b838
	ld (0c0f4h),a		;b83a   ; 0xC0F4: el sonido que se pide para el cuadro siguiente (p14:94C1)
	jp L_B3E7		;b83d

; ----------------------------------------------------------------------
; DATOS tabla_B840: tabla que lee p06:B82D, p06:B858 (18 bytes)
;   0xb840..0xb852  (18 bytes)
DATA_tabla_B840:
	defb 050h,028h,043h,04fh,052h,052h,045h,043h,054h,0ffh,050h,028h,057h,052h,04fh,04eh	; b840  P(CORRECT.P(WRON
	defb 047h,0ffh	; b850

; ======================================================================
; CODIGO 0xb852..0xb8a0  (78 bytes)
; ======================================================================


rutina_19:
	ld hl,0b3ech		;b852   ; p06:B3EC tabla_B3EC: tabla que lee p06:B3D3, p06:B3D9, p06:B42B, p06:B436, p06:B827, p06:B852 (35 bytes)
	call 04fc2h		;b855
	ld hl,0b840h		;b858   ; p06:B840 tabla_B840: tabla que lee p06:B82D, p06:B858 (18 bytes)
	jp 04fbeh		;b85b
pon_contrasena_buena:
	xor a			;b85e
	ld (0c4dch),a		;b85f   ; 0xC4DC: se ha aceptado una de las 17 (p06:B895)
	ld hl,00000h		;b862
	ld (0c4dah),hl		;b865   ; 0xC4DA: el final: lo pone ENDDEMOGAMITAINA (p06:B98A)
	ld b,011h		;b868   ; 17 vueltas
L_B86A:
	push bc			;b86a
	call pon_contrasena_buena_2		;b86b
	pop bc			;b86e
	djnz L_B86A		;b86f
	ld a,(0c4dch)		;b871   ; 0xC4DC: se ha aceptado una de las 17 (p06:B895)
	or a			;b874
	ret			;b875
pon_contrasena_buena_2:
	ld de,0b8a0h		;b876   ; p06:B8A0 tabla_B8A0: tabla que lee p06:B876 (44 bytes)
	ld a,b			;b879
	dec a			;b87a
	call 0486fh		;b87b
	ld hl,0e982h		;b87e   ; 0xE982: la contrasena tecleada (p06:B7EF)
L_B881:
	ld a,(de)			;b881
	inc de			;b882
	or a			;b883
	jr nz,L_B89B		;b884
	inc hl			;b886
	ld a,(hl)			;b887
	inc a			;b888
	ret nz			;b889
	ld hl,0c600h		;b88a   ; 0xC600: una por contrasena: ya se ha usado en esta partida (p06:B88A)
	ld a,b			;b88d
	call 040a4h		;b88e   ; p00:40A4 hl_mas_a
	ld a,(hl)			;b891
	or a			;b892
	ret nz			;b893
	inc a			;b894
	ld (0c4dch),a		;b895   ; 0xC4DC: se ha aceptado una de las 17 (p06:B895)
	ld (hl),a			;b898
	ex de,hl			;b899
	jp (hl)			;b89a
L_B89B:
	cp (hl)			;b89b
	inc hl			;b89c
	ret nz			;b89d
	jr L_B881		;b89e

; ----------------------------------------------------------------------
; DATOS tabla_B8A0: tabla que lee p06:B876 (44 bytes)
;   0xb8a0..0xb8cc  (44 bytes)
DATA_tabla_B8A0:
	defb 0d4h,0b8h,0f3h,0b8h,008h,0b9h,017h,0b9h,023h,0b9h,034h,0b9h,049h,0b9h,060h,0b9h	; b8a0  ........#.4.I.`.
	defb 079h,0b9h,0a6h,0b9h,0bch,0b9h,0d2h,0b9h,0e8h,0b9h,0fch,0b9h,010h,0bah,027h,0bah	; b8b0  y.............'.
	defb 0c2h,0b8h,053h,055h,050h,045h,052h,042h,041h,04ch,04ch,000h	; b8c0  ..SUPERBALL.

; ======================================================================
; CODIGO 0xb8cc..0xb8d4  (8 bytes)
; ======================================================================


L_B8CC:
	ld hl,0c8dch		;b8cc   ; 0xC8DC: el OBJETO 36 (byte 0 de 4; p06:BAC2)
	ld bc,00013h		;b8cf
	jr $+24		;b8d2

; ----------------------------------------------------------------------
; DATOS sin_lector_B8D4: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (16 bytes)
;   0xb8d4..0xb8e4  (16 bytes)
DATA_sin_lector_B8D4:
	defb 04bh,049h,04eh,04fh,04fh,04fh,049h,048h,049h,054h,04fh,044h,041h,04eh,045h,000h	; b8d4  KINOOOIHITODANE.

; ======================================================================
; CODIGO 0xb8e4..0xb8f3  (15 bytes)
; ======================================================================


L_B8E4:
	ld hl,0c88ch		;b8e4   ; 0xC88C: el OBJETO 16 (byte 0 de 4; p06:BAC2)
	ld bc,00047h		;b8e7
L_B8EA:
	ld a,001h		;b8ea
L_B8EC:
	ld d,h			;b8ec
	ld e,l			;b8ed
	inc de			;b8ee
	ld (hl),a			;b8ef
	ldir		;b8f0
	ret			;b8f2

; ----------------------------------------------------------------------
; DATOS sin_lector_B8F3: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (15 bytes)
;   0xb8f3..0xb902  (15 bytes)
DATA_sin_lector_B8F3:
	defb 048h,041h,04eh,045h,059h,04fh,04bh,041h,047h,041h,059h,041h,04bh,045h,000h	; b8f3  HANEYOKAGAYAKE.

; ======================================================================
; CODIGO 0xb902..0xb908  (6 bytes)
; ======================================================================


L_B902:
	ld a,001h		;b902
	ld (0c4e3h),a		;b904   ; 0xC4E3: HANEYOKAGAYAKE: las cosas que dan 1 de vida dan 10 (p03:AC8F)
	ret			;b907

; ----------------------------------------------------------------------
; DATOS sin_lector_B908: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (9 bytes)
;   0xb908..0xb911  (9 bytes)
DATA_sin_lector_B908:
	defb 055h,04ch,054h,052h,041h,042h,04fh,058h,000h	; b908  ULTRABOX.

; ======================================================================
; CODIGO 0xb911..0xb917  (6 bytes)
; ======================================================================


L_B911:
	ld a,009h		;b911
	ld (0c870h),a		;b913   ; 0xC870: el OBJETO 9 (byte 0 de 4; p06:BAC2)
	ret			;b916

; ----------------------------------------------------------------------
; DATOS sin_lector_B917: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (6 bytes)
;   0xb917..0xb91d  (6 bytes)
DATA_sin_lector_B917:
	defb 054h,055h,052h,042h,04fh,000h	; b917

; ======================================================================
; CODIGO 0xb91d..0xb923  (6 bytes)
; ======================================================================


L_B91D:
	ld a,003h		;b91d
	ld (0c850h),a		;b91f   ; 0xC850: el OBJETO 1 (byte 0 de 4; p06:BAC2)
	ret			;b922

; ----------------------------------------------------------------------
; DATOS sin_lector_B923: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (11 bytes)
;   0xb923..0xb92e  (11 bytes)
DATA_sin_lector_B923:
	defb 04dh,045h,054h,041h,04ch,053h,04ch,041h,056h,045h,000h	; b923  METALSLAVE.

; ======================================================================
; CODIGO 0xb92e..0xb934  (6 bytes)
; ======================================================================


L_B92E:
	ld a,0c8h		;b92e
	ld (0c845h),a		;b930   ; 0xC845: la VIDA de Gao, hasta 200 (p03:AD1C; METALSLAVE la llena)
	ret			;b933

; ----------------------------------------------------------------------
; DATOS sin_lector_B934: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (15 bytes)
;   0xb934..0xb943  (15 bytes)
DATA_sin_lector_B934:
	defb 048h,04fh,049h,048h,04fh,049h,048h,04fh,049h,04eh,04fh,048h,04fh,049h,000h	; b934  HOIHOIHOINOHOI.

; ======================================================================
; CODIGO 0xb943..0xb949  (6 bytes)
; ======================================================================


L_B943:
	ld a,009h		;b943
	ld (0c884h),a		;b945   ; 0xC884: el OBJETO 14 (byte 0 de 4; p06:BAC2)
	ret			;b948

; ----------------------------------------------------------------------
; DATOS sin_lector_B949: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (15 bytes)
;   0xb949..0xb958  (15 bytes)
DATA_sin_lector_B949:
	defb 046h,055h,04ch,04ch,049h,054h,045h,04dh,044h,041h,059h,04fh,04fh,04eh,000h	; b949  FULLITEMDAYOON.

; ======================================================================
; CODIGO 0xb958..0xb960  (8 bytes)
; ======================================================================


L_B958:
	ld hl,0c850h		;b958   ; 0xC850: el OBJETO 1 (byte 0 de 4; p06:BAC2)
	ld bc,0003bh		;b95b
	jr $-116		;b95e

; ----------------------------------------------------------------------
; DATOS sin_lector_B960: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (14 bytes)
;   0xb960..0xb96e  (14 bytes)
DATA_sin_lector_B960:
	defb 047h,041h,04fh,04fh,04fh,04fh,04fh,04fh,04fh,04fh,04fh,04fh,048h,000h	; b960  GAOOOOOOOOOOH.

; ======================================================================
; CODIGO 0xb96e..0xb979  (11 bytes)
; ======================================================================


L_B96E:
	ld a,(0c160h)		;b96e   ; 0xC160: las VIDAS, en BCD (p00:4417; GAOOOOOOOOOOH suma 10)
	add a,010h		;b971
	daa			;b973
	ret c			;b974
	ld (0c160h),a		;b975   ; 0xC160: las VIDAS, en BCD (p00:4417; GAOOOOOOOOOOH suma 10)
	ret			;b978

; ----------------------------------------------------------------------
; DATOS sin_lector_B979: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (17 bytes)
;   0xb979..0xb98a  (17 bytes)
DATA_sin_lector_B979:
	defb 045h,04eh,044h,044h,045h,04dh,04fh,047h,041h,04dh,049h,054h,041h,049h,04eh,041h	; b979  ENDDEMOGAMITAINA
	defb 000h	; b989

; ======================================================================
; CODIGO 0xb98a..0xb9a6  (28 bytes)
; ======================================================================


L_B98A:
	ld hl,0000ch		;b98a
	ld (0c4dah),hl		;b98d   ; 0xC4DA: el final: lo pone ENDDEMOGAMITAINA (p06:B98A)
	xor a			;b990
	ld (0c388h),a		;b991   ; 0xC388: lo que se ha movido el mapa este cuadro (p00:56E8)
	ld (0c0f2h),a		;b994   ; 0xC0F2: la musica de la pausa esta sonando (p14:9411)
	ld (0c092h),a		;b997   ; 0xC092: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ld (0c0b2h),a		;b99a   ; 0xC0B2: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ld (0c0d2h),a		;b99d   ; 0xC0D2: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ld a,014h		;b9a0
	ld (0c4a8h),a		;b9a2   ; 0xC4A8: variables de la partida
	ret			;b9a5

; ----------------------------------------------------------------------
; DATOS sin_lector_B9A6: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (6 bytes)
;   0xb9a6..0xb9ac  (6 bytes)
DATA_sin_lector_B9A6:
	defb 061h,061h,061h,061h,061h,000h	; b9a6

; ======================================================================
; CODIGO 0xb9ac..0xb9bc  (16 bytes)
; ======================================================================


L_B9AC:
	ld a,001h		;b9ac
	ld (0c4d1h),a		;b9ae   ; 0xC4D1: lo pone la contrasena 'aaaaa', que no se puede teclear (p06:B9AC)
	ld hl,0c850h		;b9b1   ; 0xC850: el OBJETO 1 (byte 0 de 4; p06:BAC2)
	ld bc,000a7h		;b9b4
	ld a,003h		;b9b7
	jp L_B8EC		;b9b9

; ----------------------------------------------------------------------
; DATOS sin_lector_B9BC: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (11 bytes)
;   0xb9bc..0xb9c7  (11 bytes)
DATA_sin_lector_B9BC:
	defb 04bh,04fh,04bh,04fh,057h,041h,044h,04fh,04bh,04fh,000h	; b9bc  KOKOWADOKO.

; ======================================================================
; CODIGO 0xb9c7..0xb9d2  (11 bytes)
; ======================================================================


L_B9C7:
	ld a,006h		;b9c7
	ld (0c874h),a		;b9c9   ; 0xC874: el OBJETO 10 (byte 0 de 4; p06:BAC2)
	ld a,03fh		;b9cc
	ld (0c875h),a		;b9ce   ; 0xC875: el OBJETO 10 (byte 1 de 4; p06:BAC2)
	ret			;b9d1

; ----------------------------------------------------------------------
; DATOS sin_lector_B9D2: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (16 bytes)
;   0xb9d2..0xb9e2  (16 bytes)
DATA_sin_lector_B9D2:
	defb 04eh,041h,04eh,044h,041h,04eh,041h,04eh,044h,041h,04eh,041h,04eh,044h,041h,000h	; b9d2  NANDANANDANANDA.

; ======================================================================
; CODIGO 0xb9e2..0xb9e8  (6 bytes)
; ======================================================================


L_B9E2:
	ld a,001h		;b9e2
	ld (0c4e0h),a		;b9e4   ; 0xC4E0: NANDANANDANANDA: al perder una vida se devuelve (p00:441A)
	ret			;b9e7

; ----------------------------------------------------------------------
; DATOS sin_lector_B9E8: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (9 bytes)
;   0xb9e8..0xb9f1  (9 bytes)
DATA_sin_lector_B9E8:
	defb 041h,055h,054h,04fh,053h,048h,04fh,054h,000h	; b9e8  AUTOSHOT.

; ======================================================================
; CODIGO 0xb9f1..0xb9fc  (11 bytes)
; ======================================================================


L_B9F1:
	ld a,003h		;b9f1
	ld (0c85ch),a		;b9f3   ; 0xC85C: el ARMA de Gao: su cuenta es la del objeto 4 (p01:7FAB)
	ld (0c4e1h),a		;b9f6   ; 0xC4E1: AUTOSHOT: el arma 4 en cada cuadro (p02:8F56)
	jp 07fabh		;b9f9

; ----------------------------------------------------------------------
; DATOS sin_lector_B9FC: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (14 bytes)
;   0xb9fc..0xba0a  (14 bytes)
DATA_sin_lector_B9FC:
	defb 049h,04ch,04fh,056h,045h,048h,049h,04eh,04fh,054h,04fh,052h,049h,000h	; b9fc  ILOVEHINOTORI.

; ======================================================================
; CODIGO 0xba0a..0xba10  (6 bytes)
; ======================================================================


L_BA0A:
	ld a,001h		;ba0a
	ld (0c4e2h),a		;ba0c   ; 0xC4E2: ILOVEHINOTORI: invencible (p02:8600)
	ret			;ba0f

; ----------------------------------------------------------------------
; DATOS sin_lector_BA10: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (12 bytes)
;   0xba10..0xba1c  (12 bytes)
DATA_sin_lector_BA10:
	defb 044h,04fh,04bh,04fh,044h,045h,04dh,04fh,04dh,041h,050h,000h	; ba10  DOKODEMOMAP.

; ======================================================================
; CODIGO 0xba1c..0xba27  (11 bytes)
; ======================================================================


L_BA1C:
	ld a,006h		;ba1c
	ld (0c878h),a		;ba1e   ; 0xC878: el OBJETO 11 (byte 0 de 4; p06:BAC2)
	ld a,03fh		;ba21
	ld (0c879h),a		;ba23   ; 0xC879: el OBJETO 11 (byte 1 de 4; p06:BAC2)
	ret			;ba26

; ----------------------------------------------------------------------
; DATOS sin_lector_BA27: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (7 bytes)
;   0xba27..0xba2e  (7 bytes)
DATA_sin_lector_BA27:
	defb 048h,041h,059h,041h,04dh,045h,000h	; ba27

; ======================================================================
; CODIGO 0xba2e..0xba87  (89 bytes)
; ======================================================================


L_BA2E:
	ld a,003h		;ba2e
	ld (0c85ch),a		;ba30   ; 0xC85C: el ARMA de Gao: su cuenta es la del objeto 4 (p01:7FAB)
	jp 07fabh		;ba33
L_BA36:
	ld a,(0c012h)		;ba36   ; 0xC012: el sonido del primer canal (p14:9420)
	or a			;ba39
	ret nz			;ba3a
	ld hl,01720h		;ba3b
	ld bc,0d040h		;ba3e   ; 0xD040: la ficha del bicho 0, byte 0x40 (p01:74B7)
	call 04972h		;ba41
	call 04cf8h		;ba44   ; p00:4CF8 enciende_los_sprites
	jp L_B3E7		;ba47
L_BA4A:
	ret			;ba4a
L_BA4B:
	ld a,b			;ba4b
	dec a			;ba4c
	jp z,L_BA9A		;ba4d
	dec a			;ba50
	jp z,L_BAA0		;ba51
	jp p,L_BAA8		;ba54
	ld hl,01720h		;ba57
	ld de,01018h		;ba5a
	ld a,0cch		;ba5d
	ld bc,0d058h		;ba5f   ; 0xD058: la ficha del bicho 0, byte 0x58 (p01:74B7)
	call 04944h		;ba62
	ld a,0ffh		;ba65
	ld hl,01923h		;ba67
	ld bc,0ca52h		;ba6a   ; 0xCA52: 6 fichas de 0x20 (p02:9368)
	call 04961h		;ba6d
	ld hl,0ba87h		;ba70   ; p06:BA87 tabla_BA87: tabla que lee p06:BA70 (19 bytes)
	call 04fbeh		;ba73
	call 04348h		;ba76
	ld de,06810h		;ba79
	ld bc,0e068h		;ba7c   ; 0xE068: la tabla de 32x32 dibujos de la pantalla
	call 04cedh		;ba7f   ; p00:4CED apaga_los_sprites
	ld a,034h		;ba82   ; el sonido 0x34 (p14:9C47 + 2*0x34)
	jp 041ach		;ba84

; ----------------------------------------------------------------------
; DATOS tabla_BA87: tabla que lee p06:BA70 (19 bytes)
;   0xba87..0xba9a  (19 bytes)
DATA_tabla_BA87:
	defb 040h,028h,049h,054h,045h,04dh,040h,049h,04eh,046h,04fh,052h,04dh,041h,054h,049h	; ba87  @(ITEM@INFORMATI
	defb 04fh,04eh,0ffh	; ba97

; ======================================================================
; CODIGO 0xba9a..0xbb11  (119 bytes)
; ======================================================================


L_BA9A:
	call mira_objeto_1		;ba9a
	jp 04348h		;ba9d
L_BAA0:
	ld a,(0c106h)		;baa0   ; 0xC106: cursores, ESPACIO y los disparos pulsados en este cuadro (p00:533B)
	or a			;baa3
	ret z			;baa4
	jp 04348h		;baa5
L_BAA8:
	ld hl,01720h		;baa8
	ld de,01018h		;baab
	ld bc,0d058h		;baae   ; 0xD058: la ficha del bicho 0, byte 0x58 (p01:74B7)
	call 0497bh		;bab1
	call 055a2h		;bab4
	call 04cf8h		;bab7   ; p00:4CF8 enciende_los_sprites
	call 0488dh		;baba
	ld b,005h		;babd
	jp 043edh		;babf
mira_objeto_1:
	ld hl,0c850h		;bac2   ; 0xC850: el OBJETO 1 (byte 0 de 4; p06:BAC2)
	ld de,00004h		;bac5
	ld b,029h		;bac8   ; 41 vueltas
L_BACA:
	ld a,(hl)			;baca
	or a			;bacb
	push hl			;bacc
	push de			;bacd
	push bc			;bace
	call nz,mira_buffer		;bacf
	pop bc			;bad2
	pop de			;bad3
	pop hl			;bad4
	add hl,de			;bad5
	djnz L_BACA		;bad6
	ret			;bad8
mira_buffer:
	ld (0e880h),a		;bad9   ; 0xE880: buffer de trabajo
	ld a,02ah		;badc
	sub b			;bade
	ld (0e801h),a		;badf   ; 0xE801: buffer de trabajo
	ld de,0bb11h		;bae2   ; p06:BB11 tabla_BB11: tabla que lee p06:BAE2 (88 bytes)
	dec a			;bae5
	call 0486fh		;bae6
	ld a,d			;bae9
	or a			;baea
	ret z			;baeb
	res 0,d		;baec
	rrca			;baee
	jr c,L_BB03		;baef
	push de			;baf1
	ld hl,0e880h		;baf2   ; 0xE880: buffer de trabajo
	ld b,001h		;baf5
	ld a,d			;baf7
	add a,010h		;baf8
	ld d,a			;bafa
	ld a,e			;bafb
	add a,004h		;bafc
	ld e,a			;bafe
	call 04853h		;baff
	pop de			;bb02
L_BB03:
	ld hl,0e800h		;bb03   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	ld a,e			;bb06
	ld (0e802h),a		;bb07   ; 0xE802: buffer de trabajo
	ld a,d			;bb0a
	ld (0e803h),a		;bb0b   ; 0xE803: buffer de trabajo
	jp 07b60h		;bb0e

; ----------------------------------------------------------------------
; DATOS tabla_BB11: tabla que lee p06:BAE2 (88 bytes)
;   0xbb11..0xbb69  (88 bytes)
DATA_tabla_BB11:
	defb 038h,01ah,038h,000h,023h,000h,038h,05ah,023h,000h,038h,000h,038h,000h,038h,000h	; bb11  8.8.#.8Z#.8.8.8.
	defb 04dh,01ah,04dh,042h,04dh,06ah,04dh,000h,038h,000h,038h,043h,023h,000h,038h,083h	; bb21  M.MBMjM.8.8C#.8.
	defb 038h,093h,038h,0a3h,038h,0b3h,038h,0c3h,038h,0d3h,062h,083h,062h,093h,062h,0a3h	; bb31  8.8.8.8.8.b.b.b.
	defb 062h,0b3h,062h,0c3h,062h,0d3h,04dh,093h,04dh,0a3h,04dh,0b3h,04dh,0c3h,04dh,0d3h	; bb41  b.b.b.M.M.M.M.M.
	defb 04dh,000h,04dh,000h,04dh,000h,062h,023h,062h,033h,062h,043h,062h,053h,062h,063h	; bb51  M.M.M.b#b3bCbSbc
	defb 062h,000h,062h,000h,062h,000h,062h,000h	; bb61  b.b.b.b.

; ======================================================================
; CODIGO 0xbb69..0xbd3e  (469 bytes)
; ======================================================================


L_BB69:
	ld a,b			;bb69
	dec a			;bb6a
	jp z,L_BBBF		;bb6b
	jp p,L_BD0C		;bb6e
	call 0558ah		;bb71
	ld hl,01720h		;bb74
	ld de,01018h		;bb77
	ld a,0cch		;bb7a
	ld bc,0d060h		;bb7c   ; 0xD060: la ficha del bicho 0, byte 0x60 (p01:74B7)
	call 04944h		;bb7f
	ld a,0ffh		;bb82
	ld hl,01923h		;bb84
	ld bc,0ca5ah		;bb87   ; 0xCA5A: 6 fichas de 0x20 (p02:9368)
	call 04961h		;bb8a
	call pon_partida		;bb8d
	call 04348h		;bb90
	call 04cedh		;bb93   ; p00:4CED apaga_los_sprites
	ld hl,0ea00h		;bb96   ; 0xEA00: buffers de pantallas y dibujos
	ld bc,003ffh		;bb99
	call 05de9h		;bb9c
	ld hl,0bd3eh		;bb9f   ; p06:BD3E tabla_BD3E: tabla que lee p06:BB9F, p06:BBC7, p06:BBF0 (588 bytes)
	ld de,04728h		;bba2
	ld bc,01006h		;bba5
	call 051c8h		;bba8
	ld de,00808h		;bbab
	ld bc,01006h		;bbae
	ld hl,09e18h		;bbb1
	call 055c6h		;bbb4
	call 058dch		;bbb7
	ld a,034h		;bbba   ; el sonido 0x34 (p14:9C47 + 2*0x34)
	jp 041c1h		;bbbc
L_BBBF:
	ld a,078h		;bbbf
	ld (0c104h),a		;bbc1   ; 0xC104: cuenta atras del paso del estado (p00:4345)
	ld a,(0c4bdh)		;bbc4   ; 0xC4BD: variables de la partida
	ld hl,0be43h		;bbc7
	call 04878h		;bbca
	call mira_buffer_2		;bbcd
	jr L_BC13		;bbd0
mira_buffer_2:
	ld de,0e800h		;bbd2   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	call rutina_20		;bbd5
	ld a,0ffh		;bbd8
	ld (de),a			;bbda
	ret			;bbdb
rutina_20:
	ld a,(hl)			;bbdc
	cp 0ffh		;bbdd
	ret z			;bbdf
	inc hl			;bbe0
	cp 0c0h		;bbe1
	call nc,rutina_21		;bbe3
	jr nc,rutina_20		;bbe6
	ld (de),a			;bbe8
	inc de			;bbe9
	jr rutina_20		;bbea
rutina_21:
	push hl			;bbec
	push de			;bbed
	sub 0c0h		;bbee
	ld hl,0bd9eh		;bbf0
	call 04878h		;bbf3
	pop de			;bbf6
	call rutina_20		;bbf7
	pop hl			;bbfa
	or a			;bbfb
	ret			;bbfc
pon_partida:
	ld bc,00001h		;bbfd
	ld (0c4bbh),bc		;bc00   ; 0xC4BB: variables de la partida
pon_partida_2:
	ld bc,01605h		;bc04
	ld (0c4b6h),bc		;bc07   ; 0xC4B6: variables de la partida
	ld bc,0040bh		;bc0b
	ld (0c4b8h),bc		;bc0e   ; 0xC4B8: variables de la partida
	ret			;bc12
L_BC13:
	call pon_partida_2		;bc13
	ld bc,00000h		;bc16
	ld a,(0c4b6h)		;bc19   ; 0xC4B6: variables de la partida
	dec a			;bc1c
	ld d,a			;bc1d
	ld a,(0c4b8h)		;bc1e   ; 0xC4B8: variables de la partida
	ld e,a			;bc21
	ld hl,0e800h		;bc22   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
L_BC25:
	push bc			;bc25
	call mira_partida		;bc26
	pop bc			;bc29
	call c,rutina_22		;bc2a
	inc bc			;bc2d
	or a			;bc2e
	push hl			;bc2f
	ld hl,(0c4bbh)		;bc30   ; 0xC4BB: variables de la partida
	sbc hl,bc		;bc33
	pop hl			;bc35
	jr nz,L_BC25		;bc36
	inc bc			;bc38
	ld (0c4bbh),bc		;bc39   ; 0xC4BB: variables de la partida
	cp 07eh		;bc3d
	jr z,L_BC86		;bc3f
	ld a,(0c4b8h)		;bc41   ; 0xC4B8: variables de la partida
	sub e			;bc44
	neg		;bc45
	add a,a			;bc47
	add a,a			;bc48
	ld c,a			;bc49
	add a,a			;bc4a
	add a,c			;bc4b
	ld e,a			;bc4c
	ld a,(0c4b8h)		;bc4d   ; 0xC4B8: variables de la partida
	add a,a			;bc50
	add a,a			;bc51
	add a,a			;bc52
	add a,e			;bc53
	ld e,a			;bc54
	ld a,d			;bc55
	add a,a			;bc56
	add a,a			;bc57
	add a,a			;bc58
	ld d,a			;bc59
	dec hl			;bc5a
	ld a,(hl)			;bc5b
	cp 080h		;bc5c
	jr nc,L_BC65		;bc5e
	add a,030h		;bc60
	jp 04fe7h		;bc62
L_BC65:
	sub 080h		;bc65
	push de			;bc67
	call 0819bh		;bc68
	ex de,hl			;bc6b
	pop de			;bc6c
	ld a,d			;bc6d
	sub 008h		;bc6e
	ld d,a			;bc70
	ld a,e			;bc71
	sub 004h		;bc72
	ld e,a			;bc74
	ld a,048h		;bc75
	ld bc,01010h		;bc77
	jp 051eah		;bc7a
rutina_22:
	dec a			;bc7d
	jr z,L_BC84		;bc7e
	pop hl			;bc80
	jp 04348h		;bc81
L_BC84:
	jr L_BC84		;bc84
L_BC86:
	ld a,(0c4b6h)		;bc86   ; 0xC4B6: variables de la partida
	add a,a			;bc89
	add a,a			;bc8a
	add a,a			;bc8b
	ld h,a			;bc8c
	ld a,(0c4b8h)		;bc8d   ; 0xC4B8: variables de la partida
	add a,a			;bc90
	add a,a			;bc91
	add a,a			;bc92
	ld l,a			;bc93
	ld a,(0c4b7h)		;bc94   ; 0xC4B7: variables de la partida
	add a,a			;bc97
	add a,a			;bc98
	add a,a			;bc99
	ld b,a			;bc9a
	ld a,(0c4b9h)		;bc9b   ; 0xC4B9: variables de la partida
	add a,a			;bc9e
	add a,a			;bc9f
	add a,a			;bca0
	ld c,a			;bca1
	ld d,000h		;bca2
	jp 04e0bh		;bca4   ; p00:4E0B hmmv
mira_partida:
	ld a,(hl)			;bca7
	inc hl			;bca8
	cp 07eh		;bca9
	jr z,L_BCDF		;bcab
	cp 07fh		;bcad
	jr z,L_BCD4		;bcaf
	cp 0ffh		;bcb1
	jr z,L_BCD1		;bcb3
	cp 080h		;bcb5
	jr nc,L_BCC5		;bcb7
	cp 020h		;bcb9
	jr nz,rutina_23		;bcbb
	ld a,(0c4b6h)		;bcbd   ; 0xC4B6: variables de la partida
	cp d			;bcc0
	jr nz,rutina_23		;bcc1
	jr mira_partida		;bcc3
L_BCC5:
	call rutina_23		;bcc5
rutina_23:
	push hl			;bcc8
	call mira_partida_2		;bcc9
	pop hl			;bccc
	ret nc			;bccd
	ld a,001h		;bcce
	ret			;bcd0
L_BCD1:
	xor a			;bcd1
	scf			;bcd2
	ret			;bcd3
L_BCD4:
	push hl			;bcd4
	ld hl,0c4b6h		;bcd5   ; 0xC4B6: variables de la partida
	ld a,(hl)			;bcd8
	inc hl			;bcd9
	add a,(hl)			;bcda
	ld d,a			;bcdb
	pop hl			;bcdc
	jr mira_partida		;bcdd
L_BCDF:
	call pon_partida_2		;bcdf
	ld bc,00000h		;bce2
	ld a,(0c4b6h)		;bce5   ; 0xC4B6: variables de la partida
	dec a			;bce8
	ld d,a			;bce9
	ld a,(0c4b8h)		;bcea   ; 0xC4B8: variables de la partida
	ld e,a			;bced
	ret			;bcee
mira_partida_2:
	inc d			;bcef
	ld a,d			;bcf0
	ld hl,0c4b6h		;bcf1   ; 0xC4B6: variables de la partida
	sub (hl)			;bcf4
	inc hl			;bcf5
	cp (hl)			;bcf6
	ccf			;bcf7
	ret nc			;bcf8
	ld a,(0c4b6h)		;bcf9   ; 0xC4B6: variables de la partida
	ld d,a			;bcfc
	inc e			;bcfd
	ld a,e			;bcfe
	inc hl			;bcff
	sub (hl)			;bd00
	inc hl			;bd01
	cp (hl)			;bd02
	ccf			;bd03
	ret nc			;bd04
	dec hl			;bd05
	ld e,(hl)			;bd06
	dec hl			;bd07
	dec hl			;bd08
	ld d,(hl)			;bd09
	scf			;bd0a
	ret			;bd0b
L_BD0C:
	ld a,(0c104h)		;bd0c   ; 0xC104: cuenta atras del paso del estado (p00:4345)
	or a			;bd0f
	jr nz,L_BD19		;bd10
	ld a,(0c102h)		;bd12   ; 0xC102: bit 0: es la demostracion; bit 6: hay partida (p00:46A5)
	and 001h		;bd15
	jr nz,L_BD1E		;bd17
L_BD19:
	ld a,(0c106h)		;bd19   ; 0xC106: cursores, ESPACIO y los disparos pulsados en este cuadro (p00:533B)
	or a			;bd1c
	ret z			;bd1d
L_BD1E:
	ld hl,01720h		;bd1e
	ld de,01018h		;bd21
	ld bc,0d060h		;bd24   ; 0xD060: la ficha del bicho 0, byte 0x60 (p01:74B7)
	call 0497bh		;bd27
	call 055a2h		;bd2a
	call 04cf8h		;bd2d   ; p00:4CF8 enciende_los_sprites
	call 04884h		;bd30
	xor a			;bd33
	ld (0c4bdh),a		;bd34   ; 0xC4BD: variables de la partida
	ld hl,00005h		;bd37
	ld (0c100h),hl		;bd3a   ; 0xC100: el ESTADO del juego (p00:4254): 1 titulo, 2 demostracion, 4 empieza el area, 5 jugando, 9 MENU, 0x0A pausa...
	ret			;bd3d

; ----------------------------------------------------------------------
; DATOS tabla_BD3E: tabla que lee p06:BB9F, p06:BBC7, p06:BBF0 (588 bytes)
;   0xbd3e..0xbf8a  (588 bytes)
DATA_tabla_BD3E:
	defb 000h,000h,000h,000h,000h,000h,000h,001h,002h,003h,004h,005h,006h,007h,008h,009h	; bd3e  ................
	defb 00ah,00bh,000h,000h,000h,000h,00ch,00dh,00eh,00fh,010h,011h,012h,000h,013h,014h	; bd4e  ................
	defb 015h,016h,017h,018h,000h,019h,01ah,01bh,01ch,01dh,01eh,01fh,020h,021h,022h,023h	; bd5e  ............ !"#
	defb 000h,045h,024h,025h,026h,027h,028h,029h,02ah,02bh,02ch,02dh,02eh,02fh,030h,000h	; bd6e  .E$%&'()*+,-./0.
	defb 000h,046h,031h,032h,033h,034h,035h,036h,037h,038h,039h,03ah,03bh,03ch,03dh,000h	; bd7e  .F123456789:;<=.
	defb 000h,000h,000h,000h,000h,000h,000h,03eh,03fh,040h,041h,042h,043h,044h,000h,000h	; bd8e  .......>?@ABCD..
	defb 0c4h,0bdh,0cbh,0bdh,0ceh,0bdh,0d4h,0bdh,0ddh,0bdh,0e3h,0bdh,0e9h,0bdh,0f7h,0bdh	; bd9e  ................
	defb 002h,0beh,00dh,0beh,013h,0beh,018h,0beh,01bh,0beh,020h,0beh,029h,0beh,02dh,0beh	; bdae  .......... .).-.
	defb 035h,0beh,03ah,0beh,03eh,0beh,035h,062h,034h,032h,055h,064h,0ffh,052h,05dh,0ffh	; bdbe  5.:.>.5b42Ud.R].
	defb 059h,031h,04dh,062h,037h,0ffh,048h,0c1h,05ch,043h,034h,058h,0cch,064h,0ffh,05ch	; bdce  Y1Mb7.H.\C4X.d.\
	defb 03fh,034h,03bh,064h,0ffh,048h,0c2h,05ch,042h,045h,0ffh,031h,059h,044h,038h,059h	; bdde  ?4;d.H.\BE.1YD8Y
	defb 049h,062h,044h,057h,04eh,03dh,05dh,065h,0ffh,03ah,030h,064h,034h,054h,036h,044h	; bdee  IbDWN=]e.:0d4T6D
	defb 03ah,031h,065h,0ffh,045h,04eh,05bh,057h,039h,04fh,044h,03ah,031h,065h,0ffh,043h	; bdfe  :1e.EN[W9OD:1e.C
	defb 039h,05ah,042h,062h,0ffh,04ah,03fh,062h,057h,0ffh,046h,04eh,0ffh,03fh,051h,045h	; be0e  9ZBb.J?bW.FN.?QE
	defb 049h,0ffh,048h,0c2h,05ch,052h,041h,042h,031h,058h,0ffh,044h,056h,064h,0ffh,0c1h	; be1e  I.H.\RAB1X.DVd..
	defb 05ch,043h,034h,058h,0cch,064h,0ffh,039h,048h,03ah,036h,0ffh,04fh,036h,062h,0ffh	; be2e  \C4X.d.9H:6.O6b.
	defb 04ah,041h,055h,032h,0ffh,0a3h,0beh,000h,0bfh,015h,0bfh,02fh,0bfh,000h,000h,000h	; be3e  JAU2......./....
	defb 000h,000h,000h,000h,000h,0afh,0beh,041h,0bfh,000h,000h,000h,000h,000h,000h,000h	; be4e  .......A........
	defb 000h,000h,000h,000h,000h,0bbh,0beh,000h,000h,000h,000h,000h,000h,000h,000h,000h	; be5e  ................
	defb 000h,000h,000h,000h,000h,0c7h,0beh,000h,000h,000h,000h,000h,000h,000h,000h,000h	; be6e  ................
	defb 000h,000h,000h,000h,000h,0d3h,0beh,062h,0bfh,000h,000h,000h,000h,000h,000h,000h	; be7e  .......b........
	defb 000h,000h,000h,000h,000h,0dfh,0beh,000h,000h,000h,000h,000h,000h,000h,000h,000h	; be8e  ................
	defb 000h,000h,000h,000h,000h,0c0h,096h,0c3h,07fh,089h,09bh,0c4h,096h,0c5h,07fh,0c6h	; be9e  ................
	defb 0ffh,0c0h,097h,0c3h,07fh,08ah,09bh,0c4h,097h,0c5h,07fh,0c6h,0ffh,0c0h,098h,0c3h	; beae  ................
	defb 07fh,08bh,09bh,0c4h,098h,0c5h,07fh,0c6h,0ffh,0c0h,099h,0c3h,07fh,08ch,09bh,0c4h	; bebe  ................
	defb 099h,0c5h,07fh,0c6h,0ffh,0c0h,09ah,0c3h,07fh,08ah,09bh,0c4h,09ah,0c5h,07fh,0c6h	; bece  ................
	defb 0ffh,0c0h,08dh,09bh,043h,03fh,03fh,035h,032h,03fh,051h,045h,049h,064h,07fh,039h	; bede  ....C??52?QEId.9
	defb 039h,05ah,048h,03fh,04eh,035h,062h,031h,041h,041h,0d2h,042h,062h,03ch,065h,07fh	; beee  9ZH?N5b1AA.Bb<e.
	defb 0c7h,0ffh,0c0h,088h,0cdh,07fh,0ceh,039h,048h,0cbh,05ch,039h,033h,03fh,043h,039h	; befe  .......9H.\93?C9
	defb 05ah,042h,062h,0cah,07fh,0c8h,0ffh,0c0h,0cfh,0c1h,048h,07fh,044h,04eh,033h,043h	; bf0e  ZBb.......H.DN3C
	defb 034h,044h,03bh,062h,0c2h,035h,062h,0d2h,045h,07fh,044h,057h,04eh,03ch,065h,0c7h	; bf1e  4D;b.5b.E.DWN<e.
	defb 0ffh,0c0h,088h,0cdh,07fh,0ceh,0d0h,048h,0cbh,048h,043h,039h,05ah,042h,062h,0cah	; bf2e  .......H.HC9ZBb.
	defb 07fh,0c8h,0ffh,0c0h,089h,0cdh,07fh,0ceh,0d0h,05ch,0d1h,045h,04eh,035h,062h,057h	; bf3e  .........\.EN5bW
	defb 044h,03ah,031h,065h,07fh,09bh,048h,0c1h,035h,062h,030h,058h,049h,03ch,062h,042h	; bf4e  D:1e..H.5b0XI<bB
	defb 062h,03ch,065h,0ffh,0c0h,08ch,048h,03dh,035h,031h,035h,056h,03ah,036h,049h,064h	; bf5e  b<e...H=515V:6Id
	defb 086h,07fh,043h,087h,05ch,032h,04eh,037h,041h,035h,031h,039h,044h,03ah,044h,038h	; bf6e  ..C.\2N7A519D:D8
	defb 059h,049h,062h,03ch,03ch,07fh,051h,04eh,03dh,05dh,065h,0c7h	; bf7e  YIb<<.QN=]e.

; ----------------------------------------------------------------------
; DATOS relleno_p06: 0xFF hasta el final del banco: nadie lo lee; lo leen
;   nadie (118 bytes)
;   0xbf8a..0xc000  (118 bytes)
DATA_relleno_p06:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf8a  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf9a  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfaa  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfba  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfca  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfda  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfea  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bffa
