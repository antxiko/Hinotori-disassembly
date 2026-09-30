; ==========================================================================
; HINOTORI - Konami (1987) - MSX - MegaROM RC-747 de 128 KB (Konami4) - banco 05 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; DATOS dibujos_7C28_cola: 35 dibujos de 8x8 a 4 bits (32 bytes cada uno) que
;   la lista de 0x6074 sube a la hoja desde el 01 (sigue del banco anterior,
;   0x7C28); lo leen p00:54CC (lista 0x6074) (136 bytes)
;   0x8000..0x8088  (136 bytes)
DATA_dibujos_7C28_cola:
	defb 01fh,0f5h,045h,033h,054h,05fh,0f4h,04fh	; 8000  ..E3T_.O
	defb 02fh,02fh,011h,0ffh,02fh,02fh,014h,045h	; 8008  //..//.E
	defb 0ffh,014h,044h,055h,0ffh,045h,055h,0ffh	; 8010  ..DU.EU.
	defb 0f4h,055h,0f1h,01fh,045h,05fh,011h,044h	; 8018  .U..E_.D
	defb 054h,0f1h,013h,044h,04fh,011h,034h,055h	; 8020  T..DO.4U
	defb 0f1h,014h,045h,05fh,02fh,044h,045h,0f4h	; 8028  ..E_/DE.
	defb 013h,045h,0f1h,014h,014h,05fh,011h,043h	; 8030  .E..._.C
	defb 045h,0f1h,014h,044h,04fh,011h,044h,054h	; 8038  E..DO.DT
	defb 0f1h,0f4h,043h,053h,0f1h,0f4h,053h,045h	; 8040  ..CS..SE
	defb 0ffh,0ffh,03fh,011h,0ffh,0f5h,034h,01fh	; 8048  ..?...4.
	defb 022h,0f5h,011h,0f4h,02fh,0f1h,0ffh,0f5h	; 8050  ".../...
	defb 02fh,021h,0ffh,044h,022h,02fh,0ffh,041h	; 8058  /!.D"/.A
	defb 022h,0f2h,02fh,041h,022h,022h,0f2h,0f1h	; 8060  "./A""..
	defb 014h,05fh,0f5h,0ffh,04fh,05fh,055h,01fh	; 8068  ._..O_U.
	defb 0f5h,05fh,0f1h,015h,055h,0f1h,022h,0f1h	; 8070  ._..U.".
	defb 051h,011h,02fh,021h,011h,02fh,022h,0ffh	; 8078  Q./!./".
	defb 0ffh,0ffh,02fh,0f2h,02fh,0f2h,0f2h,02fh	; 8080  .././../

; ----------------------------------------------------------------------
; DATOS dibujos_8088: 21 dibujos de 8x8 a 1 bit (8 bytes cada uno) que la
;   lista de 0x6074 sube a la hoja desde el 2F; lo leen p00:54CC (lista
;   0x6074) (168 bytes)
;   0x8088..0x8130  (168 bytes)
DATA_dibujos_8088:
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; 8088  ........
	defb 02dh,002h,00fh,012h,007h,000h,001h,002h	; 8090  -.......
	defb 002h,026h,069h,04fh,03ch,0b5h,063h,0aeh	; 8098  .&iO<.c.
	defb 012h,06fh,011h,000h,005h,000h,000h,002h	; 80a0  .o......
	defb 04dh,03fh,033h,0f4h,05fh,02bh,0afh,09eh	; 80a8  M?3._+..
	defb 0feh,0ffh,067h,0aeh,0f7h,0dfh,07dh,0bah	; 80b0  ..g...}.
	defb 002h,000h,000h,000h,001h,000h,005h,004h	; 80b8  ........
	defb 04bh,022h,095h,022h,0dbh,035h,00ah,025h	; 80c0  K".".5.%
	defb 001h,000h,001h,010h,02bh,002h,015h,002h	; 80c8  ....+...
	defb 035h,0d4h,01ah,0a6h,05dh,099h,077h,03bh	; 80d0  5...].w;
	defb 03ch,0dfh,03ah,0beh,058h,0f8h,0f4h,0feh	; 80d8  <.:.X...
	defb 035h,0dfh,01ah,0a7h,05fh,09fh,077h,03bh	; 80e0  5..._.w;
	defb 035h,0dfh,01ah,0a2h,05bh,099h,062h,022h	; 80e8  5...[.b"
	defb 04dh,03fh,033h,0f4h,05dh,02ah,025h,002h	; 80f0  M?3.]*%.
	defb 000h,000h,005h,020h,026h,082h,011h,002h	; 80f8  ... &...
	defb 08bh,0a6h,069h,04fh,03ch,0b5h,063h,0aeh	; 8100  ..iO<.c.
	defb 001h,002h,007h,001h,014h,002h,002h,000h	; 8108  ........
	defb 057h,05ah,0afh,077h,09dh,0c6h,02eh,0f5h	; 8110  WZ.w....
	defb 0eeh,0fch,0fah,0ffh,0feh,0fch,05eh,0bfh	; 8118  ......^.
	defb 003h,000h,001h,000h,004h,002h,000h,000h	; 8120  ........
	defb 057h,05ah,0bfh,076h,01dh,0c7h,01eh,0adh	; 8128  WZ.v....

; ----------------------------------------------------------------------
; DATOS dibujos_8130: 12 dibujos de 8x8 a 1 bit (8 bytes cada uno) que la
;   lista de 0x6074 sube a la hoja desde el 44; lo leen p00:54CC (lista
;   0x6074) (96 bytes)
;   0x8130..0x8190  (96 bytes)
DATA_dibujos_8130:
	defb 000h,000h,01ch,006h,023h,070h,000h,000h	; 8130  ....#p..
	defb 000h,000h,000h,000h,000h,01ch,07fh,00eh	; 8138  ........
	defb 000h,07eh,0b7h,07eh,038h,000h,000h,000h	; 8140  .~.~8...
	defb 000h,000h,042h,000h,000h,081h,012h,000h	; 8148  ..B.....
	defb 001h,033h,007h,03fh,01ch,018h,00dh,0c2h	; 8150  .3.?....
	defb 073h,0f8h,0c0h,0c0h,040h,080h,000h,070h	; 8158  s...@..p
	defb 000h,007h,000h,000h,000h,000h,000h,000h	; 8160  ........
	defb 000h,0fah,07fh,000h,000h,000h,000h,000h	; 8168  ........
	defb 040h,08bh,0f4h,040h,000h,000h,000h,000h	; 8170  @..@....
	defb 0e0h,060h,080h,000h,000h,000h,000h,000h	; 8178  .`......
	defb 000h,000h,030h,00ch,037h,0f6h,038h,000h	; 8180  ..0.7.8.
	defb 000h,000h,030h,00ch,007h,0c6h,0f0h,0f8h	; 8188  ..0.....

; ----------------------------------------------------------------------
; DATOS dibujos_8190: 31 dibujos de 8x8 a 4 bits al reves (32 bytes cada uno)
;   que la lista de 0x6074 sube a la hoja desde el A0; se solapan 2 bloques
;   (0x8190-0x8570, 0x8190-0x8790); lo leen p00:54CC (lista 0x6074) (1536
;   bytes)
;   0x8190..0x8790  (1536 bytes)
DATA_dibujos_8190:
	defb 055h,0ffh,0ffh,0f5h,055h,0ffh,043h,033h	; 8190  U...U.C3
	defb 025h,044h,044h,055h,055h,055h,055h,0ffh	; 8198  %DDUUUU.
	defb 045h,055h,0ffh,033h,0ffh,0ffh,043h,044h	; 81a0  EU.3..CD
	defb 0ffh,044h,034h,045h,044h,045h,045h,055h	; 81a8  .D4EDEEU
	defb 033h,04fh,0ffh,0f5h,053h,0f4h,045h,0f5h	; 81b0  3O..S.E.
	defb 0ffh,0ffh,055h,05fh,033h,033h,0f5h,0ffh	; 81b8  ..U_33..
	defb 034h,043h,03fh,0f4h,045h,054h,05fh,053h	; 81c0  4C?.ET_S
	defb 055h,05fh,0ffh,043h,055h,0ffh,0ffh,034h	; 81c8  U_.CU..4
	defb 0ffh,0f5h,05fh,055h,0ffh,033h,035h,0ffh	; 81d0  .._U.35.
	defb 055h,044h,043h,03fh,054h,045h,044h,033h	; 81d8  UDC?TED3
	defb 045h,055h,0f5h,044h,035h,0f4h,0ffh,055h	; 81e0  EU.D5..U
	defb 033h,05fh,0ffh,05fh,044h,035h,05fh,054h	; 81e8  3_._D5_T
	defb 055h,055h,055h,0ffh,0ffh,0ffh,0ffh,0ffh	; 81f0  UUU.....
	defb 0f3h,0ffh,055h,0f3h,03fh,033h,035h,034h	; 81f8  ..U.?354
	defb 05fh,0f5h,055h,055h,05fh,0ffh,05fh,055h	; 8200  _.UU_._U
	defb 044h,03fh,0f5h,0ffh,0ffh,0ffh,0f5h,04fh	; 8208  D?.....O
	defb 0ffh,033h,0ffh,04fh,033h,035h,05fh,045h	; 8210  .3.O35_E
	defb 035h,055h,0ffh,0ffh,055h,0ffh,05fh,055h	; 8218  5U..U._U
	defb 05fh,0f5h,05fh,055h,0ffh,0f5h,0ffh,0f5h	; 8220  _._U....
	defb 0f4h,044h,0ffh,0f5h,0ffh,055h,044h,0ffh	; 8228  .D...UD.
	defb 044h,033h,044h,0f5h,054h,043h,054h,03fh	; 8230  D3D.TCT?
	defb 0f4h,043h,034h,043h,0f5h,044h,035h,044h	; 8238  .C4C.D5D
	defb 0ffh,044h,03fh,054h,0ffh,054h,04fh,054h	; 8240  .D?T.TOT
	defb 0ffh,0f5h,043h,0f5h,05fh,0f5h,044h,0ffh	; 8248  ..C._.D.
	defb 0ffh,05fh,0ffh,054h,0ffh,043h,03fh,0f4h	; 8250  ._.T.C?.
	defb 0ffh,054h,043h,0f4h,0ffh,0f5h,043h,04fh	; 8258  .TC...CO
	defb 05fh,0ffh,054h,04fh,054h,0ffh,0f5h,04fh	; 8260  _.TOT..O
	defb 054h,04fh,05fh,0ffh,044h,044h,0ffh,05fh	; 8268  TO_.DD._
	defb 05fh,0ffh,055h,044h,044h,05fh,0ffh,055h	; 8270  _.UDD_.U
	defb 044h,044h,0f5h,0ffh,045h,044h,0f5h,055h	; 8278  DD..ED.U
	defb 0f5h,04fh,0f4h,043h,054h,0ffh,034h,044h	; 8280  .O.CT.4D
	defb 04fh,0f4h,044h,054h,0ffh,045h,055h,054h	; 8288  O.DT.EUT
	defb 05fh,0ffh,054h,0ffh,04fh,0ffh,054h,0ffh	; 8290  _.T.O.T.
	defb 054h,04fh,0f4h,04fh,0ffh,054h,0ffh,04fh	; 8298  TO.O.T.O
	defb 054h,0f5h,04fh,045h,035h,04fh,0ffh,0f5h	; 82a0  T.OE5O..
	defb 043h,054h,04fh,0f5h,044h,034h,044h,04fh	; 82a8  CTO.D4DO
	defb 055h,0f4h,0f5h,05fh,05fh,0ffh,0ffh,0f5h	; 82b0  U..__...
	defb 0ffh,0f4h,044h,0f5h,0f4h,044h,0ffh,0ffh	; 82b8  ..D..D..
	defb 044h,0ffh,0ffh,054h,04fh,0ffh,0f5h,044h	; 82c0  D..TO..D
	defb 0f4h,044h,05fh,0ffh,044h,045h,0ffh,04fh	; 82c8  .D_.DE.O
	defb 05fh,055h,0f5h,055h,0ffh,0ffh,0f4h,045h	; 82d0  _U.U...E
	defb 0ffh,044h,04fh,0f4h,05fh,0f4h,044h,04fh	; 82d8  .DO._.DO
	defb 044h,04fh,0f5h,044h,045h,043h,03fh,0f5h	; 82e0  DO.DEC?.
	defb 035h,055h,033h,03fh,0f3h,0f4h,054h,033h	; 82e8  5U3?..T3
	defb 044h,035h,054h,044h,054h,043h,0f5h,054h	; 82f0  D5TDTC.T
	defb 055h,044h,03fh,055h,0ffh,054h,04fh,0f5h	; 82f8  UD?U.TO.
	defb 04fh,0f5h,044h,0ffh,044h,04fh,054h,04fh	; 8300  O.D.DOTO
	defb 055h,044h,0f5h,04fh,0f5h,055h,04fh,054h	; 8308  UD.O.UOT
	defb 044h,05fh,0f4h,045h,044h,05fh,044h,0ffh	; 8310  D_.ED_D.
	defb 045h,0ffh,044h,0f5h,025h,0f4h,04fh,0f5h	; 8318  E.D.%.O.
	defb 05fh,0f4h,0ffh,0f3h,04fh,04fh,0ffh,033h	; 8320  _...OO.3
	defb 05fh,04fh,0f3h,044h,0ffh,0ffh,034h,044h	; 8328  _O.D..4D
	defb 0ffh,03fh,025h,044h,05fh,055h,0ffh,055h	; 8330  .?%D_U.U
	defb 055h,0f5h,05fh,025h,0ffh,0ffh,04fh,055h	; 8338  U._%..OU
	defb 034h,0ffh,04fh,045h,033h,034h,0ffh,045h	; 8340  4.OE34.E
	defb 043h,033h,03fh,044h,044h,044h,033h,0f2h	; 8348  C3?DDD3.
	defb 03fh,0f5h,054h,0f4h,044h,05fh,055h,045h	; 8350  ?.T.D_UE
	defb 054h,045h,0ffh,045h,0f5h,045h,058h,0f5h	; 8358  TE.E.EX.
	defb 0f5h,054h,054h,0ffh,05fh,055h,044h,0ffh	; 8360  .TT._UD.
	defb 055h,0f5h,04fh,0f1h,025h,0ffh,0f4h,055h	; 8368  U.O.%..U
	defb 044h,0ffh,055h,044h,033h,04fh,0f5h,054h	; 8370  D.UD3O.T
	defb 043h,034h,0ffh,055h,053h,053h,04fh,0f5h	; 8378  C4.USSO.
	defb 055h,055h,044h,02fh,0ffh,025h,054h,0f2h	; 8380  UUD/.%T.
	defb 024h,0f2h,055h,042h,02fh,022h,0f5h,042h	; 8388  $.UB/".B
	defb 0f5h,05fh,044h,045h,055h,0f4h,034h,055h	; 8390  ._DEU.4U
	defb 05fh,043h,045h,05fh,0f4h,045h,05fh,0f5h	; 8398  _CE_.E_.
	defb 0f4h,0ffh,0f5h,05fh,03fh,0f4h,05fh,054h	; 83a0  ..._?._T
	defb 05fh,04fh,0f4h,0ffh,045h,0ffh,054h,04fh	; 83a8  _O..E.TO
	defb 055h,054h,043h,0ffh,0ffh,0f5h,044h,03fh	; 83b0  UTC...D?
	defb 044h,04fh,054h,04fh,055h,044h,0f5h,04fh	; 83b8  DOTOUD.O
	defb 0f5h,055h,04fh,054h,0ffh,0ffh,054h,0f4h	; 83c0  .UOT..T.
	defb 054h,04fh,0ffh,044h,0f4h,044h,0f5h,044h	; 83c8  TO.D.D.D
	defb 0ffh,0f4h,045h,0f4h,05fh,044h,05fh,0ffh	; 83d0  ..E._D_.
	defb 0f5h,045h,043h,04fh,0f4h,0ffh,03fh,0ffh	; 83d8  .ECO..?.
	defb 0ffh,04fh,0f5h,033h,0f4h,0ffh,033h,045h	; 83e0  .O.3..3E
	defb 05fh,0f4h,045h,0ffh,04fh,044h,05fh,0f4h	; 83e8  _.E.OD_.
	defb 04fh,0f4h,04fh,045h,0f4h,0ffh,04fh,0ffh	; 83f0  O.OE..O.
	defb 0ffh,0f5h,0ffh,0f5h,0ffh,0f5h,05fh,0f5h	; 83f8  ......_.
	defb 044h,0ffh,05fh,055h,055h,0ffh,0ffh,0f4h	; 8400  D._UU...
	defb 0ffh,033h,034h,0ffh,033h,04fh,0ffh,055h	; 8408  .34.3O.U
	defb 02fh,045h,0ffh,044h,0f5h,045h,0f4h,04fh	; 8410  /E.D.E.O
	defb 05fh,0ffh,044h,0ffh,0ffh,0f4h,04fh,0f3h	; 8418  _.D...O.
	defb 0ffh,044h,0ffh,034h,0f4h,0ffh,0f4h,044h	; 8420  .D.4...D
	defb 05fh,0ffh,044h,055h,03fh,0f4h,045h,0ffh	; 8428  _.DU?.E.
	defb 04fh,0ffh,04fh,0f5h,0ffh,034h,045h,0f4h	; 8430  O.O..4E.
	defb 033h,044h,05fh,044h,044h,044h,055h,044h	; 8438  3D_DDDUD
	defb 044h,055h,0ffh,04fh,055h,0ffh,055h,0f5h	; 8440  DU.OU.U.
	defb 05fh,0ffh,05fh,055h,0ffh,05fh,05fh,055h	; 8448  _._U.__U
	defb 022h,022h,022h,022h,022h,022h,022h,022h	; 8450  """"""""
	defb 022h,022h,022h,022h,022h,022h,021h,011h	; 8458  """"""!.
	defb 022h,022h,011h,0f5h,022h,011h,04fh,044h	; 8460  ""..".OD
	defb 021h,014h,0f4h,045h,022h,04fh,044h,05fh	; 8468  !..E"OD_
	defb 022h,022h,022h,022h,022h,022h,022h,015h	; 8470  """"""".
	defb 022h,022h,021h,05fh,021h,01fh,0f5h,0ffh	; 8478  ""!_!...
	defb 011h,054h,05fh,044h,055h,0ffh,043h,033h	; 8480  .T_DU.C3
	defb 044h,023h,035h,052h,024h,034h,054h,054h	; 8488  D#5R$4TT
	defb 022h,022h,022h,022h,021h,022h,021h,012h	; 8490  """"!"!.
	defb 055h,012h,011h,055h,0f5h,051h,055h,0ffh	; 8498  U..U.QU.
	defb 033h,044h,04fh,0ffh,055h,0ffh,05fh,04fh	; 84a0  3DO.U._O
	defb 044h,04fh,0f5h,033h,034h,0f3h,034h,044h	; 84a8  DO.34.4D
	defb 022h,022h,022h,022h,022h,022h,021h,012h	; 84b0  """"""!.
	defb 022h,055h,044h,055h,035h,043h,035h,035h	; 84b8  "UDU5C55
	defb 0f5h,05fh,054h,054h,0ffh,0f4h,0f5h,055h	; 84c0  ._TT...U
	defb 044h,0ffh,0ffh,0f5h,054h,033h,0f4h,05fh	; 84c8  D...T3._
	defb 0f4h,054h,04fh,043h,03fh,0f5h,043h,0f4h	; 84d0  .TOC?.C.
	defb 043h,0ffh,044h,04fh,055h,03fh,0f4h,034h	; 84d8  C.DOU?.4
	defb 0f5h,043h,0f5h,043h,09fh,0f4h,03fh,054h	; 84e0  .C.C..?T
	defb 0f4h,04fh,034h,054h,054h,034h,0f4h,045h	; 84e8  .O4TT4.E
	defb 044h,043h,04fh,04fh,044h,055h,034h,0f5h	; 84f0  DCOODU4.
	defb 045h,0f5h,055h,0f5h,0f5h,055h,0f4h,0ffh	; 84f8  E.U..U..
	defb 05fh,0f5h,044h,045h,0f5h,043h,034h,044h	; 8500  _.DE.C4D
	defb 043h,034h,045h,05fh,034h,045h,0ffh,0f5h	; 8508  C4E_4E..
	defb 05fh,05fh,05fh,044h,0f5h,05fh,054h,033h	; 8510  ___D._T3
	defb 055h,0f5h,033h,034h,0ffh,043h,034h,045h	; 8518  U.34.C4E
	defb 0f5h,033h,044h,05fh,0f4h,044h,045h,0f5h	; 8520  .3D_.DE.
	defb 044h,055h,05fh,0ffh,045h,05fh,0ffh,0ffh	; 8528  DU_.E_..
	defb 0ffh,055h,044h,03fh,04fh,0ffh,054h,043h	; 8530  .UD?O.TC
	defb 054h,04fh,0f5h,043h,0ffh,054h,0ffh,054h	; 8538  TO.C.T.T
	defb 05fh,0f5h,04fh,0f5h,055h,0ffh,0ffh,0f5h	; 8540  _.O.U...
	defb 0ffh,054h,04fh,0f5h,0ffh,0f5h,044h,04fh	; 8548  .TO...DO
	defb 055h,044h,054h,012h,05fh,044h,054h,042h	; 8550  UDT._DTB
	defb 05fh,0f1h,054h,044h,0f5h,05fh,0f1h,0f4h	; 8558  _.TD._..
	defb 055h,065h,0ffh,0f4h,066h,099h,05fh,0ffh	; 8560  Ue..f._.
	defb 096h,095h,05fh,02fh,0f9h,055h,0f2h,02fh	; 8568  .._/.U./
	defb 044h,0f5h,011h,012h,0f5h,0f2h,044h,022h	; 8570  D.....D"
	defb 0f5h,05fh,021h,042h,04fh,02fh,055h,042h	; 8578  ._!BO/UB
	defb 034h,0f5h,015h,011h,044h,055h,011h,012h	; 8580  4...DU..
	defb 054h,045h,0f1h,012h,0f5h,044h,05fh,022h	; 8588  TE...D_"
	defb 045h,054h,055h,052h,0f4h,055h,045h,0f1h	; 8590  ETUR.UE.
	defb 05fh,04fh,054h,051h,045h,045h,0f5h,042h	; 8598  _OTQEE.B
	defb 045h,054h,014h,042h,044h,055h,01fh,042h	; 85a0  ET.BDU.B
	defb 054h,045h,041h,041h,055h,045h,04fh,011h	; 85a8  TEAAUEO.
	defb 055h,054h,054h,011h,05fh,054h,054h,0f1h	; 85b0  UTT._TT.
	defb 05fh,0f1h,054h,0f8h,0f5h,05fh,0f1h,0f8h	; 85b8  _.T.._..
	defb 055h,065h,0ffh,0f1h,066h,099h,05fh,0f1h	; 85c0  Ue..f._.
	defb 096h,095h,05fh,081h,0f9h,055h,0f2h,081h	; 85c8  .._..U..
	defb 0ffh,055h,0ffh,012h,04fh,0f5h,0f8h,012h	; 85d0  .U..O...
	defb 044h,0f5h,0f1h,022h,054h,0ffh,081h,021h	; 85d8  D.."T..!
	defb 054h,0ffh,011h,021h,0f4h,04fh,011h,012h	; 85e0  T..!.O..
	defb 02fh,04fh,012h,021h,0ffh,0f1h,011h,022h	; 85e8  /O.!..."
	defb 0f8h,012h,022h,022h,0f1h,011h,022h,022h	; 85f0  ..""..""
	defb 041h,012h,022h,022h,051h,022h,022h,022h	; 85f8  A.""Q"""
	defb 058h,012h,022h,022h,081h,011h,022h,022h	; 8600  X.""..""
	defb 011h,012h,022h,022h,011h,011h,022h,022h	; 8608  ..""..""
	defb 0f1h,082h,012h,022h,04fh,018h,012h,022h	; 8610  ..."O.."
	defb 044h,0f1h,011h,012h,044h,04fh,011h,022h	; 8618  D...DO."
	defb 055h,044h,0f1h,012h,095h,054h,04fh,021h	; 8620  UD...TO!
	defb 099h,055h,044h,0f2h,0ffh,095h,054h,0f4h	; 8628  .UD...T.
	defb 055h,0ffh,0f5h,04fh,044h,05fh,0f1h,0f1h	; 8630  U..OD_..
	defb 034h,044h,0f5h,012h,055h,033h,045h,011h	; 8638  4D..U3E.
	defb 055h,053h,034h,0f1h,0f5h,055h,034h,0f1h	; 8640  US4..U4.
	defb 05fh,0f5h,043h,04fh,034h,05fh,053h,04fh	; 8648  _.CO4_SO
	defb 043h,045h,0f4h,04fh,054h,034h,0f4h,05fh	; 8650  CE.OT4._
	defb 0ffh,043h,0f4h,0f4h,05fh,0f4h,05fh,0f2h	; 8658  .C.._._.
	defb 095h,0f5h,04fh,011h,0f9h,05fh,04fh,042h	; 8660  ..O.._OB
	defb 0ffh,055h,0f8h,011h,09fh,0f8h,041h,022h	; 8668  .U....A"
	defb 021h,011h,05fh,044h,0f2h,044h,02fh,05fh	; 8670  !._D.D/_
	defb 024h,012h,0f5h,05fh,024h,055h,0f2h,0f4h	; 8678  $.._$U..
	defb 011h,051h,05fh,043h,021h,011h,055h,044h	; 8680  .Q_C!.UD
	defb 0f1h,01fh,054h,045h,022h,0f5h,044h,05fh	; 8688  ..TE".D_
	defb 025h,055h,045h,054h,01fh,054h,055h,04fh	; 8690  %UET.TUO
	defb 015h,045h,0f4h,0f5h,024h,05fh,054h,054h	; 8698  .E..$_TT
	defb 024h,041h,045h,054h,0f4h,0f1h,055h,044h	; 86a0  $AET..UD
	defb 014h,014h,054h,045h,0f1h,0f4h,054h,055h	; 86a8  ..TE..TU
	defb 018h,045h,044h,055h,01fh,045h,044h,0f5h	; 86b0  .EDU.ED.
	defb 08fh,045h,01fh,0f5h,08fh,01fh,0f5h,05fh	; 86b8  .E....._
	defb 01fh,0ffh,056h,055h,0ffh,0f5h,099h,066h	; 86c0  ..VU...f
	defb 018h,0f5h,059h,069h,018h,02fh,055h,09fh	; 86c8  ..Yi./U.
	defb 021h,0ffh,055h,0ffh,0f1h,08fh,05fh,0f4h	; 86d0  !.U..._.
	defb 0f2h,08fh,05fh,044h,01fh,018h,0ffh,045h	; 86d8  .._D...E
	defb 0f2h,018h,0ffh,045h,021h,0f8h,0f4h,04fh	; 86e0  ...E!..O
	defb 01fh,021h,0f4h,0f2h,0f2h,0f1h,08fh,0ffh	; 86e8  .!......
	defb 022h,0f2h,0f1h,0f4h,0ffh,02fh,0ffh,014h	; 86f0  "..../..
	defb 0f2h,0f2h,0f1h,0f4h,0ffh,02fh,0ffh,014h	; 86f8  ...../..
	defb 02fh,0ffh,0ffh,0f1h,0f2h,0f2h,0f2h,0f1h	; 8700  /.......
	defb 0ffh,02fh,0ffh,018h,0ffh,0ffh,0f1h,018h	; 8708  ./......
	defb 0ffh,021h,028h,0ffh,02fh,0f1h,08fh,044h	; 8710  .!(./..D
	defb 0f1h,011h,0f4h,044h,022h,08fh,044h,045h	; 8718  ...D".DE
	defb 021h,0f4h,044h,055h,012h,044h,045h,054h	; 8720  !.DU.DET
	defb 02fh,044h,055h,05fh,04fh,045h,055h,0ffh	; 8728  /DU_OEU.
	defb 084h,05fh,0ffh,055h,01fh,01fh,0f5h,044h	; 8730  ._.U...D
	defb 028h,05fh,044h,043h,018h,054h,033h,055h	; 8738  (_DC.T3U
	defb 018h,043h,035h,055h,01fh,043h,055h,05fh	; 8740  .C5U.CU_
	defb 084h,034h,05fh,0f5h,084h,035h,0f5h,043h	; 8748  .4_..5.C
	defb 0f4h,04fh,054h,034h,0f5h,04fh,043h,045h	; 8750  .OT4.OCE
	defb 048h,04fh,034h,0ffh,02fh,085h,04fh,0f5h	; 8758  HO4./.O.
	defb 0f1h,0f4h,05fh,059h,024h,0f4h,0f5h,09fh	; 8760  .._Y$...
	defb 0f1h,08fh,055h,0ffh,02fh,014h,08fh,0f9h	; 8768  ..U./...
	defb 01fh,055h,0ffh,054h,055h,011h,0f4h,044h	; 8770  .U.TU..D
	defb 055h,051h,044h,045h,045h,055h,045h,055h	; 8778  UQDEEUEU
	defb 055h,044h,055h,05fh,0ffh,045h,05fh,0f5h	; 8780  UDU_.E_.
	defb 015h,045h,0f4h,04fh,054h,025h,0ffh,054h	; 8788  .E.OT%.T

; ----------------------------------------------------------------------
; DATOS dibujos_8790: 19 dibujos de 8x8 a 4 bits (32 bytes cada uno) que la
;   lista de 0x6074 sube a la hoja desde el 80; lo leen p00:54CC (lista
;   0x6074) (608 bytes)
;   0x8790..0x89f0  (608 bytes)
DATA_dibujos_8790:
	defb 054h,055h,045h,044h,054h,05fh,044h,045h	; 8790  TUEDT_DE
	defb 045h,0ffh,044h,055h,05fh,0f5h,045h,044h	; 8798  E.DU_.ED
	defb 044h,054h,055h,05fh,054h,054h,045h,04fh	; 87a0  DTU_TTEO
	defb 055h,055h,045h,054h,0f5h,0f4h,055h,0f5h	; 87a8  UUET..U.
	defb 022h,0f5h,054h,055h,0f5h,044h,05fh,0ffh	; 87b0  ".TU.D_.
	defb 054h,055h,05fh,05fh,024h,0ffh,0f2h,0f4h	; 87b8  TU__$...
	defb 05fh,0f5h,05fh,033h,0f5h,0ffh,043h,054h	; 87c0  _._3..CT
	defb 05fh,0f4h,045h,055h,052h,044h,045h,05fh	; 87c8  _.EURDE_
	defb 0f5h,045h,045h,0ffh,0f5h,044h,0f5h,0f5h	; 87d0  .EE..D..
	defb 0f4h,025h,02fh,0f5h,0f4h,024h,04fh,054h	; 87d8  .%/..$OT
	defb 022h,041h,025h,044h,02fh,011h,055h,044h	; 87e0  "A%D/.UD
	defb 0f4h,014h,054h,045h,021h,0f4h,014h,055h	; 87e8  ..TE!..U
	defb 0f4h,09fh,0ffh,0f3h,0ffh,0ffh,0ffh,034h	; 87f0  .......4
	defb 0f4h,05fh,0f4h,055h,054h,05fh,0f4h,054h	; 87f8  ._.UT_.T
	defb 055h,0ffh,045h,04fh,055h,0ffh,045h,0ffh	; 8800  U.EOU.E.
	defb 0f5h,0f4h,05fh,0f5h,0ffh,0f4h,05fh,0ffh	; 8808  .._..._.
	defb 033h,044h,0f5h,0f4h,05fh,05fh,05fh,05fh	; 8810  3D..____
	defb 0f5h,04fh,055h,0ffh,0f5h,099h,0f5h,04fh	; 8818  .OU....O
	defb 054h,069h,0f4h,05fh,045h,09fh,045h,0f9h	; 8820  Ti._E.E.
	defb 0f9h,05fh,05fh,0f5h,05fh,0f5h,0ffh,0ffh	; 8828  .__._...
	defb 045h,05fh,035h,054h,053h,055h,0ffh,0ffh	; 8830  E_5TSU..
	defb 0f5h,043h,05fh,055h,0ffh,0f5h,035h,0f5h	; 8838  .C_U..5.
	defb 095h,0ffh,053h,05fh,069h,055h,0f5h,045h	; 8840  ..S_iU.E
	defb 096h,09fh,0ffh,03fh,055h,0f5h,05fh,0f5h	; 8848  ...?U._.
	defb 043h,045h,0f4h,04fh,054h,034h,0f4h,05fh	; 8850  CE.OT4._
	defb 0ffh,043h,0f4h,0f4h,05fh,0f4h,05fh,0f2h	; 8858  .C.._._.
	defb 095h,0f5h,04fh,011h,0f9h,05fh,04fh,042h	; 8860  ..O.._OB
	defb 055h,055h,0f8h,01fh,095h,0f8h,041h,0ffh	; 8868  UU....A.
	defb 0f4h,09fh,0ffh,0f3h,0ffh,0ffh,0ffh,034h	; 8870  .......4
	defb 0f4h,05fh,0f4h,055h,054h,05fh,0f4h,054h	; 8878  ._.UT_.T
	defb 055h,0ffh,045h,04fh,055h,0ffh,045h,09fh	; 8880  U.EOU.E.
	defb 0f5h,0f4h,055h,0f5h,0ffh,0f4h,055h,02fh	; 8888  ..U...U/
	defb 033h,044h,0f5h,0f4h,05fh,05fh,05fh,05fh	; 8890  3D..____
	defb 0f5h,04fh,055h,0ffh,0f5h,099h,0f5h,04fh	; 8898  .OU....O
	defb 054h,069h,0f4h,04fh,045h,09fh,044h,0f9h	; 88a0  Ti.OE.D.
	defb 0f9h,05fh,04fh,059h,05fh,0f4h,055h,099h	; 88a8  ._OY_.U.
	defb 045h,05fh,035h,054h,053h,055h,0ffh,0ffh	; 88b0  E_5TSU..
	defb 0f5h,043h,05fh,055h,0ffh,0f5h,035h,0f5h	; 88b8  .C_U..5.
	defb 095h,0ffh,053h,05fh,069h,055h,0f5h,045h	; 88c0  ..S_iU.E
	defb 096h,099h,05fh,03fh,099h,099h,095h,0f5h	; 88c8  .._?....
	defb 022h,022h,022h,022h,022h,022h,022h,022h	; 88d0  """"""""
	defb 022h,021h,055h,02fh,021h,053h,034h,053h	; 88d8  "!U/!S4S
	defb 015h,045h,0f5h,05fh,055h,05fh,04fh,0ffh	; 88e0  .E._U_O.
	defb 05fh,0ffh,0ffh,044h,0f5h,04fh,033h,045h	; 88e8  _..D.O3E
	defb 022h,022h,022h,022h,022h,022h,022h,022h	; 88f0  """"""""
	defb 022h,022h,022h,022h,022h,022h,022h,022h	; 88f8  """"""""
	defb 021h,022h,012h,022h,021h,051h,011h,022h	; 8900  !"."!Q."
	defb 055h,015h,055h,052h,055h,053h,0ffh,045h	; 8908  U.URUS.E
	defb 022h,0f2h,0f2h,0f2h,021h,01fh,02fh,012h	; 8910  "...!./.
	defb 055h,011h,0f1h,055h,0ffh,055h,015h,05fh	; 8918  U..U.U._
	defb 0ffh,0f4h,044h,033h,0f4h,0f5h,0ffh,055h	; 8920  ..D3...U
	defb 033h,05fh,0f4h,044h,044h,043h,03fh,043h	; 8928  3_.DDC?C
	defb 0f1h,012h,022h,022h,0ffh,033h,035h,0f2h	; 8930  .."".35.
	defb 055h,044h,043h,03fh,054h,045h,044h,033h	; 8938  UDC?TED3
	defb 045h,055h,0f5h,044h,035h,0f4h,0ffh,055h	; 8940  EU.D5..U
	defb 033h,05fh,0ffh,05fh,044h,035h,05fh,054h	; 8948  3_._D5_T
	defb 045h,054h,055h,052h,0f4h,055h,045h,0f1h	; 8950  ETUR.UE.
	defb 05fh,04fh,054h,051h,045h,045h,0f5h,042h	; 8958  _OTQEE.B
	defb 045h,054h,01fh,042h,044h,055h,011h,022h	; 8960  ET.BDU."
	defb 054h,045h,041h,012h,055h,045h,04fh,011h	; 8968  TEA.UEO.
	defb 0ffh,055h,0f3h,055h,03fh,03fh,0f3h,05fh	; 8970  .U.U??._
	defb 054h,054h,055h,0ffh,033h,053h,034h,053h	; 8978  TTU.3S4S
	defb 045h,045h,0f5h,05fh,055h,05fh,04fh,0f3h	; 8980  EE._U_O.
	defb 05fh,0ffh,0f3h,033h,0f5h,04fh,033h,044h	; 8988  _..3.O3D
	defb 0ffh,01fh,054h,055h,0f2h,044h,025h,05fh	; 8990  ..TU.D%_
	defb 024h,012h,055h,05fh,024h,055h,0f2h,0f4h	; 8998  $.U_$U..
	defb 011h,051h,05fh,033h,0f1h,011h,0f3h,054h	; 89a0  .Q_3...T
	defb 021h,01fh,045h,055h,0f2h,0f4h,045h,05fh	; 89a8  !.EU..E_
	defb 04fh,033h,044h,045h,053h,034h,045h,055h	; 89b0  O3DES4EU
	defb 034h,045h,055h,0ffh,044h,055h,05fh,0f4h	; 89b8  4EU.DU_.
	defb 045h,05fh,0ffh,0f4h,044h,05fh,04fh,05fh	; 89c0  E_..D_O_
	defb 05fh,04fh,04fh,0f4h,04fh,04fh,0ffh,0f2h	; 89c8  _OO.OO..
	defb 025h,044h,045h,0ffh,014h,044h,0f5h,0f5h	; 89d0  %DE..D..
	defb 014h,045h,02fh,0f5h,0f4h,024h,04fh,054h	; 89d8  .E/..$OT
	defb 024h,041h,0f5h,044h,02fh,011h,0f4h,044h	; 89e0  $A.D/..D
	defb 0f4h,01fh,054h,045h,021h,0f4h,044h,055h	; 89e8  ..TE!.DU

; ----------------------------------------------------------------------
; DATOS dibujos_89F0: 2 dibujos de 8x8 a 4 bits (32 bytes cada uno) que la
;   lista de 0x6074 sube a la hoja desde el 93; lo leen p00:54CC (lista
;   0x6074) (64 bytes)
;   0x89f0..0x8a30  (64 bytes)
DATA_dibujos_89F0:
	defb 054h,044h,0ffh,055h,043h,03fh,032h,0ffh	; 89f0  TD.UC?2.
	defb 055h,0f2h,022h,0f5h,05fh,0f2h,0ffh,05fh	; 89f8  U."._.._
	defb 054h,044h,0f5h,0ffh,045h,0ffh,0f5h,024h	; 8a00  TD..E..$
	defb 05fh,0f5h,022h,053h,05fh,0ffh,044h,055h	; 8a08  _."S_.DU
	defb 054h,043h,055h,0f2h,043h,035h,0ffh,025h	; 8a10  TCU.C5.%
	defb 034h,05fh,0f5h,0f5h,044h,05fh,05fh,045h	; 8a18  4_..D__E
	defb 035h,0f5h,01fh,04fh,015h,0ffh,014h,045h	; 8a20  5..O...E
	defb 05fh,014h,0f4h,0ffh,051h,045h,04fh,0f5h	; 8a28  _...QEO.

; ----------------------------------------------------------------------
; DATOS dibujos_8A30: 4 dibujos de 8x8 a 4 bits (32 bytes cada uno) que la
;   lista de 0x6074 sube a la hoja desde el F0; lo leen p00:54CC (lista
;   0x6074) (128 bytes)
;   0x8a30..0x8ab0  (128 bytes)
DATA_dibujos_8A30:
	defb 0f8h,088h,08ch,0cfh,04fh,088h,08ch,0cfh	; 8a30  ....O...
	defb 044h,0f8h,08ch,0cfh,044h,04fh,08ch,0cfh	; 8a38  D...DO..
	defb 055h,044h,0fch,0cfh,095h,054h,04fh,0cfh	; 8a40  UD...TO.
	defb 099h,055h,044h,0ffh,0ffh,095h,054h,0f2h	; 8a48  .UD...T.
	defb 0f8h,088h,088h,0ffh,0f8h,088h,08fh,044h	; 8a50  .......D
	defb 0f8h,088h,0f4h,044h,0f8h,08fh,044h,045h	; 8a58  ...D..DE
	defb 0f8h,0f4h,044h,055h,0f8h,044h,045h,054h	; 8a60  ..DU.DET
	defb 0ffh,044h,055h,05fh,0ffh,045h,055h,0ffh	; 8a68  .DU_.EU.
	defb 04fh,0ffh,0ffh,0ffh,04fh,0ffh,0ffh,0ffh	; 8a70  O...O...
	defb 04fh,034h,045h,0ffh,0f4h,034h,05fh,0ffh	; 8a78  O4E..4_.
	defb 0f4h,045h,0ffh,0f5h,0f4h,05fh,0ffh,045h	; 8a80  .E..._.E
	defb 0ffh,0f5h,0f4h,045h,0f5h,0ffh,044h,044h	; 8a88  ...E..DD
	defb 0ffh,0ffh,0ffh,0f5h,0ffh,0ffh,0ffh,044h	; 8a90  .......D
	defb 0ffh,05fh,044h,044h,055h,05fh,044h,054h	; 8a98  ._DDU_DT
	defb 034h,04fh,0f4h,05fh,044h,043h,0ffh,045h	; 8aa0  4O._DC.E
	defb 045h,044h,04fh,0f4h,045h,055h,054h,0ffh	; 8aa8  EDO.EUT.

; ----------------------------------------------------------------------
; DATOS dibujos_8AB0: 31 dibujos de 8x8 a 3 bits al reves (24 bytes cada uno)
;   que la lista de 0x60CA sube a la hoja desde el 30; se solapan 2 bloques
;   (0x8AB0-0x8D98, 0x8AB0-0x8E88); lo leen p00:54CC (lista 0x60CA) (984
;   bytes)
;   0x8ab0..0x8e88  (984 bytes)
DATA_dibujos_8AB0:
	defb 0f3h,09ch,080h,0ffh,0beh,09eh,0b3h,0ffh	; 8ab0  ........
	defb 0a1h,0e5h,0fbh,0c0h,0ebh,0f7h,0c1h,0f2h	; 8ab8  ........
	defb 0feh,0c2h,0efh,0fch,0c4h,0ffh,0f8h,0c8h	; 8ac0  ........
	defb 0c7h,0bfh,003h,05eh,0fch,04ch,0fch,0f0h	; 8ac8  ...^.L..
	defb 030h,0e0h,0c0h,040h,0c0h,000h,000h,000h	; 8ad0  0..@....
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; 8ad8  ........
	defb 0fah,0fdh,0f0h,01dh,00eh,00ch,007h,003h	; 8ae0  ........
	defb 003h,001h,000h,000h,000h,000h,000h,000h	; 8ae8  ........
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; 8af0  ........
	defb 050h,0bfh,000h,078h,0bfh,000h,0feh,0ffh	; 8af8  P..x....
	defb 080h,0feh,07bh,068h,03dh,01fh,018h,00fh	; 8b00  ..{h=...
	defb 007h,004h,007h,003h,003h,023h,001h,001h	; 8b08  .....#..
	defb 0fbh,0fch,0d0h,0e8h,0ffh,0e0h,0feh,0ffh	; 8b10  ........
	defb 0e0h,0fdh,0ffh,0e0h,0feh,0ffh,0f0h,0ffh	; 8b18  ........
	defb 0ffh,058h,0ffh,0ffh,0ceh,0e3h,0fdh,081h	; 8b20  .X......
	defb 000h,000h,000h,0c0h,000h,000h,038h,0c0h	; 8b28  ......8.
	defb 000h,087h,0f8h,000h,030h,0ffh,000h,067h	; 8b30  ....0..g
	defb 0ffh,000h,0beh,0ffh,000h,0fdh,0ffh,0c0h	; 8b38  ........
	defb 000h,000h,000h,000h,000h,000h,080h,000h	; 8b40  ........
	defb 000h,000h,000h,000h,0f0h,000h,000h,00eh	; 8b48  ........
	defb 0f0h,000h,0e1h,0feh,000h,02ch,0ffh,000h	; 8b50  .....,..
	defb 007h,001h,001h,003h,001h,001h,001h,003h	; 8b58  ........
	defb 001h,007h,003h,001h,00bh,007h,001h,017h	; 8b60  ........
	defb 00fh,001h,0cfh,03fh,001h,03fh,0ffh,002h	; 8b68  ...?.?..
	defb 0efh,0ffh,087h,0deh,0f8h,098h,0e8h,0f0h	; 8b70  ........
	defb 0a0h,0f0h,0e0h,0c0h,0e0h,0c0h,0c0h,0c0h	; 8b78  ........
	defb 080h,080h,0c0h,080h,080h,0c1h,080h,080h	; 8b80  ........
	defb 0ffh,0ffh,0f8h,07fh,01fh,01fh,007h,001h	; 8b88  ........
	defb 001h,000h,000h,000h,020h,000h,000h,000h	; 8b90  .... ...
	defb 000h,000h,000h,000h,000h,001h,000h,000h	; 8b98  ........
	defb 0f3h,0ffh,003h,0fdh,0feh,004h,0fah,0fch	; 8ba0  ........
	defb 0f8h,0fah,03ch,030h,014h,038h,010h,0b4h	; 8ba8  ..<0.8..
	defb 078h,020h,0f0h,078h,020h,0f8h,0f0h,060h	; 8bb0  x .x ..`
	defb 0ffh,0ffh,0e1h,05fh,03fh,01bh,016h,00fh	; 8bb8  ..._?...
	defb 006h,00eh,007h,002h,007h,003h,003h,001h	; 8bc0  ........
	defb 003h,001h,013h,001h,001h,003h,001h,000h	; 8bc8  ........
	defb 0a0h,0c0h,080h,0d0h,0e0h,080h,0a8h,0f0h	; 8bd0  ........
	defb 080h,090h,0f8h,080h,0d4h,0f8h,080h,0cbh	; 8bd8  ........
	defb 0feh,080h,0ebh,0feh,080h,0f3h,0fch,080h	; 8be0  ........
	defb 023h,001h,000h,006h,003h,000h,00fh,007h	; 8be8  #.......
	defb 000h,00fh,007h,005h,017h,00fh,005h,02fh	; 8bf0  ......./
	defb 01fh,007h,0f7h,01fh,005h,05fh,0bfh,003h	; 8bf8  ....._..
	defb 076h,0f8h,040h,0efh,0fch,0c0h,0e5h,0feh	; 8c00  v.@.....
	defb 0c0h,0f5h,0ffh,080h,0d9h,0ffh,080h,0e5h	; 8c08  ........
	defb 0fbh,080h,0fbh,0fch,0e0h,0feh,0feh,058h	; 8c10  .......X
	defb 001h,001h,001h,084h,001h,000h,022h,001h	; 8c18  ......".
	defb 000h,0cah,001h,000h,023h,0c0h,000h,073h	; 8c20  ....#..s
	defb 0c0h,000h,0c5h,072h,000h,057h,021h,000h	; 8c28  ...r.W!.
	defb 0f2h,0fdh,0c0h,0f3h,0ffh,0c3h,0ffh,0ffh	; 8c30  ........
	defb 0a4h,0fdh,0deh,098h,0bah,0fch,098h,0dah	; 8c38  ........
	defb 0fch,090h,0f7h,0f8h,0a0h,0f3h,0fch,0a0h	; 8c40  ........
	defb 07fh,0bfh,03fh,0fch,0c0h,0c0h,0c0h,000h	; 8c48  ..?.....
	defb 000h,020h,000h,000h,020h,000h,000h,058h	; 8c50  . .. ..X
	defb 000h,000h,034h,000h,000h,07bh,080h,000h	; 8c58  ..4..{..
	defb 0ffh,0ffh,0feh,0f7h,00fh,006h,00dh,003h	; 8c60  ........
	defb 001h,002h,001h,000h,001h,000h,000h,000h	; 8c68  ........
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; 8c70  ........
	defb 03ch,003h,000h,00dh,0c3h,000h,0fah,095h	; 8c78  <.......
	defb 080h,055h,0feh,040h,0abh,07ch,020h,05ah	; 8c80  .U.@.| Z
	defb 03dh,010h,02ah,01dh,008h,014h,00fh,004h	; 8c88  =.*.....
	defb 0f8h,0ffh,0a0h,0fch,0ffh,0f0h,0ffh,0ffh	; 8c90  ........
	defb 0bch,0ffh,0ffh,08ah,0fbh,0ffh,071h,0f7h	; 8c98  ......q.
	defb 0fbh,020h,0e4h,0fbh,040h,0e7h,0f8h,040h	; 8ca0  . ..@..@
	defb 09fh,060h,000h,04bh,0f4h,000h,060h,0ffh	; 8ca8  .`.K..`.
	defb 000h,088h,0ffh,000h,0e7h,0ffh,000h,0fdh	; 8cb0  ........
	defb 0ffh,0c0h,0ffh,0ffh,030h,03fh,0ffh,01ch	; 8cb8  ....0?..
	defb 000h,000h,000h,0e0h,000h,000h,0f0h,000h	; 8cc0  ........
	defb 000h,018h,0e0h,000h,036h,0c8h,000h,08bh	; 8cc8  ....6...
	defb 0f4h,000h,081h,0feh,000h,0c0h,0ffh,000h	; 8cd0  ........
	defb 00bh,007h,003h,001h,007h,001h,005h,003h	; 8cd8  ........
	defb 001h,00dh,003h,001h,09bh,005h,001h,0f5h	; 8ce0  ........
	defb 00bh,001h,067h,09bh,001h,0d5h,02fh,001h	; 8ce8  ..g.../.
	defb 0cfh,0f7h,087h,0fch,0f8h,0d8h,0f0h,0e0h	; 8cf0  ........
	defb 0a0h,0f0h,0e0h,0a0h,0f8h,0f0h,0a0h,0ech	; 8cf8  ........
	defb 0f8h,0e0h,0efh,0fch,0c0h,0eeh,0f4h,0c0h	; 8d00  ........
	defb 0cfh,0bfh,087h,0f3h,07fh,071h,01fh,00fh	; 8d08  .....q..
	defb 00fh,00dh,006h,004h,066h,00ah,002h,0efh	; 8d10  ....f...
	defb 016h,002h,0d7h,02ah,002h,01fh,023h,001h	; 8d18  ...*..#.
	defb 0ffh,0ffh,007h,0fah,0fch,0f8h,0a0h,0c0h	; 8d20  ........
	defb 080h,000h,000h,000h,004h,000h,000h,000h	; 8d28  ........
	defb 000h,000h,000h,000h,000h,080h,000h,000h	; 8d30  ........
	defb 0fah,0e4h,0c0h,0ech,0f0h,0c0h,0f4h,0fah	; 8d38  ........
	defb 0c0h,0eah,0fch,0c0h,0c9h,0fch,040h,0d9h	; 8d40  ......@.
	defb 0fch,040h,0d9h,0feh,080h,0b9h,0dch,080h	; 8d48  .@......
	defb 0ffh,003h,001h,0fdh,00bh,001h,0f9h,007h	; 8d50  ........
	defb 001h,091h,06fh,001h,039h,0c7h,001h,0ffh	; 8d58  ..o.9...
	defb 04bh,049h,0fbh,00fh,009h,065h,09fh,001h	; 8d60  KI...e..
	defb 044h,080h,000h,020h,0c0h,000h,0d8h,0e0h	; 8d68  D.. ....
	defb 000h,074h,0e0h,000h,0ebh,070h,000h,0b4h	; 8d70  .t...p..
	defb 0f8h,080h,0feh,0b9h,080h,0d8h,0fdh,040h	; 8d78  .......@
	defb 004h,003h,000h,00ah,007h,000h,034h,00fh	; 8d80  ......4.
	defb 000h,0cbh,03ch,000h,023h,07eh,000h,057h	; 8d88  ..<.#~.W
	defb 0f8h,000h,0cfh,078h,000h,0e3h,03ch,000h	; 8d90  ...x..<.
	defb 0fdh,0ffh,001h,0a6h,0ffh,006h,0dbh,0fch	; 8d98  ........
	defb 018h,0b8h,0f0h,020h,0f0h,0e0h,040h,0c0h	; 8da0  ... ..@.
	defb 0e0h,040h,0e0h,0c0h,0c0h,0c0h,080h,080h	; 8da8  .@......
	defb 080h,080h,080h,0a1h,080h,080h,0c4h,080h	; 8db0  ........
	defb 080h,0d3h,080h,080h,0c4h,083h,080h,08eh	; 8db8  ........
	defb 0c3h,080h,0a3h,0ceh,080h,0aah,0c4h,080h	; 8dc0  ........
	defb 0bch,0c0h,080h,0b0h,0c3h,080h,0dfh,0a8h	; 8dc8  ........
	defb 080h,0abh,0fdh,080h,0d7h,0bdh,080h,0d5h	; 8dd0  ........
	defb 0bfh,080h,0d3h,0bfh,081h,0bbh,0dfh,082h	; 8dd8  ........
	defb 0eeh,0ffh,064h,0dah,0bdh,008h,075h,0fah	; 8de0  ..d...u.
	defb 010h,0efh,0f0h,020h,0dch,0e0h,040h,0fah	; 8de8  ... ..@.
	defb 0c1h,080h,0e5h,083h,000h,0d3h,00fh,000h	; 8df0  ........
	defb 0fah,0fdh,060h,071h,0eeh,060h,07ah,0f5h	; 8df8  ..`q.`z.
	defb 020h,02eh,079h,020h,0eah,03dh,020h,028h	; 8e00   .y .= (
	defb 0ffh,020h,07ch,0ffh,050h,0feh,0fdh,048h	; 8e08  . |.P..H
	defb 04fh,0bfh,003h,04fh,0bfh,003h,01fh,0ffh	; 8e10  O..O....
	defb 005h,05fh,0fbh,009h,07dh,0f7h,011h,0dbh	; 8e18  ._..}...
	defb 0efh,001h,077h,0ffh,001h,067h,0ffh,005h	; 8e20  ..w..g..
	defb 0eah,0dfh,082h,0cbh,0ffh,042h,0c2h,0ffh	; 8e28  .....B..
	defb 042h,0f3h,0ffh,021h,067h,0ffh,021h,03fh	; 8e30  B..!g.!?
	defb 0ffh,019h,0ffh,0ffh,007h,0b3h,0ffh,000h	; 8e38  ........
	defb 0afh,01fh,000h,01fh,0feh,000h,0deh,0bdh	; 8e40  ........
	defb 000h,0afh,0ddh,000h,06dh,0dfh,000h,0e9h	; 8e48  ....m...
	defb 0ffh,081h,0feh,0ffh,0c6h,07fh,0ffh,07fh	; 8e50  ........
	defb 05eh,0edh,044h,0e8h,077h,020h,0efh,0f0h	; 8e58  ^.D.w ..
	defb 020h,0f4h,0fbh,020h,0feh,0f9h,028h,07ch	; 8e60   .. ..(|
	defb 0fbh,038h,0feh,0fdh,06ch,0efh,0ffh,087h	; 8e68  .8..l...
	defb 0a7h,0dfh,001h,0a7h,07fh,003h,06fh,0ffh	; 8e70  ......o.
	defb 005h,0efh,0ffh,001h,0ffh,0ffh,006h,07eh	; 8e78  .......~
	defb 0ffh,038h,0f8h,0ffh,0c0h,0b2h,0ffh,000h	; 8e80  .8......

; ----------------------------------------------------------------------
; DATOS dibujos_8E88: 10 dibujos de 8x8 a 3 bits al reves (24 bytes cada uno)
;   que la lista de 0x60CA sube a la hoja desde el 5C; se solapan 2 bloques
;   (0x8E88-0x8F78, 0x8E88-0x8FA8); lo leen p00:54CC (lista 0x60CA) (288
;   bytes)
;   0x8e88..0x8fa8  (288 bytes)
DATA_dibujos_8E88:
	defb 0e3h,0e3h,01fh,007h,007h,0fah,02fh,02fh	; 8e88  ......//
	defb 0d6h,09eh,09fh,064h,07dh,07eh,08ch,03dh	; 8e90  ...d}~.=
	defb 03eh,0d8h,07eh,07dh,090h,07dh,07bh,0b0h	; 8e98  >.~}.}{.
	defb 001h,001h,0ffh,083h,083h,07fh,04eh,04fh	; 8ea0  ......NO
	defb 0b2h,07fh,07fh,086h,06fh,06fh,094h,01eh	; 8ea8  ....oo..
	defb 01fh,0e4h,004h,007h,0fch,0eeh,0efh,014h	; 8eb0  ........
	defb 01eh,01fh,0e8h,0bdh,0bfh,048h,02fh,02fh	; 8eb8  .....H//
	defb 0d8h,04fh,04fh,0bch,077h,077h,08eh,00fh	; 8ec0  .OO.ww..
	defb 00fh,0f3h,045h,045h,0bah,003h,003h,0fch	; 8ec8  ..EE....
	defb 070h,07fh,0a0h,0fbh,0ffh,020h,0a6h,0bfh	; 8ed0  p.... ..
	defb 060h,039h,03fh,0e0h,03fh,03fh,0e0h,03bh	; 8ed8  `9?.??.;
	defb 03fh,0f0h,07fh,07fh,098h,08fh,08fh,07fh	; 8ee0  ?.......
	defb 05fh,05fh,0ach,03ch,03fh,0c8h,06dh,06fh	; 8ee8  __.<?.mo
	defb 098h,0dfh,0dfh,02ah,03eh,03fh,0c8h,07ch	; 8ef0  ...*>?.|
	defb 07fh,088h,0deh,0dfh,028h,00eh,00fh,0f8h	; 8ef8  ....(...
	defb 040h,040h,0bfh,0e0h,0e0h,01fh,094h,094h	; 8f00  @@......
	defb 06bh,0e2h,0e2h,01dh,044h,044h,0bbh,0ebh	; 8f08  k...DD..
	defb 0ebh,014h,0e2h,0e2h,09dh,0d9h,0d9h,0a6h	; 8f10  ........
	defb 0feh,0feh,099h,0fdh,0fdh,062h,0eeh,0eeh	; 8f18  .....b..
	defb 011h,070h,070h,08fh,010h,010h,0efh,030h	; 8f20  .pp....0
	defb 030h,0cfh,040h,040h,0bfh,000h,000h,0ffh	; 8f28  0.@@....
	defb 000h,000h,0ffh,040h,040h,0bfh,080h,080h	; 8f30  ...@@...
	defb 07fh,0d8h,0d8h,027h,066h,066h,099h,00fh	; 8f38  ...'ff..
	defb 00fh,0f0h,05eh,05eh,0a1h,012h,012h,0edh	; 8f40  ..^^....
	defb 000h,000h,0ffh,001h,001h,0feh,006h,006h	; 8f48  ........
	defb 0f9h,000h,000h,0ffh,000h,000h,0ffh,030h	; 8f50  .......0
	defb 030h,0cfh,040h,040h,0bfh,000h,000h,0ffh	; 8f58  0.@@....
	defb 040h,040h,0bfh,020h,020h,0dfh,000h,000h	; 8f60  @@.  ...
	defb 0ffh,000h,000h,0ffh,060h,060h,09fh,033h	; 8f68  ....``.3
	defb 033h,0cch,010h,010h,0efh,000h,000h,0ffh	; 8f70  3.......
	defb 000h,000h,0ffh,000h,000h,0ffh,000h,000h	; 8f78  ........
	defb 0ffh,020h,020h,0dfh,000h,000h,0ffh,000h	; 8f80  .  .....
	defb 000h,0ffh,000h,000h,0ffh,000h,000h,0ffh	; 8f88  ........
	defb 000h,000h,0ffh,000h,000h,0ffh,000h,000h	; 8f90  ........
	defb 0ffh,000h,000h,0ffh,000h,000h,0ffh,000h	; 8f98  ........
	defb 000h,0ffh,000h,000h,0ffh,000h,000h,0ffh	; 8fa0  ........

; ----------------------------------------------------------------------
; DATOS dibujos_8FA8: 32 dibujos de 8x8 a 3 bits (24 bytes cada uno) que la
;   lista de 0x60CA sube a la hoja desde el 66; lo leen p00:54CC (lista
;   0x60CA) (768 bytes)
;   0x8fa8..0x92a8  (768 bytes)
DATA_dibujos_8FA8:
	defb 0ffh,0ffh,0ffh,0f5h,0feh,0e0h,05fh,0ffh	; 8fa8  ......_.
	defb 000h,0f0h,00fh,000h,0ffh,000h,000h,0ffh	; 8fb0  ........
	defb 000h,000h,0ffh,000h,000h,0ffh,000h,000h	; 8fb8  ........
	defb 059h,0beh,010h,0dah,03dh,008h,09bh,07ch	; 8fc0  Y...=..|
	defb 008h,049h,0beh,008h,09dh,07eh,008h,0edh	; 8fc8  .I...~..
	defb 0feh,008h,0b6h,07fh,004h,0d7h,02bh,002h	; 8fd0  ......+.
	defb 0d0h,0ffh,0c0h,0edh,0ffh,0c1h,0cfh,0f7h	; 8fd8  ........
	defb 086h,0dfh,0efh,08ch,0fdh,0deh,090h,0fbh	; 8fe0  ........
	defb 0fch,0a0h,0f7h,0f8h,0e0h,0efh,0f0h,0c0h	; 8fe8  ........
	defb 0bfh,0c0h,000h,0a8h,077h,000h,0f7h,01fh	; 8ff0  ....w...
	defb 000h,0eah,017h,000h,0d4h,02bh,000h,003h	; 8ff8  .....+..
	defb 0ffh,000h,0dfh,0e0h,000h,0ffh,000h,000h	; 9000  ........
	defb 036h,0c9h,000h,003h,0fch,000h,096h,0e9h	; 9008  6.......
	defb 000h,048h,0f7h,000h,0a4h,0ffh,000h,0f6h	; 9010  .H......
	defb 0ffh,020h,0ffh,0ffh,0fch,087h,087h,0ffh	; 9018  . ......
	defb 01fh,0e0h,000h,00dh,0f2h,000h,0abh,07ch	; 9020  .......|
	defb 000h,0d9h,03eh,000h,06ah,09fh,000h,0fch	; 9028  ..>.j...
	defb 0ffh,080h,0ffh,0ffh,0fch,007h,007h,0feh	; 9030  ........
	defb 068h,0ffh,040h,0a3h,07dh,020h,0b4h,07fh	; 9038  h.@.} ..
	defb 010h,098h,07fh,018h,0ceh,03fh,00ch,06fh	; 9040  .....?.o
	defb 0bfh,00ch,057h,0bfh,006h,0b7h,07fh,007h	; 9048  ..W.....
	defb 02eh,0feh,003h,036h,0feh,003h,097h,07fh	; 9050  ...6....
	defb 001h,01fh,0ffh,001h,01fh,0ffh,009h,03fh	; 9058  .......?
	defb 0ffh,00ah,0beh,0feh,00fh,0feh,0feh,01dh	; 9060  ........
	defb 075h,07ah,0c0h,063h,07ch,0e0h,0e7h,0fch	; 9068  uz.c|...
	defb 040h,0d9h,0feh,0c0h,0f3h,0fch,080h,0f6h	; 9070  @.......
	defb 0fdh,090h,0eah,0fdh,080h,0edh,0feh,0c0h	; 9078  ........
	defb 0feh,009h,008h,0ffh,008h,008h,0fbh,00ch	; 9080  ........
	defb 008h,0f6h,00dh,004h,0fdh,007h,004h,0feh	; 9088  ........
	defb 007h,006h,0ffh,003h,003h,0feh,001h,000h	; 9090  ........
	defb 0c8h,037h,000h,0beh,041h,000h,07fh,0c0h	; 9098  .7..A...
	defb 000h,0bdh,0c2h,000h,050h,0afh,000h,0e7h	; 90a0  ....P...
	defb 098h,000h,0a7h,0d8h,000h,0f2h,0cdh,080h	; 90a8  ........
	defb 0dch,0fch,00bh,079h,0f9h,00eh,03eh,0feh	; 90b0  ...y..>.
	defb 00dh,09eh,07eh,005h,0feh,03eh,005h,014h	; 90b8  ..~..>..
	defb 0fch,007h,01ah,0feh,003h,04eh,0feh,003h	; 90c0  .....N..
	defb 0ffh,0ffh,0cfh,07bh,0ffh,031h,07eh,0bfh	; 90c8  ...{.1~.
	defb 01ah,0ceh,03fh,00eh,0cch,03fh,00ch,0ddh	; 90d0  ..?..?..
	defb 03eh,01ch,0bbh,07ch,038h,067h,0f8h,060h	; 90d8  >..|8g.`
	defb 02fh,02fh,0d3h,0feh,0ffh,0c6h,078h,0ffh	; 90e0  //....x.
	defb 038h,0f1h,07eh,030h,071h,0beh,010h,0b3h	; 90e8  8.~0q...
	defb 05ch,010h,092h,07dh,010h,0d6h,039h,010h	; 90f0  \..}..9.
	defb 0c4h,03fh,000h,0fbh,007h,000h,07fh,080h	; 90f8  .?......
	defb 000h,08fh,070h,000h,0ffh,001h,001h,0feh	; 9100  ..p.....
	defb 007h,006h,0fdh,006h,004h,0f9h,00eh,008h	; 9108  ........
	defb 073h,08fh,001h,087h,0ffh,001h,0dfh,07fh	; 9110  s.......
	defb 00fh,0ffh,0ffh,0f0h,009h,0ffh,000h,0f0h	; 9118  ........
	defb 00fh,000h,0fah,007h,000h,0ddh,023h,000h	; 9120  ......#.
	defb 040h,040h,0bfh,0c0h,0c0h,03fh,090h,090h	; 9128  @@...?..
	defb 06fh,0e0h,0e0h,09fh,0e0h,0e0h,07fh,070h	; 9130  o......p
	defb 0f0h,03fh,0b9h,0f9h,01eh,0feh,0feh,009h	; 9138  .?......
	defb 0c3h,03fh,001h,0d3h,02fh,001h,0a7h,05fh	; 9140  .?../.._
	defb 001h,067h,09fh,003h,0cfh,03fh,002h,0efh	; 9148  .g...?..
	defb 01fh,006h,0e7h,01fh,006h,077h,08fh,003h	; 9150  .....w..
	defb 0afh,05fh,002h,0c7h,03fh,006h,0e7h,03fh	; 9158  ._..?..?
	defb 002h,09bh,07fh,003h,0cfh,03fh,001h,06fh	; 9160  .....?.o
	defb 0bfh,009h,057h,0bfh,001h,0b7h,07fh,003h	; 9168  ..W.....
	defb 0f8h,0f8h,0ffh,06ch,09ch,00fh,0b6h,0ceh	; 9170  ...l....
	defb 007h,05bh,0e7h,003h,05dh,0e3h,001h,02dh	; 9178  .[..]..-
	defb 0f3h,001h,069h,0b7h,001h,0e3h,01fh,001h	; 9180  ..i.....
	defb 06ch,093h,000h,0c0h,03fh,000h,069h,097h	; 9188  l...?.i.
	defb 000h,012h,0efh,000h,025h,0ffh,000h,06fh	; 9190  ....%..o
	defb 0ffh,004h,0ffh,0ffh,03fh,0ffh,0ffh,0e1h	; 9198  ....?...
	defb 000h,000h,0ffh,003h,003h,0fch,01fh,01fh	; 91a0  ........
	defb 0e7h,03eh,039h,0f8h,049h,077h,0c0h,067h	; 91a8  .>9.Iw.g
	defb 07fh,0c3h,07fh,07fh,0c2h,07eh,07fh,0bch	; 91b0  .....~..
	defb 03fh,03fh,0ffh,077h,078h,0e0h,0efh,0f0h	; 91b8  ??.wx...
	defb 0c0h,0dfh,0e0h,080h,0e3h,0dch,040h,0fah	; 91c0  ......@.
	defb 0f5h,0e0h,07fh,0f0h,010h,0bfh,078h,010h	; 91c8  ......x.
	defb 0fdh,0eeh,048h,0eeh,09dh,088h,0d9h,0beh	; 91d0  ..H.....
	defb 088h,09fh,0f8h,090h,0f7h,0f8h,090h,07bh	; 91d8  .......{
	defb 074h,0d0h,03fh,030h,0e0h,03ch,033h,0e0h	; 91e0  t.?0.<3.
	defb 0c9h,03eh,008h,04ch,0bfh,008h,09ch,07bh	; 91e8  .>.L...{
	defb 008h,0beh,079h,008h,0bfh,078h,010h,071h	; 91f0  ..y..x.q
	defb 0feh,010h,077h,0f8h,020h,06fh,0f0h,020h	; 91f8  ..w. o.
	defb 03ch,023h,0e0h,079h,067h,0c0h,07bh,045h	; 9200  <#.yg.{E
	defb 0c0h,0d3h,0efh,040h,0e3h,0ffh,040h,07fh	; 9208  ...@..@.
	defb 07fh,0e0h,07fh,07fh,0b0h,0dfh,0dfh,02fh	; 9210  ......./
	defb 0ffh,0e0h,020h,0ffh,0e0h,040h,0dfh,0e0h	; 9218  .. ..@..
	defb 040h,0efh,0f0h,040h,0ffh,0f0h,040h,0f7h	; 9220  @..@..@.
	defb 0f8h,0c0h,0e1h,0feh,080h,0cfh,0f3h,080h	; 9228  ........
	defb 089h,0f6h,080h,01eh,0e1h,000h,07fh,080h	; 9230  ........
	defb 000h,073h,08ch,000h,0dfh,020h,000h,0bfh	; 9238  .s... ..
	defb 040h,000h,0ffh,000h,000h,0ffh,000h,000h	; 9240  @.......
	defb 0ffh,0ffh,0ffh,039h,0c7h,000h,0feh,001h	; 9248  ...9....
	defb 000h,0fbh,004h,000h,0fch,003h,000h,0feh	; 9250  ........
	defb 001h,000h,0fdh,002h,000h,0dfh,020h,000h	; 9258  ...... .
	defb 0ffh,0ffh,03fh,0e1h,0feh,0e0h,017h,0e8h	; 9260  ..?.....
	defb 000h,0fbh,004h,000h,0ffh,000h,000h,0ffh	; 9268  ........
	defb 000h,000h,0ffh,000h,000h,0ffh,000h,000h	; 9270  ........
	defb 0ffh,000h,000h,0ffh,000h,000h,0ffh,000h	; 9278  ........
	defb 000h,0ffh,000h,000h,0ffh,000h,000h,0ffh	; 9280  ........
	defb 000h,000h,0ffh,000h,000h,0ffh,000h,000h	; 9288  ........
	defb 0feh,001h,000h,0ffh,000h,000h,0ffh,000h	; 9290  ........
	defb 000h,0ffh,000h,000h,0ffh,000h,000h,0ffh	; 9298  ........
	defb 000h,000h,0e8h,017h,000h,0bbh,044h,000h	; 92a0  ......D.

; ----------------------------------------------------------------------
; DATOS dibujos_92A8: 24 dibujos de 8x8 a 3 bits (24 bytes cada uno) que la
;   lista de 0x60CA sube a la hoja desde el 88; lo leen p00:54CC (lista
;   0x60CA) (576 bytes)
;   0x92a8..0x94e8  (576 bytes)
DATA_dibujos_92A8:
	defb 0fbh,0e7h,003h,0e7h,01fh,002h,06fh,0bfh	; 92a8  ......o.
	defb 006h,09eh,0ffh,004h,07dh,0feh,00ch,0bdh	; 92b0  ....}...
	defb 0feh,018h,0feh,0fdh,010h,0fdh,0fbh,0f0h	; 92b8  ........
	defb 0ffh,0ffh,0ech,0bch,07fh,018h,01dh,0ffh	; 92c0  ........
	defb 008h,08fh,07fh,00ah,0aeh,05fh,008h,08ch	; 92c8  ....._..
	defb 07fh,008h,0eeh,01fh,008h,05eh,0afh,008h	; 92d0  .....^..
	defb 0feh,00fh,008h,06dh,09fh,008h,08fh,07fh	; 92d8  ...m....
	defb 008h,0afh,05fh,00ch,067h,09fh,006h,0fbh	; 92e0  .._.g...
	defb 007h,003h,070h,08fh,000h,0edh,012h,000h	; 92e8  ..p.....
	defb 00fh,0ffh,005h,0dfh,0ffh,004h,065h,0ffh	; 92f0  ......e.
	defb 004h,09ch,0ffh,004h,0fch,0ffh,004h,0ddh	; 92f8  ........
	defb 0feh,00ch,0ffh,0feh,018h,0f3h,0fdh,0f0h	; 9300  ........
	defb 0eeh,01eh,003h,07ah,0beh,003h,0bbh,07fh	; 9308  ...z....
	defb 001h,0e5h,01fh,001h,037h,0cfh,005h,036h	; 9310  ....7..6
	defb 0feh,003h,0dah,07eh,003h,01eh,0feh,013h	; 9318  ...~....
	defb 07bh,084h,000h,016h,0e9h,000h,0c2h,03dh	; 9320  {......=
	defb 000h,088h,07fh,000h,011h,0ffh,000h,0f8h	; 9328  ........
	defb 0ffh,010h,0fdh,0ffh,030h,0ffh,0ffh,0ffh	; 9330  ....0...
	defb 0d7h,0feh,080h,0beh,0f9h,080h,0f2h,0ffh	; 9338  ........
	defb 080h,0f3h,0ffh,090h,0f9h,0ffh,080h,0f4h	; 9340  ........
	defb 0ffh,0c0h,079h,07fh,0e0h,03fh,03fh,0ffh	; 9348  ..y..??.
	defb 0ffh,0f0h,030h,03fh,0f0h,010h,0beh,0f1h	; 9350  ..0?....
	defb 010h,0f7h,0f8h,050h,077h,0f8h,010h,031h	; 9358  ...Pw..1
	defb 0feh,010h,077h,0f8h,010h,07fh,0f0h,010h	; 9360  ..w.....
	defb 0f7h,0f8h,040h,0deh,0fdh,040h,0ddh,0feh	; 9368  ..@..@..
	defb 080h,0a7h,0f8h,080h,0ech,0f3h,0a0h,0ech	; 9370  ........
	defb 0ffh,040h,0dbh,0feh,040h,0f8h,0ffh,048h	; 9378  .@..@..H
	defb 0aeh,05eh,003h,0c6h,03eh,007h,0e7h,03fh	; 9380  .^..>..?
	defb 002h,09bh,07fh,003h,0cfh,03fh,001h,0efh	; 9388  .....?..
	defb 03fh,009h,0d7h,03fh,001h,0b7h,07fh,003h	; 9390  ?..?....
	defb 0ffh,000h,000h,0ffh,000h,000h,0fdh,002h	; 9398  ........
	defb 000h,0e8h,017h,000h,0d4h,02bh,000h,003h	; 93a0  .....+..
	defb 0ffh,000h,0dfh,0e0h,000h,0ffh,000h,000h	; 93a8  ........
	defb 09bh,0e4h,080h,0efh,0d0h,0c0h,047h,0f8h	; 93b0  ......G.
	defb 040h,0efh,0f0h,060h,0ffh,0e0h,020h,07fh	; 93b8  @..`.. .
	defb 0e0h,020h,03fh,0e0h,020h,067h,0f8h,020h	; 93c0  . ?. g.
	defb 0f5h,00bh,001h,0fbh,00fh,001h,0f7h,00fh	; 93c8  ........
	defb 001h,0fbh,007h,001h,0f9h,007h,001h,0f9h	; 93d0  ........
	defb 007h,001h,0fbh,007h,001h,0f3h,00fh,001h	; 93d8  ........
	defb 073h,08fh,001h,087h,0ffh,001h,0d7h,07fh	; 93e0  s.......
	defb 003h,0ffh,01fh,007h,0efh,01fh,003h,0f7h	; 93e8  ........
	defb 00fh,001h,0ebh,017h,001h,0c3h,03fh,001h	; 93f0  ......?.
	defb 0ffh,0e0h,080h,0ffh,0e0h,080h,0dfh,0e0h	; 93f8  ........
	defb 080h,0efh,0f0h,080h,0ffh,0f0h,080h,0f7h	; 9400  ........
	defb 0f8h,0c0h,0e1h,0feh,080h,0cfh,0f3h,080h	; 9408  ........
	defb 03fh,03fh,0ffh,077h,078h,0e0h,0efh,0f0h	; 9410  ??.wx...
	defb 0c0h,0dfh,0e0h,080h,0ffh,0c0h,080h,0bfh	; 9418  ........
	defb 0e0h,080h,0afh,0f0h,080h,0c7h,0f8h,080h	; 9420  ........
	defb 0ffh,0ffh,0efh,07eh,0ffh,038h,056h,0bdh	; 9428  ...~.8V.
	defb 000h,0c7h,038h,000h,0efh,010h,000h,0f7h	; 9430  ..8.....
	defb 008h,000h,0fbh,004h,000h,0fdh,002h,000h	; 9438  ........
	defb 0d1h,0feh,0c0h,0ech,0ffh,0c0h,0cch,0f3h	; 9440  ........
	defb 080h,0deh,0e1h,080h,0ffh,0c0h,080h,0ffh	; 9448  ........
	defb 0c0h,080h,0dfh,0e0h,080h,0dfh,0e0h,080h	; 9450  ........
	defb 0ffh,0ffh,0ffh,07ah,0fdh,030h,0d7h,038h	; 9458  ...z.0.8
	defb 000h,063h,09ch,000h,0dfh,020h,000h,0bfh	; 9460  .c... ..
	defb 040h,000h,0ffh,000h,000h,0ffh,000h,000h	; 9468  @.......
	defb 07fh,080h,000h,0ffh,000h,000h,0dfh,020h	; 9470  .......
	defb 000h,06fh,090h,000h,03fh,0c0h,000h,016h	; 9478  .o..?...
	defb 0e9h,000h,0f1h,08eh,080h,0dbh,0bdh,080h	; 9480  ........
	defb 0feh,001h,000h,07fh,080h,000h,097h,068h	; 9488  .......h
	defb 000h,0cah,035h,000h,0eah,01dh,000h,0fdh	; 9490  ..5.....
	defb 006h,000h,0fdh,002h,000h,0feh,003h,000h	; 9498  ........
	defb 09fh,060h,000h,07fh,080h,000h,0ffh,000h	; 94a0  .`......
	defb 000h,0ceh,031h,000h,0fbh,004h,000h,0fdh	; 94a8  ..1.....
	defb 002h,000h,0ffh,000h,000h,0ffh,000h,000h	; 94b0  ........
	defb 0f6h,009h,000h,0c9h,036h,000h,0f0h,00fh	; 94b8  ....6...
	defb 000h,0fdh,002h,000h,0feh,001h,000h,0bfh	; 94c0  ........
	defb 040h,000h,07fh,080h,000h,0ffh,000h,000h	; 94c8  @.......
	defb 0c4h,03fh,000h,0fbh,007h,000h,07fh,080h	; 94d0  .?......
	defb 000h,08fh,070h,000h,0ffh,000h,000h,0ffh	; 94d8  ..p.....
	defb 000h,000h,0ffh,000h,000h,0ffh,000h,000h	; 94e0  ........

; ----------------------------------------------------------------------
; DATOS dibujos_94E8: 6 dibujos de 8x8 a 4 bits (32 bytes cada uno) que la
;   lista de 0x60CA sube a la hoja desde el F0; lo leen p00:54CC (lista
;   0x60CA) (192 bytes)
;   0x94e8..0x95a8  (192 bytes)
DATA_dibujos_94E8:
	defb 03fh,088h,088h,088h,033h,0f8h,038h,088h	; 94e8  ?...3.8.
	defb 033h,0ffh,0ffh,088h,0f3h,03fh,0ffh,0ffh	; 94f0  3....?..
	defb 033h,033h,0ffh,0ffh,0ffh,033h,033h,0ffh	; 94f8  33...33.
	defb 0ffh,03fh,03fh,0ffh,0ffh,0ffh,033h,03fh	; 9500  .??...3?
	defb 088h,088h,088h,0c2h,088h,088h,088h,0c3h	; 9508  ........
	defb 088h,088h,088h,0c2h,0f8h,088h,088h,082h	; 9510  ........
	defb 0ffh,083h,088h,083h,0ffh,0ffh,033h,033h	; 9518  ......33
	defb 033h,033h,033h,033h,033h,023h,033h,022h	; 9520  33333#3"
	defb 0f8h,088h,088h,088h,0f8h,088h,088h,088h	; 9528  ........
	defb 0f8h,088h,088h,088h,0f3h,088h,088h,088h	; 9530  ........
	defb 033h,0f8h,08fh,08fh,033h,0ffh,0ffh,0ffh	; 9538  3...3...
	defb 02fh,03fh,0f3h,0ffh,033h,03fh,0ffh,0ffh	; 9540  /?..3?..
	defb 088h,088h,088h,0cfh,088h,088h,088h,03fh	; 9548  .......?
	defb 088h,088h,083h,011h,088h,08fh,0f1h,022h	; 9550  ......."
	defb 033h,0ffh,012h,033h,022h,011h,022h,0f3h	; 9558  3..3".".
	defb 023h,021h,033h,0f2h,0f2h,021h,023h,021h	; 9560  #!3..!#!
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9568  ........
	defb 0f2h,02fh,0ffh,0ffh,011h,012h,022h,0ffh	; 9570  ./....".
	defb 011h,011h,012h,02fh,011h,011h,011h,012h	; 9578  .../....
	defb 011h,011h,011h,011h,021h,011h,011h,011h	; 9580  ....!...
	defb 0ffh,0ffh,0ffh,0f3h,0ffh,0ffh,0ffh,023h	; 9588  .......#
	defb 03fh,0ffh,032h,032h,0ffh,0f3h,022h,022h	; 9590  ?.22..""
	defb 0ffh,032h,022h,011h,0ffh,022h,021h,023h	; 9598  .2".."!#
	defb 0f2h,021h,012h,03fh,022h,012h,033h,0ffh	; 95a0  .!.?".3.

; ----------------------------------------------------------------------
; DATOS dibujos_95A8: 54 dibujos de 8x8 a 3 bits (24 bytes cada uno) que la
;   lista de 0x6169 sube a la hoja desde el 01; se solapan 4 bloques
;   (0x95A8-0x9AB8, 0x95D8-0x9AB8, 0x98D8-0x98F0, 0x9920-0x9968); lo leen
;   p00:54CC (lista 0x6169) (1296 bytes)
;   0x95a8..0x9ab8  (1296 bytes)
DATA_dibujos_95A8:
	defb 0f9h,0f0h,0f0h,0ffh,0e9h,060h,0ffh,0f3h	; 95a8  .....`..
	defb 040h,0feh,0f3h,090h,0beh,0f7h,0a0h,07ch	; 95b0  @......|
	defb 0efh,060h,0d8h,0efh,0c0h,0b9h,0efh,080h	; 95b8  .`......
	defb 0b3h,0ffh,080h,019h,0ffh,000h,0b0h,0ffh	; 95c0  ........
	defb 080h,010h,0ffh,000h,0d1h,0ffh,0c1h,0e3h	; 95c8  ........
	defb 0ffh,0e3h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 95d0  ........
	defb 0ffh,0feh,0feh,0ffh,0f9h,0f8h,0ffh,0e3h	; 95d8  ........
	defb 0e0h,0ffh,0cfh,0c0h,0f8h,03fh,000h,0e3h	; 95e0  .....?..
	defb 0ffh,003h,087h,0ffh,006h,086h,0f9h,000h	; 95e8  ........
	defb 0c2h,07fh,002h,0ceh,0fdh,00ch,08eh,0f1h	; 95f0  ........
	defb 000h,004h,0ffh,000h,018h,0ffh,000h,021h	; 95f8  .......!
	defb 0ffh,021h,013h,0ffh,013h,01fh,0ffh,01fh	; 9600  .!......
	defb 0f9h,0ffh,0c1h,067h,0feh,066h,03fh,0ffh	; 9608  ...g.f?.
	defb 03ch,03fh,0ffh,038h,07fh,0ffh,079h,0ffh	; 9610  <?.8..y.
	defb 0f6h,0f6h,0f5h,0c6h,0d1h,0ebh,0cch,0e2h	; 9618  ........
	defb 0f9h,0e0h,0e0h,0fdh,0c9h,040h,0ffh,0f9h	; 9620  .....@..
	defb 040h,0f0h,0ffh,090h,01ch,0e7h,000h,0feh	; 9628  @.......
	defb 08fh,000h,0e3h,03ch,000h,0ceh,0f3h,000h	; 9630  ...<....
	defb 08fh,0f7h,080h,03ch,0cfh,000h,038h,0dfh	; 9638  ...<..8.
	defb 000h,0f1h,0feh,0c0h,041h,0fch,000h,0e3h	; 9640  ....A...
	defb 0f9h,0e0h,08ch,0f7h,080h,002h,0ffh,002h	; 9648  ........
	defb 00dh,0feh,00ch,030h,0fdh,030h,079h,09dh	; 9650  ...0.0y.
	defb 009h,0ffh,07dh,00dh,0ddh,0ffh,00ch,00fh	; 9658  ..}.....
	defb 0ffh,00fh,07bh,0ffh,07bh,0d7h,0feh,0d6h	; 9660  ..{.{...
	defb 052h,09dh,040h,0bbh,0a0h,0b8h,0e1h,040h	; 9668  R.@....@
	defb 0e0h,02dh,052h,000h,0abh,0f4h,0a0h,0cbh	; 9670  .-R.....
	defb 0beh,0c0h,004h,0dfh,004h,03bh,09dh,01bh	; 9678  .....;..
	defb 0fdh,087h,001h,0f9h,02fh,001h,0d2h,03fh	; 9680  ..../..?
	defb 000h,0e4h,01fh,000h,0e3h,01ch,000h,0e6h	; 9688  ........
	defb 0f9h,000h,0e6h,0fbh,000h,08fh,0f7h,081h	; 9690  ........
	defb 017h,0ffh,017h,01dh,0feh,01ch,063h,0f8h	; 9698  ......c.
	defb 060h,0cfh,0f3h,0c0h,06eh,0bfh,000h,0edh	; 96a0  `...n...
	defb 03fh,009h,0c9h,0ffh,008h,01eh,0ffh,01ch	; 96a8  ?.......
	defb 0feh,0ffh,0feh,0fdh,07eh,03dh,0efh,0feh	; 96b0  ....~=..
	defb 00eh,01fh,0ffh,01dh,066h,0ffh,066h,0ffh	; 96b8  ....f.f.
	defb 0feh,0fdh,0bfh,0ffh,03eh,02dh,0fdh,02dh	; 96c0  ....>-.-
	defb 0ech,03ch,0a8h,08fh,07eh,006h,018h,0f9h	; 96c8  .<..~...
	defb 000h,073h,0e8h,040h,087h,0fch,000h,0fbh	; 96d0  .s.@....
	defb 0ffh,0c8h,0f0h,07fh,0e0h,03ch,0bfh,024h	; 96d8  .....<.$
	defb 0e5h,0ffh,0e1h,09ch,0f7h,010h,07eh,0ffh	; 96e0  ......~.
	defb 038h,0dch,0ffh,01ch,0dbh,0f4h,000h,094h	; 96e8  8.......
	defb 0fbh,010h,06fh,0f3h,040h,057h,0f7h,040h	; 96f0  ..o.@W.@
	defb 01ch,0ffh,018h,03ch,0f7h,030h,038h,0cfh	; 96f8  ...<.08.
	defb 000h,07bh,09fh,003h,0e3h,07fh,003h,0f5h	; 9700  .{......
	defb 07fh,015h,0efh,0ffh,02fh,0ffh,0ffh,07fh	; 9708  ..../...
	defb 0cfh,0ffh,00fh,0bdh,0fch,03ch,03ch,0f8h	; 9710  .....<<.
	defb 03ch,078h,0f0h,078h,0f8h,0f0h,0e0h,06fh	; 9718  <x.x...o
	defb 0f0h,060h,0fbh,0ffh,0e0h,0eah,0ffh,0e0h	; 9720  .`......
	defb 0f7h,0fch,0f0h,0dfh,0ffh,018h,0edh,03fh	; 9728  .......?
	defb 00ch,0ffh,03fh,00fh,0f3h,03fh,003h,0f3h	; 9730  ..?..?..
	defb 07fh,003h,0e1h,0ffh,001h,041h,0ffh,001h	; 9738  .....A..
	defb 09fh,0ffh,013h,0ffh,0ffh,01fh,0e6h,0f1h	; 9740  ........
	defb 060h,08eh,0c7h,080h,07dh,08fh,000h,030h	; 9748  `...}..0
	defb 0ffh,000h,080h,0ffh,080h,0fah,0ffh,0fah	; 9750  ........
	defb 0fch,0ffh,000h,0ffh,0ffh,086h,0ffh,0ffh	; 9758  ........
	defb 0f9h,01fh,0ffh,01fh,010h,0ffh,010h,07eh	; 9760  .......~
	defb 0f3h,030h,04eh,0d7h,040h,0b0h,09fh,080h	; 9768  .0N.@...
	defb 0f1h,0efh,0f1h,0f1h,0f3h,0f1h,0ech,0f7h	; 9770  ........
	defb 0e0h,071h,0e7h,070h,0efh,0cdh,0e0h,0deh	; 9778  .q.p....
	defb 0e3h,0c2h,0eeh,0ffh,0e4h,0f9h,0ffh,0f8h	; 9780  ........
	defb 0a5h,03fh,0a5h,0b9h,03fh,099h,07dh,0fbh	; 9788  .?..?.}.
	defb 061h,0fdh,007h,061h,07bh,007h,043h,0f7h	; 9790  a..a{.C.
	defb 00fh,007h,007h,0ffh,007h,0c7h,0ffh,007h	; 9798  ........
	defb 09bh,08fh,08bh,07fh,01ch,004h,0f3h,039h	; 97a0  .......9
	defb 000h,0e3h,079h,000h,0e3h,07fh,001h,0d3h	; 97a8  ..y.....
	defb 0ffh,091h,0ffh,0ffh,0ffh,0dfh,0feh,0dfh	; 97b0  ........
	defb 0b8h,09fh,080h,073h,0bch,000h,06fh,0f8h	; 97b8  ...s..o.
	defb 008h,01eh,0f9h,010h,072h,0fbh,070h,0f2h	; 97c0  ....r.p.
	defb 0f9h,0f0h,0feh,0ffh,0f8h,00fh,03fh,00ch	; 97c8  ......?.
	defb 0f7h,0ffh,0f7h,077h,0f8h,074h,0feh,0f9h	; 97d0  ...w.t..
	defb 0f8h,0b8h,0ffh,038h,01fh,0ffh,01ch,00fh	; 97d8  ...8....
	defb 0ffh,00fh,08fh,0ffh,00fh,0c0h,0dfh,000h	; 97e0  ........
	defb 067h,0ffh,007h,04eh,0ffh,00eh,08eh,0ffh	; 97e8  g..N....
	defb 00eh,09fh,0ffh,01fh,031h,0ffh,031h,0e1h	; 97f0  ....1.1.
	defb 0ffh,0e1h,0d1h,0efh,0c1h,099h,0e7h,081h	; 97f8  ........
	defb 03eh,0f8h,03eh,079h,0f0h,078h,073h,0f0h	; 9800  >.>y.xs.
	defb 070h,0ffh,0e1h,0e0h,0ffh,0e1h,0c0h,0c5h	; 9808  p.......
	defb 0feh,0c0h,0feh,0efh,0fah,0f5h,0f2h,0f0h	; 9810  ........
	defb 0f3h,01fh,003h,0f9h,03fh,001h,0f9h,01fh	; 9818  ....?...
	defb 001h,0f0h,0dfh,000h,0f0h,0ffh,000h,0f9h	; 9820  ........
	defb 07fh,001h,079h,0bfh,001h,093h,0ffh,003h	; 9828  ..y.....
	defb 09fh,080h,080h,03fh,080h,000h,0a7h,083h	; 9830  ...?....
	defb 080h,0ffh,0afh,080h,0f8h,0bfh,000h,0a0h	; 9838  ........
	defb 0ffh,000h,023h,0ffh,023h,07fh,0ffh,07fh	; 9840  ..#.#...
	defb 07bh,0f8h,078h,07bh,0f8h,078h,0cfh,0fdh	; 9848  {.x{.x..
	defb 0cch,08fh,09fh,08eh,0efh,0bfh,08fh,04bh	; 9850  .......K
	defb 077h,003h,059h,067h,001h,0b8h,0f7h,080h	; 9858  w.Yg....
	defb 03ch,0ffh,004h,0e1h,0ffh,001h,0e1h,0ffh	; 9860  <.......
	defb 001h,083h,0ffh,003h,09eh,0ffh,09eh,0e6h	; 9868  ........
	defb 0ffh,0e6h,0dfh,0ffh,0dfh,03fh,0ffh,03eh	; 9870  .....?.>
	defb 0efh,0ffh,0e0h,0deh,0ffh,0c0h,0fdh,0ffh	; 9878  ........
	defb 0e0h,0b7h,0f0h,0a0h,063h,0e0h,060h,0cfh	; 9880  ....c.`.
	defb 0c2h,0c0h,01fh,007h,000h,0ffh,08fh,000h	; 9888  ........
	defb 0cbh,0ffh,043h,0deh,03fh,016h,0d7h,0ffh	; 9890  ..C.?...
	defb 015h,0b6h,0ffh,036h,03ah,0ffh,03ah,0ffh	; 9898  ...6:.:.
	defb 0ffh,0ffh,085h,08fh,085h,067h,09fh,007h	; 98a0  .....g..
	defb 0d8h,0e7h,0d0h,0e1h,0ceh,0e0h,0fch,0c2h	; 98a8  ........
	defb 0c0h,0d1h,0ffh,0d0h,0ffh,0efh,0ech,06bh	; 98b0  .......k
	defb 0f3h,06ah,0ffh,0fbh,0e3h,0fch,0ffh,0c0h	; 98b8  .j......
	defb 0b3h,03fh,092h,01bh,0ffh,012h,07ah,01fh	; 98c0  .?....z.
	defb 00ah,0e3h,01fh,003h,06fh,0ffh,00fh,08fh	; 98c8  ....o...
	defb 0ffh,00fh,03fh,0feh,03eh,06fh,0fch,06ch	; 98d0  ..?.>o.l
	defb 05ch,0ffh,058h,07ch,0ffh,070h,0bch,0ffh	; 98d8  \.X|.p..
	defb 0b0h,0d8h,0ffh,050h,0b1h,0ffh,0b1h,0e3h	; 98e0  ...P....
	defb 0ffh,0e2h,0e7h,0ffh,0e6h,06eh,0ffh,06ch	; 98e8  .....n.l
	defb 040h,0ffh,040h,060h,0ffh,060h,031h,0ffh	; 98f0  @.@`.`1.
	defb 031h,0cfh,03fh,00fh,01fh,0ffh,01fh,08fh	; 98f8  1.?.....
	defb 0f6h,006h,035h,0c6h,011h,06bh,0cch,062h	; 9900  ..5..k.b
	defb 038h,0ffh,038h,078h,0ffh,078h,0f0h,0ffh	; 9908  8.8x.x..
	defb 0f0h,0d0h,0ffh,0d0h,01ch,0e7h,000h,0feh	; 9910  ........
	defb 08fh,000h,0e3h,03ch,000h,0cfh,0f3h,000h	; 9918  ...<....
	defb 07ch,0e7h,060h,0fch,0cfh,0c0h,0fch,09fh	; 9920  |.`.....
	defb 080h,0f8h,0bfh,000h,0f3h,07fh,003h,0e3h	; 9928  ........
	defb 0ffh,002h,0d3h,0ffh,002h,0feh,0ffh,03ch	; 9930  .......<
	defb 0cfh,0ffh,0c0h,0feh,0efh,0e0h,0fch,0dfh	; 9938  ........
	defb 0c0h,0f1h,03fh,001h,0e3h,07fh,003h,0d7h	; 9940  ..?.....
	defb 0ffh,016h,08fh,0ffh,00ch,01eh,0ffh,018h	; 9948  ........
	defb 08ch,0ffh,008h,038h,0ffh,038h,03dh,0ffh	; 9950  ...8.8=.
	defb 03dh,063h,0ffh,063h,0e3h,0ffh,0e3h,067h	; 9958  =c.c...g
	defb 0ffh,066h,0ffh,0ffh,0fch,0ceh,0ffh,0c8h	; 9960  .f......
	defb 0efh,0ffh,0efh,0bfh,0ffh,0bfh,0fbh,0ffh	; 9968  ........
	defb 0fbh,01fh,0ffh,01fh,010h,0ffh,010h,07eh	; 9970  .......~
	defb 0f3h,030h,06eh,0f7h,060h,090h,0dfh,080h	; 9978  .0n.`...
	defb 026h,0ffh,020h,032h,0ffh,030h,024h,0ffh	; 9980  &. 2.0$.
	defb 020h,034h,0ffh,030h,074h,0ffh,070h,070h	; 9988   4.0t.pp
	defb 0ffh,070h,0f5h,0ffh,0f1h,0f9h,0ffh,0f9h	; 9990  .p......
	defb 052h,0ffh,042h,013h,0ffh,002h,051h,0ffh	; 9998  R.B...Q.
	defb 040h,045h,0ffh,044h,0c4h,0ffh,0c4h,0cdh	; 99a0  @E.D....
	defb 0ffh,0cch,0fdh,0ffh,0fch,0feh,0ffh,0feh	; 99a8  ........
	defb 094h,0ffh,010h,090h,0ffh,010h,004h,0ffh	; 99b0  ........
	defb 000h,020h,0ffh,020h,095h,0ffh,011h,01bh	; 99b8  . . ....
	defb 0ffh,01bh,03fh,0ffh,03fh,07fh,0ffh,07fh	; 99c0  ..?.?...
	defb 0b0h,0ffh,080h,019h,0ffh,001h,0b0h,0ffh	; 99c8  ........
	defb 080h,010h,0ffh,000h,0d1h,0ffh,0c1h,0e3h	; 99d0  ........
	defb 0ffh,0e3h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 99d8  ........
	defb 03fh,0feh,03eh,03fh,0fdh,03ch,07fh,0ffh	; 99e0  ?.>?.<..
	defb 07ch,076h,0ffh,074h,077h,0ffh,070h,0a7h	; 99e8  |v.tw.p.
	defb 0ffh,0a0h,0a6h,0ffh,0a0h,026h,0ffh,020h	; 99f0  .....&.
	defb 0c2h,07fh,002h,0eeh,0fdh,00ch,08eh,0f9h	; 99f8  ........
	defb 008h,097h,0fbh,010h,014h,0ffh,010h,02ch	; 9a00  .......,
	defb 0ffh,020h,019h,0f7h,001h,03ah,0ffh,022h	; 9a08  . ...:."
	defb 0f9h,0ffh,0c1h,067h,0feh,066h,0bfh,0fdh	; 9a10  ...g.f..
	defb 0bch,067h,0fdh,000h,05fh,0fbh,008h,0f6h	; 9a18  .g.._...
	defb 0fbh,010h,0f6h,0ffh,010h,0dch,0ffh,010h	; 9a20  ........
	defb 0f9h,0f0h,0f0h,0ffh,0e9h,060h,0ffh,0f3h	; 9a28  .....`..
	defb 040h,0feh,0f3h,090h,0beh,0f7h,0a0h,07ch	; 9a30  @......|
	defb 0efh,060h,0d8h,0efh,0c0h,0b8h,0efh,080h	; 9a38  .`......
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,066h,0f1h	; 9a40  ......f.
	defb 060h,08eh,0c7h,080h,07dh,08fh,000h,030h	; 9a48  `...}..0
	defb 0ffh,000h,080h,0ffh,080h,0fah,0ffh,0fah	; 9a50  ........
	defb 094h,0ffh,010h,090h,0ffh,010h,004h,0ffh	; 9a58  ........
	defb 000h,020h,0ffh,020h,095h,0ffh,011h,003h	; 9a60  . . ....
	defb 0ffh,002h,023h,0ffh,022h,067h,0ffh,066h	; 9a68  ..#."g.f
	defb 0b0h,0ffh,090h,07ah,09fh,00ah,0f7h,0bfh	; 9a70  ...z....
	defb 086h,0f7h,0ffh,004h,0d3h,0ffh,000h,08bh	; 9a78  ........
	defb 0ffh,008h,09ah,0ffh,018h,094h,0ffh,010h	; 9a80  ........
	defb 0feh,07fh,002h,0ffh,0fch,00ch,08fh,0f1h	; 9a88  ........
	defb 000h,007h,0ffh,000h,018h,0ffh,000h,0edh	; 9a90  ........
	defb 0ffh,020h,0f6h,0bfh,010h,0f4h,0ffh,010h	; 9a98  . ......
	defb 0f6h,0ffh,0f6h,0dfh,0ffh,01fh,0edh,03fh	; 9aa0  .......?
	defb 00dh,0ffh,03fh,00fh,0f3h,03fh,003h,0f3h	; 9aa8  ..?..?..
	defb 07fh,003h,0e1h,0ffh,001h,041h,0ffh,001h	; 9ab0  .....A..

; ----------------------------------------------------------------------
; DATOS dibujos_9AB8: 13 dibujos de 8x8 a 3 bits (24 bytes cada uno) que la
;   lista de 0x6169 sube a la hoja desde el 70; se solapan 2 bloques
;   (0x9AB8-0x9BF0, 0x9B00-0x9BF0); lo leen p00:54CC (lista 0x6169) (312
;   bytes)
;   0x9ab8..0x9bf0  (312 bytes)
DATA_dibujos_9AB8:
	defb 0cfh,0ffh,0cch,0eeh,0ffh,0ech,0fah,0ffh	; 9ab8  ........
	defb 0f8h,0f4h,0ffh,0f0h,0fch,0ffh,0f0h,0f9h	; 9ac0  ........
	defb 0ffh,0f1h,0f8h,0ffh,0f0h,0e3h,0ffh,0e3h	; 9ac8  ........
	defb 0ffh,0ffh,03fh,07fh,0ffh,03fh,0ffh,0ffh	; 9ad0  ..?..?..
	defb 0bfh,03fh,0ffh,01fh,0bfh,0ffh,09fh,0dfh	; 9ad8  .?......
	defb 0ffh,0dfh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9ae0  ........
	defb 03fh,0ffh,01fh,01fh,0ffh,01fh,09fh,0ffh	; 9ae8  ?.......
	defb 09fh,0cfh,0ffh,04fh,0efh,0ffh,06fh,06fh	; 9af0  ...O..oo
	defb 0ffh,00fh,07fh,0ffh,01fh,03fh,0ffh,01fh	; 9af8  .....?..
	defb 0fch,0ffh,0f8h,0fch,0ffh,0f0h,0fch,0ffh	; 9b00  ........
	defb 0f0h,0f8h,0ffh,0f0h,0f1h,0ffh,0e1h,0f3h	; 9b08  ........
	defb 0ffh,0e2h,0e7h,0ffh,0e6h,0eeh,0ffh,0ech	; 9b10  ........
	defb 0e7h,0ffh,0e4h,0efh,0ffh,0ech,0fdh,0ffh	; 9b18  ........
	defb 0f8h,0ech,0ffh,0e8h,0fch,0ffh,0f8h,0fch	; 9b20  ........
	defb 0ffh,0fch,0f2h,0ffh,0f2h,0fah,0ffh,0fah	; 9b28  ........
	defb 0feh,0ffh,0feh,0fdh,0ffh,0fdh,0ffh,0ffh	; 9b30  ........
	defb 0ffh,0ffh,0ffh,0fch,0feh,0ffh,0f8h,0f9h	; 9b38  ........
	defb 0ffh,0f9h,0f8h,0ffh,0f8h,0ffh,0ffh,0ffh	; 9b40  ........
	defb 064h,0ffh,064h,0efh,0ffh,0ech,06eh,0ffh	; 9b48  d.d...n.
	defb 06ch,0eeh,0ffh,0ech,0fdh,0ffh,0fdh,0fdh	; 9b50  l.......
	defb 0ffh,0fdh,0fdh,0ffh,0fdh,0ffh,0ffh,0ffh	; 9b58  ........
	defb 00ch,0ffh,000h,068h,0ffh,060h,075h,0ffh	; 9b60  ...h.`u.
	defb 065h,0f1h,0ffh,0c1h,0a3h,0ffh,083h,0afh	; 9b68  e.......
	defb 0ffh,08eh,0cfh,0ffh,08ch,09eh,0ffh,09ch	; 9b70  ........
	defb 0ffh,0ffh,0ffh,084h,0ffh,084h,08bh,0ffh	; 9b78  ........
	defb 08bh,0ffh,0ffh,0fch,08eh,0ffh,08ch,09eh	; 9b80  ........
	defb 0ffh,090h,0f8h,0ffh,0f0h,0f7h,0ffh,0e7h	; 9b88  ........
	defb 0fdh,0e7h,0e1h,0f9h,0efh,0e1h,0f3h,0ffh	; 9b90  ........
	defb 0e3h,0f7h,0ffh,0e7h,0f7h,0ffh,0e7h,0ffh	; 9b98  ........
	defb 0dfh,0dfh,0ffh,0ffh,09fh,0ffh,0ffh,0ffh	; 9ba0  ........
	defb 0ffh,0feh,0ceh,0ffh,0bdh,08dh,0ffh,0fdh	; 9ba8  ........
	defb 0dch,0ffh,0f9h,098h,0feh,0fbh,0bah,0feh	; 9bb0  ........
	defb 0fbh,038h,0feh,0f3h,0f0h,0fch,0f7h,0f0h	; 9bb8  .8......
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9bc0  ........
	defb 0ffh,0dfh,0ffh,0dfh,0ffh,0feh,0feh,07fh	; 9bc8  ........
	defb 0feh,07eh,0ffh,0ffh,0fch,0ffh,0ffh,0f8h	; 9bd0  .~......
	defb 0fch,0ffh,0f8h,0f8h,0ffh,0f8h,0f9h,0ffh	; 9bd8  ........
	defb 0f9h,0f3h,0ffh,0f3h,0f7h,0ffh,0f7h,0f7h	; 9be0  ........
	defb 0ffh,0f6h,0ffh,0ffh,0fch,0feh,0ffh,0f8h	; 9be8  ........

; ----------------------------------------------------------------------
; DATOS dibujos_9BF0: 21 dibujos de 8x8 a 1 bit (8 bytes cada uno) que la
;   lista de 0x6169 sube a la hoja desde el 90; se solapan 2 bloques
;   (0x9BF0-0x9C98, 0x9C68-0x9C98); lo leen p00:54CC (lista 0x6169) (168
;   bytes)
;   0x9bf0..0x9c98  (168 bytes)
DATA_dibujos_9BF0:
	defb 0ffh,0c0h,000h,000h,000h,000h,000h,0c0h	; 9bf0  ........
	defb 0e0h,070h,00ch,007h,002h,007h,01eh,03ch	; 9bf8  .p.....<
	defb 0c7h,0ech,0feh,0c3h,0e1h,03fh,01ch,038h	; 9c00  .....?.8
	defb 011h,000h,007h,0ffh,0c3h,081h,061h,03fh	; 9c08  ......a?
	defb 0cfh,00fh,003h,00fh,0ffh,0ffh,0ffh,007h	; 9c10  ........
	defb 0f3h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fch	; 9c18  ........
	defb 000h,081h,0c3h,0feh,0f8h,088h,006h,007h	; 9c20  ........
	defb 0cfh,001h,002h,00ch,090h,0e0h,078h,0cfh	; 9c28  ......x.
	defb 0f1h,01fh,009h,011h,0ffh,080h,080h,0c1h	; 9c30  ........
	defb 0ffh,084h,088h,0f8h,08fh,080h,0c1h,0ffh	; 9c38  ........
	defb 0ffh,084h,088h,0f8h,08fh,000h,001h,03fh	; 9c40  .......?
	defb 0cfh,001h,002h,00ch,090h,0e0h,098h,00fh	; 9c48  ........
	defb 0c0h,0feh,007h,003h,007h,01fh,0fch,0f0h	; 9c50  ........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0bdh,0dfh,039h	; 9c58  .......9
	defb 0ffh,0ffh,0ffh,0ffh,0deh,0ffh,0ech,036h	; 9c60  .......6
	defb 0ffh,0ffh,05fh,03fh,07fh,03fh,0efh,0ffh	; 9c68  .._?.?..
	defb 007h,087h,0cfh,0ffh,0ffh,08dh,007h,007h	; 9c70  ........
	defb 0ffh,0fbh,07fh,0dfh,0ffh,03fh,03fh,07fh	; 9c78  .....??.
	defb 0c7h,0edh,0ffh,0cfh,0e7h,03fh,01dh,039h	; 9c80  .....?.9
	defb 0e0h,070h,00ch,007h,00ah,007h,01fh,03dh	; 9c88  .p.....=
	defb 0cfh,005h,003h,00dh,097h,0f7h,09dh,00fh	; 9c90  ........

; ----------------------------------------------------------------------
; DATOS dibujos_9C98: 6 dibujos de 8x8 a 4 bits (32 bytes cada uno) que la
;   lista de 0x6169 sube a la hoja desde el F0; lo leen p00:54CC (lista
;   0x6169) (192 bytes)
;   0x9c98..0x9d58  (192 bytes)
DATA_dibujos_9C98:
	defb 0f4h,044h,088h,088h,0ffh,034h,034h,048h	; 9c98  .D...44H
	defb 04fh,0f3h,034h,043h,044h,04fh,034h,044h	; 9ca0  O.4CDO4D
	defb 044h,042h,0ffh,034h,033h,044h,02fh,0ffh	; 9ca8  DB.43D/.
	defb 0f3h,033h,022h,022h,0ffh,0f3h,044h,042h	; 9cb0  .3""..DB
	defb 088h,088h,08ch,08fh,088h,088h,088h,08fh	; 9cb8  ........
	defb 048h,088h,088h,08fh,044h,038h,088h,08fh	; 9cc0  H...D8..
	defb 044h,044h,048h,08fh,0f3h,033h,038h,08fh	; 9cc8  DDH..38.
	defb 0ffh,0f3h,038h,0ffh,022h,0ffh,0ffh,0ffh	; 9cd0  ..8."...
	defb 0f8h,088h,088h,088h,0f8h,048h,088h,083h	; 9cd8  .....H..
	defb 0f8h,048h,038h,088h,0f3h,048h,088h,088h	; 9ce0  .H8..H..
	defb 0f3h,034h,044h,044h,0f3h,033h,033h,033h	; 9ce8  .4DD.333
	defb 0ffh,033h,033h,0ffh,0ffh,0ffh,0ffh,0f2h	; 9cf0  .33.....
	defb 088h,088h,084h,04fh,088h,088h,043h,0ffh	; 9cf8  ...O..C.
	defb 088h,044h,03fh,0f2h,044h,043h,0f2h,024h	; 9d00  .D?.DC.$
	defb 043h,0ffh,022h,044h,0ffh,0f2h,044h,033h	; 9d08  C."D..D3
	defb 0f2h,024h,033h,03fh,02fh,033h,03fh,0ffh	; 9d10  .$3?/3?.
	defb 03fh,0ffh,0ffh,0ffh,083h,0ffh,0ffh,0ffh	; 9d18  ?.......
	defb 02fh,0ffh,034h,044h,0f4h,0ffh,0f3h,033h	; 9d20  /.4D...3
	defb 03fh,0f3h,03fh,0f3h,084h,0ffh,0ffh,0ffh	; 9d28  ?.?.....
	defb 04fh,0ffh,0ffh,034h,0f1h,0ffh,03fh,033h	; 9d30  O..4..?3
	defb 0ffh,0ffh,0ffh,0f3h,0ffh,0ffh,0ffh,038h	; 9d38  .......8
	defb 044h,043h,0ffh,0f2h,033h,03fh,0ffh,04fh	; 9d40  DC..3?.O
	defb 03fh,0f3h,03fh,0f3h,0ffh,0ffh,0ffh,048h	; 9d48  ?.?....H
	defb 043h,0ffh,0ffh,0f4h,033h,0f3h,0ffh,01fh	; 9d50  C...3...

; ----------------------------------------------------------------------
; DATOS paleta_comun: la paleta comun a todas las fases: [color][RB][G] ...
;   0xFF (p00:4D3F); lo leen p00:55A5 (31 bytes)
;   0x9d58..0x9d77  (31 bytes)
DATA_paleta_comun:
	defb 006h,063h,005h	; 9d58
	defb 007h,074h,006h	; 9d5b
	defb 00bh,062h,004h	; 9d5e
	defb 008h,044h,004h	; 9d61
	defb 009h,042h,003h	; 9d64
	defb 00ah,071h,002h	; 9d67
	defb 00dh,050h,001h	; 9d6a
	defb 00eh,074h,005h	; 9d6d
	defb 00ch,077h,007h	; 9d70
	defb 00fh,000h,000h	; 9d73
	defb 0ffh	; 9d76

; ----------------------------------------------------------------------
; DATOS paletas_de_cada_juego: la paleta de cada juego de dibujos (0xC482),
;   una palabra; lo leen p00:55AE (16 bytes)
;   0x9d77..0x9d87  (16 bytes)
DATA_paletas_de_cada_juego:
	defb 087h,09dh	; 9d77
	defb 097h,09dh	; 9d79
	defb 0adh,09dh	; 9d7b
	defb 0bdh,09dh	; 9d7d
	defb 0cdh,09dh	; 9d7f
	defb 0efh,09dh	; 9d81
	defb 005h,09eh	; 9d83
	defb 005h,09eh	; 9d85

; ----------------------------------------------------------------------
; DATOS paleta_9D87: la paleta del juego 0 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55B4 (16 bytes)
;   0x9d87..0x9d97  (16 bytes)
DATA_paleta_9D87:
	defb 001h,031h,002h	; 9d87
	defb 002h,053h,004h	; 9d8a
	defb 003h,001h,002h	; 9d8d
	defb 004h,001h,004h	; 9d90
	defb 005h,043h,006h	; 9d93
	defb 0ffh	; 9d96

; ----------------------------------------------------------------------
; DATOS paleta_9D97: la paleta del juego 1 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55B4 (22 bytes)
;   0x9d97..0x9dad  (22 bytes)
DATA_paleta_9D97:
	defb 001h,014h,004h	; 9d97
	defb 002h,013h,003h	; 9d9a
	defb 003h,034h,006h	; 9d9d
	defb 004h,011h,003h	; 9da0
	defb 005h,010h,001h	; 9da3
	defb 006h,053h,004h	; 9da6
	defb 009h,031h,002h	; 9da9
	defb 0ffh	; 9dac

; ----------------------------------------------------------------------
; DATOS paleta_9DAD: la paleta del juego 2 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55B4 (16 bytes)
;   0x9dad..0x9dbd  (16 bytes)
DATA_paleta_9DAD:
	defb 001h,075h,005h	; 9dad
	defb 002h,043h,003h	; 9db0
	defb 003h,031h,002h	; 9db3
	defb 004h,010h,001h	; 9db6
	defb 005h,021h,001h	; 9db9
	defb 0ffh	; 9dbc

; ----------------------------------------------------------------------
; DATOS paleta_9DBD: la paleta del juego 3 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55B4 (16 bytes)
;   0x9dbd..0x9dcd  (16 bytes)
DATA_paleta_9DBD:
	defb 001h,020h,001h	; 9dbd
	defb 002h,010h,000h	; 9dc0
	defb 003h,021h,001h	; 9dc3
	defb 004h,030h,002h	; 9dc6
	defb 005h,042h,003h	; 9dc9
	defb 0ffh	; 9dcc

; ----------------------------------------------------------------------
; DATOS paleta_9DCD: la paleta del juego 4 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55B4 (34 bytes)
;   0x9dcd..0x9def  (34 bytes)
DATA_paleta_9DCD:
	defb 001h,000h,003h	; 9dcd
	defb 002h,030h,005h	; 9dd0
	defb 003h,030h,002h	; 9dd3
	defb 004h,035h,004h	; 9dd6
	defb 005h,056h,005h	; 9dd9
	defb 008h,055h,005h	; 9ddc
	defb 00ah,070h,000h	; 9ddf
	defb 00ch,077h,007h	; 9de2
	defb 00dh,061h,001h	; 9de5
	defb 00eh,074h,005h	; 9de8
	defb 00fh,000h,000h	; 9deb
	defb 0ffh	; 9dee

; ----------------------------------------------------------------------
; DATOS paleta_9DEF: la paleta del juego 5 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55B4 (22 bytes)
;   0x9def..0x9e05  (22 bytes)
DATA_paleta_9DEF:
	defb 001h,064h,006h	; 9def
	defb 002h,043h,004h	; 9df2
	defb 003h,020h,002h	; 9df5
	defb 004h,032h,003h	; 9df8
	defb 005h,070h,005h	; 9dfb
	defb 006h,063h,004h	; 9dfe
	defb 009h,042h,003h	; 9e01
	defb 0ffh	; 9e04

; ----------------------------------------------------------------------
; DATOS paleta_9E05: la paleta del juego 6 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55B4 (19 bytes)
;   0x9e05..0x9e18  (19 bytes)
DATA_paleta_9E05:
	defb 000h,042h,003h	; 9e05
	defb 001h,053h,004h	; 9e08
	defb 002h,011h,001h	; 9e0b
	defb 003h,021h,001h	; 9e0e
	defb 004h,022h,002h	; 9e11
	defb 005h,032h,002h	; 9e14
	defb 0ffh	; 9e17

; ----------------------------------------------------------------------
; DATOS leido_9E18: lo leen en la partida medida en openMSX p00:4D3F (4
;   bytes), p00:4D44 (3 bytes), p00:4D46 (3 bytes) (20 bytes)
;   0x9e18..0x9e2c  (20 bytes)
DATA_leido_9E18:
	defb 007h,007h,004h,00bh,055h,005h,00ch,077h,007h,0ffh,007h,042h,003h,00bh,031h,002h	; 9e18  ....U..w...B..1.
	defb 00eh,064h,005h,0ffh	; 9e28

; ----------------------------------------------------------------------
; DATOS paletas_de_cada_area: la paleta de cada area (0xC480), una palabra; lo
;   leen p00:55BA (48 bytes)
;   0x9e2c..0x9e5c  (48 bytes)
DATA_paletas_de_cada_area:
	defb 05ch,09eh	; 9e2c
	defb 05dh,09eh	; 9e2e
	defb 05eh,09eh	; 9e30
	defb 05fh,09eh	; 9e32
	defb 060h,09eh	; 9e34
	defb 061h,09eh	; 9e36
	defb 062h,09eh	; 9e38
	defb 063h,09eh	; 9e3a
	defb 064h,09eh	; 9e3c
	defb 065h,09eh	; 9e3e
	defb 066h,09eh	; 9e40
	defb 067h,09eh	; 9e42
	defb 068h,09eh	; 9e44
	defb 069h,09eh	; 9e46
	defb 06ah,09eh	; 9e48
	defb 06bh,09eh	; 9e4a
	defb 06ch,09eh	; 9e4c
	defb 06dh,09eh	; 9e4e
	defb 06eh,09eh	; 9e50
	defb 075h,09eh	; 9e52
	defb 07ch,09eh	; 9e54
	defb 083h,09eh	; 9e56
	defb 08dh,09eh	; 9e58
	defb 094h,09eh	; 9e5a

; ----------------------------------------------------------------------
; DATOS paleta_9E5C: la paleta del area 0 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e5c..0x9e5d  (1 bytes)
DATA_paleta_9E5C:
	defb 0ffh	; 9e5c

; ----------------------------------------------------------------------
; DATOS paleta_9E5D: la paleta del area 1 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e5d..0x9e5e  (1 bytes)
DATA_paleta_9E5D:
	defb 0ffh	; 9e5d

; ----------------------------------------------------------------------
; DATOS paleta_9E5E: la paleta del area 2 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e5e..0x9e5f  (1 bytes)
DATA_paleta_9E5E:
	defb 0ffh	; 9e5e

; ----------------------------------------------------------------------
; DATOS paleta_9E5F: la paleta del area 3 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e5f..0x9e60  (1 bytes)
DATA_paleta_9E5F:
	defb 0ffh	; 9e5f

; ----------------------------------------------------------------------
; DATOS paleta_9E60: la paleta del area 4 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e60..0x9e61  (1 bytes)
DATA_paleta_9E60:
	defb 0ffh	; 9e60

; ----------------------------------------------------------------------
; DATOS paleta_9E61: la paleta del area 5 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e61..0x9e62  (1 bytes)
DATA_paleta_9E61:
	defb 0ffh	; 9e61

; ----------------------------------------------------------------------
; DATOS paleta_9E62: la paleta del area 6 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e62..0x9e63  (1 bytes)
DATA_paleta_9E62:
	defb 0ffh	; 9e62

; ----------------------------------------------------------------------
; DATOS paleta_9E63: la paleta del area 7 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e63..0x9e64  (1 bytes)
DATA_paleta_9E63:
	defb 0ffh	; 9e63

; ----------------------------------------------------------------------
; DATOS paleta_9E64: la paleta del area 8 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e64..0x9e65  (1 bytes)
DATA_paleta_9E64:
	defb 0ffh	; 9e64

; ----------------------------------------------------------------------
; DATOS paleta_9E65: la paleta del area 9 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e65..0x9e66  (1 bytes)
DATA_paleta_9E65:
	defb 0ffh	; 9e65

; ----------------------------------------------------------------------
; DATOS paleta_9E66: la paleta del area 10 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e66..0x9e67  (1 bytes)
DATA_paleta_9E66:
	defb 0ffh	; 9e66

; ----------------------------------------------------------------------
; DATOS paleta_9E67: la paleta del area 11 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e67..0x9e68  (1 bytes)
DATA_paleta_9E67:
	defb 0ffh	; 9e67

; ----------------------------------------------------------------------
; DATOS paleta_9E68: la paleta del area 12 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e68..0x9e69  (1 bytes)
DATA_paleta_9E68:
	defb 0ffh	; 9e68

; ----------------------------------------------------------------------
; DATOS paleta_9E69: la paleta del area 13 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e69..0x9e6a  (1 bytes)
DATA_paleta_9E69:
	defb 0ffh	; 9e69

; ----------------------------------------------------------------------
; DATOS paleta_9E6A: la paleta del area 14 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e6a..0x9e6b  (1 bytes)
DATA_paleta_9E6A:
	defb 0ffh	; 9e6a

; ----------------------------------------------------------------------
; DATOS paleta_9E6B: la paleta del area 15 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e6b..0x9e6c  (1 bytes)
DATA_paleta_9E6B:
	defb 0ffh	; 9e6b

; ----------------------------------------------------------------------
; DATOS paleta_9E6C: la paleta del area 16 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e6c..0x9e6d  (1 bytes)
DATA_paleta_9E6C:
	defb 0ffh	; 9e6c

; ----------------------------------------------------------------------
; DATOS paleta_9E6D: la paleta del area 17 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (1 bytes)
;   0x9e6d..0x9e6e  (1 bytes)
DATA_paleta_9E6D:
	defb 0ffh	; 9e6d

; ----------------------------------------------------------------------
; DATOS paleta_9E6E: la paleta del area 18 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (7 bytes)
;   0x9e6e..0x9e75  (7 bytes)
DATA_paleta_9E6E:
	defb 007h,025h,003h	; 9e6e
	defb 00bh,047h,005h	; 9e71
	defb 0ffh	; 9e74

; ----------------------------------------------------------------------
; DATOS paleta_9E75: la paleta del area 19 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (7 bytes)
;   0x9e75..0x9e7c  (7 bytes)
DATA_paleta_9E75:
	defb 007h,050h,002h	; 9e75
	defb 00bh,043h,004h	; 9e78
	defb 0ffh	; 9e7b

; ----------------------------------------------------------------------
; DATOS paleta_9E7C: la paleta del area 20 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (7 bytes)
;   0x9e7c..0x9e83  (7 bytes)
DATA_paleta_9E7C:
	defb 007h,041h,002h	; 9e7c
	defb 00bh,063h,004h	; 9e7f
	defb 0ffh	; 9e82

; ----------------------------------------------------------------------
; DATOS paleta_9E83: la paleta del area 21 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (10 bytes)
;   0x9e83..0x9e8d  (10 bytes)
DATA_paleta_9E83:
	defb 007h,031h,002h	; 9e83
	defb 008h,042h,002h	; 9e86
	defb 00bh,026h,004h	; 9e89
	defb 0ffh	; 9e8c

; ----------------------------------------------------------------------
; DATOS paleta_9E8D: la paleta del area 22 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (7 bytes)
;   0x9e8d..0x9e94  (7 bytes)
DATA_paleta_9E8D:
	defb 007h,051h,003h	; 9e8d
	defb 00bh,062h,005h	; 9e90
	defb 0ffh	; 9e93

; ----------------------------------------------------------------------
; DATOS paleta_9E94: la paleta del area 23 (y de los que la comparten):
;   [color][RB][G] ... 0xFF; lo leen p00:55C0 (7 bytes)
;   0x9e94..0x9e9b  (7 bytes)
DATA_paleta_9E94:
	defb 007h,037h,005h	; 9e94
	defb 00bh,015h,003h	; 9e97
	defb 0ffh	; 9e9a

; ----------------------------------------------------------------------
; DATOS dibujos_9E9B: 2 dibujos de 8x8 a 4 bits (32 bytes cada uno) que la
;   lista de 0x61E9 sube a la hoja desde el 08; lo leen p00:54CC (lista
;   0x61E9) (64 bytes)
;   0x9e9b..0x9edb  (64 bytes)
DATA_dibujos_9E9B:
	defb 000h,00fh,000h,000h,000h,0feh,0f0h,000h	; 9e9b  ........
	defb 000h,0efh,09fh,000h,00fh,069h,0e6h,0f0h	; 9ea3  .....i..
	defb 0f6h,096h,0feh,06fh,0feh,06fh,0f9h,0e9h	; 9eab  ...o.o..
	defb 0f9h,0fbh,00fh,066h,09fh,000h,00fh,066h	; 9eb3  ...f...f
	defb 000h,0feh,0f0h,000h,00fh,0efh,0efh,000h	; 9ebb  ........
	defb 000h,0f0h,0feh,0f0h,000h,00fh,0f6h,0f0h	; 9ec3  ........
	defb 000h,0feh,0f6h,0ffh,0f0h,00fh,0e9h,0f6h	; 9ecb  ........
	defb 0f0h,0e6h,0ffh,096h,0f0h,00fh,09eh,06fh	; 9ed3  .......o

; ----------------------------------------------------------------------
; DATOS dibujos_9EDB: 2 dibujos de 8x8 a 4 bits (32 bytes cada uno) que la
;   lista de 0x61E9 sube a la hoja desde el 28; lo leen p00:54CC (lista
;   0x61E9) (64 bytes)
;   0x9edb..0x9f1b  (64 bytes)
DATA_dibujos_9EDB:
	defb 0f0h,000h,0f6h,0efh,000h,000h,0f6h,06fh	; 9edb  .......o
	defb 000h,00fh,06eh,09fh,000h,00fh,06eh,0f0h	; 9ee3  ..n...n.
	defb 000h,0f6h,0e6h,0f0h,000h,0f6h,0e9h,0ffh	; 9eeb  ........
	defb 00fh,06eh,096h,06fh,00fh,099h,06eh,09fh	; 9ef3  .n.o..n.
	defb 000h,0feh,0f6h,0f0h,0ffh,0efh,0efh,06fh	; 9efb  .......o
	defb 0e6h,0f6h,096h,09fh,0ffh,0e6h,0f9h,0f9h	; 9f03  ........
	defb 0feh,0feh,0feh,09fh,0efh,0efh,069h,0feh	; 9f0b  ......i.
	defb 0f6h,0feh,09eh,0feh,0ffh,0e6h,0efh,0efh	; 9f13  ........

; ----------------------------------------------------------------------
; DATOS dibujos_9F1B: 2 dibujos de 8x8 a 4 bits (32 bytes cada uno) que la
;   lista de 0x61E9 sube a la hoja desde el 48; lo leen p00:54CC (lista
;   0x61E9) (64 bytes)
;   0x9f1b..0x9f5b  (64 bytes)
DATA_dibujos_9F1B:
	defb 00fh,06eh,0e9h,09eh,00fh,096h,099h,06eh	; 9f1b  .n.....n
	defb 000h,0f9h,096h,0eeh,000h,0f9h,066h,066h	; 9f23  ......ff
	defb 000h,00fh,096h,066h,000h,000h,0f9h,06eh	; 9f2b  ...f...n
	defb 000h,000h,00fh,0f9h,000h,000h,000h,00fh	; 9f33  ........
	defb 0feh,0f6h,099h,0feh,0e9h,0efh,0efh,06fh	; 9f3b  .......o
	defb 0eeh,096h,0e9h,0f0h,0e9h,06eh,0feh,09fh	; 9f43  .....n..
	defb 066h,09fh,06fh,0f0h,06eh,069h,09fh,06fh	; 9f4b  f.o.ni.o
	defb 069h,0ffh,0feh,09fh,0ffh,09fh,00fh,0f0h	; 9f53  i.......

; ----------------------------------------------------------------------
; DATOS dibujos_9F5B: 2 dibujos de 8x8 a 4 bits (32 bytes cada uno) que la
;   lista de 0x61E9 sube a la hoja desde el 68; lo leen p00:54CC (lista
;   0x61E9) (64 bytes)
;   0x9f5b..0x9f9b  (64 bytes)
DATA_dibujos_9F5B:
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; 9f5b  ........
	defb 000h,000h,000h,00fh,000h,000h,00fh,0f9h	; 9f63  ........
	defb 000h,000h,0f9h,09eh,000h,000h,0f6h,099h	; 9f6b  ........
	defb 000h,000h,00fh,066h,000h,000h,000h,0ffh	; 9f73  ...f....
	defb 0f9h,0f0h,000h,000h,0f6h,0f0h,000h,000h	; 9f7b  ........
	defb 069h,0f0h,000h,000h,06eh,09fh,0f0h,000h	; 9f83  i...n...
	defb 069h,069h,09fh,000h,099h,099h,06fh,000h	; 9f8b  ii....o.
	defb 069h,096h,0f0h,000h,0ffh,0ffh,000h,000h	; 9f93  i.......

; ----------------------------------------------------------------------
; DATOS dibujos_9F9B: 6 dibujos de 8x8 a 3 bits (24 bytes cada uno) que la
;   lista de 0x61E9 sube a la hoja desde el 0A; lo leen p00:54CC (lista
;   0x61E9) (101 bytes)
;   0x9f9b..0xa000  (101 bytes)
DATA_dibujos_9F9B:
	defb 019h,01eh,01fh,03ch,020h,03fh,06ah,05ch	; 9f9b  ...< ?j\
	defb 07fh,07dh,05eh,07fh,0fah,09fh,0ffh,0ffh	; 9fa3  .}^.....
	defb 08eh,0ffh,0beh,0c1h,0ffh,0b5h,0cfh,0ffh	; 9fab  ........
	defb 018h,078h,0f8h,004h,01ch,0fch,04ah,03eh	; 9fb3  .x....J>
	defb 0feh,03ah,07eh,0feh,05dh,0fbh,0ffh,0f3h	; 9fbb  .:~.]...
	defb 071h,0ffh,06dh,083h,0ffh,0a3h,0f1h,0ffh	; 9fc3  q.m.....
	defb 018h,01eh,01fh,03fh,020h,03fh,07ah,040h	; 9fcb  ...? ?z@
	defb 07fh,06dh,050h,07fh,0eeh,090h,0ffh,0b3h	; 9fd3  .mP.....
	defb 09ch,0ffh,0fch,09fh,0ffh,0bbh,0deh,0ffh	; 9fdb  ........
	defb 018h,078h,0f8h,004h,01ch,0fch,042h,006h	; 9fe3  .x....B.
	defb 0feh,092h,00eh,0feh,031h,009h,0ffh,0c9h	; 9feb  ....1...
	defb 03bh,0ffh,03dh,0fbh,0ffh,0dfh,079h,0ffh	; 9ff3  ;.=...y.
	defb 000h,000h,000h,000h,000h	; 9ffb
