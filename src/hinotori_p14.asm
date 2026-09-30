; ==========================================================================
; HINOTORI - Konami (1987) - MSX - MegaROM RC-747 de 128 KB (Konami4) - banco 14 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; DATOS dibujos_7F4B_cola: 25 dibujos de 8x8 a 1 bit (8 bytes cada uno) que la
;   lista de 0x63A3 sube a la hoja desde el 40 (sigue del banco anterior,
;   0x7F4B); se solapan 4 bloques (0x8000-0x8013, 0x800B-0x8053,
;   0x804B-0x8113, 0x810B-0x814B); lo leen p00:54CC (lista 0x63A3) (331 bytes)
;   0x8000..0x814b  (331 bytes)
DATA_dibujos_7F4B_cola:
	defb 019h,01fh,019h,000h,000h,0c0h,010h,0f8h	; 8000  ........
	defb 030h,0f0h,030h,013h,03bh,033h,067h,055h	; 8008  0.0.;3gU
	defb 099h,039h,031h,006h,0ffh,004h,0feh,08ch	; 8010  .91.....
	defb 0fch,08ch,0fch,040h,020h,030h,037h,080h	; 8018  ...@ 07.
	defb 040h,06fh,060h,010h,038h,0fch,0e0h,060h	; 8020  @o`.8..`
	defb 062h,0ffh,060h,000h,00fh,007h,000h,000h	; 8028  b.`.....
	defb 000h,000h,000h,000h,0ffh,0ffh,03ch,03ch	; 8030  ......<<
	defb 03ch,03ch,03ch,000h,0ffh,0ffh,0f0h,0f0h	; 8038  <<<.....
	defb 0f0h,0f0h,0f0h,0c0h,0e0h,0f0h,000h,000h	; 8040  ........
	defb 000h,000h,000h,007h,003h,006h,004h,00ch	; 8048  ........
	defb 010h,000h,000h,098h,0d8h,0d8h,018h,078h	; 8050  .......x
	defb 030h,000h,000h,00ch,00ch,00ch,00ch,00fh	; 8058  0.......
	defb 007h,000h,000h,000h,000h,000h,000h,0f8h	; 8060  ........
	defb 0f8h,000h,000h,036h,036h,03ch,00ch,01eh	; 8068  ...66<..
	defb 033h,000h,000h,0d8h,0d8h,0d8h,0d8h,0f8h	; 8070  3.......
	defb 090h,000h,000h,00ch,00fh,00ch,018h,018h	; 8078  ........
	defb 020h,000h,000h,030h,0f0h,030h,030h,070h	; 8080   ..0.00p
	defb 030h,000h,000h,018h,02ch,00ch,00ch,00ch	; 8088  0...,...
	defb 008h,000h,000h,030h,030h,030h,030h,0f0h	; 8090  ...0000.
	defb 070h,000h,000h,012h,02eh,00ch,00ch,018h	; 8098  p.......
	defb 030h,000h,000h,0e0h,0c0h,0c0h,0c4h,0fch	; 80a0  0.......
	defb 078h,000h,000h,003h,006h,006h,00ch,018h	; 80a8  x.......
	defb 020h,000h,000h,000h,080h,0c0h,060h,038h	; 80b0   .....`8
	defb 018h,000h,000h,030h,01fh,001h,001h,001h	; 80b8  ...0....
	defb 03fh,000h,000h,010h,0f8h,080h,080h,088h	; 80c0  ?.......
	defb 0fch,000h,000h,007h,005h,00dh,019h,023h	; 80c8  .......#
	defb 001h,000h,000h,0a0h,0b0h,0b8h,09ch,088h	; 80d0  ........
	defb 080h,000h,000h,036h,03eh,031h,001h,006h	; 80d8  ...6>1..
	defb 000h,000h,000h,0d8h,0f8h,098h,098h,038h	; 80e0  .......8
	defb 010h,000h,000h,01eh,006h,006h,004h,00ch	; 80e8  ........
	defb 010h,000h,000h,0d8h,0c0h,0c0h,0c8h,0c8h	; 80f0  ........
	defb 078h,000h,000h,01fh,017h,005h,00dh,019h	; 80f8  x.......
	defb 020h,000h,000h,0f8h,0b0h,0a8h,0fch,088h	; 8100   .......
	defb 0fch,000h,000h,060h,0b1h,031h,033h,034h	; 8108  ...`.134
	defb 030h,033h,02ch,084h,0feh,09ch,058h,030h	; 8110  03,...X0
	defb 0fch,08fh,002h,00ah,01bh,093h,073h,063h	; 8118  ......sc
	defb 073h,073h,022h,06ch,0feh,00ch,00ch,00ch	; 8120  ss"l....
	defb 00ch,0fch,00ch,000h,000h,000h,000h,000h	; 8128  ........
	defb 003h,007h,03ch,03ch,078h,078h,0f0h,0f0h	; 8130  ..<<xx..
	defb 0e0h,080h,000h,0f0h,0f0h,0f0h,0f0h,0f0h	; 8138  ........
	defb 078h,07fh,03fh,000h,008h,008h,008h,00ch	; 8140  x.?.....
	defb 01eh,0feh,0fch	; 8148

; ----------------------------------------------------------------------
; DATOS sin_lector_814B: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (96 bytes)
;   0x814b..0x81ab  (96 bytes)
DATA_sin_lector_814B:
	defb 010h,01ch,019h,0ffh,018h,0ffh,0dbh,0ffh,0dah,0feh,098h,01ah,0ffh,018h,018h,010h	; 814b  ................
	defb 000h,018h,038h,036h,063h,0c1h,0ffh,000h,0ffh,0d5h,0d5h,0ffh,0d5h,0d5h,0d7h,083h	; 815b  ..86c...........
	defb 000h,004h,03eh,004h,00ch,0c8h,09eh,006h,086h,096h,0bch,0ach,08ch,08fh,09bh,0a0h	; 816b  ..>.............
	defb 000h,0c0h,0ffh,0c1h,0d5h,0ddh,0d5h,0d5h,0d5h,0ddh,0c1h,0ffh,081h,000h,0ffh,0ffh	; 817b  ................
	defb 000h,080h,0c0h,080h,080h,080h,080h,080h,080h,080h,080h,080h,000h,000h,0e0h,0c0h	; 818b  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 819b  ................

; ----------------------------------------------------------------------
; DATOS dibujos_81AB: 22 dibujos de 8x8 a 2 bits (16 bytes cada uno) que la
;   lista de 0x6371 sube a la hoja desde el 01; lo leen p00:54CC (lista
;   0x6371) (352 bytes)
;   0x81ab..0x830b  (352 bytes)
DATA_dibujos_81AB:
	defb 000h,000h,03ch,03ch,000h,000h,00bh,00bh,0c0h,0c0h,010h,010h,000h,000h,000h,000h	; 81ab  ..<<............
	defb 03fh,03fh,0ffh,0ffh,03fh,03fh,007h,007h,03eh,03eh,000h,000h,000h,000h,000h,000h	; 81bb  ??..??..>>......
	defb 0ffh,0ffh,0f8h,0f8h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 81cb  ................
	defb 000h,000h,080h,000h,0e0h,000h,0f8h,000h,03eh,0c0h,0ffh,000h,00fh,0f0h,000h,0ffh	; 81db  ........>.......
	defb 000h,000h,040h,0a0h,070h,088h,018h,0e4h,03ch,0c2h,00fh,0f0h,07ch,082h,030h,0cch	; 81eb  ..@.p...<...|.0.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,081h,080h,062h,0e0h,01ch	; 81fb  .............b..
	defb 000h,000h,000h,001h,000h,003h,000h,007h,00ch,0cfh,00eh,08fh,018h,01fh,03ch,03fh	; 820b  ..............<?
	defb 000h,0feh,000h,0ffh,0c2h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,07fh,0ffh,003h,0ffh	; 821b  ................
	defb 066h,076h,03eh,0feh,00ch,0fch,0f8h,0f8h,0e0h,0e0h,0fch,0fch,080h,080h,0f2h,0f2h	; 822b  fv>.............
	defb 000h,0ffh,07fh,0ffh,0ffh,0ffh,000h,000h,0fch,0fch,000h,000h,000h,000h,000h,000h	; 823b  ................
	defb 066h,076h,03eh,0feh,00ch,0fch,0f9h,0f9h,0e7h,0e7h,0f8h,0f8h,081h,081h,0f6h,0f6h	; 824b  fv>.............
	defb 0f8h,0ffh,080h,0ffh,0ffh,0ffh,0ffh,0ffh,07fh,07fh,000h,000h,01fh,01fh,000h,000h	; 825b  ................
	defb 000h,000h,00fh,008h,008h,00fh,01bh,014h,010h,09fh,018h,01fh,00fh,00fh,00eh,00fh	; 826b  ................
	defb 000h,000h,000h,000h,008h,009h,031h,031h,0c4h,0c7h,000h,000h,0c2h,003h,060h,098h	; 827b  ......11......`.
	defb 000h,000h,020h,0c0h,078h,080h,03eh,0c0h,07fh,080h,08eh,0f1h,038h,0c6h,081h,0f9h	; 828b  .. .x.>.....8...
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,05eh,061h,0c7h,0f8h,000h,0ffh	; 829b  ..........^a....
	defb 007h,007h,003h,0c3h,0e1h,011h,0f8h,006h,07fh,080h,001h,0feh,000h,0ffh,030h,0ffh	; 82ab  ..............0.
	defb 0f0h,0ffh,0e0h,0ffh,0ffh,0ffh,07fh,07fh,01fh,0dfh,0e1h,019h,00ch,0f3h,000h,0ffh	; 82bb  ................
	defb 03fh,03fh,07eh,07fh,0f5h,0f6h,0ceh,0cch,018h,018h,020h,020h,000h,000h,000h,000h	; 82cb  ??~.......  ....
	defb 031h,0c1h,0c1h,001h,083h,003h,00fh,00fh,003h,003h,000h,000h,000h,000h,000h,000h	; 82db  1...............
	defb 0c1h,0feh,000h,0ffh,0f8h,0ffh,0ffh,0ffh,0f8h,0ffh,01fh,01fh,0ffh,0ffh,00fh,00fh	; 82eb  ................
	defb 0fch,003h,03fh,0c0h,0ffh,000h,007h,0f8h,000h,0ffh,0e0h,0ffh,000h,0ffh,0e2h,0ffh	; 82fb  ..?.............

; ----------------------------------------------------------------------
; DATOS dibujos_830B: 61 dibujos de 8x8 a 2 bits (16 bytes cada uno) que la
;   lista de 0x6371 sube a la hoja desde el 17; lo leen p00:54CC (lista
;   0x6371) (976 bytes)
;   0x830b..0x86db  (976 bytes)
DATA_dibujos_830B:
	defb 02fh,000h,04dh,000h,05ah,000h,055h,000h,013h,000h,016h,000h,004h,000h,008h,000h	; 830b  /.M.Z.U.........
	defb 008h,000h,009h,000h,041h,000h,001h,000h,001h,000h,008h,000h,040h,000h,000h,000h	; 831b  ....A.......@...
	defb 002h,000h,002h,000h,000h,000h,008h,000h,000h,000h,000h,000h,040h,000h,000h,000h	; 832b  ............@...
	defb 034h,000h,015h,000h,00bh,000h,00bh,000h,011h,000h,02dh,000h,042h,000h,00ch,000h	; 833b  4.........-.B...
	defb 01eh,000h,006h,000h,000h,000h,000h,000h,010h,000h,000h,000h,041h,000h,000h,000h	; 834b  ............A...
	defb 040h,000h,040h,000h,001h,000h,000h,000h,010h,000h,000h,000h,000h,000h,004h,000h	; 835b  @.@.............
	defb 020h,000h,080h,000h,080h,000h,082h,000h,040h,000h,000h,000h,000h,000h,000h,000h	; 836b   .......@.......
	defb 0cch,000h,0e4h,000h,020h,000h,090h,000h,0c2h,000h,040h,000h,068h,000h,020h,000h	; 837b  .... .....@.h. .
	defb 010h,000h,008h,000h,018h,000h,018h,000h,001h,000h,001h,000h,000h,000h,000h,000h	; 838b  ................
	defb 0f4h,000h,074h,000h,036h,000h,026h,000h,060h,000h,040h,000h,040h,000h,020h,000h	; 839b  ..t.6.&.`.@.@. .
	defb 0f9h,000h,0d8h,000h,0ech,000h,02ch,000h,094h,000h,0d4h,000h,044h,000h,040h,000h	; 83ab  ......,.....D.@.
	defb 000h,000h,080h,000h,0e0h,000h,070h,000h,070h,000h,070h,000h,000h,000h,000h,000h	; 83bb  ......p.p.p.....
	defb 003h,000h,001h,000h,010h,000h,000h,000h,0c0h,000h,0f0h,000h,078h,000h,038h,000h	; 83cb  ............x.8.
	defb 0feh,000h,080h,000h,0f8h,000h,00fh,000h,001h,000h,000h,000h,000h,000h,000h,000h	; 83db  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,020h,000h,000h,000h,0fch,000h	; 83eb  .......... .....
	defb 000h,000h,000h,000h,044h,000h,000h,000h,000h,000h,040h,000h,010h,000h,081h,000h	; 83fb  ....D.....@.....
	defb 08ch,000h,08ch,000h,08ch,000h,08dh,000h,08ch,000h,084h,000h,0c6h,000h,063h,000h	; 840b  ..............c.
	defb 0b9h,000h,00fh,000h,001h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 841b  ................
	defb 010h,000h,032h,000h,020h,000h,044h,000h,040h,000h,040h,000h,040h,000h,040h,000h	; 842b  ..2. .D.@.@.@.@.
	defb 040h,000h,020h,000h,030h,000h,01eh,000h,026h,000h,000h,000h,092h,000h,000h,000h	; 843b  @. .0...&.......
	defb 000h,000h,000h,000h,008h,000h,000h,000h,000h,000h,040h,000h,000h,000h,002h,000h	; 844b  ..........@.....
	defb 0e4h,000h,0e0h,000h,0c4h,000h,000h,000h,000h,000h,030h,000h,000h,000h,000h,000h	; 845b  ..........0.....
	defb 001h,000h,00fh,000h,000h,000h,000h,000h,000h,000h,000h,000h,001h,000h,000h,000h	; 846b  ................
	defb 0f9h,000h,03eh,000h,08fh,000h,0e1h,000h,0f0h,000h,01fh,000h,0c0h,000h,000h,000h	; 847b  ..>.............
	defb 0f8h,000h,006h,000h,0f8h,000h,0e1h,000h,000h,000h,080h,000h,008h,000h,000h,000h	; 848b  ................
	defb 0bfh,000h,02fh,000h,04fh,000h,0dfh,000h,099h,000h,010h,000h,030h,000h,021h,000h	; 849b  ../.O.......0.!.
	defb 009h,000h,00ch,000h,006h,000h,022h,000h,002h,000h,00eh,000h,00ch,000h,000h,000h	; 84ab  ......".........
	defb 046h,000h,018h,000h,018h,000h,000h,000h,000h,000h,000h,000h,000h,000h,002h,000h	; 84bb  F...............
	defb 000h,000h,000h,000h,000h,008h,000h,000h,000h,000h,000h,040h,000h,009h,000h,001h	; 84cb  ...........@....
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0f8h,0f8h,00fh,00fh	; 84db  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,080h,080h,0e0h,0e0h,07fh,07fh,00fh,00fh	; 84eb  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,001h,001h,006h,006h,0fch,0fch	; 84fb  ................
	defb 000h,000h,0c4h,0c4h,0c0h,0c0h,0e0h,0e0h,030h,030h,00eh,00eh,0c0h,0c0h,0f8h,0f8h	; 850b  ........00......
	defb 001h,001h,010h,010h,080h,080h,080h,080h,0c0h,0c0h,0c0h,0c0h,0e2h,0e2h,0e0h,0e0h	; 851b  ................
	defb 000h,000h,000h,000h,000h,000h,001h,001h,003h,003h,007h,007h,00fh,00fh,01fh,01fh	; 852b  ................
	defb 000h,000h,000h,000h,000h,000h,080h,080h,0c0h,0c0h,0e0h,0e0h,0e0h,0e0h,0f0h,0f0h	; 853b  ................
	defb 000h,000h,008h,008h,0f0h,0f0h,0c0h,0c0h,000h,000h,000h,0a0h,000h,000h,000h,000h	; 854b  ................
	defb 000h,000h,000h,004h,041h,041h,003h,003h,007h,007h,007h,007h,00eh,00fh,04ch,04fh	; 855b  ....AA........LO
	defb 002h,003h,002h,003h,008h,00eh,010h,018h,0c1h,0e1h,002h,003h,004h,006h,008h,00ch	; 856b  ................
	defb 000h,003h,002h,01eh,010h,031h,020h,060h,040h,04ah,040h,0c4h,040h,0c0h,041h,0c9h	; 857b  .....1 `@J@.@.A.
	defb 0c0h,0e0h,060h,070h,060h,070h,0e0h,0f0h,0e0h,0f0h,0c0h,0e0h,000h,000h,000h,000h	; 858b  ..`p`p..........
	defb 000h,080h,008h,088h,080h,080h,041h,041h,060h,060h,03ch,03ch,00fh,00fh,040h,040h	; 859b  ......AA``<<..@@
	defb 020h,0e1h,010h,071h,000h,071h,000h,001h,000h,025h,000h,000h,000h,000h,000h,008h	; 85ab   ..q.q...%......
	defb 000h,000h,000h,000h,010h,010h,000h,000h,007h,007h,03bh,03fh,0f6h,0ffh,064h,0ffh	; 85bb  ..........;?..d.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,080h,080h,0f0h,0f0h,0feh,0feh,03fh,0ffh	; 85cb  ..............?.
	defb 031h,031h,003h,002h,00eh,008h,018h,010h,001h,000h,002h,000h,020h,000h,000h,000h	; 85db  11.......... ...
	defb 08ch,000h,007h,000h,003h,000h,008h,000h,0c0h,0c0h,0e0h,0e0h,0e4h,0e4h,0e0h,0e0h	; 85eb  ................
	defb 0d8h,006h,0d9h,004h,0bbh,000h,037h,000h,026h,000h,02eh,000h,02ah,000h,08ah,000h	; 85fb  ......7.&...*...
	defb 084h,040h,088h,040h,090h,000h,0a0h,000h,0b8h,000h,018h,080h,000h,080h,000h,080h	; 860b  .@.@............
	defb 008h,0d6h,031h,00ch,0c2h,039h,00ch,063h,079h,002h,0c3h,004h,086h,008h,008h,010h	; 861b  ..1..9.cy.......
	defb 0b3h,04ch,033h,0cch,071h,086h,051h,086h,091h,002h,021h,002h,044h,003h,03eh,001h	; 862b  .L3.q.Q...!.D.>.
	defb 0deh,021h,0d7h,020h,093h,040h,099h,040h,009h,0c0h,009h,080h,009h,080h,089h,000h	; 863b  .!. .@.@........
	defb 0ffh,000h,05fh,080h,0f7h,000h,0bbh,000h,09ch,000h,087h,000h,001h,000h,000h,000h	; 864b  .._.............
	defb 021h,040h,007h,080h,01ch,000h,030h,000h,061h,080h,0c3h,004h,08ch,040h,090h,048h	; 865b  !@....0.a....@.H
	defb 00ch,080h,019h,080h,018h,000h,058h,000h,01ah,000h,018h,000h,058h,000h,008h,000h	; 866b  ......X.....X...
	defb 08ch,000h,007h,000h,003h,000h,008h,000h,000h,0c0h,000h,0e0h,000h,0e4h,000h,0e0h	; 867b  ................
	defb 080h,000h,080h,000h,080h,000h,080h,000h,080h,040h,080h,040h,084h,040h,080h,040h	; 868b  .........@.@.@.@
	defb 0bdh,042h,0fdh,002h,0fdh,002h,0f9h,002h,0f2h,004h,0e2h,004h,0c4h,008h,08dh,010h	; 869b  .B..............
	defb 082h,00ch,0c0h,006h,060h,007h,030h,007h,018h,003h,00ch,000h,00eh,000h,00eh,000h	; 86ab  ....`.0.........
	defb 0fbh,004h,0f7h,008h,0eeh,011h,0ceh,031h,08eh,071h,09ch,063h,0bdh,042h,0bdh,002h	; 86bb  .......1.q.c.B..
	defb 089h,012h,013h,024h,012h,024h,012h,024h,012h,024h,092h,024h,093h,000h,009h,010h	; 86cb  ...$.$.$.$.$....

; ----------------------------------------------------------------------
; DATOS dibujos_86DB: 58 dibujos de 8x8 a 2 bits (16 bytes cada uno) que la
;   lista de 0x6371 sube a la hoja desde el 54; lo leen p00:54CC (lista
;   0x6371) (928 bytes)
;   0x86db..0x8a7b  (928 bytes)
DATA_dibujos_86DB:
	defb 000h,000h,07fh,07fh,021h,03fh,084h,0e3h,01fh,080h,067h,001h,08fh,002h,032h,001h	; 86db  ....!?....g...2.
	defb 000h,000h,0fch,0fch,0ffh,0ffh,01fh,0ffh,07fh,0ffh,087h,0ffh,070h,08fh,0ffh,01fh	; 86eb  ............p...
	defb 0f0h,03fh,0cch,073h,09fh,063h,0ffh,00fh,0b0h,01fh,067h,038h,0dfh,021h,0ech,007h	; 86fb  .?.s.c....g8.!..
	defb 0ceh,031h,0bfh,047h,078h,09fh,077h,018h,0dfh,001h,0bah,001h,0b7h,000h,036h,000h	; 870b  .1.Gx.w.......6.
	defb 0f8h,0f8h,01ch,0fch,0fch,0fch,086h,0feh,062h,09eh,0ffh,07fh,0c7h,0ffh,001h,0ffh	; 871b  ........b.......
	defb 0e5h,0e6h,0ffh,0fch,03fh,0fch,0ebh,0fch,00bh,0fch,0d3h,03ch,0e3h,01ch,0ebh,014h	; 872b  ....?......<....
	defb 000h,000h,000h,000h,001h,001h,001h,001h,001h,001h,003h,003h,003h,002h,001h,003h	; 873b  ................
	defb 000h,000h,000h,000h,080h,080h,080h,080h,080h,000h,0c0h,000h,0c0h,000h,080h,040h	; 874b  ...............@
	defb 001h,001h,001h,001h,001h,009h,001h,041h,001h,001h,002h,003h,083h,092h,083h,082h	; 875b  .......A........
	defb 080h,000h,080h,000h,080h,002h,080h,000h,091h,001h,083h,043h,083h,043h,087h,047h	; 876b  ...........C.C.G
	defb 03ch,03fh,07fh,07fh,070h,07fh,0fch,0ffh,0c6h,0ffh,0f9h,0f7h,08eh,0f9h,077h,08ch	; 877b  <?..p.........w.
	defb 000h,000h,01fh,01fh,07eh,07fh,0ffh,0ffh,0f3h,0fch,0ffh,0fch,0fdh,0e2h,0ffh,0f8h	; 878b  ....~...........
	defb 000h,000h,0ffh,0ffh,000h,0fch,0bfh,0c0h,0f8h,000h,0fch,000h,0e6h,000h,03ah,000h	; 879b  ..............:.
	defb 01fh,0fch,006h,0feh,0e7h,09bh,077h,0c8h,079h,0c0h,07ch,080h,0eeh,080h,0f3h,080h	; 87ab  ......w.y.|.....
	defb 0efh,02fh,0feh,03fh,0ffh,01fh,0fdh,01fh,0ech,01fh,0e7h,01ch,0ebh,016h,0edh,012h	; 87bb  ./.?............
	defb 0fbh,0e4h,01bh,0f4h,00fh,0f0h,0efh,090h,07bh,0c0h,03ch,0c0h,0ach,040h,0e4h,000h	; 87cb  ........{.<..@..
	defb 0fbh,004h,0bfh,004h,03dh,006h,035h,006h,072h,003h,072h,003h,0d1h,001h,099h,001h	; 87db  ....=.5.r.r.....
	defb 0dfh,020h,0feh,020h,0cfh,020h,0c7h,020h,0c7h,020h,0c2h,000h,0c2h,000h,0c4h,000h	; 87eb  . . . . . ......
	defb 089h,001h,085h,001h,045h,001h,02ah,003h,0abh,002h,0c5h,006h,005h,006h,00bh,03ch	; 87fb  ....E.*........<
	defb 02fh,0e8h,015h,018h,009h,010h,039h,020h,053h,060h,0a2h,0c0h,046h,080h,044h,080h	; 880b  /.....9 S`..F.D.
	defb 000h,000h,001h,001h,001h,001h,001h,001h,002h,003h,003h,002h,003h,002h,002h,003h	; 881b  ................
	defb 000h,000h,080h,080h,080h,080h,080h,000h,0c0h,000h,0c0h,000h,0c0h,000h,080h,040h	; 882b  ...............@
	defb 001h,001h,001h,001h,001h,001h,021h,021h,001h,001h,042h,003h,013h,012h,003h,002h	; 883b  ......!!..B.....
	defb 080h,000h,080h,000h,080h,000h,080h,000h,090h,010h,080h,040h,080h,040h,080h,040h	; 884b  ...........@.@.@
	defb 001h,005h,000h,000h,000h,000h,0ffh,0ffh,0cfh,0ffh,037h,0ffh,049h,0feh,0b7h,0dbh	; 885b  ..........7.I...
	defb 003h,002h,003h,002h,007h,006h,007h,006h,0cfh,0cch,0ffh,0fch,0ffh,0fch,00fh,0fch	; 886b  ................
	defb 088h,042h,0c0h,000h,0c0h,020h,0c1h,021h,0d7h,037h,0dfh,03fh,0f8h,01fh,0ffh,01eh	; 887b  .B... .!.7.?....
	defb 000h,001h,020h,000h,000h,000h,0fch,0fch,0ffh,0ffh,08dh,0ffh,0f7h,0eeh,03bh,0f7h	; 888b  .. ...........;.
	defb 000h,003h,001h,0cfh,003h,07fh,01ch,03ch,000h,001h,061h,002h,01eh,000h,000h,000h	; 889b  .......<..a.....
	defb 0c9h,0ffh,099h,0eeh,033h,05ch,067h,099h,0cch,033h,088h,017h,031h,00ch,041h,039h	; 88ab  ....3\g..3..1.A9
	defb 06eh,0b7h,05ch,0efh,0b9h,0ceh,073h,09ch,0e7h,038h,0ceh,071h,0a6h,0dbh,04ch,0b3h	; 88bb  n.\...s..8.q..L.
	defb 03fh,0fch,0efh,09ch,0d7h,06ch,0a7h,0dch,007h,0fch,027h,0dch,0cbh,0b4h,05bh,0a4h	; 88cb  ?....l....'...[.
	defb 0ffh,01fh,0fbh,01fh,0f1h,01fh,0f1h,01eh,0f8h,017h,0e8h,017h,0fdh,002h,0deh,021h	; 88db  ...............!
	defb 098h,07fh,0cch,03fh,0c7h,0bch,0f3h,08eh,0f9h,0c7h,0fch,063h,0ffh,030h,0ffh,00ch	; 88eb  ...?.......c.0..
	defb 09fh,0fbh,04eh,0fch,063h,0beh,0e1h,01fh,0e0h,01eh,0f8h,047h,07dh,082h,0ffh,000h	; 88fb  ..N.c......G}...
	defb 0f8h,0f8h,0e0h,0e1h,080h,003h,0f4h,08ah,000h,0fch,000h,000h,080h,067h,080h,07eh	; 890b  .............g.~
	defb 080h,073h,00eh,0cch,03ch,000h,0e3h,000h,004h,000h,008h,000h,009h,000h,001h,000h	; 891b  .s..<...........
	defb 0f7h,000h,08dh,002h,01bh,004h,072h,00ch,0e6h,030h,046h,060h,08ch,0c0h,08ch,0c0h	; 892b  ......r..0F`....
	defb 011h,081h,021h,011h,02ah,003h,042h,023h,044h,026h,044h,0a6h,0d4h,026h,0e4h,006h	; 893b  ..!.*.B#D&D..&..
	defb 064h,006h,004h,026h,004h,006h,026h,027h,002h,003h,003h,043h,001h,009h,000h,000h	; 894b  d..&..&'...C....
	defb 001h,001h,001h,001h,001h,001h,003h,003h,003h,002h,001h,003h,001h,001h,001h,001h	; 895b  ................
	defb 080h,080h,080h,080h,080h,000h,0c0h,000h,0c0h,000h,080h,040h,080h,000h,080h,000h	; 896b  ...........@....
	defb 001h,001h,021h,021h,001h,001h,000h,001h,002h,003h,00bh,002h,003h,002h,043h,002h	; 897b  ..!!..........C.
	defb 003h,002h,0c3h,0c2h,0e5h,0e6h,0f7h,0f4h,077h,0f4h,07fh,0fch,03bh,0fch,0bfh,078h	; 898b  ........w...;..x
	defb 080h,040h,087h,047h,08fh,06fh,08fh,06fh,0cfh,02fh,0ddh,03fh,0ddh,03fh,0dch,03fh	; 899b  .@.G.o.o./.?.?.?
	defb 00ch,00fh,019h,01eh,01bh,01ch,01bh,01ch,039h,0beh,03dh,03eh,034h,0bfh,036h,03fh	; 89ab  ........9.=>4.6?
	defb 0b7h,078h,0b7h,078h,037h,0f8h,037h,0f8h,037h,0f8h,037h,0f8h,097h,078h,097h,078h	; 89bb  .x.x7.7.7.7..x.x
	defb 0edh,01eh,0e9h,01eh,0e9h,01eh,0ebh,01ch,0ebh,01dh,0e7h,019h,0e6h,01bh,0eeh,013h	; 89cb  ................
	defb 0f0h,0f0h,0f0h,0f0h,0d0h,0f0h,0d8h,0f8h,098h,0f8h,058h,0b8h,07dh,0bdh,0ech,03ch	; 89db  ..........X.}..<
	defb 035h,03bh,039h,03fh,07bh,07dh,07eh,07dh,0d7h,0fch,0d7h,0fch,095h,0feh,02dh,0f6h	; 89eb  5;9?{}~}......-.
	defb 0d7h,038h,057h,0b8h,067h,098h,0f7h,088h,0f7h,088h,0ffh,080h,0ffh,080h,07fh,080h	; 89fb  .8W.g...........
	defb 0edh,016h,0fbh,004h,0fbh,00ch,0f7h,009h,0eeh,013h,0eeh,013h,0e9h,016h,0ebh,014h	; 8a0b  ................
	defb 084h,07ch,054h,0ech,0b4h,0cch,024h,0dch,064h,09ch,0c6h,03eh,0c6h,03eh,097h,06bh	; 8a1b  .|T...$.d..>.>.k
	defb 02ah,0bfh,04eh,07bh,04fh,079h,097h,0f9h,02eh,0b1h,07fh,062h,05dh,042h,09bh,0c4h	; 8a2b  *.N{Oy.....b]B..
	defb 02bh,0dbh,02fh,0ddh,02dh,0dch,044h,0bch,09ah,076h,095h,073h,093h,070h,038h,0e8h	; 8a3b  +./.-.D..v.s.p8.
	defb 03dh,002h,06dh,000h,0edh,080h,0e4h,080h,0e4h,0c0h,072h,040h,039h,020h,004h,008h	; 8a4b  =.m.......r@9 ..
	defb 03ch,0ech,02fh,0e7h,087h,061h,080h,070h,0c0h,03ch,078h,007h,00ch,000h,043h,000h	; 8a5b  <./..a.p.<x...C.
	defb 020h,0e1h,010h,071h,000h,071h,000h,001h,024h,001h,000h,000h,000h,000h,008h,000h	; 8a6b   ..q.q..$.......

; ----------------------------------------------------------------------
; DATOS dibujos_8A7B: 4 dibujos de 8x8 a 3 bits (24 bytes cada uno) que la
;   lista de 0x61E9 sube a la hoja desde el 02; lo leen p00:54CC (lista
;   0x61E9) (96 bytes)
;   0x8a7b..0x8adb  (96 bytes)
DATA_dibujos_8A7B:
	defb 06dh,06fh,092h,0fdh,0ffh,002h,0fbh,0fdh	; 8a7b  mo......
	defb 004h,076h,07bh,08bh,09ah,0e1h,065h,0a2h	; 8a83  .v{...e.
	defb 09dh,0c1h,0f2h,02dh,031h,0f4h,079h,073h	; 8a8b  ...-1.ys
	defb 02ch,0ech,0d3h,07ch,0feh,083h,0bch,07eh	; 8a93  ,..|...~
	defb 043h,0c0h,0feh,0ffh,091h,00fh,06eh,082h	; 8a9b  C.....n.
	defb 072h,00fh,0f3h,0efh,072h,0f4h,0bch,037h	; 8aa3  r...r..7
	defb 06dh,06fh,092h,0fdh,0ffh,002h,0fbh,0fdh	; 8aab  mo......
	defb 004h,076h,07bh,08bh,09ah,0e1h,065h,0e2h	; 8ab3  .v{...e.
	defb 09dh,081h,09eh,049h,039h,0dch,039h,01bh	; 8abb  ...I9.9.
	defb 02ch,0ech,0d3h,07ch,0feh,083h,0bch,07eh	; 8ac3  ,..|...~
	defb 043h,0c0h,0feh,0ffh,091h,00fh,06eh,082h	; 8acb  C.....n.
	defb 072h,00fh,09fh,0cbh,03ah,0dch,0bch,01fh	; 8ad3  r...:...

; ----------------------------------------------------------------------
; DATOS dibujos_8ADB: 4 dibujos de 8x8 a 3 bits (24 bytes cada uno) que la
;   lista de 0x61E9 sube a la hoja desde el 20; lo leen p00:54CC (lista
;   0x61E9) (96 bytes)
;   0x8adb..0x8b3b  (96 bytes)
DATA_dibujos_8ADB:
	defb 000h,020h,020h,020h,060h,060h,000h,060h	; 8adb  .   ``.`
	defb 020h,011h,071h,031h,04dh,07dh,05dh,043h	; 8ae3   .q1M}]C
	defb 07dh,049h,022h,03eh,023h,010h,018h,017h	; 8aeb  }I">#...
	defb 00fh,00fh,00fh,03fh,03fh,03eh,0fdh,0fdh	; 8af3  ...??>..
	defb 0feh,0ffh,0ffh,0f8h,0cfh,0cfh,0f0h,01fh	; 8afb  ........
	defb 01fh,0e0h,01fh,03fh,0e0h,00fh,01fh,0f0h	; 8b03  ...?....
	defb 0e0h,020h,020h,0f8h,0c0h,0c0h,07eh,060h	; 8b0b  .  ...~`
	defb 0e0h,0bfh,0f0h,070h,0f7h,0f4h,00ch,0f9h	; 8b13  ...p....
	defb 0f9h,007h,070h,0fch,08fh,060h,0f0h,09fh	; 8b1b  ..p..`..
	defb 000h,008h,008h,008h,00ch,00ch,000h,00ch	; 8b23  ........
	defb 004h,010h,01ch,014h,064h,07ch,07ch,084h	; 8b2b  ....d||.
	defb 07ch,024h,088h,068h,018h,010h,070h,090h	; 8b33  |$.h..p.

; ----------------------------------------------------------------------
; DATOS dibujos_8B3B: 2 dibujos de 8x8 a 3 bits (24 bytes cada uno) que la
;   lista de 0x61E9 sube a la hoja desde el 25; lo leen p00:54CC (lista
;   0x61E9) (48 bytes)
;   0x8b3b..0x8b6b  (48 bytes)
DATA_dibujos_8B3B:
	defb 00fh,00fh,00fh,03fh,03fh,03fh,0ffh,0ffh	; 8b3b  ...???..
	defb 0ffh,0ffh,0feh,0f8h,0cfh,0cdh,0f1h,01fh	; 8b43  ........
	defb 013h,0e3h,01fh,037h,0e7h,07fh,00fh,08fh	; 8b4b  ...7....
	defb 0e0h,020h,020h,0f8h,0c0h,0c0h,0feh,060h	; 8b53  .  ....`
	defb 060h,0bfh,0f0h,0f0h,0f7h,0f4h,0ech,0f9h	; 8b5b  `.......
	defb 0f9h,097h,070h,0fch,0bfh,060h,0f0h,0bfh	; 8b63  ..p..`..

; ----------------------------------------------------------------------
; DATOS dibujos_8B6B: 4 dibujos de 8x8 a 3 bits (24 bytes cada uno) que la
;   lista de 0x61E9 sube a la hoja desde el 40; se solapan 2 bloques
;   (0x8B6B-0x8BCB, 0x8B83-0x8BB3); lo leen p00:54CC (lista 0x61E9) (96 bytes)
;   0x8b6b..0x8bcb  (96 bytes)
DATA_dibujos_8B6B:
	defb 01ch,01ch,01fh,006h,006h,007h,006h,006h	; 8b6b  ........
	defb 007h,01ch,01ch,01fh,01ch,008h,00bh,014h	; 8b73  ........
	defb 004h,00fh,01fh,00dh,00ch,017h,005h,00ch	; 8b7b  ........
	defb 06dh,06fh,092h,0fdh,0ffh,002h,0fbh,0fdh	; 8b83  mo......
	defb 004h,076h,07bh,08bh,09ah,0e1h,065h,0fah	; 8b8b  .v{...e.
	defb 0bdh,0b9h,09ah,055h,039h,0c4h,039h,003h	; 8b93  ...U9.9.
	defb 02ch,0ech,0d3h,07ch,0feh,083h,0bch,07eh	; 8b9b  ,..|...~
	defb 043h,0c0h,0feh,0ffh,091h,00fh,06eh,0bah	; 8ba3  C.....n.
	defb 07eh,03bh,09bh,0d7h,03ah,0c4h,0bch,007h	; 8bab  ~;..:...
	defb 060h,020h,0a0h,0c0h,080h,080h,040h,040h	; 8bb3  ` ....@@
	defb 0c0h,070h,010h,090h,090h,090h,060h,040h	; 8bbb  .p....`@
	defb 040h,0f0h,0f0h,090h,080h,0e0h,0a0h,090h	; 8bc3  @.......

; ----------------------------------------------------------------------
; DATOS dibujos_8BCB: 2 dibujos de 8x8 a 3 bits (24 bytes cada uno) que la
;   lista de 0x61E9 sube a la hoja desde el 45; lo leen p00:54CC (lista
;   0x61E9) (48 bytes)
;   0x8bcb..0x8bfb  (48 bytes)
DATA_dibujos_8BCB:
	defb 07fh,07fh,0ffh,0ffh,07fh,07fh,0ffh,07fh	; 8bcb  ........
	defb 07fh,07fh,07fh,0ffh,0bfh,0ffh,07fh,0ffh	; 8bd3  ........
	defb 09fh,01fh,0ffh,07fh,07fh,0ffh,07fh,07fh	; 8bdb  ........
	defb 02ch,0cch,0d7h,0fch,03eh,03bh,0fch,066h	; 8be3  ,...>;.f
	defb 067h,0f8h,0e6h,0e7h,0f1h,0efh,0eeh,0fch	; 8beb  g.......
	defb 0e2h,0e3h,0fdh,0fdh,0feh,0f8h,0f8h,0ffh	; 8bf3  ........

; ----------------------------------------------------------------------
; DATOS dibujos_8BFB: 4 dibujos de 8x8 a 3 bits (24 bytes cada uno) que la
;   lista de 0x61E9 sube a la hoja desde el 60; lo leen p00:54CC (lista
;   0x61E9) (96 bytes)
;   0x8bfb..0x8c5b  (96 bytes)
DATA_dibujos_8BFB:
	defb 00eh,008h,009h,00eh,00ch,00dh,00eh,00ch	; 8bfb  ........
	defb 00dh,004h,004h,007h,00ch,00ch,00fh,00ch	; 8c03  ........
	defb 00ch,00fh,01eh,01eh,01fh,01fh,01fh,01eh	; 8c0b  ........
	defb 080h,081h,07fh,0fdh,0f1h,002h,0f8h,0e9h	; 8c13  ........
	defb 007h,07ch,004h,083h,00ch,005h,0f7h,0c2h	; 8c1b  .|......
	defb 0c0h,0fdh,0f9h,049h,046h,0ffh,075h,075h	; 8c23  ...IF.uu
	defb 0a6h,086h,059h,09eh,09fh,061h,04ch,0efh	; 8c2b  ..Y..aL.
	defb 0b3h,063h,0c3h,09ch,058h,05ch,0e7h,026h	; 8c33  .c..X\.&
	defb 03eh,0dfh,09eh,0ech,065h,0ffh,05dh,04ch	; 8c3b  >...e.]L
	defb 080h,080h,0e0h,040h,000h,080h,000h,000h	; 8c43  ...@....
	defb 080h,000h,000h,080h,000h,000h,080h,000h	; 8c4b  ........
	defb 000h,080h,000h,000h,000h,000h,000h,000h	; 8c53  ........

; ----------------------------------------------------------------------
; DATOS dibujos_8C5B: 2 dibujos de 8x8 a 3 bits (24 bytes cada uno) que la
;   lista de 0x61E9 sube a la hoja desde el 65; lo leen p00:54CC (lista
;   0x61E9) (48 bytes)
;   0x8c5b..0x8c8b  (48 bytes)
DATA_dibujos_8C5B:
	defb 0ffh,07fh,07fh,0ffh,0bfh,03fh,0ffh,0bfh	; 8c5b  .....?..
	defb 03fh,0ffh,07fh,07fh,0ffh,07fh,07fh,0ffh	; 8c63  ?.......
	defb 07fh,07fh,0ffh,07fh,07fh,0bfh,0bfh,0ffh	; 8c6b  ........
	defb 0fah,0fah,0fdh,0fch,0fdh,0ffh,0fch,0fdh	; 8c73  ........
	defb 0ffh,0fdh,0fdh,0ffh,0fch,0fch,0ffh,0fah	; 8c7b  ........
	defb 0f8h,0fdh,0feh,0f8h,0f9h,0ffh,0fbh,0fah	; 8c83  ........

; ----------------------------------------------------------------------
; DATOS dibujos_8C8B: 8 dibujos de 8x8 a 3 bits (24 bytes cada uno) que la
;   lista de 0x61E9 sube a la hoja desde el 80; lo leen p00:54CC (lista
;   0x61E9) (192 bytes)
;   0x8c8b..0x8d4b  (192 bytes)
DATA_dibujos_8C8B:
	defb 00fh,00fh,00fh,00fh,00fh,00fh,007h,007h	; 8c8b  ........
	defb 007h,003h,003h,003h,001h,001h,001h,000h	; 8c93  ........
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; 8c9b  ........
	defb 0bdh,0b0h,072h,0efh,0ffh,0afh,0f5h,0e8h	; 8ca3  ..r.....
	defb 0c2h,0f7h,0c5h,0cdh,0fbh,0f3h,0e4h,07ch	; 8cab  .......|
	defb 07ch,073h,039h,039h,03fh,000h,000h,000h	; 8cb3  |s99?...
	defb 0dah,0bah,03dh,0e5h,0f5h,0ebh,05ah,0aah	; 8cbb  ..=...Z.
	defb 086h,0deh,04eh,066h,0bch,09ch,04ch,070h	; 8cc3  ..Nf..Lp
	defb 070h,090h,020h,020h,0e0h,000h,000h,000h	; 8ccb  p.  ....
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; 8cd3  ........
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; 8cdb  ........
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; 8ce3  ........
	defb 04fh,04fh,00fh,04fh,04fh,04bh,01eh,01eh	; 8ceb  OO.OOK..
	defb 00fh,07bh,05bh,01bh,0b3h,083h,04fh,0d8h	; 8cf3  .{[...O.
	defb 0c0h,0a7h,06bh,06ah,06ch,003h,003h,003h	; 8cfb  ..kjl...
	defb 0ffh,0ffh,05fh,0efh,0efh,0bfh,0fdh,0fch	; 8d03  .._.....
	defb 0deh,0fbh,0cbh,0cfh,0ffh,0b7h,0a4h,0fch	; 8d0b  ........
	defb 0dch,093h,0f9h,0f9h,0dfh,004h,004h,004h	; 8d13  ........
	defb 0c2h,0e2h,0fdh,0edh,0ddh,0cbh,05ah,0aah	; 8d1b  ......Z.
	defb 086h,0deh,0ceh,0e7h,0bdh,09dh,04dh,074h	; 8d23  ......Mt
	defb 074h,097h,03fh,03eh,0f6h,0c9h,0c9h,0c9h	; 8d2b  t.?>....
	defb 000h,000h,000h,086h,086h,0c4h,0eeh,0eeh	; 8d33  ........
	defb 0eeh,0ach,0ach,0f4h,0deh,08eh,0a6h,0e4h	; 8d3b  ........
	defb 0c4h,058h,078h,048h,088h,0e0h,0c0h,0d0h	; 8d43  .XxH....

; ----------------------------------------------------------------------
; DATOS tabla_8D4B: tabla que lee p01:645E, p01:64A1, p01:64B3 (1717 bytes)
;   0x8d4b..0x9400  (1717 bytes)
DATA_tabla_8D4B:
	defb 055h,08dh,069h,08dh,07dh,08dh,08fh,08dh,0a0h,08dh,04ah,055h,04dh,050h,0fdh,008h	; 8d4b  U.i.}.....JUMP..
	defb 000h,03eh,053h,048h,04fh,054h,032h,0fdh,008h,000h,04bh,045h,059h,0ffh,046h,032h	; 8d5b  .>SHOT2...KEY.F2
	defb 0fdh,008h,000h,03eh,053h,048h,04fh,054h,0fdh,008h,000h,043h,048h,041h,04eh,047h	; 8d6b  ...>SHOT...CHANG
	defb 045h,0ffh,046h,033h,0fdh,008h,000h,03eh,049h,054h,045h,04dh,0fdh,008h,000h,044h	; 8d7b  E.F3...>ITEM...D
	defb 049h,053h,050h,0ffh,046h,034h,0fdh,008h,000h,03eh,041h,052h,045h,041h,0fdh,008h	; 8d8b  ISP.F4...>AREA..
	defb 000h,04dh,041h,050h,0ffh,046h,035h,0fdh,008h,000h,03eh,053h,054h,041h,047h,045h	; 8d9b  .MAP.F5...>STAGE
	defb 0fdh,008h,000h,04dh,041h,050h,0ffh,0c4h,08dh,0b8h,08dh,0bbh,08dh,000h,050h,060h	; 8dab  ...MAP........P`
	defb 000h,050h,050h,001h,050h,070h,003h,050h,07ch,000h,050h,078h,002h,050h,070h,004h	; 8dbb  .PP.Pp.P|.Px.Pp.
	defb 050h,070h,0ffh,001h,010h,047h,018h,00eh,010h,032h,011h,012h,010h,00bh,014h,009h	; 8dcb  Pp...G...2......
	defb 016h,004h,012h,00ch,014h,014h,010h,00eh,01ah,008h,018h,00bh,010h,011h,014h,011h	; 8ddb  ................
	defb 015h,008h,010h,018h,012h,00ch,010h,019h,011h,005h,018h,01bh,010h,030h,018h,00fh	; 8deb  .............0..
	defb 010h,00eh,014h,010h,015h,005h,011h,005h,019h,001h,018h,017h,010h,00bh,012h,00eh	; 8dfb  ................
	defb 010h,00ch,012h,006h,018h,004h,010h,003h,012h,002h,010h,001h,014h,026h,010h,00ch	; 8e0b  .............&..
	defb 000h,0b5h,010h,001h,018h,00fh,019h,002h,011h,007h,014h,00ch,010h,021h,011h,012h	; 8e1b  .............!..
	defb 010h,003h,018h,004h,010h,00bh,018h,004h,010h,011h,018h,007h,010h,01eh,012h,014h	; 8e2b  ................
	defb 010h,01ch,011h,015h,010h,015h,014h,030h,010h,05bh,011h,00dh,010h,00eh,014h,007h	; 8e3b  .......0.[......
	defb 010h,00ch,012h,002h,010h,005h,012h,00ch,010h,00dh,018h,028h,010h,019h,018h,00ch	; 8e4b  ...........(....
	defb 010h,023h,014h,012h,010h,010h,014h,007h,010h,011h,012h,00eh,010h,001h,012h,00eh	; 8e5b  .#..............
	defb 010h,01ch,018h,008h,010h,012h,014h,00ah,010h,007h,018h,03ch,010h,017h,014h,01dh	; 8e6b  ...........<....
	defb 010h,00ch,011h,009h,0feh,001h,031h,008h,011h,00fh,010h,05bh,014h,006h,010h,02dh	; 8e7b  ......1....[...-
	defb 018h,00fh,010h,049h,014h,01eh,010h,028h,014h,002h,010h,012h,014h,003h,010h,012h	; 8e8b  ...I...(........
	defb 018h,003h,010h,010h,018h,01ch,010h,035h,014h,00dh,010h,008h,012h,00fh,010h,00dh	; 8e9b  .......5........
	defb 018h,007h,010h,010h,011h,012h,010h,007h,018h,010h,010h,001h,012h,00bh,010h,015h	; 8eab  ................
	defb 012h,00ah,010h,00ch,014h,011h,010h,065h,018h,004h,010h,04dh,018h,002h,010h,047h	; 8ebb  .......e...M...G
	defb 011h,010h,010h,00ah,014h,001h,010h,007h,014h,02ch,010h,026h,011h,01dh,010h,007h	; 8ecb  .........,.&....
	defb 014h,008h,010h,003h,012h,00bh,010h,003h,018h,008h,010h,009h,011h,00ch,010h,009h	; 8edb  ................
	defb 011h,00ah,010h,019h,014h,011h,016h,002h,012h,012h,010h,002h,014h,00bh,010h,012h	; 8eeb  ................
	defb 014h,00bh,010h,01dh,012h,014h,018h,019h,010h,01eh,014h,005h,010h,02eh,014h,012h	; 8efb  ................
	defb 010h,00dh,014h,005h,015h,002h,011h,00ch,010h,010h,011h,00fh,010h,011h,0ffh,0ffh	; 8f0b  ................
	defb 001h,010h,04ah,011h,017h,0feh,001h,031h,009h,011h,004h,010h,023h,012h,008h,010h	; 8f1b  ..J....1....#...
	defb 008h,012h,009h,010h,01dh,018h,006h,01ah,006h,012h,00eh,010h,00ah,018h,004h,019h	; 8f2b  ................
	defb 004h,039h,002h,031h,002h,011h,004h,010h,026h,014h,004h,015h,002h,035h,005h,015h	; 8f3b  .9.1....&....5..
	defb 004h,014h,006h,016h,001h,012h,016h,010h,00dh,012h,004h,010h,002h,014h,004h,016h	; 8f4b  ................
	defb 001h,012h,005h,010h,007h,014h,005h,010h,00ah,012h,00eh,010h,004h,011h,004h,031h	; 8f5b  ...............1
	defb 008h,011h,010h,010h,003h,012h,00ch,010h,003h,012h,002h,010h,003h,011h,001h,031h	; 8f6b  ...............1
	defb 005h,011h,006h,010h,003h,012h,017h,010h,006h,014h,001h,034h,005h,014h,009h,010h	; 8f7b  ...........4....
	defb 019h,012h,003h,01ah,004h,012h,001h,010h,011h,012h,004h,032h,004h,012h,006h,010h	; 8f8b  ...........2....
	defb 010h,011h,007h,031h,006h,011h,012h,015h,00fh,014h,005h,018h,010h,038h,004h,018h	; 8f9b  ...1.........8..
	defb 00bh,010h,013h,011h,002h,031h,004h,011h,01dh,015h,001h,014h,003h,010h,006h,014h	; 8fab  .....1..........
	defb 005h,010h,002h,012h,020h,016h,006h,012h,010h,010h,002h,014h,008h,015h,003h,011h	; 8fbb  .... ...........
	defb 007h,015h,002h,014h,009h,010h,009h,011h,001h,015h,001h,011h,004h,019h,001h,018h	; 8fcb  ................
	defb 005h,01ah,00ch,012h,002h,016h,00ah,012h,002h,01ah,004h,012h,004h,010h,003h,011h	; 8fdb  ................
	defb 002h,031h,003h,030h,002h,010h,01bh,014h,035h,015h,002h,035h,004h,015h,002h,014h	; 8feb  .1.0....5..5....
	defb 018h,016h,009h,014h,004h,016h,006h,014h,004h,016h,002h,010h,007h,000h,007h,0feh	; 8ffb  ................
	defb 001h,088h,001h,000h,025h,008h,004h,000h,00ah,008h,003h,000h,00fh,008h,003h,000h	; 900b  ....%...........
	defb 026h,010h,015h,014h,023h,010h,00eh,012h,006h,010h,005h,012h,003h,010h,00eh,014h	; 901b  &...#...........
	defb 007h,015h,003h,011h,007h,019h,001h,018h,004h,01ah,001h,012h,00bh,01ah,005h,018h	; 902b  ................
	defb 005h,038h,006h,018h,01ch,039h,005h,019h,017h,018h,00dh,01ah,007h,018h,002h,01ah	; 903b  .8...9..........
	defb 004h,018h,009h,01ah,003h,010h,00dh,012h,008h,010h,005h,011h,009h,010h,001h,018h	; 904b  ................
	defb 002h,038h,005h,018h,02bh,01ch,001h,014h,004h,034h,004h,014h,023h,016h,00eh,014h	; 905b  .8..+....4..#...
	defb 012h,015h,004h,035h,004h,015h,003h,011h,003h,010h,002h,018h,01eh,01ah,004h,012h	; 906b  ...5............
	defb 008h,016h,002h,014h,002h,010h,001h,011h,002h,015h,001h,035h,006h,015h,00ah,011h	; 907b  ...........5....
	defb 008h,010h,002h,018h,002h,010h,004h,019h,007h,039h,003h,019h,004h,018h,006h,010h	; 908b  .........9......
	defb 013h,011h,002h,015h,006h,011h,005h,015h,002h,014h,008h,016h,002h,036h,003h,016h	; 909b  .............6..
	defb 001h,012h,015h,018h,003h,010h,007h,018h,004h,01ah,003h,012h,00eh,01ah,003h,018h	; 90ab  ................
	defb 003h,019h,002h,039h,001h,031h,002h,011h,012h,010h,018h,0feh,001h,081h,001h,010h	; 90bb  ...9.1..........
	defb 002h,000h,08fh,010h,002h,014h,00ah,015h,002h,035h,006h,015h,00ch,011h,003h,010h	; 90cb  .........5......
	defb 004h,018h,018h,01bh,001h,01ah,033h,012h,003h,002h,001h,0ffh,0ffh,001h,010h,00dh	; 90db  ......3.........
	defb 014h,007h,010h,001h,011h,004h,010h,001h,000h,002h,010h,003h,000h,002h,010h,002h	; 90eb  ................
	defb 000h,001h,002h,001h,012h,003h,002h,002h,012h,003h,002h,001h,012h,003h,002h,002h	; 90fb  ................
	defb 012h,002h,000h,003h,010h,002h,000h,002h,010h,003h,000h,002h,010h,002h,000h,003h	; 910b  ................
	defb 010h,002h,002h,002h,012h,003h,002h,002h,012h,003h,002h,002h,012h,003h,002h,002h	; 911b  ................
	defb 012h,003h,002h,002h,012h,003h,000h,002h,010h,002h,011h,012h,010h,001h,000h,002h	; 912b  ................
	defb 012h,001h,010h,002h,000h,002h,010h,003h,001h,002h,011h,009h,019h,002h,018h,001h	; 913b  ................
	defb 010h,007h,011h,001h,001h,003h,011h,003h,010h,004h,012h,002h,002h,001h,012h,004h	; 914b  ................
	defb 002h,001h,012h,004h,002h,001h,012h,003h,002h,002h,012h,003h,002h,002h,012h,003h	; 915b  ................
	defb 002h,002h,012h,003h,002h,002h,012h,007h,002h,002h,012h,003h,002h,002h,012h,007h	; 916b  ................
	defb 002h,001h,012h,005h,010h,004h,000h,001h,010h,005h,014h,00fh,010h,00bh,018h,006h	; 917b  ................
	defb 010h,005h,018h,017h,010h,002h,011h,005h,010h,001h,014h,003h,010h,002h,011h,004h	; 918b  ................
	defb 010h,004h,011h,001h,0feh,001h,031h,005h,011h,033h,015h,006h,014h,004h,010h,006h	; 919b  ......1..3......
	defb 012h,006h,010h,001h,018h,008h,01ah,006h,012h,006h,016h,004h,014h,003h,010h,00ah	; 91ab  ................
	defb 014h,00ch,010h,01fh,0feh,001h,090h,001h,010h,031h,000h,08ch,010h,002h,01ah,00dh	; 91bb  .........1......
	defb 012h,002h,010h,012h,014h,002h,010h,025h,014h,00eh,010h,013h,018h,006h,010h,00eh	; 91cb  .......%........
	defb 01ah,001h,018h,006h,01ah,004h,012h,005h,010h,012h,011h,010h,010h,01dh,018h,011h	; 91db  ................
	defb 010h,008h,030h,001h,020h,002h,000h,001h,010h,003h,000h,001h,010h,002h,000h,002h	; 91eb  ..0. ...........
	defb 010h,001h,000h,002h,010h,001h,002h,002h,012h,002h,01ah,003h,012h,006h,000h,003h	; 91fb  ................
	defb 010h,001h,012h,001h,010h,006h,011h,002h,001h,005h,004h,003h,014h,005h,015h,004h	; 920b  ................
	defb 001h,008h,011h,003h,015h,002h,014h,006h,016h,003h,012h,007h,010h,001h,014h,019h	; 921b  ................
	defb 016h,00bh,014h,00bh,015h,001h,011h,012h,010h,017h,011h,007h,010h,002h,014h,013h	; 922b  ................
	defb 010h,001h,011h,003h,010h,009h,018h,002h,010h,00bh,012h,009h,010h,001h,018h,002h	; 923b  ................
	defb 01ah,002h,012h,007h,016h,003h,014h,005h,010h,009h,014h,003h,015h,001h,011h,008h	; 924b  ................
	defb 015h,002h,014h,003h,010h,003h,012h,001h,01ah,005h,012h,00ah,01ah,002h,018h,001h	; 925b  ................
	defb 01ah,006h,012h,001h,010h,006h,014h,004h,015h,003h,011h,011h,014h,004h,010h,004h	; 926b  ................
	defb 014h,006h,010h,002h,012h,00fh,01ah,001h,018h,007h,010h,00ah,014h,001h,010h,001h	; 927b  ................
	defb 011h,008h,010h,002h,018h,004h,010h,001h,012h,008h,010h,007h,012h,004h,010h,002h	; 928b  ................
	defb 014h,00ah,015h,001h,011h,005h,010h,003h,018h,005h,01ah,004h,018h,00ch,01ah,006h	; 929b  ................
	defb 012h,005h,010h,003h,014h,002h,010h,003h,014h,002h,010h,007h,014h,00ah,011h,002h	; 92ab  ................
	defb 010h,004h,018h,005h,010h,012h,012h,001h,016h,003h,014h,012h,010h,001h,018h,00dh	; 92bb  ................
	defb 010h,01ch,0feh,001h,082h,001h,010h,008h,000h,061h,010h,002h,011h,00fh,019h,004h	; 92cb  .........a......
	defb 018h,006h,019h,004h,018h,006h,010h,00eh,014h,011h,016h,007h,012h,00ch,010h,005h	; 92db  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 92eb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 92fb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 930b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 931b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 932b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 933b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 934b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 935b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 936b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 937b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 938b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 939b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 93ab  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 93bb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 93cb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 93db  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 93eb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh	; 93fb

; ======================================================================
; CODIGO 0x9400..0x9854  (1108 bytes)
; ======================================================================


pide_un_sonido:
	ld c,a			;9400   ; A = el sonido
	ld a,(0c0f2h)		;9401   ; sonando la musica de la pausa, nada mas
	or a			;9404   ; ¿es 0 musica_de_pausa?
	jr nz,L_9420		;9405
	ld a,c			;9407
	cp 070h		;9408   ; 0x70 y 0x4C son la musica de la pausa:
	jr z,L_9416		;940a
	cp 04ch		;940c
	jp nz,L_9420		;940e   ; L_9420: cuantos canales: los sonidos 0x00-0x36 uno (efectos)
	ld a,001h		;9411   ; ...se apunta...
	ld (0c0f2h),a		;9413   ; 0xC0F2: la musica de la pausa esta sonando (p14:9411)
L_9416:
	ld a,c			;9416   ; ...y se guardan los canales de la musica (0xC010 -> 0xC090)
	ld hl,0c010h		;9417   ; 0xC010: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ld de,0c090h		;941a   ; 0xC090: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	call guarda_los_canales		;941d   ; guarda_los_canales: 0x60 bytes: tres canales
L_9420:
	ld hl,0c012h		;9420   ; cuantos canales: los sonidos 0x00-0x36 uno (efectos)
	ld b,001h		;9423
	ld a,c			;9425
	cp 037h		;9426
	jp c,L_943F		;9428   ; L_943F: un efecto: en el canal 3...
	cp 070h		;942b   ; 0x37-0x6F tres (la musica)...
	jp c,L_9431		;942d
	inc b			;9430   ; ...0x70 en adelante, cuatro
L_9431:
	inc b			;9431
	inc b			;9432
	cp 052h		;9433   ; desde 0x52 la musica deja el ruido libre
	jp c,L_9454		;9435   ; L_9454: las pistas: p14:9C47 + 2*sonido, una palabra por canal
	xor a			;9438   ; tramo: pone sonido_ruido
	ld (0c072h),a		;9439   ; 0xC072: el sonido que lleva el ruido del PSG (p14:9439)
	jp L_9454		;943c   ; L_9454: las pistas: p14:9C47 + 2*sonido, una palabra por canal
L_943F:
	ld l,072h		;943f   ; un efecto: en el canal 3...
	ld a,(0c052h)		;9441   ; ...si no suena alli algo mas importante (0x52 en adelante)...
	cp 052h		;9444   ; ¿sonido_3 = 0x52?
	ret nc			;9446
	ld a,(0c012h)		;9447   ; 0xC012: el sonido del primer canal (p14:9420)
	cp 043h		;944a   ; (0x43 cuenta como 0x0D)...
	ld a,(hl)			;944c
	call z,rutina		;944d
	ld e,a			;9450
	ld a,c			;9451   ; ...ni un efecto de numero mayor
	cp e			;9452
	ret c			;9453
L_9454:
	ld a,c			;9454   ; las pistas: p14:9C47 + 2*sonido, una palabra por canal
	ld de,09c47h		;9455   ; p14:9C47 sonidos: 120 palabras: la pista de cada sonido y canal (p14:9454); 0xBF49 es la pista vacia
	add a,a			;9458
	jp nc,L_945D		;9459
	inc d			;945c
L_945D:
	add a,e			;945d
	ld e,a			;945e
	jp nc,L_9463		;945f
	inc d			;9462
L_9463:
	dec l			;9463
	dec l			;9464
L_9465:
	ld (hl),001h		;9465   ; cada canal: 1 cuadro para empezar...
	inc l			;9467
	inc l			;9468
	ld (hl),c			;9469   ; ...el sonido...
	inc l			;946a
	ld a,(de)			;946b   ; ...el puntero de su pista...
	ld (hl),a			;946c
	inc l			;946d
	inc de			;946e
	ld a,(de)			;946f
	ld (hl),a			;9470
	ld a,007h		;9471
	add a,l			;9473
	ld l,a			;9474
	xor a			;9475
	ld (hl),a			;9476   ; ...y a cero el resto de la ficha
	ld a,003h		;9477
	add a,l			;9479
	ld l,a			;947a
	ld a,001h		;947b
	ld (hl),a			;947d
	inc l			;947e
	dec a			;947f
	ld (hl),a			;9480
	inc l			;9481
	ld (hl),a			;9482
	ld a,009h		;9483
	add a,l			;9485
	ld l,a			;9486
	ld (hl),000h		;9487
	ld a,007h		;9489
	add a,l			;948b
	ld l,a			;948c
	inc de			;948d
	djnz L_9465		;948e   ; los B canales
	ret			;9490
rutina:
	cp 00dh		;9491
	ret nz			;9493
	ld a,00bh		;9494
	ret			;9496
el_sonido_de_un_cuadro:
	ld a,(0c0f0h)		;9497   ; EL SONIDO DE UN CUADRO: el mezclador...
	call pon_mezclador		;949a   ; L_9966: al registro 7 del PSG
	exx			;949d
	ld b,004h		;949e   ; cuatro canales de 0x20 bytes
	ld de,00020h		;94a0
	exx			;94a3
	xor a			;94a4
	ld (0c0f3h),a		;94a5
	ld a,(0c0f1h)		;94a8   ; volviendo de la pausa: la musica guardada vuelve a su sitio
	or a			;94ab   ; ¿es 0 sonido_0f1?
	jp z,L_94C1		;94ac   ; L_94C1: un sonido pedido en diferido
	ld a,c			;94af   ; tramo: mira canales, llama a guarda_los_canales, pone musica_de_pausa
	ld hl,0c090h		;94b0   ; 0xC090: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ld de,0c010h		;94b3   ; 0xC010: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	call guarda_los_canales		;94b6   ; guarda_los_canales: 0x60 bytes: tres canales
	ld (0c0f2h),a		;94b9   ; 0xC0F2: la musica de la pausa esta sonando (p14:9411)
	ld a,001h		;94bc
	ld (0c0f3h),a		;94be
L_94C1:
	ld a,(0c0f4h)		;94c1   ; un sonido pedido en diferido
	or a			;94c4   ; ¿es 0 sonido_pedido?
	call nz,la_musica_vuelve		;94c5   ; la_musica_vuelve: la musica vuelve poco a poco tras la pausa
	ld c,001h		;94c8   ; C = el registro de tono del PSG del canal (1, 3, 5, 7)
	ld ix,0c010h		;94ca   ; 0xC010: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	exx			;94ce
L_94CF:
	exx			;94cf   ; tramo: llama a un_canal
	ld a,(ix+002h)		;94d0   ; un canal con sonido...
	or a			;94d3
	push af			;94d4
	call nz,un_canal		;94d5   ; ...se toca
	pop af			;94d8
	jp nz,L_94E2		;94d9   ; L_94E2: el registro del canal siguiente
	ld a,c			;94dc   ; sin sonido: se calla (salvo el cuarto)
	cp 007h		;94dd
	call nz,ficha_y		;94df   ; L_97B9: 0xFF: se acaba la pista... o vuelve de una llamada
L_94E2:
	inc c			;94e2   ; el registro del canal siguiente
	inc c			;94e3
	exx			;94e4
	add ix,de		;94e5   ; la ficha siguiente
	djnz L_94CF		;94e7
	ret			;94e9
un_canal:
	ld a,(ix+00eh)		;94ea   ; musica o efecto
	or a			;94ed
	jp nz,L_95BA		;94ee   ; L_95BA: MUSICA: la nota sigue
	ld (ix+010h),a		;94f1   ; ix+0x10: 0: notas; si no, tambor: cada nota es un efecto de p14:9974 (p14:974F)
	dec (ix+000h)		;94f4   ; la nota sigue sonando
	jp nz,L_9803		;94f7   ; L_9803: volviendo de la pausa se repinta
lee_la_pista:
	ld l,(ix+003h)		;94fa   ; el byte siguiente de la pista
	ld h,(ix+004h)		;94fd   ; ix+0x04: el puntero de la pista, byte alto
	ld a,(hl)			;9500
	cp 0feh		;9501   ; 0xFE: repetir o llamar
	jp z,orden_fe		;9503   ; orden_fe: 0xFE [n] [w]: repite n veces desde w
	jp nc,ficha_y		;9506   ; 0xFF: se acaba
L_9509:
	ld a,(ix+00eh)		;9509   ; musica: p14:965B
	or a			;950c
	ld a,(hl)			;950d
	jp nz,L_965B		;950e   ; L_965B: las ordenes de la musica: 0xDX, el tempo
L_9511:
	and 0f0h		;9511   ; EFECTO: 0x2X, cambia el mezclador...
	cp 020h		;9513
	jp nz,L_9552		;9515   ; L_9552: 0x1X: el ruido, X*2 (no en el canal 3 si la musica lo usa)
	ld a,(hl)			;9518
	ld (ix+005h),a		;9519   ; ix+0x05: el efecto: bits 0-1 tono y ruido en el mezclador, bit 3 envolvente del PSG (p14:9539, p14:993D)
	inc hl			;951c   ; ...y el byte que sigue es lo que dura
	ld a,(ix+010h)		;951d   ; ix+0x10: 0: notas; si no, tambor: cada nota es un efecto de p14:9974 (p14:974F)
	or a			;9520
	ld a,(hl)			;9521
	jr nz,L_9527		;9522
	ld (ix+001h),a		;9524   ; ix+0x01: lo que dura la nota (p14:95B1 lo copia en ix+0)
L_9527:
	ld (ix+014h),a		;9527   ; ix+0x14: lo que dura la nota (p14:9527)
	inc hl			;952a
	ld a,(ix+005h)		;952b   ; ix+0x05: el efecto: bits 0-1 tono y ruido en el mezclador, bit 3 envolvente del PSG (p14:9539, p14:993D)
	cp 020h		;952e   ; 0x20 a secas: silencio
	jp nz,L_9539		;9530   ; L_9539: bit 3 y no bit 2: la envolvente del PSG...
	dec hl			;9533
	xor a			;9534
	ld b,a			;9535
	jp L_9585		;9536   ; L_9585: con tambor, el tono no va al PSG
L_9539:
	bit 3,a		;9539   ; bit 3 y no bit 2: la envolvente del PSG...
	jp z,L_9552		;953b   ; L_9552: 0x1X: el ruido, X*2 (no en el canal 3 si la musica lo usa)
	bit 2,a		;953e
	jr nz,L_9552		;9540
	ld a,(hl)			;9542   ; ...su periodo, en los registros 12 y 11
	ld e,a			;9543
	ld a,00ch		;9544
	call 00093h		;9546   ; BIOS WRTPSG - Writes data to PSG-register
	inc hl			;9549
	ld a,(hl)			;954a
	ld e,a			;954b
	ld a,00bh		;954c
	call 00093h		;954e   ; BIOS WRTPSG - Writes data to PSG-register
	inc hl			;9551
L_9552:
	ld a,(hl)			;9552   ; 0x1X: el ruido, X*2 (no en el canal 3 si la musica lo usa)
	and 0f0h		;9553
	cp 010h		;9555
	jp nz,L_9572		;9557   ; L_9572: el volumen (nibble alto) y el tono (nibble bajo y el byte siguiente)
	ld a,(hl)			;955a
	and 00fh		;955b
	add a,a			;955d
	ld e,a			;955e
	ld a,c			;955f
	cp 005h		;9560
	jp nz,L_956C		;9562
	ld a,(0c072h)		;9565   ; 0xC072: el sonido que lleva el ruido del PSG (p14:9439)
	or a			;9568   ; ¿es 0 sonido_ruido?
	jp nz,L_9571		;9569
L_956C:
	ld a,006h		;956c
	call 00093h		;956e   ; BIOS WRTPSG - Writes data to PSG-register
L_9571:
	inc hl			;9571
L_9572:
	ld a,(hl)			;9572   ; el volumen (nibble alto) y el tono (nibble bajo y el byte siguiente)
	and 0f0h		;9573
	ld b,a			;9575
	xor (hl)			;9576
	ld d,a			;9577
	ld e,000h		;9578
	ld a,(ix+005h)		;957a   ; ix+0x05: el efecto: bits 0-1 tono y ruido en el mezclador, bit 3 envolvente del PSG (p14:9539, p14:993D)
	and 003h		;957d
	cp 001h		;957f
	jr z,L_9585		;9581
	inc hl			;9583
	ld e,(hl)			;9584
L_9585:
	ld a,(ix+010h)		;9585   ; con tambor, el tono no va al PSG
	or a			;9588
	jp nz,L_978F		;9589
	call ficha_y_2		;958c
L_958F:
	ex de,hl			;958f   ; el tono, a la ficha...
	ld (ix+015h),l		;9590   ; ix+0x15: el tono, byte bajo (p14:9590)
	ld (ix+016h),h		;9593   ; ix+0x16: el tono, byte alto
	call mira_sonido_ruido		;9596   ; ...y al PSG
	ld a,b			;9599
	rrca			;959a
	rrca			;959b
	rrca			;959c
	rrca			;959d
	ld (ix+017h),a		;959e   ; el volumen
	ld a,(ix+010h)		;95a1   ; ix+0x10: 0: notas; si no, tambor: cada nota es un efecto de p14:9974 (p14:974F)
	or a			;95a4
	jp z,L_95B1		;95a5   ; L_95B1: lo que dura
	ld a,(ix+014h)		;95a8   ; ix+0x14: lo que dura la nota (p14:9527)
	ld (ix+013h),a		;95ab   ; ix+0x13: cuenta atras del paso del tambor (p14:977D)
	jp mira_sonido_ruido_2		;95ae
L_95B1:
	ld a,(ix+001h)		;95b1   ; lo que dura
	ld (ix+000h),a		;95b4   ; ix+0x00: cuadros que le quedan a la nota (p14:94F4)
	jp mira_sonido_ruido_2		;95b7
L_95BA:
	dec (ix+000h)		;95ba   ; MUSICA: la nota sigue
	jp z,lee_la_pista		;95bd   ; lee_la_pista: el byte siguiente de la pista
	ld a,(0c0f7h)		;95c0   ; todo callado: nada
	or a			;95c3   ; ¿es 0 sonido_callado?
	ret nz			;95c4
	ld a,(ix+010h)		;95c5   ; ix+0x10: 0: notas; si no, tambor: cada nota es un efecto de p14:9974 (p14:974F)
	or a			;95c8
	jp nz,L_977D		;95c9   ; L_977D: el paso del tambor
	bit 2,(ix+00fh)		;95cc   ; el vibrato
	call nz,rutina_2		;95d0   ; L_95FD: el vibrato: espera...
	dec (ix+00ah)		;95d3   ; la caida del volumen: cuando empieza...
	ld a,(ix+00ah)		;95d6   ; ix+0x0A: cuenta de la caida del volumen (p14:95D3)
	cp (ix+000h)		;95d9   ; ix+0x00: cuadros que le quedan a la nota (p14:94F4)
	jp nz,L_95EA		;95dc
	ld e,a			;95df
	ld a,(ix+00dh)		;95e0   ; ix+0x0D: hasta donde cae (p14:9684)
	cp e			;95e3
	jp nc,L_95ED		;95e4   ; L_95ED: ...baja uno...
	jp L_9803		;95e7   ; L_9803: volviendo de la pausa se repinta
L_95EA:
	dec (ix+00ah)		;95ea   ; ix+0x0A: cuenta de la caida del volumen (p14:95D3)
L_95ED:
	ld a,(ix+008h)		;95ed   ; ...baja uno...
	dec a			;95f0
	jp m,L_9803		;95f1   ; ...hasta 0
	ld (ix+008h),a		;95f4   ; ix+0x08: el volumen que va quedando (p14:95ED)
	ld (ix+017h),a		;95f7   ; ix+0x17: el volumen que se escribe en el PSG (p14:959E)
	jp mira_sonido_ruido_2		;95fa
rutina_2:
	bit 0,(ix+00fh)		;95fd   ; el vibrato: espera...
	jp nz,L_9614		;9601   ; L_9614: ...y luego va y viene
	ld a,(ix+01ah)		;9604   ; ix+0x1A: cuenta del vibrato (p14:9604)
	inc a			;9607
	cp 00ah		;9608
	jp c,L_9657		;960a
	inc (ix+00fh)		;960d   ; ix+0x0F: banderas: bit 2 vibrato (p14:96C7), bit 3 el tono uno mas (p14:9832)
	xor a			;9610
	jp L_9657		;9611
L_9614:
	ld a,(ix+01ch)		;9614   ; ...y luego va y viene
	and 0f0h		;9617
	rrca			;9619
	rrca			;961a
	rrca			;961b
	rrca			;961c
	ld e,a			;961d
	ld a,(ix+01ah)		;961e   ; ix+0x1A: cuenta del vibrato (p14:9604)
	inc a			;9621
	cp e			;9622
	jp c,L_9657		;9623
	ld e,(ix+015h)		;9626   ; ix+0x15: el tono, byte bajo (p14:9590)
	ld d,(ix+016h)		;9629   ; ix+0x16: el tono, byte alto
	ld a,(ix+01ch)		;962c   ; ix+0x1C: el vibrato: nibble alto la espera, bajo el paso (p14:9614)
	and 00fh		;962f
	ld b,a			;9631
	ld a,(ix+01bh)		;9632   ; cambia de sentido cada vez
	cpl			;9635
	ld (ix+01bh),a		;9636   ; ix+0x1B: hacia donde va el vibrato (p14:9632)
	and a			;9639
	ld a,e			;963a
	jp nz,L_9647		;963b
	add a,b			;963e
	ld e,a			;963f
	jp nc,L_964D		;9640
	inc d			;9643
	jp L_964D		;9644
L_9647:
	sub b			;9647
	ld e,a			;9648
	jp nc,L_964D		;9649
	dec d			;964c
L_964D:
	ld (ix+015h),e		;964d   ; ix+0x15: el tono, byte bajo (p14:9590)
	ld (ix+016h),d		;9650   ; ix+0x16: el tono, byte alto
	call mira_sonido_ruido		;9653   ; L_980E: el canal 3 lo comparten la musica y los efectos de ruido
	xor a			;9656
L_9657:
	ld (ix+01ah),a		;9657   ; ix+0x1A: cuenta del vibrato (p14:9604)
	ret			;965a
L_965B:
	ld a,(hl)			;965b   ; las ordenes de la musica: 0xDX, el tempo
	and 0f0h		;965c
	cp 0d0h		;965e
	ld a,(hl)			;9660
	jp nz,L_966B		;9661   ; L_966B: 0xFX [n]: el volumen y la caida
	and 00fh		;9664
	ld (ix+006h),a		;9666   ; ix+0x06: el tempo: la duracion base (0xDx, p14:9666)
	inc hl			;9669
	ld a,(hl)			;966a
L_966B:
	cp 0f0h		;966b   ; 0xFX [n]: el volumen y la caida
	jp c,L_9689		;966d   ; L_9689: 0xEX: ordenes
	and 00fh		;9670
	inc a			;9672
	ld (ix+007h),a		;9673   ; ix+0x07: el volumen (0xFx, p14:9673)
	inc hl			;9676
	ld a,(hl)			;9677
	and 0f0h		;9678
	rrca			;967a
	rrca			;967b
	rrca			;967c
	rrca			;967d
	ld (ix+00ch),a		;967e   ; ix+0x0C: cuando empieza a caer el volumen (p14:967E)
	ld a,(hl)			;9681
	and 00fh		;9682
	ld (ix+00dh),a		;9684   ; ix+0x0D: hasta donde cae (p14:9684)
	inc hl			;9687
	ld a,(hl)			;9688
L_9689:
	cp 0e0h		;9689   ; 0xEX: ordenes
	jp c,L_96E0		;968b   ; L_96E0: la nota: lo que dura (nibble bajo) por el tempo...
	and 00fh		;968e
	cp 008h		;9690   ; 0xE0-0xE7: la octava
	jp c,L_96DB		;9692
	jr z,L_96D3		;9695   ; 0xE8: el tono uno mas alto (bit 3 de ix+0x0F, p14:9832)
	cp 00ch		;9697   ; 0xEC [n]: el vibrato
	jp z,L_96C7		;9699
	cp 00fh		;969c   ; 0xEF: sin tambor
	jp z,L_96A9		;969e
	inc hl			;96a1   ; 0xE9-0xEB, 0xED-0xEE [n]: el tambor
	ld a,(hl)			;96a2
	ld (ix+010h),a		;96a3   ; ix+0x10: 0: notas; si no, tambor: cada nota es un efecto de p14:9974 (p14:974F)
	jp L_96DE		;96a6
L_96A9:
	xor a			;96a9   ; tramo: mira sonido_callado
	ld (ix+00fh),a		;96aa   ; ix+0x0F: banderas: bit 2 vibrato (p14:96C7), bit 3 el tono uno mas (p14:9832)
	ld (ix+010h),a		;96ad   ; ix+0x10: 0: notas; si no, tambor: cada nota es un efecto de p14:9974 (p14:974F)
	inc hl			;96b0
	ld a,(0c0f7h)		;96b1   ; 0xC0F7: todo el sonido callado (p14:95C0)
	or a			;96b4   ; ¿es 0 sonido_callado?
	jp z,L_965B		;96b5   ; L_965B: las ordenes de la musica: 0xDX, el tempo
	xor a			;96b8
	ld (ix+005h),a		;96b9   ; ix+0x05: el efecto: bits 0-1 tono y ruido en el mezclador, bit 3 envolvente del PSG (p14:9539, p14:993D)
	ld (ix+017h),a		;96bc   ; ix+0x17: el volumen que se escribe en el PSG (p14:959E)
	push hl			;96bf
	call mira_sonido_ruido_2		;96c0
	pop hl			;96c3
	jp L_965B		;96c4   ; L_965B: las ordenes de la musica: 0xDX, el tempo
L_96C7:
	set 2,(ix+00fh)		;96c7   ; ix+0x0F: banderas: bit 2 vibrato (p14:96C7), bit 3 el tono uno mas (p14:9832)
	inc hl			;96cb
	ld a,(hl)			;96cc
	ld (ix+01ch),a		;96cd   ; ix+0x1C: el vibrato: nibble alto la espera, bajo el paso (p14:9614)
	jp L_96D7		;96d0
L_96D3:
	set 3,(ix+00fh)		;96d3   ; ix+0x0F: banderas: bit 2 vibrato (p14:96C7), bit 3 el tono uno mas (p14:9832)
L_96D7:
	inc hl			;96d7
	jp L_965B		;96d8   ; L_965B: las ordenes de la musica: 0xDX, el tempo
L_96DB:
	ld (ix+009h),a		;96db   ; ix+0x09: la octava (0xE0-0xE7, p14:96DB)
L_96DE:
	inc hl			;96de
	ld a,(hl)			;96df
L_96E0:
	and 00fh		;96e0   ; la nota: lo que dura (nibble bajo) por el tempo...
	ld b,a			;96e2
	ld a,(ix+006h)		;96e3   ; ix+0x06: el tempo: la duracion base (0xDx, p14:9666)
	jr z,L_96ED		;96e6
L_96E8:
	add a,(ix+006h)		;96e8   ; ix+0x06: el tempo: la duracion base (0xDx, p14:9666)
	djnz L_96E8		;96eb
L_96ED:
	ld (ix+001h),a		;96ed   ; ix+0x01: lo que dura la nota (p14:95B1 lo copia en ix+0)
	ld a,(hl)			;96f0   ; ...y la nota (nibble alto)
	call ficha_y_2		;96f1
	and 0f0h		;96f4
	rrca			;96f6
	rrca			;96f7
	rrca			;96f8
	rrca			;96f9
	ld b,a			;96fa
	ld a,(ix+010h)		;96fb   ; con tambor, p14:974F
	or a			;96fe
	jr nz,L_974F		;96ff
	ld a,b			;9701   ; la nota 12: silencio
	sub 00ch		;9702
	jp z,L_97A3		;9704   ; L_97A3: la nota 12, silencio
	ld a,(ix+007h)		;9707   ; el volumen de la nota
	ld (ix+008h),a		;970a   ; ix+0x08: el volumen que va quedando (p14:95ED)
	ld (ix+017h),a		;970d   ; ix+0x17: el volumen que se escribe en el PSG (p14:959E)
	res 0,(ix+00fh)		;9710   ; sin vibrato todavia
	xor a			;9714
	ld (ix+01ah),a		;9715   ; ix+0x1A: cuenta del vibrato (p14:9604)
	ld (ix+01bh),a		;9718   ; ix+0x1B: hacia donde va el vibrato (p14:9632)
	ld e,(ix+001h)		;971b   ; lo que dura
	ld (ix+000h),e		;971e   ; ix+0x00: cuadros que le quedan a la nota (p14:94F4)
	ld a,(0c0f7h)		;9721   ; 0xC0F7: todo el sonido callado (p14:95C0)
	or a			;9724   ; ¿es 0 sonido_callado?
	ret nz			;9725
	ld a,(ix+00ch)		;9726   ; cuando empieza a caer el volumen
	add a,e			;9729
	ld (ix+00ah),a		;972a   ; ix+0x0A: cuenta de la caida del volumen (p14:95D3)
	ld a,b			;972d   ; el tono de la nota: p14:9854 (12 semitonos)...
	ld hl,09854h		;972e   ; p14:9854 tabla_9854: tabla que lee p14:972E (12 bytes)
	add a,l			;9731
	ld l,a			;9732
	jr nc,L_9736		;9733
	inc h			;9735
L_9736:
	ld l,(hl)			;9736
	ld h,000h		;9737
	ld a,(ix+009h)		;9739   ; ...subido de octava (ix+9)
	or a			;973c
	jr z,L_9743		;973d
	ld b,a			;973f
L_9740:
	add hl,hl			;9740
	djnz L_9740		;9741
L_9743:
	ld (ix+015h),l		;9743   ; al PSG
	ld (ix+016h),h		;9746   ; ix+0x16: el tono, byte alto
	call mira_sonido_ruido		;9749   ; L_980E: el canal 3 lo comparten la musica y los efectos de ruido
	jp mira_sonido_ruido_2		;974c
L_974F:
	add a,a			;974f   ; EL TAMBOR: la nota elige un efecto de p14:9974
	ld de,09974h		;9750
	add a,e			;9753
	ld e,a			;9754
	jr nc,L_9758		;9755
	inc d			;9757
L_9758:
	ld a,(de)			;9758   ; tramo: mira sonido_callado
	ld l,a			;9759
	inc de			;975a
	ld a,(de)			;975b
	ld h,a			;975c
	ld a,(ix+001h)		;975d   ; ix+0x01: lo que dura la nota (p14:95B1 lo copia en ix+0)
	ld (ix+000h),a		;9760   ; ix+0x00: cuadros que le quedan a la nota (p14:94F4)
	ld a,(0c0f7h)		;9763   ; 0xC0F7: todo el sonido callado (p14:95C0)
	or a			;9766   ; ¿es 0 sonido_callado?
	ret nz			;9767
	ld a,b			;9768
	add a,a			;9769
	add a,l			;976a
	ld l,a			;976b
	jr nc,L_976F		;976c
	inc h			;976e
L_976F:
	ld e,(hl)			;976f
	ld (ix+011h),e		;9770   ; ix+0x11: el puntero del efecto del tambor, byte bajo (p14:9770)
	inc hl			;9773
	ld d,(hl)			;9774
	ld (ix+012h),d		;9775   ; ix+0x12: el puntero del efecto del tambor, byte alto
	ex de,hl			;9778
	ld a,(hl)			;9779   ; y se toca como un efecto
	jp L_9511		;977a   ; L_9511: EFECTO: 0x2X, cambia el mezclador...
L_977D:
	dec (ix+013h)		;977d   ; el paso del tambor
	ret nz			;9780
	ld l,(ix+011h)		;9781   ; ix+0x11: el puntero del efecto del tambor, byte bajo (p14:9770)
	ld h,(ix+012h)		;9784   ; ix+0x12: el puntero del efecto del tambor, byte alto
	ld a,(hl)			;9787
	cp 0ffh		;9788
	jr z,L_9799		;978a
	jp L_9511		;978c   ; L_9511: EFECTO: 0x2X, cambia el mezclador...
L_978F:
	inc hl			;978f
	ld (ix+011h),l		;9790   ; ix+0x11: el puntero del efecto del tambor, byte bajo (p14:9770)
	ld (ix+012h),h		;9793   ; ix+0x12: el puntero del efecto del tambor, byte alto
	jp L_958F		;9796   ; L_958F: el tono, a la ficha...
L_9799:
	xor a			;9799   ; 0xFF: el tambor calla
	ld (ix+005h),a		;979a   ; ix+0x05: el efecto: bits 0-1 tono y ruido en el mezclador, bit 3 envolvente del PSG (p14:9539, p14:993D)
	ld (ix+017h),a		;979d   ; ix+0x17: el volumen que se escribe en el PSG (p14:959E)
	jp mira_sonido_ruido_2		;97a0
L_97A3:
	xor a			;97a3   ; la nota 12, silencio
	ld (ix+015h),a		;97a4   ; ix+0x15: el tono, byte bajo (p14:9590)
	ld (ix+016h),a		;97a7   ; ix+0x16: el tono, byte alto
	ld (ix+017h),a		;97aa   ; ix+0x17: el volumen que se escribe en el PSG (p14:959E)
	ld a,(ix+001h)		;97ad   ; ix+0x01: lo que dura la nota (p14:95B1 lo copia en ix+0)
	ld (ix+000h),a		;97b0   ; ix+0x00: cuadros que le quedan a la nota (p14:94F4)
	call mira_sonido_ruido		;97b3   ; L_980E: el canal 3 lo comparten la musica y los efectos de ruido
	jp mira_sonido_ruido_2		;97b6
ficha_y:
	ld a,(ix+019h)		;97b9   ; 0xFF: se acaba la pista... o vuelve de una llamada
	or a			;97bc
	jp z,L_97D4		;97bd   ; L_97D4: el canal queda libre
	ld (ix+004h),a		;97c0   ; ix+0x04: el puntero de la pista, byte alto
	ld a,(ix+018h)		;97c3   ; ix+0x18: la vuelta de la llamada 0xFE 0xFF, byte bajo (p14:992B)
	ld (ix+003h),a		;97c6   ; ix+0x03: el puntero de la pista, byte bajo (p14:94FA)
	ld (ix+019h),000h		;97c9   ; ix+0x19: la vuelta de la llamada, byte alto: 0 = no hay (p14:97B9)
	ld (ix+000h),001h		;97cd   ; ix+0x00: cuadros que le quedan a la nota (p14:94F4)
	jp un_canal		;97d1   ; un_canal: musica o efecto
L_97D4:
	xor a			;97d4   ; el canal queda libre
	ld (ix+002h),a		;97d5   ; ix+0x02: el sonido que suena en el canal; 0 = libre (p14:94D0)
	ld (ix+005h),a		;97d8   ; ix+0x05: el efecto: bits 0-1 tono y ruido en el mezclador, bit 3 envolvente del PSG (p14:9539, p14:993D)
	ld (ix+00bh),a		;97db   ; ix+0x0B: cuenta de las repeticiones de 0xFE n (p14:98E4)
	ld (ix+010h),a		;97de   ; ix+0x10: 0: notas; si no, tambor: cada nota es un efecto de p14:9974 (p14:974F)
	ld (ix+015h),a		;97e1   ; ix+0x15: el tono, byte bajo (p14:9590)
	ld (ix+016h),a		;97e4   ; ix+0x16: el tono, byte alto
	ld (ix+017h),a		;97e7   ; ix+0x17: el volumen que se escribe en el PSG (p14:959E)
	ld (ix+01bh),a		;97ea   ; ix+0x1B: hacia donde va el vibrato (p14:9632)
	ld a,c			;97ed   ; el cuarto canal se lleva el ruido del tercero
	cp 007h		;97ee
	jp c,mira_sonido_ruido_2		;97f0
	dec c			;97f3   ; tramo: mira canales
	dec c			;97f4
	ld ix,0c050h		;97f5   ; 0xC050: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ld (ix+017h),008h		;97f9   ; ix+0x17: el volumen que se escribe en el PSG (p14:959E)
	call ficha_patron		;97fd   ; L_982C: el tono al PSG
	jp L_9896		;9800   ; L_9896: el volumen al PSG (registro 8 + canal)
L_9803:
	ld a,(0c0f3h)		;9803   ; volviendo de la pausa se repinta
	or a			;9806
	ret z			;9807
	call mira_sonido_ruido		;9808   ; L_980E: el canal 3 lo comparten la musica y los efectos de ruido
	jp mira_sonido_ruido_2		;980b
mira_sonido_ruido:
	ld a,(0c072h)		;980e   ; el canal 3 lo comparten la musica y los efectos de ruido
	ld e,a			;9811
	ld a,c			;9812
	cp 005h		;9813
	jp c,ficha_patron		;9815   ; L_982C: el tono al PSG
	jp nz,L_9821		;9818
	ld a,e			;981b
	or a			;981c
	ret nz			;981d
	jp ficha_patron		;981e   ; L_982C: el tono al PSG
L_9821:
	ld a,e			;9821
	or a			;9822
	ret z			;9823
	dec c			;9824
	dec c			;9825
	call ficha_patron		;9826   ; L_982C: el tono al PSG
	inc c			;9829
	inc c			;982a
	ret			;982b
ficha_patron:
	ld l,(ix+015h)		;982c   ; el tono al PSG
	ld h,(ix+016h)		;982f   ; ix+0x16: el tono, byte alto
	bit 3,(ix+00fh)		;9832   ; con el bit 3 de ix+0x0F, el tono uno mas
	jp z,L_983A		;9836
	inc hl			;9839
L_983A:
	ld a,c			;983a
	ld e,h			;983b
	call 00093h		;983c   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,c			;983f
	dec a			;9840
	ld e,l			;9841
	call 00093h		;9842   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(ix+010h)		;9845   ; ix+0x10: 0: notas; si no, tambor: cada nota es un efecto de p14:9974 (p14:974F)
	or a			;9848
	ret nz			;9849
	ld a,(ix+00eh)		;984a   ; ix+0x0E: el tipo de pista: 0 un efecto (p14:9511), si no musica (p14:965B)
	or a			;984d
	ret z			;984e
	ld (ix+005h),002h		;984f   ; ix+0x05: el efecto: bits 0-1 tono y ruido en el mezclador, bit 3 envolvente del PSG (p14:9539, p14:993D)
	ret			;9853

; ----------------------------------------------------------------------
; DATOS tabla_9854: tabla que lee p14:972E (12 bytes)
;   0x9854..0x9860  (12 bytes)
DATA_tabla_9854:
	defb 06bh,065h,05fh,05ah,055h,050h,04ch,047h,043h,040h,03ch,039h	; 9854  ke_ZUPLGC@<9

; ======================================================================
; CODIGO 0x9860..0x9976  (278 bytes)
; ======================================================================


la_musica_vuelve:
	ld hl,0c0f5h		;9860   ; la musica vuelve poco a poco tras la pausa
	inc (hl)			;9863
	ld a,(hl)			;9864
	cp 010h		;9865
	ret c			;9867
	ld (hl),000h		;9868
	inc hl			;986a
	inc (hl)			;986b   ; 9 pasos de 16 cuadros
	ld a,(hl)			;986c
	cp 009h		;986d
	ret c			;986f
	xor a			;9870   ; y se pide el sonido guardado
	ld hl,0c0f4h		;9871   ; 0xC0F4: el sonido que se pide para el cuadro siguiente (p14:94C1)
	ld e,(hl)			;9874
	ld (hl),a			;9875
	inc l			;9876
	ld (hl),a			;9877
	inc l			;9878
	ld (hl),a			;9879
	ld a,e			;987a
	jp pide_un_sonido		;987b   ; pide_un_sonido: A = el sonido
mira_sonido_ruido_2:
	ld a,(0c072h)		;987e   ; 0xC072: el sonido que lleva el ruido del PSG (p14:9439)
	ld e,a			;9881
	ld a,c			;9882
	cp 005h		;9883
	jp c,L_9896		;9885   ; L_9896: el volumen al PSG (registro 8 + canal)
	jp nz,L_9891		;9888
	ld a,e			;988b
	or a			;988c
	ret nz			;988d
	jp L_9896		;988e   ; L_9896: el volumen al PSG (registro 8 + canal)
L_9891:
	ld a,e			;9891
	or a			;9892
	ret z			;9893
	dec c			;9894
	dec c			;9895
L_9896:
	call pon_mezclador_del_canal		;9896   ; el volumen al PSG (registro 8 + canal)
	ld a,c			;9899
	rrca			;989a
	add a,088h		;989b
	ld d,a			;989d
	ld h,(ix+017h)		;989e   ; ix+0x17: el volumen que se escribe en el PSG (p14:959E)
	ld a,(ix+00eh)		;98a1   ; musica bajo un efecto: mas baja
	or a			;98a4
	jr z,L_98B8		;98a5
	ld a,(0c0f6h)		;98a7
	or a			;98aa
	jp z,L_98B8		;98ab   ; L_98B8: con la envolvente...
	ld e,a			;98ae
	ld a,h			;98af
	sub e			;98b0
	ret m			;98b1
	bit 3,(ix+005h)		;98b2   ; ix+0x05: el efecto: bits 0-1 tono y ruido en el mezclador, bit 3 envolvente del PSG (p14:9539, p14:993D)
	ret nz			;98b6
	ld h,a			;98b7
L_98B8:
	ld a,(ix+005h)		;98b8   ; con la envolvente...
	bit 3,a		;98bb
	jp z,L_98CC		;98bd
	bit 2,a		;98c0
	ret nz			;98c2
	ld e,h			;98c3   ; ...su forma en el registro 13, y el volumen 16
	ld a,00dh		;98c4
	call 00093h		;98c6   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,010h		;98c9
	ld h,a			;98cb
L_98CC:
	ld a,d			;98cc
	ld e,h			;98cd
	jp 00093h		;98ce   ; BIOS WRTPSG - Writes data to PSG-register
guarda_los_canales:
	ld bc,00060h		;98d1   ; 0x60 bytes: tres canales
	ldir		;98d4
	ld c,a			;98d6
	xor a			;98d7
	ld (0c0f1h),a		;98d8   ; 0xC0F1: lo pone p00:4588 al volver de la pausa: 1 si no sonaba la musica de pausa
	ret			;98db
orden_fe:
	inc hl			;98dc   ; 0xFE [n] [w]: repite n veces desde w
	ld a,(hl)			;98dd   ; 0xFE 0: la otra forma de pista
	or a			;98de
	jr z,L_990E		;98df
	inc a			;98e1   ; 0xFE 0xFF [w]: llama a w
	jr z,L_9920		;98e2
	ld a,(ix+00bh)		;98e4   ; la cuenta de repeticiones
	inc a			;98e7
	cp (hl)			;98e8
	jr z,L_98FF		;98e9
	jp m,L_98EF		;98eb
	dec a			;98ee
L_98EF:
	ld (ix+00bh),a		;98ef   ; ix+0x0B: cuenta de las repeticiones de 0xFE n (p14:98E4)
	inc hl			;98f2
	ld a,(hl)			;98f3
	ld (ix+003h),a		;98f4   ; ix+0x03: el puntero de la pista, byte bajo (p14:94FA)
	inc hl			;98f7
	ld a,(hl)			;98f8
	ld (ix+004h),a		;98f9   ; ix+0x04: el puntero de la pista, byte alto
	jp L_9908		;98fc
L_98FF:
	inc hl			;98ff   ; ya estan todas: sigue
	inc hl			;9900
	xor a			;9901
	ld (ix+00bh),a		;9902   ; ix+0x0B: cuenta de las repeticiones de 0xFE n (p14:98E4)
L_9905:
	call ficha_y_2		;9905
L_9908:
	inc (ix+000h)		;9908   ; ix+0x00: cuadros que le quedan a la nota (p14:94F4)
	jp un_canal		;990b   ; un_canal: musica o efecto
L_990E:
	ld a,(ix+00eh)		;990e   ; cambia entre musica y efecto
	or a			;9911
	jr z,L_991A		;9912
	dec (ix+00eh)		;9914   ; ix+0x0E: el tipo de pista: 0 un efecto (p14:9511), si no musica (p14:965B)
	jp L_9905		;9917
L_991A:
	inc (ix+00eh)		;991a   ; ix+0x0E: el tipo de pista: 0 un efecto (p14:9511), si no musica (p14:965B)
	jp L_9905		;991d
L_9920:
	inc hl			;9920   ; la llamada: se guarda la vuelta
	ld e,(hl)			;9921
	ld (ix+003h),e		;9922   ; ix+0x03: el puntero de la pista, byte bajo (p14:94FA)
	inc hl			;9925
	ld d,(hl)			;9926
	ld (ix+004h),d		;9927   ; ix+0x04: el puntero de la pista, byte alto
	inc hl			;992a
	ld (ix+018h),l		;992b   ; ix+0x18: la vuelta de la llamada 0xFE 0xFF, byte bajo (p14:992B)
	ld (ix+019h),h		;992e   ; ix+0x19: la vuelta de la llamada, byte alto: 0 = no hay (p14:97B9)
	ex de,hl			;9931
	jp L_9509		;9932   ; L_9509: musica: p14:965B
ficha_y_2:
	inc hl			;9935
	ld (ix+003h),l		;9936   ; ix+0x03: el puntero de la pista, byte bajo (p14:94FA)
	ld (ix+004h),h		;9939   ; ix+0x04: el puntero de la pista, byte alto
	ret			;993c
pon_mezclador_del_canal:
	ld a,(0c0f0h)		;993d   ; el mezclador del canal: el tono...
	ld e,a			;9940
	ld a,(ix+005h)		;9941   ; ix+0x05: el efecto: bits 0-1 tono y ruido en el mezclador, bit 3 envolvente del PSG (p14:9539, p14:993D)
	and 003h		;9944
	ld d,a			;9946
	ld a,c			;9947
	cp 001h		;9948
	jr z,L_994D		;994a
	dec a			;994c
L_994D:
	ld b,a			;994d
	bit 1,d		;994e
	call z,rutina_4		;9950
	bit 1,d		;9953
	call nz,rutina_3		;9955
	ld a,b			;9958   ; ...y el ruido
	rlca			;9959
	rlca			;995a
	rlca			;995b
	bit 0,d		;995c
	call z,rutina_4		;995e
	bit 0,d		;9961
	call nz,rutina_3		;9963
pon_mezclador:
	ld (0c0f0h),a		;9966   ; al registro 7 del PSG
	ld e,a			;9969
	ld a,007h		;996a
	jp 00093h		;996c   ; BIOS WRTPSG - Writes data to PSG-register
rutina_3:
	cpl			;996f
	and e			;9970
	ld e,a			;9971
	ret			;9972
rutina_4:
	or e			;9973
	ld e,a			;9974
	ret			;9975

; ----------------------------------------------------------------------
; DATOS leido_9976: lo leen en la partida medida en openMSX p14:9787 (52
;   bytes), p14:9584 (48 bytes), p14:9521 (14 bytes), p14:9552 (14 bytes) (721
;   bytes)
;   0x9976..0x9c47  (721 bytes)
DATA_leido_9976:
	defb 080h,099h,08ch,09ah,011h,09bh,097h,09bh,0afh,09bh,098h,099h,09dh,099h,0aah,099h	; 9976  ................
	defb 0bch,099h,0cah,099h,0cah,099h,0cah,099h,0cbh,099h,0f4h,099h,023h,09ah,052h,09ah	; 9986  ............#.R.
	defb 07dh,09ah,021h,001h,010h,0a0h,0ffh,023h,001h,010h,0bah,000h,021h,004h,010h,090h	; 9996  }.!....#....!...
	defb 080h,070h,060h,0ffh,021h,001h,015h,0a0h,022h,001h,0a2h,000h,021h,002h,018h,060h	; 99a6  .p`.!..."...!..`
	defb 050h,021h,001h,013h,050h,0ffh,023h,001h,013h,0b1h,0a0h,022h,001h,0b2h,000h,082h	; 99b6  P!..P.#...."....
	defb 070h,063h,030h,0ffh,0ffh,022h,001h,0a1h,0a0h,091h,0aah,091h,0b5h,081h,0c0h,081h	; 99c6  pc0.."..........
	defb 0cah,081h,0d5h,071h,0e0h,071h,0eah,071h,0f5h,072h,000h,062h,00ah,062h,015h,062h	; 99d6  ...q.q.q.r.b.b.b
	defb 020h,062h,02ah,062h,035h,062h,040h,052h,04ah,052h,055h,042h,060h,0ffh,022h,001h	; 99e6   b*b5b@RJRUB`.".
	defb 0b2h,000h,0a2h,00ah,0a2h,015h,092h,020h,092h,02ah,092h,035h,082h,040h,082h,04ah	; 99f6  ....... .*.5.@.J
	defb 082h,055h,082h,060h,072h,06ah,072h,075h,072h,080h,072h,08ah,072h,095h,062h,0a0h	; 9a06  .U.`rjrur.r.r.b.
	defb 062h,0aah,062h,0b5h,062h,0c0h,052h,0cah,052h,0d5h,042h,0e0h,0ffh,022h,001h,0c3h	; 9a16  b.b.b.R.R.B.."..
	defb 000h,0b3h,00ah,0b3h,015h,0a3h,020h,0a3h,02ah,0a3h,035h,093h,040h,093h,04ah,093h	; 9a26  ...... .*.5.@.J.
	defb 055h,093h,060h,083h,06ah,083h,075h,083h,080h,083h,08ah,083h,095h,073h,0a0h,073h	; 9a36  U.`.j.u......s.s
	defb 0aah,073h,0b5h,063h,0c0h,063h,0cah,053h,0d5h,043h,0e0h,0ffh,022h,001h,0d4h,000h	; 9a46  .s.c.c.S.C.."...
	defb 0c4h,015h,0b4h,030h,0b4h,045h,0a4h,060h,0a4h,075h,0a4h,090h,094h,0b0h,094h,0d0h	; 9a56  ...0.E.`.u......
	defb 094h,0f0h,095h,010h,085h,030h,085h,050h,084h,070h,084h,090h,084h,0b0h,074h,0d0h	; 9a66  .....0.P.p....t.
	defb 074h,0f0h,065h,010h,055h,030h,0ffh,02ah,001h,003h,000h,093h,0d0h,02eh,001h,096h	; 9a76  t.e.U0.*........
	defb 000h,097h,000h,098h,000h,0ffh,0a4h,09ah,0b3h,09ah,0b3h,09ah,0b4h,09ah,0c3h,09ah	; 9a86  ................
	defb 0c4h,09ah,0d3h,09ah,0d4h,09ah,0e3h,09ah,0f2h,09ah,001h,09bh,010h,09bh,022h,003h	; 9a96  ..............".
	defb 080h,036h,070h,036h,060h,036h,050h,036h,040h,036h,030h,036h,0ffh,0ffh,022h,003h	; 9aa6  .6p6`6P6@606..".
	defb 080h,02dh,070h,02dh,060h,02dh,050h,02dh,040h,02dh,030h,02dh,0ffh,0ffh,022h,003h	; 9ab6  .-p-`-P-@-0-..".
	defb 080h,028h,070h,028h,060h,028h,050h,028h,040h,028h,030h,028h,0ffh,0ffh,022h,003h	; 9ac6  .(p(`(P(@(0(..".
	defb 080h,024h,070h,024h,060h,024h,050h,024h,040h,024h,030h,024h,0ffh,022h,003h,080h	; 9ad6  .$p$`$P$@$0$."..
	defb 022h,070h,022h,060h,022h,050h,022h,040h,022h,030h,022h,0ffh,022h,003h,080h,020h	; 9ae6  "p"`"P"@"0"."..
	defb 070h,020h,060h,020h,050h,020h,040h,020h,030h,020h,0ffh,022h,003h,080h,01eh,070h	; 9af6  p ` P @ 0 ."...p
	defb 01eh,060h,01eh,050h,01eh,040h,01eh,030h,01eh,0ffh,0ffh,029h,09bh,038h,09bh,038h	; 9b06  .`.P.@.0...).8.8
	defb 09bh,039h,09bh,048h,09bh,049h,09bh,058h,09bh,059h,09bh,068h,09bh,078h,09bh,087h	; 9b16  .9.H.I.X.Y.h.x..
	defb 09bh,096h,09bh,022h,003h,080h,01bh,070h,01bh,060h,01bh,050h,01bh,040h,01bh,030h	; 9b26  ..."...p.`.P.@.0
	defb 01bh,0ffh,0ffh,022h,003h,080h,05ah,070h,05ah,060h,05ah,050h,05ah,040h,05ah,030h	; 9b36  ..."..ZpZ`ZPZ@Z0
	defb 05ah,0ffh,0ffh,022h,003h,080h,050h,070h,050h,060h,050h,050h,050h,040h,050h,030h	; 9b46  Z.."..PpP`PPP@P0
	defb 050h,0ffh,0ffh,022h,003h,080h,047h,070h,047h,060h,047h,050h,047h,040h,047h,030h	; 9b56  P.."..GpG`GPG@G0
	defb 047h,0ffh,022h,003h,080h,043h,070h,043h,060h,043h,050h,043h,040h,043h,030h,043h	; 9b66  G."..CpC`CPC@C0C
	defb 0ffh,0ffh,022h,003h,080h,040h,070h,040h,060h,040h,050h,040h,040h,040h,030h,040h	; 9b76  .."..@p@`@P@@@0@
	defb 0ffh,022h,003h,080h,03ch,070h,03ch,060h,03ch,050h,03ch,040h,03ch,030h,03ch,0ffh	; 9b86  ."..<p<`<P<@<0<.
	defb 0ffh,0afh,09bh,0afh,09bh,0afh,09bh,0afh,09bh,0afh,09bh,0afh,09bh,0afh,09bh,0afh	; 9b96  ................
	defb 09bh,0afh,09bh,0afh,09bh,0afh,09bh,0afh,09bh,0c7h,09bh,0dch,09bh,0ddh,09bh,0f2h	; 9ba6  ................
	defb 09bh,007h,09ch,007h,09ch,007h,09ch,008h,09ch,01dh,09ch,01eh,09ch,033h,09ch,048h	; 9bb6  .............3.H
	defb 09ch,022h,001h,090h,011h,080h,016h,022h,004h,080h,01bh,070h,01bh,060h,01bh,050h	; 9bc6  ."....."...p.`.P
	defb 01bh,040h,01bh,030h,01bh,0ffh,0ffh,022h,001h,090h,00eh,080h,013h,022h,004h,080h	; 9bd6  .@.0..."....."..
	defb 018h,070h,018h,060h,018h,050h,018h,040h,018h,030h,018h,0ffh,022h,001h,0a0h,050h	; 9be6  .p.`.P.@.0.."..P
	defb 090h,055h,022h,004h,080h,05ah,070h,05ah,060h,05ah,050h,05ah,040h,05ah,030h,05ah	; 9bf6  .U"..ZpZ`ZPZ@Z0Z
	defb 0ffh,0ffh,022h,001h,0a0h,03dh,090h,042h,022h,004h,080h,047h,070h,047h,060h,047h	; 9c06  .."..=.B"..GpG`G
	defb 050h,047h,040h,047h,030h,047h,0ffh,0ffh,022h,001h,0a0h,036h,090h,03bh,022h,004h	; 9c16  PG@G0G.."..6.;".
	defb 080h,040h,070h,040h,060h,040h,050h,040h,040h,040h,030h,040h,0ffh,022h,001h,0a0h	; 9c26  .@p@`@P@@@0@."..
	defb 032h,090h,037h,022h,004h,080h,03ch,070h,03ch,060h,03ch,050h,03ch,040h,03ch,030h	; 9c36  2.7"..<p<`<P<@<0
	defb 03ch	; 9c46

; ----------------------------------------------------------------------
; DATOS sonidos: 120 palabras: la pista de cada sonido y canal (p14:9454);
;   0xBF49 es la pista vacia; lo leen p14:946B (240 bytes)
;   0x9c47..0x9d37  (240 bytes)
DATA_sonidos:
	defb 0ffh,0ffh	; 9c47
	defb 06fh,09dh	; 9c49
	defb 081h,09dh	; 9c4b
	defb 0a4h,09dh	; 9c4d
	defb 0a5h,09dh	; 9c4f
	defb 0b6h,09dh	; 9c51
	defb 0d1h,09dh	; 9c53
	defb 0d1h,09dh	; 9c55
	defb 0fdh,09dh	; 9c57
	defb 02dh,09eh	; 9c59
	defb 065h,09eh	; 9c5b
	defb 0a9h,09eh	; 9c5d
	defb 0d4h,09eh	; 9c5f
	defb 004h,09fh	; 9c61
	defb 013h,09fh	; 9c63
	defb 014h,09fh	; 9c65
	defb 039h,09fh	; 9c67
	defb 04eh,09fh	; 9c69
	defb 086h,09fh	; 9c6b
	defb 0c1h,09fh	; 9c6d
	defb 0e6h,09fh	; 9c6f
	defb 05ah,0a0h	; 9c71
	defb 08bh,0a0h	; 9c73
	defb 08ch,0a0h	; 9c75
	defb 0c5h,0a0h	; 9c77
	defb 0f4h,0a0h	; 9c79
	defb 035h,0a1h	; 9c7b
	defb 0a2h,0a1h	; 9c7d
	defb 0a3h,0a1h	; 9c7f
	defb 0b6h,0a1h	; 9c81
	defb 0ebh,0a1h	; 9c83
	defb 03bh,0a2h	; 9c85
	defb 058h,0a2h	; 9c87
	defb 087h,0a2h	; 9c89
	defb 086h,09fh	; 9c8b
	defb 0b8h,0a2h	; 9c8d
	defb 049h,0bfh	; 9c8f
	defb 03ch,0a3h	; 9c91
	defb 049h,0a3h	; 9c93
	defb 04ah,0a3h	; 9c95
	defb 0d9h,0a3h	; 9c97
	defb 064h,0a4h	; 9c99
	defb 091h,0a4h	; 9c9b
	defb 000h,0a5h	; 9c9d
	defb 019h,0a5h	; 9c9f
	defb 01ah,0a5h	; 9ca1
	defb 037h,09dh	; 9ca3
	defb 058h,09dh	; 9ca5
	defb 01bh,0a5h	; 9ca7
	defb 047h,0a5h	; 9ca9
	defb 0b1h,0a5h	; 9cab
	defb 0b2h,0a5h	; 9cad
	defb 021h,0a6h	; 9caf
	defb 05ah,0a6h	; 9cb1
	defb 05bh,0a6h	; 9cb3
	defb 08ah,0a6h	; 9cb5
	defb 033h,0a8h	; 9cb7
	defb 04bh,0aah	; 9cb9
	defb 035h,0ach	; 9cbb
	defb 088h,0adh	; 9cbd
	defb 012h,0aeh	; 9cbf
	defb 04eh,0afh	; 9cc1
	defb 0bbh,0afh	; 9cc3
	defb 054h,0b0h	; 9cc5
	defb 003h,0b1h	; 9cc7
	defb 0d6h,0b1h	; 9cc9
	defb 037h,0b2h	; 9ccb
	defb 0c4h,0b2h	; 9ccd
	defb 03eh,0b3h	; 9ccf
	defb 0b6h,0b3h	; 9cd1
	defb 021h,0b4h	; 9cd3
	defb 0cch,0b4h	; 9cd5
	defb 0abh,0b5h	; 9cd7
	defb 08fh,0b4h	; 9cd9
	defb 05bh,0b5h	; 9cdb
	defb 019h,0b6h	; 9cdd
	defb 0a2h,0b6h	; 9cdf
	defb 049h,0bfh	; 9ce1
	defb 049h,0bfh	; 9ce3
	defb 0aeh,0b6h	; 9ce5
	defb 01dh,0b7h	; 9ce7
	defb 090h,0b7h	; 9ce9
	defb 0aeh,0b6h	; 9ceb
	defb 090h,0b7h	; 9ced
	defb 007h,0b8h	; 9cef
	defb 084h,0b8h	; 9cf1
	defb 0bfh,0b8h	; 9cf3
	defb 084h,0b8h	; 9cf5
	defb 0bch,0b9h	; 9cf7
	defb 0f0h,0b8h	; 9cf9
	defb 0f0h,0b8h	; 9cfb
	defb 049h,0bfh	; 9cfd
	defb 049h,0bfh	; 9cff
	defb 049h,0bfh	; 9d01
	defb 049h,0bfh	; 9d03
	defb 049h,0bfh	; 9d05
	defb 049h,0bfh	; 9d07
	defb 036h,0b9h	; 9d09
	defb 077h,0b9h	; 9d0b
	defb 098h,0b9h	; 9d0d
	defb 0bch,0b9h	; 9d0f
	defb 04bh,0bah	; 9d11
	defb 0a2h,0bah	; 9d13
	defb 0cfh,0bah	; 9d15
	defb 0d6h,0bbh	; 9d17
	defb 0cdh,0bch	; 9d19
	defb 012h,0beh	; 9d1b
	defb 037h,0beh	; 9d1d
	defb 065h,0beh	; 9d1f
	defb 08dh,0beh	; 9d21
	defb 0cch,0beh	; 9d23
	defb 002h,0bfh	; 9d25
	defb 02dh,0bfh	; 9d27
	defb 03bh,0bfh	; 9d29
	defb 049h,0bfh	; 9d2b
	defb 049h,0bfh	; 9d2d
	defb 049h,0bfh	; 9d2f
	defb 049h,0bfh	; 9d31
	defb 049h,0bfh	; 9d33
	defb 049h,0bfh	; 9d35

; ----------------------------------------------------------------------
; DATOS pista_9D37: pista de los sonidos 0x2E (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (33 bytes)
;   0x9d37..0x9d58  (33 bytes)
DATA_pista_9D37:
	defb 0feh,000h,022h,001h,090h,030h,0b0h,030h,0a0h,030h,090h,020h,070h,010h,022h,002h	; 9d37  .."..0.0.0. p.".
	defb 0a0h,040h,080h,040h,070h,040h,060h,040h,050h,040h,040h,040h,0feh,002h,039h,09dh	; 9d47  .@.@p@`@P@@@..9.
	defb 0ffh	; 9d57

; ----------------------------------------------------------------------
; DATOS pista_9D58: pista de los sonidos 0x2F (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (23 bytes)
;   0x9d58..0x9d6f  (23 bytes)
DATA_pista_9D58:
	defb 0feh,000h,022h,001h,0a0h,020h,022h,004h,0b0h,040h,022h,001h,0a0h,020h,0a0h,010h	; 9d58  ..".. "..@".. ..
	defb 020h,002h,0feh,002h,05ah,09dh,0ffh	; 9d68

; ----------------------------------------------------------------------
; DATOS pista_9D6F: pista de los sonidos 0x01 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (18 bytes)
;   0x9d6f..0x9d81  (18 bytes)
DATA_pista_9D6F:
	defb 0feh,000h,021h,001h,014h,0c0h,023h,001h,010h,080h,030h,020h,005h,021h,001h,010h	; 9d6f  ..!...#...0 .!..
	defb 0c0h,0ffh	; 9d7f

; ----------------------------------------------------------------------
; DATOS pista_9D81: pista de los sonidos 0x02 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (35 bytes)
;   0x9d81..0x9da4  (35 bytes)
DATA_pista_9D81:
	defb 0feh,000h,022h,001h,0b0h,010h,0a0h,015h,070h,010h,0c0h,01ah,022h,003h,0a0h,01ah	; 9d81  ..".....p..."...
	defb 090h,01ah,022h,005h,080h,01ah,022h,008h,070h,01ah,060h,01ah,050h,01ah,040h,01ah	; 9d91  .."...".p.`.P.@.
	defb 030h,01ah,0ffh	; 9da1

; ----------------------------------------------------------------------
; DATOS pista_9DA4: pista de los sonidos 0x03 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (1 bytes)
;   0x9da4..0x9da5  (1 bytes)
DATA_pista_9DA4:
	defb 0ffh	; 9da4

; ----------------------------------------------------------------------
; DATOS pista_9DA5: pista de los sonidos 0x04 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (17 bytes)
;   0x9da5..0x9db6  (17 bytes)
DATA_pista_9DA5:
	defb 0feh,000h,02ah,004h,000h,021h,080h,000h,020h,002h,02ah,00eh,000h,021h,080h,000h	; 9da5  ..*..!.. .*..!..
	defb 0ffh	; 9db5

; ----------------------------------------------------------------------
; DATOS pista_9DB6: pista de los sonidos 0x05 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (27 bytes)
;   0x9db6..0x9dd1  (27 bytes)
DATA_pista_9DB6:
	defb 0feh,000h,023h,001h,010h,0d0h,00fh,020h,001h,023h,001h,010h,0c0h,080h,014h,0a0h	; 9db6  ..#.... .#......
	defb 090h,018h,080h,0a0h,021h,001h,01ch,060h,01fh,050h,0ffh	; 9dc6  ....!..`.P.

; ----------------------------------------------------------------------
; DATOS pista_9DD1: pista de los sonidos 0x06, 0x07 (p14:94FA: notas, 0xDx
;   octava, 0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la
;   siguiente; lo leen p14:9500 (44 bytes)
;   0x9dd1..0x9dfd  (44 bytes)
DATA_pista_9DD1:
	defb 0feh,000h,021h,002h,01ah,0a0h,023h,001h,010h,0d3h,000h,0a1h,0a0h,012h,0a1h,0b5h	; 9dd1  ..!...#.........
	defb 0b2h,000h,0b2h,040h,016h,0c2h,080h,0b2h,0c0h,0a3h,000h,023h,002h,01ch,095h,000h	; 9de1  ...@.......#....
	defb 096h,060h,082h,000h,010h,084h,080h,082h,0d0h,082h,0a0h,0ffh	; 9df1  .`..........

; ----------------------------------------------------------------------
; DATOS pista_9DFD: pista de los sonidos 0x08 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (48 bytes)
;   0x9dfd..0x9e2d  (48 bytes)
DATA_pista_9DFD:
	defb 0feh,000h,023h,001h,015h,0d1h,000h,0e3h,000h,0c0h,080h,020h,001h,022h,001h,0c2h	; 9dfd  ..#........ ."..
	defb 0a0h,0c1h,060h,020h,001h,023h,003h,093h,0f0h,093h,080h,0a3h,020h,0a2h,0b0h,0b2h	; 9e0d  ..` .#...... ...
	defb 0a0h,0b2h,070h,0b2h,0a0h,0a3h,000h,094h,000h,085h,000h,076h,000h,067h,000h,0ffh	; 9e1d  ..p........v.g..

; ----------------------------------------------------------------------
; DATOS pista_9E2D: pista de los sonidos 0x09 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (56 bytes)
;   0x9e2d..0x9e65  (56 bytes)
DATA_pista_9E2D:
	defb 0feh,000h,022h,001h,0b2h,070h,023h,001h,01fh,0f0h,0a0h,020h,003h,022h,001h,0b2h	; 9e2d  .."..p#.... ."..
	defb 0a0h,0d1h,0c0h,0c2h,01ah,0d2h,040h,0c2h,06ah,0b2h,0d0h,0a5h,000h,096h,060h,082h	; 9e3d  ......@.j.....`.
	defb 000h,083h,000h,020h,002h,022h,001h,092h,01ah,0a2h,040h,0a2h,06ah,092h,0d0h,095h	; 9e4d  ... ."....@.j...
	defb 000h,086h,060h,072h,000h,063h,000h,0ffh	; 9e5d  ..`r.c..

; ----------------------------------------------------------------------
; DATOS pista_9E65: pista de los sonidos 0x0A (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (68 bytes)
;   0x9e65..0x9ea9  (68 bytes)
DATA_pista_9E65:
	defb 0feh,000h,023h,001h,01ah,0a0h,03ah,022h,001h,0a0h,03ah,090h,070h,0b0h,04ah,0b0h	; 9e65  ..#...:"..:.p.J.
	defb 040h,0a0h,045h,090h,030h,080h,030h,070h,030h,020h,004h,022h,001h,0a0h,03ch,090h	; 9e75  @.E.0.0p0 ."..<.
	defb 03ah,080h,030h,070h,030h,060h,030h,020h,004h,022h,001h,070h,03ch,070h,03ah,060h	; 9e85  :.0p0`0 .".p<p:`
	defb 030h,050h,030h,040h,030h,020h,004h,022h,001h,060h,03ch,060h,03ah,050h,030h,040h	; 9e95  0P0@0 .".`<`:P0@
	defb 030h,030h,030h,0ffh	; 9ea5

; ----------------------------------------------------------------------
; DATOS pista_9EA9: pista de los sonidos 0x0B (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (43 bytes)
;   0x9ea9..0x9ed4  (43 bytes)
DATA_pista_9EA9:
	defb 0feh,000h,023h,001h,01ah,0d0h,080h,014h,0d2h,000h,021h,001h,010h,0b0h,01fh,0b0h	; 9ea9  ..#.......!.....
	defb 010h,0a0h,01fh,0a0h,0feh,00ah,0b9h,09eh,010h,090h,01fh,090h,021h,002h,010h,070h	; 9eb9  ............!..p
	defb 01fh,070h,010h,060h,01fh,060h,010h,050h,01fh,050h,0ffh	; 9ec9  .p.`.`.P.P.

; ----------------------------------------------------------------------
; DATOS pista_9ED4: pista de los sonidos 0x0C (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (48 bytes)
;   0x9ed4..0x9f04  (48 bytes)
DATA_pista_9ED4:
	defb 0feh,000h,023h,001h,010h,0d2h,010h,021h,001h,012h,0b0h,014h,090h,016h,0a0h,01ah	; 9ed4  ..#....!........
	defb 080h,023h,002h,010h,0d3h,000h,021h,002h,013h,090h,016h,0c0h,01ch,0b0h,01fh,0a0h	; 9ee4  .#....!.........
	defb 090h,020h,001h,021h,002h,010h,0b0h,013h,080h,016h,0a0h,01ch,090h,01fh,080h,0ffh	; 9ef4  . .!............

; ----------------------------------------------------------------------
; DATOS pista_9F04: pista de los sonidos 0x0D (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (15 bytes)
;   0x9f04..0x9f13  (15 bytes)
DATA_pista_9F04:
	defb 0feh,000h,023h,001h,010h,0d2h,000h,020h,002h,023h,001h,01ah,0d3h,000h,0ffh	; 9f04  ..#.... .#.....

; ----------------------------------------------------------------------
; DATOS pista_9F13: pista de los sonidos 0x0E (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (1 bytes)
;   0x9f13..0x9f14  (1 bytes)
DATA_pista_9F13:
	defb 0ffh	; 9f13

; ----------------------------------------------------------------------
; DATOS pista_9F14: pista de los sonidos 0x0F (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (37 bytes)
;   0x9f14..0x9f39  (37 bytes)
DATA_pista_9F14:
	defb 0feh,000h,022h,001h,0b0h,040h,0b0h,080h,0b0h,050h,0b0h,090h,020h,002h,022h,001h	; 9f14  .."..@...P.. .".
	defb 090h,040h,090h,080h,090h,050h,090h,0a0h,020h,002h,022h,001h,070h,040h,070h,080h	; 9f24  .@...P.. .".p@p.
	defb 070h,050h,070h,0a0h,0ffh	; 9f34

; ----------------------------------------------------------------------
; DATOS pista_9F39: pista de los sonidos 0x10 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (21 bytes)
;   0x9f39..0x9f4e  (21 bytes)
DATA_pista_9F39:
	defb 0feh,000h,022h,001h,0b0h,028h,090h,028h,080h,028h,090h,028h,060h,029h,050h,028h	; 9f39  .."..(.(.(.(`)P(
	defb 040h,028h,030h,028h,0ffh	; 9f49

; ----------------------------------------------------------------------
; DATOS pista_9F4E: pista de los sonidos 0x11 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (56 bytes)
;   0x9f4e..0x9f86  (56 bytes)
DATA_pista_9F4E:
	defb 0feh,000h,023h,001h,010h,080h,018h,070h,010h,090h,024h,080h,010h,0a0h,024h,090h	; 9f4e  ..#....p..$...$.
	defb 010h,0b0h,024h,090h,010h,0a0h,024h,090h,010h,0a0h,024h,080h,010h,090h,024h,070h	; 9f5e  ..$...$...$...$p
	defb 010h,080h,024h,060h,010h,070h,024h,050h,010h,060h,024h,040h,010h,050h,024h,030h	; 9f6e  ..$`.p$P.`$@.P$0
	defb 010h,040h,024h,030h,010h,030h,024h,0ffh	; 9f7e  .@$0.0$.

; ----------------------------------------------------------------------
; DATOS pista_9F86: pista de los sonidos 0x12, 0x22 (p14:94FA: notas, 0xDx
;   octava, 0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la
;   siguiente; lo leen p14:9500 (59 bytes)
;   0x9f86..0x9fc1  (59 bytes)
DATA_pista_9F86:
	defb 0feh,000h,022h,001h,0a0h,025h,0b0h,040h,000h,000h,0b0h,05bh,0b0h,080h,000h,000h	; 9f86  .."..%.@...[....
	defb 0b0h,0b0h,0b0h,0dbh,0c1h,043h,0c1h,084h,0b2h,000h,0b3h,000h,0a0h,0b0h,0a0h,0dbh	; 9f96  .....C..........
	defb 0b1h,043h,0b1h,084h,0a2h,000h,0a3h,000h,094h,005h,090h,0b0h,090h,0dbh,0a1h,043h	; 9fa6  .C.............C
	defb 0a1h,084h,092h,000h,093h,000h,084h,005h,085h,050h,0ffh	; 9fb6  .........P.

; ----------------------------------------------------------------------
; DATOS pista_9FC1: pista de los sonidos 0x13 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (37 bytes)
;   0x9fc1..0x9fe6  (37 bytes)
DATA_pista_9FC1:
	defb 0feh,000h,022h,001h,0d0h,060h,020h,003h,022h,001h,0d0h,04ch,020h,009h,022h,001h	; 9fc1  .."..` ."..L .".
	defb 0a0h,060h,020h,003h,022h,001h,0a0h,04ch,020h,008h,022h,001h,070h,060h,020h,003h	; 9fd1  .` ."..L .".p` .
	defb 022h,001h,070h,04ch,0ffh	; 9fe1

; ----------------------------------------------------------------------
; DATOS pista_9FE6: pista de los sonidos 0x14 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (26 bytes)
;   0x9fe6..0xa000  (26 bytes)
DATA_pista_9FE6:
	defb 0feh,000h,023h,001h,010h,0c0h,022h,0b0h,021h,013h,0a0h,022h,090h,022h,010h,0c0h	; 9fe6  ..#...".!.."."..
	defb 021h,0b0h,020h,013h,0a0h,021h,090h,021h,010h,0c0h	; 9ff6  !. ..!.!..
