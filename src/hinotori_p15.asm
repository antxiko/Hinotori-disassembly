; ==========================================================================
; HINOTORI - Konami (1987) - MSX - MegaROM RC-747 de 128 KB (Konami4) - banco 15 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS pista_9FE6_cola: pista de los sonidos 0x14 (p14:94FA: notas, 0xDx
;   octava, 0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la
;   siguiente (sigue del banco anterior, 0x9FE6); lo leen p14:9500 (90 bytes)
;   0xa000..0xa05a  (90 bytes)
DATA_pista_9FE6_cola:
	defb 020h,0b0h,01fh,013h,0a0h,020h,090h,020h,01fh,080h,020h,010h,0c0h,01eh,0b0h,01dh	; a000   .... . .. .....
	defb 013h,0a0h,01eh,090h,01eh,01fh,080h,01eh,010h,0c0h,01dh,0b0h,01ch,013h,0a0h,01dh	; a010  ................
	defb 010h,0c0h,01bh,0b0h,01ah,013h,0a0h,01bh,090h,019h,010h,0c0h,016h,0a0h,016h,080h	; a020  ................
	defb 016h,020h,004h,023h,001h,0a0h,016h,080h,016h,070h,016h,020h,004h,023h,001h,090h	; a030  . .#.....p. .#..
	defb 016h,070h,016h,050h,016h,020h,003h,023h,001h,080h,016h,060h,016h,040h,016h,020h	; a040  .p.P. .#...`.@.
	defb 003h,023h,001h,070h,016h,050h,016h,030h,016h,0ffh	; a050  .#.p.P.0..

; ----------------------------------------------------------------------
; DATOS pista_A05A: pista de los sonidos 0x15 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (49 bytes)
;   0xa05a..0xa08b  (49 bytes)
DATA_pista_A05A:
	defb 0feh,000h,022h,003h,0b0h,030h,0b0h,040h,020h,008h,022h,003h,0a0h,030h,0a0h,040h	; a05a  .."..0.@ ."..0.@
	defb 020h,008h,022h,003h,070h,030h,070h,040h,020h,008h,022h,003h,060h,030h,060h,040h	; a06a   .".p0p@ .".`0`@
	defb 020h,008h,022h,003h,050h,030h,050h,040h,020h,008h,022h,003h,040h,030h,040h,040h	; a07a   .".P0P@ .".@0@@
	defb 0ffh	; a08a

; ----------------------------------------------------------------------
; DATOS pista_A08B: pista de los sonidos 0x16 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (1 bytes)
;   0xa08b..0xa08c  (1 bytes)
DATA_pista_A08B:
	defb 0ffh	; a08b

; ----------------------------------------------------------------------
; DATOS pista_A08C: pista de los sonidos 0x17 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (57 bytes)
;   0xa08c..0xa0c5  (57 bytes)
DATA_pista_A08C:
	defb 0feh,000h,022h,001h,0a0h,045h,0a0h,040h,0a0h,03ah,0a0h,030h,0a0h,028h,0a0h,050h	; a08c  .."..E.@.:.0.(.P
	defb 0a0h,045h,0a0h,040h,0a0h,03ah,0a0h,030h,0a0h,028h,0a0h,054h,0a0h,04ah,0a0h,045h	; a09c  .E.@.:.0.(.T.J.E
	defb 0a0h,040h,0a0h,03ah,0a0h,030h,0a0h,028h,0a0h,020h,0a0h,01ah,090h,021h,080h,019h	; a0ac  .@.:.0.(. ...!..
	defb 070h,022h,060h,018h,050h,028h,040h,017h,0ffh	; a0bc  p"`.P(@..

; ----------------------------------------------------------------------
; DATOS pista_A0C5: pista de los sonidos 0x18 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (47 bytes)
;   0xa0c5..0xa0f4  (47 bytes)
DATA_pista_A0C5:
	defb 0feh,000h,022h,001h,080h,01bh,080h,045h,0a0h,040h,0b0h,038h,0b0h,031h,000h,000h	; a0c5  .."....E.@.8.1..
	defb 080h,031h,0b0h,050h,090h,051h,070h,050h,000h,000h,0b0h,050h,090h,038h,070h,030h	; a0d5  .1.P.QpP...P.8p0
	defb 000h,000h,080h,038h,0b0h,028h,090h,029h,070h,028h,050h,028h,040h,028h,0ffh	; a0e5  ...8.(.)p(P(@(.

; ----------------------------------------------------------------------
; DATOS pista_A0F4: pista de los sonidos 0x19 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (65 bytes)
;   0xa0f4..0xa135  (65 bytes)
DATA_pista_A0F4:
	defb 0feh,000h,022h,001h,0c1h,010h,0c1h,000h,0c1h,010h,0c0h,0f0h,0c0h,0e0h,0c0h,0deh	; a0f4  ..".............
	defb 020h,005h,022h,001h,0a1h,010h,0a0h,0f0h,0a0h,0e0h,0a0h,0dfh,020h,003h,022h,001h	; a104   ."......... .".
	defb 081h,010h,080h,0f0h,080h,0e0h,080h,0deh,020h,004h,022h,001h,071h,010h,070h,0f0h	; a114  ........ .".q.p.
	defb 070h,0e0h,070h,0deh,020h,004h,022h,001h,061h,010h,060h,0f0h,060h,0e0h,060h,0deh	; a124  p.p. .".a.`.`.`.
	defb 0ffh	; a134

; ----------------------------------------------------------------------
; DATOS pista_A135: pista de los sonidos 0x1A (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (109 bytes)
;   0xa135..0xa1a2  (109 bytes)
DATA_pista_A135:
	defb 0feh,000h,022h,001h,0c2h,000h,0e3h,000h,0f5h,0a0h,023h,001h,018h,0e0h,04ah,010h	; a135  ..".......#...J.
	defb 0c0h,03ah,020h,001h,023h,001h,018h,0d0h,02ah,010h,0b0h,032h,020h,00ah,023h,001h	; a145  .: .#...*..2 .#.
	defb 013h,0c0h,04ah,010h,0a0h,03ah,020h,001h,023h,001h,013h,0b0h,02ah,010h,090h,032h	; a155  ..J..: .#...*..2
	defb 020h,00ah,023h,001h,013h,0a0h,04ah,010h,080h,03ah,020h,001h,023h,001h,013h,090h	; a165   .#...J..: .#...
	defb 02ah,010h,070h,032h,020h,00ah,023h,001h,012h,080h,04ah,010h,060h,03ah,020h,001h	; a175  *.p2 .#...J.`: .
	defb 023h,001h,012h,070h,02ah,010h,050h,032h,020h,00ah,023h,001h,012h,060h,04ah,010h	; a185  #..p*.P2 .#..`J.
	defb 040h,03ah,020h,001h,023h,001h,012h,050h,02ah,010h,030h,032h,0ffh	; a195  @: .#..P*.02.

; ----------------------------------------------------------------------
; DATOS pista_A1A2: pista de los sonidos 0x1B (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (1 bytes)
;   0xa1a2..0xa1a3  (1 bytes)
DATA_pista_A1A2:
	defb 0ffh	; a1a2

; ----------------------------------------------------------------------
; DATOS pista_A1A3: pista de los sonidos 0x1C (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (19 bytes)
;   0xa1a3..0xa1b6  (19 bytes)
DATA_pista_A1A3:
	defb 0feh,000h,021h,001h,010h,0d0h,0b0h,0a0h,023h,001h,090h,00fh,080h,011h,021h,003h	; a1a3  ..!.....#.....!.
	defb 013h,0a0h,0ffh	; a1b3

; ----------------------------------------------------------------------
; DATOS pista_A1B6: pista de los sonidos 0x1D (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (53 bytes)
;   0xa1b6..0xa1eb  (53 bytes)
DATA_pista_A1B6:
	defb 0feh,000h,023h,001h,01fh,0c1h,080h,010h,0e1h,000h,0d1h,030h,0c1h,060h,0b1h,080h	; a1b6  ..#........0.`..
	defb 0a1h,0a0h,01ah,0b1h,000h,010h,0a1h,030h,091h,060h,081h,080h,071h,0a0h,015h,091h	; a1c6  .......0.`..q...
	defb 000h,010h,081h,030h,071h,060h,061h,080h,051h,0a0h,071h,000h,061h,030h,051h,060h	; a1d6  ...0q`a.Q.q.a0Q`
	defb 041h,080h,031h,0a0h,0ffh	; a1e6

; ----------------------------------------------------------------------
; DATOS pista_A1EB: pista de los sonidos 0x1E (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (80 bytes)
;   0xa1eb..0xa23b  (80 bytes)
DATA_pista_A1EB:
	defb 0feh,000h,023h,001h,010h,0e0h,015h,01ah,0a0h,035h,010h,0e0h,080h,020h,002h,022h	; a1eb  ..#......5... ."
	defb 001h,0d1h,000h,0d1h,0a0h,0d2h,050h,0d3h,000h,0d4h,0a0h,0d5h,050h,0c1h,000h,0d2h	; a1fb  ......P.....P...
	defb 000h,0c4h,000h,0c8h,000h,091h,004h,092h,008h,094h,010h,098h,020h,0b1h,000h,0b2h	; a20b  ............ ...
	defb 000h,0b4h,000h,0b8h,000h,081h,008h,082h,010h,084h,018h,088h,020h,0a1h,000h,0a2h	; a21b  ............ ...
	defb 000h,0a3h,000h,0a4h,000h,0a8h,000h,071h,008h,072h,020h,074h,018h,078h,020h,0ffh	; a22b  .......q.r t.x .

; ----------------------------------------------------------------------
; DATOS pista_A23B: pista de los sonidos 0x1F (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (29 bytes)
;   0xa23b..0xa258  (29 bytes)
DATA_pista_A23B:
	defb 0feh,000h,022h,002h,0a0h,02ah,080h,02ah,0a0h,035h,080h,035h,022h,005h,0a0h,023h	; a23b  .."..*.*.5.5"..#
	defb 080h,024h,070h,023h,060h,024h,050h,023h,040h,024h,030h,023h,0ffh	; a24b  .$p#`$P#@$0#.

; ----------------------------------------------------------------------
; DATOS pista_A258: pista de los sonidos 0x20 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (47 bytes)
;   0xa258..0xa287  (47 bytes)
DATA_pista_A258:
	defb 0feh,000h,022h,002h,0a0h,02ah,090h,02ah,0a0h,035h,090h,035h,0a0h,02ah,090h,02ah	; a258  .."..*.*.5.5.*.*
	defb 0a0h,035h,090h,035h,080h,02ah,022h,005h,0a0h,023h,090h,024h,090h,023h,080h,024h	; a268  .5.5.*"..#.$.#.$
	defb 070h,023h,022h,006h,060h,024h,050h,023h,022h,007h,040h,024h,030h,023h,0ffh	; a278  p#".`$P#".@$0#.

; ----------------------------------------------------------------------
; DATOS pista_A287: pista de los sonidos 0x21 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (49 bytes)
;   0xa287..0xa2b8  (49 bytes)
DATA_pista_A287:
	defb 0feh,000h,023h,002h,010h,0d0h,060h,011h,0d0h,030h,0d0h,018h,0d0h,030h,010h,0c0h	; a287  ..#...`..0...0..
	defb 040h,011h,0c0h,020h,0c0h,010h,0c0h,020h,010h,0b0h,030h,011h,0b0h,018h,0b0h,00ch	; a297  @.. ... ..0.....
	defb 0b0h,018h,010h,0a0h,030h,011h,090h,010h,080h,00ch,070h,010h,060h,030h,050h,010h	; a2a7  ....0.....p.`0P.
	defb 0ffh	; a2b7

; ----------------------------------------------------------------------
; DATOS pista_A2B8: pista de los sonidos 0x23 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (132 bytes)
;   0xa2b8..0xa33c  (132 bytes)
DATA_pista_A2B8:
	defb 0feh,000h,023h,001h,010h,0c0h,03eh,01fh,0c3h,040h,0a0h,000h,090h,000h,080h,000h	; a2b8  ..#...>..@......
	defb 074h,0d0h,060h,000h,0feh,003h,0bah,0a2h,023h,001h,010h,0c0h,03eh,01fh,0c3h,040h	; a2c8  t.`.....#...>..@
	defb 0a0h,000h,090h,000h,080h,000h,074h,0d0h,0feh,002h,0d0h,0a2h,023h,001h,01ah,0e1h	; a2d8  ......t.....#...
	defb 0a0h,022h,001h,0d2h,0a0h,0d3h,050h,0c4h,0a0h,020h,001h,023h,001h,0d2h,0a0h,022h	; a2e8  ."....P.. .#..."
	defb 001h,0c4h,000h,0c5h,000h,0b5h,050h,0a5h,0a0h,096h,000h,086h,050h,076h,0a0h,067h	; a2f8  ......P.....Pv.g
	defb 000h,057h,050h,047h,0a0h,038h,000h,038h,050h,038h,0a0h,039h,000h,039h,050h,023h	; a308  .WPG.8.8P8.9.9P#
	defb 001h,0c1h,0a0h,022h,001h,0b2h,0a0h,0a3h,050h,094h,0a0h,020h,001h,023h,001h,0a2h	; a318  ..."....P.. .#..
	defb 0a0h,022h,001h,094h,000h,095h,000h,085h,050h,075h,0a0h,066h,000h,056h,050h,046h	; a328  ."......Pu.f.VPF
	defb 0a0h,037h,000h,0ffh	; a338

; ----------------------------------------------------------------------
; DATOS pista_A33C: pista de los sonidos 0x25 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (13 bytes)
;   0xa33c..0xa349  (13 bytes)
DATA_pista_A33C:
	defb 0feh,000h,022h,002h,0b0h,035h,0b0h,01ah,0feh,008h,03eh,0a3h,0ffh	; a33c  .."..5....>..

; ----------------------------------------------------------------------
; DATOS pista_A349: pista de los sonidos 0x26 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (1 bytes)
;   0xa349..0xa34a  (1 bytes)
DATA_pista_A349:
	defb 0ffh	; a349

; ----------------------------------------------------------------------
; DATOS pista_A34A: pista de los sonidos 0x27 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (143 bytes)
;   0xa34a..0xa3d9  (143 bytes)
DATA_pista_A34A:
	defb 0feh,000h,023h,002h,010h,090h,030h,022h,002h,090h,00fh,023h,002h,0a0h,050h,022h	; a34a  ..#...0"...#..P"
	defb 002h,0a0h,00fh,023h,002h,011h,0b0h,010h,022h,002h,0b0h,00fh,023h,002h,0c0h,028h	; a35a  ...#...."...#..(
	defb 022h,002h,0c0h,00fh,023h,002h,012h,0d0h,065h,022h,002h,0d0h,00fh,023h,002h,0d0h	; a36a  "...#...e"...#..
	defb 03ah,022h,002h,0d0h,00fh,023h,002h,0d0h,04ch,022h,002h,0d0h,00fh,023h,002h,0d0h	; a37a  :"...#..L"...#..
	defb 01fh,022h,002h,0d0h,00fh,023h,002h,0d0h,061h,022h,002h,0d0h,00fh,023h,002h,0c0h	; a38a  ."...#..a"...#..
	defb 022h,022h,002h,0c0h,00fh,023h,002h,0c0h,010h,022h,002h,0c0h,00fh,023h,002h,0c0h	; a39a  ""...#..."...#..
	defb 044h,022h,002h,0c0h,00fh,023h,002h,015h,0b0h,032h,022h,002h,0b0h,00fh,023h,002h	; a3aa  D"...#...2"...#.
	defb 017h,0b0h,027h,022h,002h,0b0h,00fh,023h,002h,019h,0a0h,016h,022h,002h,0a0h,00fh	; a3ba  ..'"...#...."...
	defb 023h,002h,01dh,090h,048h,022h,002h,090h,00fh,023h,002h,01fh,090h,012h,0ffh	; a3ca  #...H"...#.....

; ----------------------------------------------------------------------
; DATOS pista_A3D9: pista de los sonidos 0x28 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (139 bytes)
;   0xa3d9..0xa464  (139 bytes)
DATA_pista_A3D9:
	defb 0feh,000h,022h,001h,0a0h,090h,0b0h,088h,0c0h,040h,0c0h,048h,0c0h,066h,0d0h,033h	; a3d9  .."......@.H.f.3
	defb 0a0h,018h,0a0h,01ah,0c0h,020h,0c0h,022h,0b0h,026h,0a0h,022h,090h,021h,022h,002h	; a3e9  ..... .".&.".!".
	defb 080h,020h,070h,020h,060h,020h,050h,020h,040h,020h,022h,001h,030h,020h,0b0h,033h	; a3f9  . p ` P @ ".0 .3
	defb 080h,018h,080h,01ah,0a0h,020h,0a0h,022h,090h,026h,080h,022h,070h,021h,022h,002h	; a409  ..... .".&."p!".
	defb 060h,020h,050h,020h,040h,020h,030h,020h,022h,001h,090h,033h,070h,018h,070h,01ah	; a419  ` P @ 0 "..3p.p.
	defb 090h,020h,090h,022h,080h,026h,070h,022h,060h,021h,022h,002h,050h,020h,040h,020h	; a429  . .".&p"`!".P @
	defb 022h,004h,030h,020h,022h,001h,080h,033h,050h,018h,050h,01ah,070h,020h,070h,022h	; a439  ".0 "..3P.P.p p"
	defb 060h,026h,050h,022h,040h,021h,020h,008h,030h,020h,022h,001h,060h,033h,040h,018h	; a449  `&P"@! .0 ".`3@.
	defb 040h,01ah,050h,020h,050h,022h,040h,026h,030h,021h,0ffh	; a459  @.P P"@&0!.

; ----------------------------------------------------------------------
; DATOS pista_A464: pista de los sonidos 0x29 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (45 bytes)
;   0xa464..0xa491  (45 bytes)
DATA_pista_A464:
	defb 0feh,000h,023h,001h,010h,0b0h,033h,0b0h,031h,0c0h,02dh,010h,0d0h,033h,0e0h,031h	; a464  ..#...3.1.-..3.1
	defb 0d0h,02fh,0d0h,02eh,0d0h,02ch,0d0h,028h,023h,001h,0c0h,000h,0c0h,028h,0c0h,000h	; a474  ./...,.(#....(..
	defb 0b0h,027h,0b0h,000h,0b0h,028h,0b0h,000h,0b0h,028h,0a0h,01eh,0ffh	; a484  .'...(...(...

; ----------------------------------------------------------------------
; DATOS pista_A491: pista de los sonidos 0x2A (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (111 bytes)
;   0xa491..0xa500  (111 bytes)
DATA_pista_A491:
	defb 0feh,000h,022h,001h,0d2h,000h,0e3h,000h,0d2h,000h,0c1h,030h,0b1h,000h,0a1h,000h	; a491  .."........0....
	defb 091h,000h,081h,000h,071h,000h,0c2h,000h,0d3h,000h,0c2h,000h,0b1h,030h,0a1h,000h	; a4a1  ....q........0..
	defb 091h,000h,081h,000h,071h,000h,061h,000h,0b2h,000h,0c3h,000h,0b2h,000h,0a1h,030h	; a4b1  ....q.a........0
	defb 091h,000h,081h,000h,071h,000h,061h,000h,051h,000h,0a2h,000h,0b3h,000h,0a2h,000h	; a4c1  ....q.a.Q.......
	defb 091h,030h,081h,000h,071h,000h,061h,000h,051h,000h,041h,000h,092h,000h,0a3h,000h	; a4d1  .0..q.a.Q.A.....
	defb 092h,000h,081h,030h,071h,000h,061h,000h,051h,000h,041h,000h,031h,000h,082h,000h	; a4e1  ...0q.a.Q.A.1...
	defb 093h,000h,082h,000h,071h,030h,061h,000h,051h,000h,041h,000h,031h,000h,0ffh	; a4f1  ....q0a.Q.A.1..

; ----------------------------------------------------------------------
; DATOS pista_A500: pista de los sonidos 0x2B (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (25 bytes)
;   0xa500..0xa519  (25 bytes)
DATA_pista_A500:
	defb 0feh,000h,022h,001h,090h,0d0h,0b0h,0d0h,0a0h,09ah,0a0h,0a0h,090h,0b0h,090h,0b5h	; a500  ..".............
	defb 090h,0bah,080h,0c0h,080h,0cah,080h,0dah,0ffh	; a510  .........

; ----------------------------------------------------------------------
; DATOS pista_A519: pista de los sonidos 0x2C (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (1 bytes)
;   0xa519..0xa51a  (1 bytes)
DATA_pista_A519:
	defb 0ffh	; a519

; ----------------------------------------------------------------------
; DATOS pista_A51A: pista de los sonidos 0x2D (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (1 bytes)
;   0xa51a..0xa51b  (1 bytes)
DATA_pista_A51A:
	defb 0ffh	; a51a

; ----------------------------------------------------------------------
; DATOS pista_A51B: pista de los sonidos 0x30 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (44 bytes)
;   0xa51b..0xa547  (44 bytes)
DATA_pista_A51B:
	defb 0feh,000h,022h,001h,0b1h,080h,0c2h,080h,0d3h,000h,0d4h,000h,0d5h,000h,020h,003h	; a51b  .."........... .
	defb 023h,001h,01ch,0c0h,03eh,0c0h,052h,0c0h,03ch,0c0h,050h,0c0h,03ah,0c0h,04eh,0c0h	; a52b  #...>.R.<.P.:.N.
	defb 038h,0c0h,04ch,0c0h,038h,0c0h,04ch,0a0h,000h,0c0h,035h,0ffh	; a53b  8.L.8.L...5.

; ----------------------------------------------------------------------
; DATOS pista_A547: pista de los sonidos 0x31 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (106 bytes)
;   0xa547..0xa5b1  (106 bytes)
DATA_pista_A547:
	defb 0feh,000h,023h,001h,01ah,0e3h,000h,015h,0c0h,038h,013h,0c0h,04ch,0c0h,038h,0c0h	; a547  ..#......8..L.8.
	defb 04eh,01ah,0d2h,000h,022h,001h,0d4h,000h,020h,003h,023h,001h,01ah,0c1h,000h,022h	; a557  N..."... .#...."
	defb 001h,0d1h,020h,0c1h,050h,0c1h,080h,0b1h,020h,0b1h,090h,0a1h,010h,0a0h,0e0h,020h	; a567  .. .P... ......
	defb 003h,023h,001h,01ah,0c1h,000h,022h,001h,0c4h,000h,020h,003h,022h,001h,0c1h,020h	; a577  .#...."... ."..
	defb 0b1h,050h,0b1h,080h,0a1h,020h,0a1h,090h,091h,010h,090h,0e0h,020h,003h,023h,001h	; a587  .P... ...... .#.
	defb 01ah,0a2h,000h,022h,001h,0a4h,000h,020h,003h,022h,001h,0b1h,020h,0b1h,050h,0a1h	; a597  ..."... .".. .P.
	defb 080h,0a1h,020h,091h,090h,091h,010h,080h,0e0h,0ffh	; a5a7  .. .......

; ----------------------------------------------------------------------
; DATOS pista_A5B1: pista de los sonidos 0x32 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (1 bytes)
;   0xa5b1..0xa5b2  (1 bytes)
DATA_pista_A5B1:
	defb 0ffh	; a5b1

; ----------------------------------------------------------------------
; DATOS pista_A5B2: pista de los sonidos 0x33 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (111 bytes)
;   0xa5b2..0xa621  (111 bytes)
DATA_pista_A5B2:
	defb 0feh,000h,022h,001h,0c1h,060h,0c1h,000h,0c0h,080h,0c0h,040h,0c0h,020h,022h,001h	; a5b2  .."..`.....@. ".
	defb 0c1h,040h,0c0h,0f0h,0c0h,078h,0c0h,03ch,0c0h,01eh,022h,001h,0c1h,020h,0c0h,0e3h	; a5c2  .@...x.<..".. ..
	defb 0c0h,073h,0c0h,03ah,0c0h,01dh,022h,001h,0c1h,000h,0c0h,0d8h,0c0h,06ch,0c0h,036h	; a5d2  .s.:.."......l.6
	defb 0c0h,01bh,022h,001h,0c0h,0f0h,0c0h,0cah,0c0h,064h,0c0h,032h,0c0h,019h,020h,003h	; a5e2  .."......d.2.. .
	defb 022h,001h,071h,040h,090h,0f0h,090h,0cah,090h,064h,090h,032h,090h,019h,020h,004h	; a5f2  ".q@.....d.2.. .
	defb 022h,001h,051h,040h,070h,0f0h,070h,0cah,070h,064h,070h,032h,070h,019h,020h,004h	; a602  ".Q@p.p.pdp2p. .
	defb 022h,001h,031h,040h,050h,0f0h,050h,0cah,050h,064h,050h,032h,050h,019h,0ffh	; a612  ".1@P.P.PdP2P..

; ----------------------------------------------------------------------
; DATOS pista_A621: pista de los sonidos 0x34 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (57 bytes)
;   0xa621..0xa65a  (57 bytes)
DATA_pista_A621:
	defb 0efh,0d3h,0fah,000h,0e3h,070h,0b0h,0e2h,020h,050h,070h,0b0h,0e1h,020h,050h,0b0h	; a621  .....p.. Pp.. P.
	defb 0e0h,020h,050h,070h,0d3h,0f8h,000h,0e1h,0b0h,0e0h,020h,050h,070h,0d3h,0f7h,000h	; a631  . Pp...... Pp...
	defb 0e1h,0b0h,0e0h,020h,050h,070h,0d3h,0f5h,000h,0e1h,0b0h,0e0h,020h,050h,070h,0d3h	; a641  ... Pp...... Pp.
	defb 0f3h,000h,0e1h,0b0h,0e0h,020h,050h,070h,0ffh	; a651  ..... Pp.

; ----------------------------------------------------------------------
; DATOS pista_A65A: pista de los sonidos 0x35 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (1 bytes)
;   0xa65a..0xa65b  (1 bytes)
DATA_pista_A65A:
	defb 0ffh	; a65a

; ----------------------------------------------------------------------
; DATOS pista_A65B: pista de los sonidos 0x36 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (47 bytes)
;   0xa65b..0xa68a  (47 bytes)
DATA_pista_A65B:
	defb 0feh,000h,022h,003h,0a1h,040h,0c0h,0a0h,0d0h,050h,0d0h,048h,0d0h,06ah,0c0h,035h	; a65b  .."..@...P.H.j.5
	defb 0b0h,0a0h,090h,050h,022h,005h,0b0h,028h,0b0h,035h,0a0h,028h,090h,035h,080h,028h	; a66b  ...P"..(.5.(.5.(
	defb 090h,035h,070h,028h,060h,035h,050h,028h,050h,035h,040h,028h,040h,035h,0ffh	; a67b  .5p(`5P(P5@(@5.

; ----------------------------------------------------------------------
; DATOS pista_A68A: pista de los sonidos 0x37 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (425 bytes)
;   0xa68a..0xa833  (425 bytes)
DATA_pista_A68A:
	defb 0efh,0d4h,0fah,023h,0ech,052h,0e2h,041h,071h,091h,0b1h,0e1h,021h,041h,071h,091h	; a68a  ...#.R.Aq...!Aq.
	defb 0f9h,013h,0e1h,041h,021h,001h,023h,071h,09bh,0e2h,091h,0b1h,0e1h,001h,021h,0d8h	; a69a  ...A!.#q......!.
	defb 0f9h,013h,0ech,052h,0e1h,049h,0d4h,0c1h,041h,021h,001h,0e2h,0b1h,0e1h,001h,0feh	; a6aa  ...R.I..A!......
	defb 0ffh,0cbh,0a7h,0e2h,041h,071h,091h,0b1h,0e1h,021h,041h,071h,091h,0d8h,0ech,052h	; a6ba  ....Aq...!Aq...R
	defb 0e1h,049h,0d4h,0c1h,091h,041h,021h,001h,011h,0feh,0ffh,0cbh,0a7h,0f9h,014h,0e5h	; a6ca  .I...A!.........
	defb 091h,0e4h,090h,090h,0e5h,071h,0e4h,070h,070h,0e5h,041h,0e4h,040h,040h,0e5h,071h	; a6da  .....q.pp.A.@@.q
	defb 0e4h,070h,070h,0e9h,001h,085h,090h,0efh,0d1h,0f7h,000h,0e2h,050h,060h,070h,080h	; a6ea  .pp.........P`p.
	defb 0d4h,0f9h,013h,0ech,052h,0e2h,091h,0b3h,0e1h,003h,0e2h,093h,0b3h,0e1h,003h,0e2h	; a6fa  ....R...........
	defb 0b9h,0b1h,0e1h,003h,023h,0e2h,0b3h,0e1h,003h,023h,009h,001h,023h,043h,003h,023h	; a70a  ....#....#..#C.#
	defb 043h,0d8h,07bh,0d4h,0c1h,051h,041h,021h,001h,0e2h,09bh,071h,099h,091h,0b1h,0e1h	; a71a  C.{..QA!...q....
	defb 001h,0e2h,091h,0b7h,0e1h,027h,0e2h,081h,0b1h,0e1h,021h,051h,021h,051h,081h,0b1h	; a72a  .....'....!Q!Q..
	defb 0feh,0ffh,0e4h,0a7h,0e1h,07fh,051h,041h,051h,021h,04fh,051h,001h,0e2h,091h,0e1h	; a73a  ......QAQ!OQ....
	defb 051h,071h,021h,0e2h,0b1h,0e1h,071h,0feh,0ffh,0e4h,0a7h,0e1h,071h,071h,021h,0e2h	; a74a  Qq!...q.....qq!.
	defb 0b1h,0e1h,081h,081h,021h,0e2h,0b1h,0e1h,081h,081h,021h,0e2h,0b1h,0feh,0ffh,011h	; a75a  ....!.....!.....
	defb 0a8h,09fh,0feh,0ffh,01bh,0a8h,09fh,0feh,0ffh,026h,0a8h,0c1h,079h,051h,041h,051h	; a76a  .........&..yQAQ
	defb 021h,04fh,051h,001h,0e2h,091h,0e1h,051h,071h,021h,0e2h,0b1h,0e1h,071h,0feh,0ffh	; a77a  !OQ....Qq!...q..
	defb 011h,0a8h,0f7h,013h,091h,0e0h,001h,0e1h,091h,071h,0f9h,013h,097h,0feh,0ffh,01bh	; a78a  .........q......
	defb 0a8h,0f7h,013h,091h,0e0h,001h,0e1h,091h,071h,0f9h,013h,097h,0feh,0ffh,026h,0a8h	; a79a  ........q.....&.
	defb 021h,0e2h,0b1h,0e1h,081h,081h,021h,0e2h,0b1h,0e1h,081h,081h,021h,0e2h,0b1h,0fbh	; a7aa  !.....!.....!...
	defb 013h,0e4h,0c1h,041h,021h,001h,0e5h,0b1h,0e4h,001h,0e5h,071h,081h,0feh,0feh,0a9h	; a7ba  ...A!......q....
	defb 0a6h,023h,001h,0e2h,09fh,0e1h,041h,021h,001h,0e2h,0b1h,0e1h,001h,023h,001h,0e2h	; a7ca  .#....A!.....#..
	defb 09dh,0e1h,001h,0e2h,0b5h,071h,045h,0b1h,099h,0ffh,0ech,052h,0e1h,091h,091h,0f8h	; a7da  .....qE....R....
	defb 013h,091h,091h,0f5h,003h,091h,091h,0f9h,013h,071h,099h,001h,021h,041h,071h,091h	; a7ea  .........q..!Aq.
	defb 091h,0f8h,013h,091h,091h,0f5h,003h,091h,091h,0f9h,013h,071h,099h,001h,021h,041h	; a7fa  ...........q..!A
	defb 051h,071h,071h,021h,0e2h,0b1h,0ffh,0ech,052h,0e1h,091h,0e0h,001h,0e1h,091h,071h	; a80a  Qqq!....R......q
	defb 0ffh,001h,021h,041h,071h,091h,0e0h,001h,0e1h,091h,071h,0ffh,001h,021h,041h,051h	; a81a  ..!Aq.....q..!AQ
	defb 071h,071h,021h,0e2h,0b1h,0e1h,071h,071h,0ffh	; a82a  qq!...qq.

; ----------------------------------------------------------------------
; DATOS pista_A833: pista de los sonidos 0x38 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (536 bytes)
;   0xa833..0xaa4b  (536 bytes)
DATA_pista_A833:
	defb 0efh,0d4h,0fbh,013h,0e4h,041h,071h,091h,0b1h,0e3h,021h,041h,071h,091h,0e4h,093h	; a833  .....Aq...!Aq...
	defb 091h,073h,071h,05bh,071h,070h,070h,0e3h,071h,0e4h,071h,0feh,0ffh,0b5h,0a9h,041h	; a843  .sq[qpp.q.q....A
	defb 071h,091h,0b1h,0e3h,021h,041h,071h,091h,0feh,0ffh,0b5h,0a9h,091h,0e3h,090h,090h	; a853  q...!Aq.........
	defb 0e4h,071h,0e3h,070h,070h,0e4h,041h,0e3h,040h,040h,0e4h,071h,0e3h,070h,070h,0e4h	; a863  .q.pp.A.@@.q.pp.
	defb 051h,0e3h,001h,051h,0e4h,051h,051h,051h,051h,051h,051h,051h,0e3h,001h,051h,0e4h	; a873  Q..Q.QQQQQQQ..Q.
	defb 051h,051h,051h,060h,060h,071h,0e3h,021h,071h,0e4h,071h,071h,071h,071h,071h,071h	; a883  QQQ``q.!q.qqqqqq
	defb 071h,0e3h,021h,071h,0e4h,071h,071h,071h,080h,080h,091h,091h,0e3h,041h,091h,0e4h	; a893  q.!q.qqq.....A..
	defb 091h,091h,091h,091h,091h,091h,0e3h,041h,091h,0e4h,091h,091h,091h,0a0h,0b0h,0e3h	; a8a3  .......A........
	defb 001h,001h,0e2h,001h,0e3h,001h,001h,001h,001h,001h,001h,001h,0e2h,001h,0e3h,001h	; a8b3  ................
	defb 001h,0e4h,0b1h,091h,071h,051h,0e3h,001h,051h,0e4h,051h,051h,051h,051h,051h,051h	; a8c3  ....qQ..Q.QQQQQQ
	defb 051h,0e3h,001h,051h,0e4h,051h,051h,051h,061h,071h,071h,0e3h,071h,0e4h,071h,071h	; a8d3  Q..Q.QQQaqq.q.qq
	defb 071h,071h,071h,081h,081h,0e3h,082h,0e4h,080h,081h,081h,0e3h,081h,0e4h,081h,0feh	; a8e3  qqq.............
	defb 0ffh,010h,0aah,071h,0e3h,071h,0e4h,071h,071h,070h,070h,0e3h,073h,0e4h,081h,080h	; a8f3  ...q.q.qqpp.s...
	defb 080h,0e3h,082h,0e4h,080h,091h,091h,0e3h,091h,0e4h,091h,091h,091h,0e3h,091h,0e4h	; a903  ................
	defb 071h,051h,051h,0e3h,051h,0e4h,061h,071h,071h,0e3h,071h,0e4h,081h,0feh,0ffh,010h	; a913  qQQ.Q.aqq.q.....
	defb 0aah,070h,070h,0e3h,073h,0e4h,081h,080h,080h,0e3h,081h,0e4h,081h,081h,080h,080h	; a923  .pp.s...........
	defb 0e3h,081h,0e4h,081h,0e4h,091h,0e3h,091h,0feh,007h,037h,0a9h,0e4h,071h,0e3h,071h	; a933  ..........7..q.q
	defb 0e4h,051h,0e3h,051h,0feh,007h,043h,0a9h,0e4h,061h,0e3h,061h,0e4h,071h,0e3h,071h	; a943  .Q.Q..C..a.a.q.q
	defb 0feh,006h,04fh,0a9h,0e4h,081h,0e3h,081h,0e4h,081h,0e3h,081h,0e4h,091h,0e3h,091h	; a953  ..O.............
	defb 0feh,003h,05fh,0a9h,0e4h,071h,0e3h,071h,0e4h,051h,0e3h,051h,0e4h,051h,061h,0e4h	; a963  .._..q.q.Q.Q.Qa.
	defb 071h,0e3h,071h,0e4h,071h,0e3h,071h,0e4h,091h,0e3h,091h,0feh,007h,07ah,0a9h,0e4h	; a973  q.q.q.q......z..
	defb 071h,0e3h,071h,0e4h,051h,0e3h,051h,0feh,007h,086h,0a9h,0e4h,061h,0e3h,061h,0e4h	; a983  q.q.Q.Q.....a.a.
	defb 071h,0e3h,071h,0feh,004h,092h,0a9h,0e4h,081h,0e3h,081h,0feh,004h,09ah,0a9h,0e9h	; a993  q.q.............
	defb 001h,0a1h,0efh,0e3h,041h,021h,001h,0e4h,0b1h,0e3h,001h,0e4h,071h,081h,0feh,0feh	; a9a3  ....A!......q...
	defb 04eh,0a8h,0fbh,013h,0e4h,091h,091h,0e3h,091h,0e4h,091h,091h,091h,0e3h,091h,0e4h	; a9b3  N...............
	defb 091h,091h,091h,0e3h,091h,0e4h,091h,091h,090h,090h,0e3h,091h,0e4h,091h,051h,051h	; a9c3  ..............QQ
	defb 0e3h,051h,0e4h,051h,051h,051h,0e3h,051h,0e4h,051h,051h,051h,0e3h,051h,0e4h,051h	; a9d3  .Q.QQQ.Q.QQQ.Q.Q
	defb 051h,050h,050h,0e3h,001h,051h,0e4h,071h,071h,0e3h,071h,0e4h,071h,071h,071h,0e3h	; a9e3  QPP..Q.qq.q.qqq.
	defb 071h,0e4h,071h,071h,070h,070h,0e3h,073h,0e4h,071h,070h,070h,0e3h,082h,0e4h,080h	; a9f3  q.qqpp.s.qpp....
	defb 091h,091h,0e3h,091h,0e4h,091h,091h,091h,0e3h,091h,0e4h,091h,0ffh,0e4h,091h,091h	; aa03  ................
	defb 0e3h,091h,0e4h,091h,091h,091h,0e3h,091h,0e4h,091h,091h,091h,0e3h,091h,0e4h,091h	; aa13  ................
	defb 091h,090h,090h,0e3h,091h,0e4h,071h,051h,051h,0e3h,051h,0e4h,051h,051h,051h,0e3h	; aa23  ......qQQ.Q.QQQ.
	defb 051h,0e4h,051h,051h,051h,0e3h,051h,0e4h,051h,051h,050h,050h,0e3h,051h,0e4h,061h	; aa33  Q.QQQ.Q.QQPP.Q.a
	defb 071h,071h,0e3h,071h,0e4h,071h,071h,0ffh	; aa43  qq.q.qq.

; ----------------------------------------------------------------------
; DATOS pista_AA4B: pista de los sonidos 0x39 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (490 bytes)
;   0xaa4b..0xac35  (490 bytes)
DATA_pista_AA4B:
	defb 0efh,0d4h,0e9h,001h,010h,010h,021h,021h,021h,080h,080h,081h,081h,091h,0efh,0f9h	; aa4b  ......!!!.......
	defb 013h,0ech,052h,0e1h,001h,0e2h,0b1h,091h,0b3h,0e1h,041h,05bh,0e9h,001h,021h,021h	; aa5b  ..R.......A[..!!
	defb 0a1h,0b1h,0efh,0d8h,0f7h,003h,0ech,052h,0e1h,009h,0d4h,0c2h,0e8h,041h,021h,001h	; aa6b  .......R.....A!.
	defb 0e2h,0b1h,0e1h,001h,023h,000h,0efh,0ech,052h,0e2h,05fh,0c0h,0e8h,0e1h,041h,021h	; aa7b  ....#...R._...A!
	defb 001h,0e2h,0b1h,0e1h,001h,023h,000h,0efh,0ech,052h,0e2h,02dh,0c0h,0e8h,0e1h,001h	; aa8b  .....#...R.-....
	defb 0e2h,0b5h,071h,045h,0b1h,099h,0f7h,034h,0e2h,041h,071h,091h,0b1h,0e1h,021h,041h	; aa9b  ..qE...4.Aq...!A
	defb 071h,090h,0d8h,0f7h,003h,0ech,052h,0e1h,009h,0e8h,0d4h,0c3h,091h,041h,021h,001h	; aaab  q.....R......A!.
	defb 011h,023h,0efh,0ech,052h,0e2h,05fh,0c1h,0e8h,0e1h,041h,021h,001h,0e2h,0b1h,0e1h	; aabb  .#..R._...A!....
	defb 001h,023h,0efh,0ech,052h,0e2h,02dh,0c2h,0e8h,0e1h,001h,0e2h,0b5h,071h,045h,0b1h	; aacb  .#..R.-......qE.
	defb 096h,0efh,0e9h,001h,001h,020h,020h,001h,020h,020h,081h,091h,021h,021h,0e9h,001h	; aadb  .....  .  ..!!..
	defb 001h,001h,012h,0efh,0d1h,0f8h,000h,0e2h,000h,010h,020h,030h,0d4h,0f9h,013h,0ech	; aaeb  .......... 0....
	defb 052h,0e2h,051h,073h,093h,053h,073h,093h,079h,071h,093h,0b3h,073h,093h,0b3h,099h	; aafb  R.Qs.Ss.yq..s...
	defb 091h,0b3h,0e1h,003h,0e2h,093h,0b3h,0e1h,003h,0d8h,04bh,0d4h,0c1h,021h,001h,0e2h	; ab0b  ..........K..!..
	defb 0b1h,091h,05bh,041h,059h,051h,071h,091h,051h,077h,0b7h,051h,081h,0b1h,0e1h,021h	; ab1b  ..[AYQq.Qw.Q...!
	defb 0e2h,0b1h,0e1h,021h,051h,081h,0feh,0ffh,004h,0ach,0e1h,02fh,021h,001h,021h,0e2h	; ab2b  ...!Q....../!.!.
	defb 0b1h,0e1h,00fh,001h,0e2h,091h,051h,0e1h,001h,021h,0e2h,0b1h,071h,0e1h,021h,0feh	; ab3b  ......Q..!..q.!.
	defb 0ffh,004h,0ach,0e1h,021h,021h,0e2h,0b1h,071h,0e1h,021h,021h,0e2h,0b1h,081h,0e1h	; ab4b  ....!!..q.!!....
	defb 021h,021h,0e2h,0b1h,081h,0e8h,0f8h,013h,0ech,052h,0e1h,0c0h,091h,0e0h,001h,0e1h	; ab5b  !!.......R......
	defb 091h,071h,09fh,001h,021h,041h,071h,091h,0e0h,001h,0e1h,091h,071h,09fh,001h,021h	; ab6b  .q..!Aq.....q..!
	defb 041h,051h,071h,071h,021h,0e2h,0b0h,0efh,0f9h,013h,0e1h,021h,021h,0c1h,029h,0f7h	; ab7b  AQqq!......!!.).
	defb 000h,020h,0f8h,013h,0e8h,051h,041h,051h,021h,04eh,0efh,0f8h,003h,0e1h,001h,0e2h	; ab8b  . ...QAQ!N......
	defb 091h,051h,0e1h,001h,021h,0e2h,0b1h,071h,0e1h,021h,0e8h,0f7h,003h,0ech,052h,0e2h	; ab9b  .Q..!..q.!....R.
	defb 0b0h,0e1h,071h,091h,0e0h,001h,0e1h,091h,071h,0f5h,003h,0e1h,091h,0e0h,001h,0e1h	; abab  ..q.....q.......
	defb 091h,071h,0f7h,003h,0e1h,097h,001h,021h,041h,071h,091h,0e0h,001h,0e1h,091h,071h	; abbb  .q.....!Aq.....q
	defb 0f5h,003h,091h,0e0h,001h,0e1h,091h,071h,0f7h,003h,0e1h,097h,001h,021h,040h,0efh	; abcb  .......q.....!@.
	defb 0f8h,003h,021h,021h,0e2h,0b1h,071h,0e1h,021h,021h,0e2h,0b1h,071h,0e1h,021h,021h	; abdb  ..!!..q.!!..q.!!
	defb 0e2h,0b1h,081h,0e1h,021h,021h,0e2h,0b1h,081h,0d4h,0e9h,001h,001h,030h,030h,001h	; abeb  ....!!.......00.
	defb 001h,081h,001h,091h,091h,0feh,0feh,06dh,0aah,0ech,052h,0e1h,041h,041h,0f9h,013h	; abfb  .......m..R.AA..
	defb 041h,041h,0f6h,003h,041h,041h,0f9h,013h,021h,049h,0e2h,091h,0b1h,0e1h,001h,041h	; ac0b  AA..AA..!I.....A
	defb 051h,051h,0f8h,013h,051h,051h,0f5h,003h,051h,051h,0f9h,013h,041h,059h,0e2h,091h	; ac1b  QQ..QQ..QQ..AY..
	defb 0b1h,0e1h,001h,021h,021h,021h,0e2h,0b1h,071h,0ffh	; ac2b  ...!!!..q.

; ----------------------------------------------------------------------
; DATOS pista_AC35: pista de los sonidos 0x3A (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (339 bytes)
;   0xac35..0xad88  (339 bytes)
DATA_pista_AC35:
	defb 0efh,0d7h,0fah,004h,0e2h,070h,090h,0a0h,0e1h,020h,030h,090h,070h,020h,030h,020h	; ac35  .....p... 0.p 0
	defb 0e2h,0a0h,090h,0e1h,020h,0e2h,0a0h,090h,070h,0fah,002h,0e1h,070h,050h,020h,000h	; ac45  .... ...p...pP .
	defb 0e2h,070h,0f7h,001h,0e1h,070h,050h,020h,000h,0e2h,070h,0f6h,000h,0e1h,070h,050h	; ac55  .p...pP ..p...pP
	defb 020h,000h,0e2h,070h,0e9h,001h,0a0h,0a3h,0efh,0d1h,0f7h,000h,0e2h,070h,070h,070h	; ac65   ..p.........ppp
	defb 070h,070h,070h,080h,080h,080h,080h,090h,090h,090h,0a0h,0a0h,0b0h,0b0h,0e1h,000h	; ac75  ppp.............
	defb 000h,010h,010h,020h,020h,030h,040h,050h,060h,070h,0d7h,0f8h,003h,0ech,033h,0e1h	; ac85  ...  0@P`p....3.
	defb 077h,0efh,0f9h,002h,050h,0feh,0ffh,07fh,0adh,020h,0f7h,001h,050h,0feh,0ffh,07fh	; ac95  w...P.... ..P...
	defb 0adh,020h,0f5h,000h,050h,0feh,0ffh,07fh,0adh,020h,0f3h,000h,050h,0feh,0ffh,07fh	; aca5  . ..P.... ..P...
	defb 0adh,020h,0feh,002h,04eh,0ach,0f9h,002h,0e2h,0a0h,0e1h,000h,010h,080h,050h,0f8h	; acb5  . ..N.........P.
	defb 002h,0e3h,0a0h,0e2h,050h,0a0h,0f6h,001h,0e2h,0a0h,0e1h,000h,010h,080h,050h,0f8h	; acc5  ....P.........P.
	defb 002h,0e3h,0a0h,0e2h,050h,0a0h,0f5h,000h,0e2h,0a0h,0e1h,000h,010h,080h,0f7h,001h	; acd5  ....P...........
	defb 0e2h,0b2h,0b0h,0a2h,0a0h,0f9h,003h,0ech,033h,053h,0f9h,002h,0e1h,0b3h,090h,040h	; ace5  ........3S.....@
	defb 000h,0e2h,090h,0f7h,002h,0e1h,0b3h,090h,040h,000h,0e2h,090h,0f9h,002h,0e1h,0a3h	; acf5  ........@.......
	defb 080h,030h,0e2h,0b0h,080h,0f7h,002h,0e1h,0a3h,080h,030h,0e2h,0b0h,080h,0fah,002h	; ad05  .0........0.....
	defb 0e2h,071h,0f5h,000h,071h,0f8h,001h,071h,0f4h,000h,071h,0f9h,002h,0a1h,0f5h,000h	; ad15  .q..q..q..q.....
	defb 0a1h,0f8h,001h,0a1h,0f4h,000h,0a1h,0fah,002h,0e1h,011h,0f5h,000h,011h,0f8h,001h	; ad25  ................
	defb 011h,0f4h,000h,011h,0f9h,002h,0e2h,041h,0f5h,000h,041h,0f8h,001h,041h,0f4h,000h	; ad35  .......A..A..A..
	defb 041h,0fah,002h,0e1h,070h,040h,010h,0e2h,0a0h,0f8h,001h,0e1h,070h,040h,010h,0e2h	; ad45  A...p@......p@..
	defb 0a0h,0f6h,000h,0e1h,070h,040h,010h,0e2h,0a0h,0f5h,000h,0e1h,070h,040h,010h,0e2h	; ad55  ....p@......p@..
	defb 0a0h,0f8h,002h,0e1h,000h,0e2h,030h,060h,090h,0b0h,020h,050h,080h,0a0h,020h,050h	; ad65  ......0`.. P.. P
	defb 070h,0efh,030h,040h,050h,060h,0feh,0feh,04eh,0ach,070h,020h,000h,0e2h,070h,050h	; ad75  p.0@P`..N.p ..pP
	defb 0e1h,050h,0ffh	; ad85

; ----------------------------------------------------------------------
; DATOS pista_AD88: pista de los sonidos 0x3B (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (138 bytes)
;   0xad88..0xae12  (138 bytes)
DATA_pista_AD88:
	defb 0efh,0d7h,0f7h,010h,0e2h,0c1h,070h,090h,0a0h,0e1h,020h,030h,090h,070h,020h,030h	; ad88  ......p... 0.p 0
	defb 020h,0e2h,0a0h,090h,0e1h,020h,0e2h,0a0h,0feh,0ffh,0f2h,0adh,010h,0e4h,042h,053h	; ad98   .... ........BS
	defb 063h,050h,060h,070h,080h,0feh,002h,0a0h,0adh,0e4h,0a0h,0a0h,0e3h,050h,0a0h,0feh	; ada8  cP`p.........P..
	defb 004h,0b1h,0adh,0e4h,0a2h,0a0h,0e3h,042h,040h,032h,030h,0e4h,0a3h,0e4h,090h,090h	; adb8  .......B@20.....
	defb 0e3h,040h,090h,0feh,004h,0c5h,0adh,0e4h,080h,080h,0e3h,030h,080h,0feh,003h,0cfh	; adc8  .@.........0....
	defb 0adh,0e4h,080h,080h,0e3h,080h,060h,0feh,0ffh,0f2h,0adh,011h,080h,060h,072h,0e4h	; add8  ......`......`r.
	defb 070h,063h,050h,060h,070h,080h,0feh,0feh,0a0h,0adh,0f9h,003h,0e4h,073h,0e3h,013h	; ade8  pcP`p........s..
	defb 003h,063h,053h,0e4h,0b3h,0a3h,0e3h,043h,033h,0e4h,090h,0e3h,030h,0e4h,091h,081h	; adf8  .cS....C3...0...
	defb 0e3h,040h,030h,020h,0e4h,0a0h,0b0h,0e3h,000h,0ffh	; ae08  .@0 ......

; ----------------------------------------------------------------------
; DATOS pista_AE12: pista de los sonidos 0x3C (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (316 bytes)
;   0xae12..0xaf4e  (316 bytes)
DATA_pista_AE12:
	defb 0d7h,0e9h,001h,020h,020h,071h,020h,020h,071h,081h,081h,020h,020h,081h,0efh,0f8h	; ae12  ...  q  q..  ...
	defb 002h,0e1h,020h,000h,0e2h,090h,070h,020h,0f5h,001h,0e1h,020h,000h,0e2h,090h,070h	; ae22  .. ...p ... ...p
	defb 020h,0f5h,000h,0e1h,020h,000h,0e2h,090h,070h,020h,0e9h,001h,010h,013h,0efh,0d1h	; ae32   ... ...p ......
	defb 0f6h,000h,000h,000h,000h,000h,000h,000h,010h,010h,010h,010h,020h,020h,020h,030h	; ae42  ............   0
	defb 030h,040h,040h,050h,050h,060h,060h,070h,070h,080h,090h,0a0h,0b0h,0e1h,000h,0d7h	; ae52  0@@PP``pp.......
	defb 0f7h,003h,0ech,033h,007h,0efh,0f9h,002h,0e8h,0e1h,050h,0feh,0ffh,044h,0afh,0f7h	; ae62  ...3......P..D..
	defb 001h,050h,0feh,0ffh,044h,0afh,0f5h,000h,0efh,0f6h,013h,0e2h,010h,0f8h,013h,0e5h	; ae72  .P..D...........
	defb 042h,053h,063h,0f8h,003h,050h,060h,070h,080h,0feh,002h,020h,0aeh,0f7h,000h,0e2h	; ae82  BSc..P`p... ....
	defb 0c0h,0a0h,0e1h,000h,010h,080h,050h,0c2h,0f5h,000h,0e2h,0a0h,0e1h,000h,010h,080h	; ae92  ......P.........
	defb 050h,0c2h,0f5h,000h,0e2h,0a0h,0e1h,000h,010h,080h,050h,0c1h,0e9h,001h,0a1h,0a1h	; aea2  P.........P.....
	defb 0efh,0f9h,003h,0ech,033h,0a3h,0f7h,002h,0e8h,0c0h,0b3h,090h,040h,000h,0e2h,090h	; aeb2  ....3.......@...
	defb 0f6h,002h,0e1h,0b3h,090h,040h,000h,0e2h,090h,0f7h,002h,0e1h,0a3h,080h,030h,0e2h	; aec2  .....@........0.
	defb 0b0h,080h,0f6h,002h,0e1h,0a3h,080h,030h,0e2h,0b0h,0f8h,000h,0e2h,0c0h,071h,0f4h	; aed2  .......0......q.
	defb 000h,071h,0f8h,001h,071h,0f4h,000h,071h,0f8h,000h,0a1h,0f5h,000h,0a1h,0f8h,001h	; aee2  .q..q..q........
	defb 0a1h,0f4h,000h,0a1h,0f8h,000h,0e1h,011h,0f4h,000h,011h,0f8h,001h,011h,0f4h,000h	; aef2  ................
	defb 011h,0f8h,000h,0e2h,041h,0f4h,000h,041h,0f8h,001h,041h,0f4h,000h,040h,0f9h,002h	; af02  ....A..A..A..@..
	defb 0e1h,070h,040h,010h,0e2h,0a0h,0f8h,001h,0e1h,070h,040h,010h,0e2h,0a0h,0f6h,000h	; af12  .p@......p@.....
	defb 0e1h,070h,040h,010h,0e2h,0a0h,0f5h,000h,0e1h,070h,040h,010h,0e2h,0a0h,0efh,0f9h	; af22  .p@......p@.....
	defb 002h,0ech,033h,0e1h,033h,023h,013h,0efh,0e8h,0e2h,030h,040h,050h,060h,0feh,0feh	; af32  ..3.3#....0@P`..
	defb 020h,0aeh,070h,020h,000h,0e2h,070h,050h,0e1h,050h,020h,0ffh	; af42   .p ..pP.P .

; ----------------------------------------------------------------------
; DATOS pista_AF4E: pista de los sonidos 0x3D (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (109 bytes)
;   0xaf4e..0xafbb  (109 bytes)
DATA_pista_AF4E:
	defb 0efh,0d7h,0f9h,003h,0e1h,000h,010h,020h,030h,040h,050h,060h,0c0h,0fah,014h,0e2h	; af4e  ....... 0@P`....
	defb 073h,0feh,0ffh,09ah,0afh,023h,052h,0fah,010h,071h,0ech,042h,0fah,014h,074h,0efh	; af5e  s....#R..q.B..t.
	defb 0c1h,0e5h,070h,0feh,0ffh,093h,0b0h,0e2h,073h,0feh,0ffh,09ah,0afh,0f9h,002h,070h	; af6e  ..p.....s......p
	defb 050h,020h,000h,0f9h,004h,0e2h,0a1h,0fah,010h,071h,0ech,042h,0fah,014h,077h,0f9h	; af7e  P .......q.B..w.
	defb 004h,0ech,061h,0e1h,0afh,0efh,097h,087h,0feh,0feh,05bh,0afh,0a3h,0e1h,003h,013h	; af8e  ..a.......[.....
	defb 0ech,052h,023h,0efh,0e2h,072h,0a2h,0f8h,000h,0e1h,0a0h,0e2h,0a0h,0e1h,0a0h,0e2h	; af9e  .R#..r..........
	defb 0a0h,0e1h,0a0h,0fah,014h,0e2h,050h,073h,0a3h,0e1h,003h,013h,0ffh	; afae  ......Ps.....

; ----------------------------------------------------------------------
; DATOS pista_AFBB: pista de los sonidos 0x3E (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (153 bytes)
;   0xafbb..0xb054  (153 bytes)
DATA_pista_AFBB:
	defb 0efh,0d7h,0f9h,004h,0e2h,080h,090h,0a0h,0b0h,0e1h,000h,010h,020h,0fbh,024h,0e4h	; afbb  ............ .$.
	defb 050h,0d7h,0fch,024h,0e4h,070h,070h,0a1h,0e3h,000h,0e4h,0a0h,0c0h,050h,070h,070h	; afcb  P..$.pp......Ppp
	defb 0a1h,0f8h,003h,0e3h,050h,060h,070h,0fch,024h,0e4h,050h,070h,070h,0a1h,0e3h,000h	; afdb  ....P`p.$.Ppp...
	defb 0e4h,0a0h,0c0h,050h,070h,070h,0a0h,0c0h,090h,0e3h,090h,0e4h,080h,0e3h,080h,0e4h	; afeb  ...Ppp..........
	defb 070h,070h,0a1h,0e3h,000h,0e4h,0a0h,0c0h,050h,070h,070h,0a1h,0f8h,003h,0e3h,050h	; affb  pp......Ppp....P
	defb 060h,070h,0fch,024h,0e4h,050h,070h,070h,0a1h,0e3h,000h,0e4h,0a0h,0c0h,050h,070h	; b00b  `p.$.Ppp......Pp
	defb 070h,021h,050h,0e3h,050h,0e4h,060h,0e3h,060h,0feh,003h,0cch,0afh,0d7h,0fbh,014h	; b01b  p!P.P.`.`.......
	defb 0e4h,0a1h,0e3h,0a1h,0e4h,0a0h,0a0h,0e3h,0a1h,0e4h,0a0h,0a0h,0e3h,0a1h,0e4h,0a1h	; b02b  ................
	defb 0e3h,0a1h,0e4h,091h,0e3h,091h,0e4h,090h,090h,0e3h,091h,0e4h,080h,080h,0e3h,081h	; b03b  ................
	defb 0e4h,080h,080h,0e3h,081h,0feh,0feh,0cch,0afh	; b04b  .........

; ----------------------------------------------------------------------
; DATOS pista_B054: pista de los sonidos 0x3F (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (175 bytes)
;   0xb054..0xb103  (175 bytes)
DATA_pista_B054:
	defb 0d7h,0e9h,001h,070h,070h,070h,070h,080h,080h,080h,080h,0efh,0fah,014h,0e5h,070h	; b054  ...pppp........p
	defb 0feh,0ffh,093h,0b0h,0e9h,001h,0b0h,0feh,0ffh,0e9h,0b0h,0b0h,0a0h,030h,0b0h,030h	; b064  .............0.0
	defb 010h,0b0h,0feh,0ffh,0e9h,0b0h,000h,0a0h,030h,011h,000h,0efh,0e5h,070h,0feh,0ffh	; b074  ........0....p..
	defb 093h,0b0h,0f9h,004h,0ech,061h,0e1h,05fh,0efh,047h,037h,0feh,0feh,062h,0b0h,070h	; b084  .....a._.G7..b.p
	defb 0a1h,0e4h,000h,0e5h,0a0h,0c0h,050h,070h,070h,0a1h,0f8h,003h,0e3h,0a0h,0e2h,000h	; b094  ......Ppp.......
	defb 020h,0fah,014h,0e5h,050h,070h,070h,0a1h,0e4h,000h,0e5h,0a0h,0c0h,050h,070h,070h	; b0a4   ...Ppp......Ppp
	defb 0a0h,0c0h,090h,0e4h,090h,0e5h,080h,0e4h,080h,0e5h,070h,070h,0a1h,0e4h,000h,0e5h	; b0b4  ..........pp....
	defb 0a0h,0c0h,050h,070h,070h,0a1h,0f8h,003h,0e3h,0a0h,0e2h,000h,020h,0fah,014h,0e5h	; b0c4  ..Ppp....... ...
	defb 050h,070h,070h,0a1h,0e4h,000h,0e5h,0a0h,0c0h,050h,070h,070h,021h,050h,0e4h,050h	; b0d4  Ppp......Ppp!P.P
	defb 0e5h,060h,0e4h,060h,0ffh,0b0h,010h,0b0h,030h,0b0h,000h,0b0h,0b0h,0b0h,000h,0b0h	; b0e4  .`.`....0.......
	defb 030h,0b0h,030h,030h,0b0h,0b0h,010h,0b0h,030h,0b0h,000h,0b0h,0b0h,090h,0ffh	; b0f4  0.00....0......

; ----------------------------------------------------------------------
; DATOS pista_B103: pista de los sonidos 0x40 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (211 bytes)
;   0xb103..0xb1d6  (211 bytes)
DATA_pista_B103:
	defb 0efh,0d8h,0e9h,005h,091h,0a1h,021h,031h,091h,071h,091h,0a1h,021h,031h,091h,071h	; b103  ......!1.q..!1.q
	defb 0feh,002h,007h,0b1h,0efh,0dch,0fbh,003h,0e5h,09fh,0e4h,00fh,03fh,02fh,0d8h,0fdh	; b113  ............?/..
	defb 024h,020h,0feh,0ffh,0c2h,0b1h,0e5h,090h,090h,0a0h,0a0h,0e4h,020h,0feh,0ffh,0c2h	; b123  $ .......... ...
	defb 0b1h,000h,000h,020h,020h,0fdh,024h,0e5h,091h,0fbh,024h,090h,090h,0fdh,024h,091h	; b133  ...  .$...$...$.
	defb 0e4h,001h,0fbh,024h,000h,000h,0fdh,024h,001h,0e5h,091h,0fbh,024h,090h,090h,0fdh	; b143  ...$...$....$...
	defb 024h,091h,071h,0fbh,024h,070h,070h,0fdh,024h,071h,091h,0fbh,024h,090h,090h,0fdh	; b153  $.q.$pp.$q..$...
	defb 024h,091h,0e4h,001h,0fbh,024h,000h,000h,0fdh,024h,001h,031h,0fbh,024h,030h,030h	; b163  $....$...$.1.$00
	defb 0fdh,024h,031h,001h,0fbh,024h,000h,000h,0fdh,024h,001h,021h,0fbh,024h,090h,0a0h	; b173  .$1..$...$.!.$..
	defb 0fdh,024h,021h,021h,0fbh,024h,090h,0a0h,0fdh,024h,021h,031h,0fbh,024h,090h,0a0h	; b183  .$!!.$...$!1.$..
	defb 0fdh,024h,031h,031h,0fbh,024h,090h,0a0h,0fdh,024h,031h,021h,0fbh,024h,090h,0a0h	; b193  .$11.$...$1!.$..
	defb 0fdh,024h,021h,021h,0fbh,024h,090h,0a0h,0fdh,024h,021h,021h,0fbh,024h,090h,0a0h	; b1a3  .$!!.$...$!!.$..
	defb 0fdh,024h,021h,021h,0fbh,024h,030h,030h,0fdh,024h,021h,0feh,0feh,03ah,0b1h,020h	; b1b3  .$!!.$00.$!..:.
	defb 030h,030h,090h,090h,020h,020h,030h,030h,0a0h,0a0h,090h,090h,0a0h,0a0h,020h,020h	; b1c3  00..  00......
	defb 030h,030h,0ffh	; b1d3

; ----------------------------------------------------------------------
; DATOS pista_B1D6: pista de los sonidos 0x41 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (97 bytes)
;   0xb1d6..0xb237  (97 bytes)
DATA_pista_B1D6:
	defb 0efh,0e8h,0d8h,0e9h,005h,091h,0feh,0ffh,02ch,0b2h,071h,091h,0a1h,021h,031h,091h	; b1d6  ........,.q..!1.
	defb 071h,0d4h,0e9h,001h,071h,073h,070h,070h,081h,083h,081h,080h,080h,090h,090h,0a3h	; b1e6  q...qspp........
	defb 0efh,0d8h,0fbh,022h,0e2h,091h,0a1h,021h,031h,091h,071h,0feh,00ch,0fbh,0b1h,0e8h	; b1f6  ..."...!1.q.....
	defb 091h,0feh,0ffh,02ch,0b2h,0e1h,021h,0e2h,091h,0a1h,021h,031h,091h,071h,021h,091h	; b206  ...,..!...!1.q!.
	defb 0e1h,021h,001h,0e2h,071h,031h,091h,0feh,0ffh,02ch,0b2h,071h,091h,0feh,0ffh,02ch	; b216  .!..q1...,.q...,
	defb 0b2h,071h,0feh,0feh,006h,0b2h,0a1h,021h,031h,091h,071h,091h,0a1h,021h,031h,091h	; b226  .q.....!1.q..!1.
	defb 0ffh	; b236

; ----------------------------------------------------------------------
; DATOS pista_B237: pista de los sonidos 0x42 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (141 bytes)
;   0xb237..0xb2c4  (141 bytes)
DATA_pista_B237:
	defb 0efh,0e8h,0d8h,0e9h,005h,090h,0a1h,091h,0feh,0ffh,02ch,0b2h,0a1h,091h,0a1h,021h	; b237  ..........,....!
	defb 031h,091h,071h,001h,0a1h,021h,031h,090h,0d4h,0e9h,001h,0a3h,0efh,0f9h,020h,0e2h	; b247  1.q..!1....... .
	defb 071h,093h,0a3h,0e9h,001h,0a0h,0a0h,0a3h,0efh,0e8h,031h,093h,073h,0feh,0ffh,0aeh	; b257  q.........1.s...
	defb 0b2h,033h,093h,073h,093h,0a3h,021h,0e9h,001h,000h,000h,015h,0feh,002h,052h,0b2h	; b267  .3.s..!.......R.
	defb 0a1h,0a1h,0efh,0e2h,071h,093h,0a3h,023h,033h,093h,073h,093h,0a3h,023h,033h,091h	; b277  ....q..#3.s..#3.
	defb 0e9h,001h,0a1h,0a1h,0efh,0e1h,021h,0e2h,091h,0e9h,001h,0a1h,0efh,0a3h,023h,033h	; b287  ......!.......#3
	defb 093h,073h,023h,093h,0e1h,023h,003h,0e2h,073h,033h,0feh,0ffh,0aeh,0b2h,031h,0e9h	; b297  .s#..#..s3....1.
	defb 001h,0a1h,0a1h,0feh,0feh,077h,0b2h,093h,0a3h,023h,033h,093h,073h,093h,0a3h,023h	; b2a7  .....w...#3.s..#
	defb 033h,093h,073h,093h,0a3h,023h,033h,093h,073h,093h,0a3h,023h,0ffh	; b2b7  3.s..#3.s..#.

; ----------------------------------------------------------------------
; DATOS pista_B2C4: pista de los sonidos 0x43 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (122 bytes)
;   0xb2c4..0xb33e  (122 bytes)
DATA_pista_B2C4:
	defb 0efh,0d8h,0fbh,025h,0e2h,091h,0feh,0ffh,01dh,0b3h,0f7h,013h,0e2h,071h,0e1h,001h	; b2c4  ...%.........q..
	defb 051h,0f6h,000h,0e2h,041h,0ech,04eh,0e3h,093h,0efh,0fbh,025h,0e2h,091h,0feh,0ffh	; b2d4  Q...A.N....%....
	defb 01dh,0b3h,0f7h,013h,0e2h,071h,0e1h,001h,051h,0f6h,000h,0e2h,041h,0ech,046h,093h	; b2e4  .....q..Q...A.F.
	defb 0fbh,021h,0e2h,021h,0feh,0ffh,026h,0b3h,0efh,0fbh,021h,001h,0f7h,021h,001h,0f5h	; b2f4  .!.!..&...!..!..
	defb 021h,000h,0e9h,002h,070h,0feh,0ffh,030h,0b3h,0efh,0fbh,021h,021h,0feh,0ffh,026h	; b304  !...p..0...!!..&
	defb 0b3h,0feh,0ffh,030h,0b3h,0feh,0feh,0c4h,0b2h,0e1h,021h,071h,0e2h,071h,0e1h,001h	; b314  ...0......!q.q..
	defb 051h,0ffh,0f7h,021h,021h,0f5h,021h,020h,0e9h,002h,090h,0ffh,0efh,0fbh,021h,011h	; b324  Q..!!.! ......!.
	defb 0f7h,021h,011h,0f5h,021h,010h,0e9h,002h,080h,0ffh	; b334  .!..!.....

; ----------------------------------------------------------------------
; DATOS pista_B33E: pista de los sonidos 0x44 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (120 bytes)
;   0xb33e..0xb3b6  (120 bytes)
DATA_pista_B33E:
	defb 0feh,0ffh,08eh,0b3h,0f8h,013h,0e5h,071h,0e4h,001h,051h,0f6h,013h,0e5h,071h,0e4h	; b33e  .......q..Q...q.
	defb 001h,051h,0feh,0ffh,08eh,0b3h,0f7h,013h,0e5h,071h,0e4h,001h,051h,0f4h,013h,0e5h	; b34e  .Q.......q..Q...
	defb 071h,0e4h,001h,051h,0feh,0ffh,09dh,0b3h,0fbh,021h,0e4h,070h,070h,0f8h,021h,070h	; b35e  q..Q.....!.pp.!p
	defb 070h,0f9h,021h,0e3h,070h,070h,0feh,0ffh,0ach,0b3h,0f9h,021h,0e3h,080h,080h,0feh	; b36e  p.!.pp.....!....
	defb 0ffh,09dh,0b3h,0feh,0ffh,0ach,0b3h,0f9h,021h,0e3h,070h,080h,0feh,0feh,03eh,0b3h	; b37e  ........!.p...>.
	defb 0efh,0d8h,0fbh,025h,0e5h,091h,0e4h,021h,071h,0e5h,071h,0e4h,001h,051h,0ffh,0fbh	; b38e  ...%...!q.q..Q..
	defb 021h,0e4h,090h,090h,0f8h,021h,090h,090h,0f9h,021h,0e3h,090h,090h,0ffh,0fbh,021h	; b39e  !....!...!.....!
	defb 0e4h,080h,080h,0f8h,021h,080h,080h,0ffh	; b3ae  ....!...

; ----------------------------------------------------------------------
; DATOS pista_B3B6: pista de los sonidos 0x45 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (107 bytes)
;   0xb3b6..0xb421  (107 bytes)
DATA_pista_B3B6:
	defb 0efh,0d8h,0f7h,002h,0e2h,0c2h,091h,0feh,0ffh,01dh,0b3h,0f5h,002h,0e2h,071h,0e1h	; b3b6  ..............q.
	defb 001h,0f6h,002h,0ech,053h,0e1h,055h,000h,020h,0efh,0f7h,002h,0e2h,091h,0feh,0ffh	; b3c6  ....S.U. .......
	defb 01dh,0b3h,0f5h,002h,0e2h,071h,0e1h,001h,051h,0f8h,001h,0e2h,0c0h,000h,070h,0f9h	; b3d6  .....q..Q.....p.
	defb 002h,0e1h,070h,070h,0f7h,002h,070h,070h,0f5h,002h,071h,0f9h,002h,050h,050h,0f7h	; b3e6  ..pp..pp..q..PP.
	defb 002h,050h,050h,0f5h,002h,051h,0f9h,002h,060h,060h,0f7h,002h,060h,060h,0f5h,002h	; b3f6  .PP..Q..``..``..
	defb 061h,0f9h,002h,070h,070h,0f5h,002h,070h,070h,0f3h,002h,071h,0f9h,002h,080h,080h	; b406  a..pp..pp..q....
	defb 0f7h,002h,080h,080h,0f5h,002h,081h,0feh,0feh,0b8h,0b3h	; b416  ...........

; ----------------------------------------------------------------------
; DATOS pista_B421: pista de los sonidos 0x46 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (110 bytes)
;   0xb421..0xb48f  (110 bytes)
DATA_pista_B421:
	defb 0efh,0e8h,0d8h,0f8h,003h,0e4h,000h,0e3h,00dh,0e4h,020h,0e3h,02fh,0e4h,0beh,070h	; b421  .......... ./..p
	defb 097h,090h,0f6h,004h,090h,0f8h,004h,090h,0f6h,004h,090h,0f8h,004h,090h,0f6h,004h	; b431  ................
	defb 090h,0f7h,004h,090h,0f5h,004h,090h,0f7h,004h,070h,0f5h,004h,070h,0f6h,004h,070h	; b441  .........p..p..p
	defb 0f4h,004h,070h,0f6h,004h,050h,0f4h,004h,090h,0f3h,004h,0e3h,000h,0f2h,004h,050h	; b451  ..p..P.........P
	defb 050h,090h,0e2h,000h,050h,090h,050h,000h,0e3h,090h,0f1h,004h,070h,0b0h,0e2h,020h	; b461  P...P.P.....p..
	defb 070h,0b0h,070h,020h,0e3h,0b0h,0dfh,0cfh,0d8h,0f6h,002h,0ech,043h,0e1h,0c1h,097h	; b471  p.p ........C...
	defb 0fah,012h,0e4h,090h,0e3h,000h,040h,090h,0e4h,070h,0b0h,0e3h,020h,070h	; b481  ......@..p.. p

; ----------------------------------------------------------------------
; DATOS pista_B48F: pista de los sonidos 0x49 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (61 bytes)
;   0xb48f..0xb4cc  (61 bytes)
DATA_pista_B48F:
	defb 0d8h,0f9h,003h,0ech,052h,0e0h,004h,0f7h,003h,000h,0f9h,003h,0e1h,0b0h,090h,0b2h	; b48f  ....R...........
	defb 0f7h,003h,0b0h,0f9h,003h,072h,0f7h,003h,070h,0f9h,003h,074h,0f7h,003h,070h,0f9h	; b49f  .....r..p..t..p.
	defb 003h,040h,070h,095h,040h,070h,094h,0f7h,003h,090h,0f9h,003h,091h,0b0h,090h,073h	; b4af  .@p.@p.........s
	defb 071h,0e0h,000h,0e1h,0b0h,09bh,0f7h,003h,091h,0feh,0feh,08fh,0b4h	; b4bf  q............

; ----------------------------------------------------------------------
; DATOS pista_B4CC: pista de los sonidos 0x47 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (143 bytes)
;   0xb4cc..0xb55b  (143 bytes)
DATA_pista_B4CC:
	defb 0efh,0d8h,0f9h,003h,0e1h,001h,0e2h,071h,041h,001h,0e1h,001h,0e2h,071h,041h,001h	; b4cc  .......qA....qA.
	defb 0e1h,021h,0e2h,091h,071h,021h,0e1h,021h,0e2h,091h,071h,021h,0e2h,0b1h,061h,041h	; b4dc  .!..q!.!..q!..aA
	defb 0e3h,0b1h,0e2h,0b1h,040h,060h,070h,090h,0b0h,0e1h,000h,0ech,043h,0e2h,076h,0f7h	; b4ec  ....@`p.....C.v.
	defb 002h,070h,0d4h,0f9h,003h,0e3h,091h,0f8h,003h,0e2h,021h,0f9h,003h,051h,0f8h,003h	; b4fc  .p........!..Q..
	defb 091h,0f8h,003h,0e1h,021h,0f7h,003h,041h,0f8h,003h,051h,0f7h,003h,091h,0e3h,091h	; b50c  ....!..A..Q.....
	defb 0f6h,003h,0e2h,021h,0f5h,003h,051h,0f4h,003h,091h,051h,0f3h,003h,091h,0f2h,003h	; b51c  ...!..Q...Q.....
	defb 0e1h,001h,0f1h,003h,051h,0d8h,0f4h,000h,0ech,052h,0e0h,005h,0e1h,0b0h,090h,0f5h	; b52c  ....Q....R......
	defb 002h,0b3h,0f6h,002h,073h,075h,0f7h,002h,040h,070h,0f8h,002h,095h,0f9h,003h,040h	; b53c  ....su..@p.....@
	defb 070h,095h,091h,0b0h,090h,073h,071h,0e0h,000h,0e1h,0b0h,09bh,0f7h,000h,091h	; b54c  p....sq........

; ----------------------------------------------------------------------
; DATOS pista_B55B: pista de los sonidos 0x4A (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (80 bytes)
;   0xb55b..0xb5ab  (80 bytes)
DATA_pista_B55B:
	defb 0d8h,0f9h,004h,0e4h,051h,051h,0e9h,001h,020h,0efh,051h,060h,071h,071h,0e9h,001h	; b55b  ....QQ.. .Q`qq..
	defb 020h,0efh,070h,070h,030h,041h,041h,0e9h,001h,020h,0efh,041h,040h,091h,090h,090h	; b56b   .pp0AA.. .A@...
	defb 0e9h,001h,020h,0efh,070h,0e9h,001h,020h,0efh,070h,051h,051h,0e9h,001h,020h,0efh	; b57b  .. .p.. .pQQ.. .
	defb 051h,050h,071h,071h,0e9h,001h,020h,0efh,070h,071h,091h,090h,090h,0e9h,001h,020h	; b58b  QPqq.. .pq.....
	defb 0efh,091h,090h,091h,090h,090h,0e9h,001h,020h,0efh,071h,070h,0feh,0feh,05bh,0b5h	; b59b  ........ .qp..[.

; ----------------------------------------------------------------------
; DATOS pista_B5AB: pista de los sonidos 0x48 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (110 bytes)
;   0xb5ab..0xb619  (110 bytes)
DATA_pista_B5AB:
	defb 0e8h,0d8h,0f6h,002h,0e5h,002h,0e1h,001h,0e2h,071h,041h,001h,0e1h,001h,0e2h,071h	; b5ab  .........qA....q
	defb 041h,001h,0e1h,021h,0e2h,091h,071h,021h,0e1h,021h,0e2h,091h,071h,021h,0e2h,0b1h	; b5bb  A..!..q!.!..q!..
	defb 061h,041h,0e3h,0b1h,0e2h,0b1h,040h,060h,070h,0f7h,002h,0ech,044h,0e1h,045h,0f6h	; b5cb  aA....@`p...D.E.
	defb 002h,041h,0d4h,0e3h,0c2h,091h,0e2h,021h,0f5h,002h,051h,091h,0e1h,021h,0f4h,002h	; b5db  .A.....!..Q..!..
	defb 041h,051h,0f3h,002h,091h,0e3h,091h,0e2h,041h,0f2h,002h,051h,090h,0d8h,0f3h,002h	; b5eb  AQ......A..Q....
	defb 0ech,042h,0e0h,00bh,0f4h,002h,0e1h,0b0h,090h,0f5h,002h,0b3h,073h,075h,040h,070h	; b5fb  .B..........su@p
	defb 095h,040h,070h,095h,091h,0b0h,090h,073h,071h,0e0h,000h,0e1h,0b0h,09ah	; b60b  .@p....sq.....

; ----------------------------------------------------------------------
; DATOS pista_B619: pista de los sonidos 0x4B (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (137 bytes)
;   0xb619..0xb6a2  (137 bytes)
DATA_pista_B619:
	defb 0d8h,0f9h,013h,0e3h,050h,090h,0e2h,000h,050h,0f8h,013h,090h,050h,0f9h,013h,000h	; b619  ....P...P...P...
	defb 0e3h,090h,070h,0b0h,0e2h,020h,070h,0f8h,013h,0b0h,0f9h,013h,070h,020h,0e3h,0b0h	; b629  ..p.. p.....p ..
	defb 040h,070h,0b0h,0e2h,020h,070h,0f8h,013h,0b0h,0e1h,000h,0e2h,0b0h,0f9h,013h,0e3h	; b639  @p.. p..........
	defb 0b0h,0e2h,000h,040h,0f8h,013h,090h,0f9h,013h,0e3h,090h,0e2h,000h,040h,0f8h,013h	; b649  ...@.........@..
	defb 090h,0f9h,013h,0e3h,050h,090h,0e2h,000h,050h,0f8h,013h,090h,0f9h,013h,050h,000h	; b659  ....P...P.....P.
	defb 0e3h,090h,070h,0b0h,0e2h,020h,070h,0f8h,013h,0b0h,0f9h,013h,070h,020h,0e3h,0b0h	; b669  ..p.. p.....p ..
	defb 090h,0e2h,000h,040h,0f8h,013h,090h,0f9h,013h,0e3h,090h,0e2h,000h,040h,0f8h,013h	; b679  ...@.........@..
	defb 090h,0f9h,013h,0e3h,090h,0e2h,000h,040h,0f8h,013h,090h,0f9h,013h,0e3h,070h,0b0h	; b689  .......@......p.
	defb 0e2h,020h,0f8h,013h,070h,0feh,0feh,019h,0b6h	; b699  . ..p....

; ----------------------------------------------------------------------
; DATOS pista_B6A2: pista de los sonidos 0x4C (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (12 bytes)
;   0xb6a2..0xb6ae  (12 bytes)
DATA_pista_B6A2:
	defb 0feh,000h,022h,001h,0c0h,040h,020h,008h,0feh,0ffh,0a4h,0b6h	; b6a2  .."..@ .....

; ----------------------------------------------------------------------
; DATOS pista_B6AE: pista de los sonidos 0x4F, 0x52 (p14:94FA: notas, 0xDx
;   octava, 0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la
;   siguiente; lo leen p14:9500 (111 bytes)
;   0xb6ae..0xb71d  (111 bytes)
DATA_pista_B6AE:
	defb 0feh,000h,022h,001h,0c2h,080h,0c2h,000h,0c1h,0a0h,0c1h,060h,0c1h,020h,0c0h,0e0h	; b6ae  .."........`. ..
	defb 0c0h,0a0h,0c0h,070h,0c0h,050h,0c0h,030h,0c0h,028h,0c0h,020h,0c0h,018h,0c0h,010h	; b6be  ...p.P.0.(. ....
	defb 092h,000h,091h,0a0h,091h,060h,091h,020h,090h,0e0h,090h,0a0h,090h,070h,090h,050h	; b6ce  .....`. .....p.P
	defb 090h,030h,090h,028h,090h,020h,090h,018h,090h,010h,052h,000h,051h,0a0h,051h,060h	; b6de  .0.(. ....R.Q.Q`
	defb 051h,020h,050h,0e0h,050h,0a0h,050h,070h,050h,050h,050h,030h,050h,028h,050h,020h	; b6ee  Q P.P.PpPPP0P(P
	defb 050h,018h,050h,010h,032h,000h,031h,0a0h,031h,060h,031h,020h,030h,0e0h,030h,0a0h	; b6fe  P.P.2.1.1`1 0.0.
	defb 030h,070h,030h,050h,030h,030h,030h,028h,030h,020h,030h,018h,030h,010h,0ffh	; b70e  0p0P000(0 0.0..

; ----------------------------------------------------------------------
; DATOS pista_B71D: pista de los sonidos 0x50 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (115 bytes)
;   0xb71d..0xb790  (115 bytes)
DATA_pista_B71D:
	defb 0feh,000h,022h,001h,000h,000h,000h,000h,0c2h,081h,0c2h,001h,0c1h,0a1h,0c1h,061h	; b71d  .."............a
	defb 0c1h,021h,0c0h,0e1h,0c0h,0a1h,0c0h,071h,0c0h,051h,0c0h,031h,0c0h,029h,0c0h,021h	; b72d  .!.....q.Q.1.).!
	defb 0c0h,019h,0c0h,011h,092h,001h,091h,0a1h,091h,061h,091h,021h,090h,0e1h,090h,0a1h	; b73d  .........a.!....
	defb 090h,071h,090h,051h,090h,031h,090h,029h,090h,021h,090h,019h,090h,011h,052h,001h	; b74d  .q.Q.1.).!....R.
	defb 051h,0a1h,051h,061h,051h,021h,050h,0e1h,050h,0a1h,050h,071h,050h,051h,050h,031h	; b75d  Q.QaQ!P.P.PqPQP1
	defb 050h,029h,050h,021h,050h,019h,050h,011h,032h,001h,031h,0a1h,031h,061h,031h,021h	; b76d  P)P!P.P.2.1.1a1!
	defb 030h,0e1h,030h,0a1h,030h,071h,030h,051h,030h,031h,030h,029h,030h,021h,030h,019h	; b77d  0.0.0q0Q010)0!0.
	defb 030h,011h,0ffh	; b78d

; ----------------------------------------------------------------------
; DATOS pista_B790: pista de los sonidos 0x51, 0x53 (p14:94FA: notas, 0xDx
;   octava, 0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la
;   siguiente; lo leen p14:9500 (119 bytes)
;   0xb790..0xb807  (119 bytes)
DATA_pista_B790:
	defb 0feh,000h,022h,001h,000h,000h,000h,000h,000h,000h,000h,000h,0c2h,082h,0c2h,002h	; b790  ..".............
	defb 0c1h,0a2h,0c1h,062h,0c1h,022h,0c0h,0e2h,0c0h,0a2h,0c0h,072h,0c0h,052h,0c0h,032h	; b7a0  ...b.".....r.R.2
	defb 0c0h,02ah,0c0h,022h,0c0h,01ah,0c0h,012h,092h,002h,091h,0a2h,091h,062h,091h,022h	; b7b0  .*.".........b."
	defb 090h,0e2h,090h,0a2h,090h,072h,090h,052h,090h,032h,090h,02ah,090h,022h,090h,01ah	; b7c0  .....r.R.2.*."..
	defb 090h,012h,052h,002h,051h,0a2h,051h,062h,051h,022h,050h,0e2h,050h,0a2h,050h,072h	; b7d0  ..R.Q.QbQ"P.P.Pr
	defb 050h,052h,050h,032h,050h,02ah,050h,022h,050h,01ah,050h,012h,032h,002h,031h,0a2h	; b7e0  PRP2P*P"P.P.2.1.
	defb 031h,062h,031h,022h,030h,0e2h,030h,0a2h,030h,072h,030h,052h,030h,032h,030h,02ah	; b7f0  1b1"0.0.0r0R020*
	defb 030h,022h,030h,01ah,030h,012h,0ffh	; b800

; ----------------------------------------------------------------------
; DATOS pista_B807: pista de los sonidos 0x54 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (125 bytes)
;   0xb807..0xb884  (125 bytes)
DATA_pista_B807:
	defb 0feh,000h,023h,001h,01ah,0e2h,000h,022h,001h,0e4h,000h,020h,003h,022h,001h,0b2h	; b807  ..#...."... ."..
	defb 020h,0e1h,090h,0e2h,000h,0d1h,0c0h,0d2h,020h,0d1h,0e0h,0c2h,040h,0c2h,000h,020h	; b817   ....... ...@..
	defb 003h,023h,001h,01ah,0b2h,000h,022h,001h,0b4h,000h,020h,003h,022h,001h,0a2h,020h	; b827  .#...."... ."..
	defb 0d1h,090h,0d2h,000h,0c1h,0c0h,0c2h,020h,0b1h,0e0h,0b2h,040h,0a2h,000h,020h,003h	; b837  ....... ...@.. .
	defb 023h,001h,01ah,082h,000h,022h,001h,084h,000h,020h,003h,022h,001h,092h,020h,0a1h	; b847  #...."... .".. .
	defb 090h,0a2h,000h,091h,0c0h,092h,020h,091h,0e0h,082h,040h,082h,000h,020h,003h,023h	; b857  ...... ...@.. .#
	defb 001h,01ah,062h,000h,022h,001h,064h,000h,020h,003h,022h,001h,072h,020h,081h,090h	; b867  ..b.".d. .".r ..
	defb 082h,000h,071h,0c0h,072h,020h,071h,0e0h,062h,040h,062h,000h,0ffh	; b877  ..q.r q.b@b..

; ----------------------------------------------------------------------
; DATOS pista_B884: pista de los sonidos 0x55, 0x57 (p14:94FA: notas, 0xDx
;   octava, 0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la
;   siguiente; lo leen p14:9500 (59 bytes)
;   0xb884..0xb8bf  (59 bytes)
DATA_pista_B884:
	defb 0feh,000h,022h,002h,0a5h,080h,0a5h,070h,0a5h,060h,0a5h,050h,0a5h,040h,0a5h,030h	; b884  .."....p.`.P.@.0
	defb 0a5h,020h,0a5h,010h,0a5h,000h,0a4h,0f0h,0a4h,0e0h,0a4h,0d0h,0a4h,0c0h,0a4h,0b0h	; b894  . ..............
	defb 0a4h,0a0h,0a4h,090h,0a4h,080h,0a4h,070h,0a4h,060h,0a4h,050h,0a4h,040h,0a4h,030h	; b8a4  .......p.`.P.@.0
	defb 0a4h,020h,0a4h,010h,0a4h,000h,0feh,004h,086h,0b8h,0ffh	; b8b4  . .........

; ----------------------------------------------------------------------
; DATOS pista_B8BF: pista de los sonidos 0x56 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (49 bytes)
;   0xb8bf..0xb8f0  (49 bytes)
DATA_pista_B8BF:
	defb 0feh,000h,022h,002h,085h,086h,085h,076h,085h,066h,085h,056h,085h,046h,085h,036h	; b8bf  .."....v.f.V.F.6
	defb 085h,026h,085h,016h,085h,006h,084h,0a6h,084h,096h,084h,086h,084h,076h,084h,066h	; b8cf  .&...........v.f
	defb 084h,056h,084h,046h,084h,036h,084h,026h,084h,016h,084h,006h,0feh,004h,0c1h,0b8h	; b8df  .V.F.6.&........
	defb 0ffh	; b8ef

; ----------------------------------------------------------------------
; DATOS pista_B8F0: pista de los sonidos 0x59, 0x5A (p14:94FA: notas, 0xDx
;   octava, 0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la
;   siguiente; lo leen p14:9500 (70 bytes)
;   0xb8f0..0xb936  (70 bytes)
DATA_pista_B8F0:
	defb 0feh,000h,022h,005h,0a4h,01ah,0a4h,040h,094h,070h,094h,0a0h,094h,0d5h,085h,010h	; b8f0  .."....@.p......
	defb 094h,010h,094h,040h,084h,070h,084h,0a0h,084h,0d5h,075h,010h,084h,01ah,084h,040h	; b900  ...@.p....u....@
	defb 074h,070h,074h,0a0h,074h,0d5h,075h,010h,065h,050h,065h,090h,065h,0f0h,066h,030h	; b910  tpt.t.u.ePe.e.f0
	defb 066h,0c0h,067h,000h,067h,070h,068h,000h,058h,050h,058h,0a0h,059h,000h,055h,050h	; b920  f.g.gph.XPX.Y.UP
	defb 059h,0a0h,04ah,000h,0ffh,0ffh	; b930

; ----------------------------------------------------------------------
; DATOS pista_B936: pista de los sonidos 0x61 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (65 bytes)
;   0xb936..0xb977  (65 bytes)
DATA_pista_B936:
	defb 0efh,0d8h,0fah,012h,0e4h,051h,051h,0f9h,013h,051h,051h,0fah,012h,071h,071h,0f9h	; b936  .....QQ..QQ..qq.
	defb 013h,071h,071h,0fah,012h,041h,041h,0f9h,013h,041h,041h,0fah,012h,091h,091h,0f9h	; b946  .qq..AA..AA.....
	defb 013h,091h,091h,0fah,012h,051h,051h,0f9h,013h,051h,051h,0fah,012h,071h,071h,0f9h	; b956  .....QQ..QQ..qq.
	defb 013h,071h,071h,0fah,012h,091h,091h,041h,0f9h,011h,040h,040h,0f9h,003h,0e5h,099h	; b966  .qq....A..@@....
	defb 0ffh	; b976

; ----------------------------------------------------------------------
; DATOS pista_B977: pista de los sonidos 0x62 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (33 bytes)
;   0xb977..0xb998  (33 bytes)
DATA_pista_B977:
	defb 0efh,0d8h,0f9h,013h,0ech,052h,0e0h,005h,0e1h,0b0h,090h,0b3h,073h,075h,040h,070h	; b977  .....R......su@p
	defb 095h,040h,070h,095h,091h,0b0h,090h,073h,071h,0e0h,000h,0e1h,0b0h,0ech,042h,09fh	; b987  .@p....sq.....B.
	defb 0ffh	; b997

; ----------------------------------------------------------------------
; DATOS pista_B998: pista de los sonidos 0x63 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (36 bytes)
;   0xb998..0xb9bc  (36 bytes)
DATA_pista_B998:
	defb 0efh,0d4h,0c5h,0d8h,0f6h,002h,0e8h,0ech,052h,0e0h,005h,0e1h,0b0h,090h,0b3h,073h	; b998  ........R......s
	defb 075h,040h,070h,095h,040h,070h,095h,091h,0b0h,090h,073h,071h,0e0h,000h,0e1h,0b0h	; b9a8  u@p.@p....sq....
	defb 0ech,042h,09ch,0ffh	; b9b8

; ----------------------------------------------------------------------
; DATOS pista_B9BC: pista de los sonidos 0x58, 0x64 (p14:94FA: notas, 0xDx
;   octava, 0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la
;   siguiente; lo leen p14:9500 (143 bytes)
;   0xb9bc..0xba4b  (143 bytes)
DATA_pista_B9BC:
	defb 0feh,000h,022h,003h,090h,06bh,020h,001h,022h,003h,090h,050h,020h,001h,022h,003h	; b9bc  .."..k ."..P .".
	defb 090h,048h,020h,001h,022h,003h,090h,036h,070h,036h,050h,036h,040h,036h,020h,002h	; b9cc  .H ."..6p6P6@6 .
	defb 022h,003h,070h,06bh,020h,001h,022h,003h,070h,050h,020h,001h,022h,003h,070h,048h	; b9dc  ".pk .".pP .".pH
	defb 020h,001h,022h,003h,070h,036h,050h,036h,030h,036h,030h,036h,020h,002h,022h,003h	; b9ec   .".p6P60606 .".
	defb 050h,06bh,020h,001h,022h,003h,050h,050h,020h,001h,022h,003h,050h,048h,020h,001h	; b9fc  Pk .".PP .".PH .
	defb 022h,003h,050h,036h,040h,036h,030h,036h,030h,036h,020h,002h,022h,003h,040h,06bh	; ba0c  ".P6@60606 .".@k
	defb 020h,001h,022h,003h,040h,050h,020h,001h,022h,003h,040h,048h,020h,001h,022h,003h	; ba1c   .".@P .".@H .".
	defb 040h,036h,022h,009h,030h,036h,020h,002h,022h,003h,030h,06bh,020h,001h,022h,003h	; ba2c  @6".06 .".0k .".
	defb 030h,050h,020h,001h,022h,003h,030h,048h,020h,001h,022h,003h,030h,036h,0ffh	; ba3c  0P .".0H .".06.

; ----------------------------------------------------------------------
; DATOS pista_BA4B: pista de los sonidos 0x65 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (87 bytes)
;   0xba4b..0xbaa2  (87 bytes)
DATA_pista_BA4B:
	defb 0feh,000h,022h,002h,0a0h,020h,080h,020h,0a0h,028h,080h,028h,0a0h,01bh,022h,004h	; ba4b  ..".. . .(.(..".
	defb 080h,01bh,070h,01bh,060h,01bh,050h,01bh,022h,002h,080h,020h,060h,020h,080h,028h	; ba5b  ..p.`.P.".. ` .(
	defb 060h,028h,080h,01bh,022h,004h,060h,01bh,050h,01bh,040h,01bh,030h,01bh,022h,002h	; ba6b  `(..".`.P.@.0.".
	defb 060h,020h,040h,020h,060h,028h,040h,028h,060h,01bh,022h,004h,050h,01bh,040h,01bh	; ba7b  ` @ `(@(`.".P.@.
	defb 022h,00ch,030h,01bh,022h,002h,050h,020h,030h,020h,050h,028h,030h,028h,050h,01bh	; ba8b  ".0.".P 0 P(0(P.
	defb 022h,004h,040h,01bh,030h,01bh,0ffh	; ba9b

; ----------------------------------------------------------------------
; DATOS pista_BAA2: pista de los sonidos 0x66 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (45 bytes)
;   0xbaa2..0xbacf  (45 bytes)
DATA_pista_BAA2:
	defb 0feh,000h,022h,005h,094h,01ah,094h,040h,084h,070h,084h,0a0h,084h,0d5h,075h,010h	; baa2  .."....@.p....u.
	defb 075h,050h,075h,090h,075h,0f0h,066h,030h,066h,0c0h,067h,000h,067h,070h,068h,000h	; bab2  uPu.u.f0f.g.gph.
	defb 058h,050h,058h,0a0h,059h,000h,059h,050h,059h,0a0h,05ah,000h,0ffh	; bac2  XPX.Y.YPY.Z..

; ----------------------------------------------------------------------
; DATOS pista_BACF: pista de los sonidos 0x67 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (263 bytes)
;   0xbacf..0xbbd6  (263 bytes)
DATA_pista_BACF:
	defb 0efh,0d8h,0fah,013h,0e1h,020h,0feh,0ffh,0b9h,0bbh,0efh,0e2h,071h,0feh,0ffh,0c2h	; bacf  ..... ......q...
	defb 0bbh,0efh,070h,0feh,0ffh,0cch,0bbh,0efh,070h,090h,0a0h,070h,0e1h,030h,030h,0f6h	; badf  ..p.....p..p.00.
	defb 003h,031h,0fah,013h,0ech,043h,073h,0efh,050h,050h,0f6h,003h,051h,0fah,013h,0ech	; baef  .1...Cs.PP..Q...
	defb 043h,093h,0efh,0e1h,070h,0f7h,003h,070h,0fah,013h,070h,070h,0c0h,020h,0c0h,0ech	; baff  C...p..p..pp. ..
	defb 061h,078h,0efh,051h,040h,020h,0c0h,040h,0ech,041h,005h,0efh,000h,020h,040h,0e2h	; bb0f  ax.Q@ .@.A... @.
	defb 070h,0e1h,001h,040h,0ech,061h,078h,0efh,070h,060h,070h,090h,0d4h,0e9h,003h,030h	; bb1f  p..@.ax.p`p....0
	defb 070h,0a0h,0e9h,002h,030h,0e9h,003h,070h,0a0h,0e9h,002h,030h,070h,0a1h,071h,031h	; bb2f  p...0..p...0p.q1
	defb 0e9h,003h,0a1h,050h,090h,0e9h,002h,000h,050h,0e9h,003h,090h,0e9h,002h,000h,050h	; bb3f  ...P....P......P
	defb 090h,0efh,0ech,033h,0e0h,007h,0efh,0d8h,0e1h,070h,090h,0b0h,0ech,041h,076h,0efh	; bb4f  ...3.....p...Av.
	defb 061h,071h,091h,0b2h,062h,0ech,051h,025h,0efh,020h,010h,020h,040h,021h,030h,0ech	; bb5f  aq..b.Q%. . @!0.
	defb 071h,058h,0efh,050h,040h,050h,070h,0ech,042h,092h,0efh,042h,011h,0ech,042h,0b2h	; bb6f  qX.P@Pp.B..B..B.
	defb 0efh,062h,031h,0e1h,040h,041h,0ech,051h,0b8h,0efh,0b0h,090h,070h,060h,062h,0b2h	; bb7f  .b1.@A.Q....p`b.
	defb 062h,022h,0ech,041h,0e2h,0b3h,0efh,0e1h,021h,020h,020h,0c0h,0e2h,0a0h,0c0h,0ech	; bb8f  b".A....!  .....
	defb 051h,0e1h,028h,0efh,041h,040h,040h,0c0h,0e2h,090h,0c0h,0e1h,040h,031h,030h,030h	; bb9f  Q.(.A@@.....@100
	defb 0c0h,0e2h,080h,0c0h,0e1h,030h,0feh,0feh,0d4h,0bah,000h,0e2h,0b0h,0e1h,000h,0ech	; bbaf  .....0..........
	defb 041h,025h,0ffh,0b1h,0e1h,021h,070h,070h,050h,0ech,061h,078h,0ffh,050h,040h,020h	; bbbf  A%...!ppP.ax.P@
	defb 021h,040h,0ech,061h,0e2h,078h,0ffh	; bbcf

; ----------------------------------------------------------------------
; DATOS pista_BBD6: pista de los sonidos 0x68 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (247 bytes)
;   0xbbd6..0xbccd  (247 bytes)
DATA_pista_BBD6:
	defb 0d8h,0f9h,013h,0e8h,0e1h,020h,0feh,0ffh,0b9h,0bbh,0efh,0e8h,0e2h,071h,0feh,0ffh	; bbd6  ..... .......q..
	defb 0c2h,0bbh,0efh,0e8h,070h,0feh,0ffh,0cch,0bbh,0efh,040h,050h,070h,040h,0a0h,0a0h	; bbe6  ....p.....@Pp@..
	defb 0f6h,003h,0a1h,0f9h,013h,0ech,043h,0e1h,033h,0efh,000h,000h,0f6h,003h,001h,0f9h	; bbf6  ......C.3.......
	defb 013h,0ech,043h,053h,0efh,0e8h,020h,0f6h,003h,020h,0f9h,013h,020h,020h,0c0h,0e2h	; bc06  ..CS.. .. ..  ..
	defb 0b0h,0c0h,0ech,061h,0e1h,028h,0efh,0e8h,051h,040h,020h,0c0h,040h,0ech,041h,005h	; bc16  ...a.(..Q@ .@.A.
	defb 0efh,0e2h,090h,0b0h,0e1h,000h,0e2h,040h,091h,0e1h,000h,0ech,061h,048h,0efh,020h	; bc26  .......@....aH.
	defb 010h,020h,040h,0d4h,0e9h,003h,000h,030h,070h,0e9h,002h,000h,0e9h,003h,030h,070h	; bc36  . @....0p.....0p
	defb 0e9h,002h,000h,030h,071h,031h,001h,0e9h,003h,071h,000h,050h,090h,0e9h,002h,000h	; bc46  ...0q1...q.P....
	defb 0e9h,003h,050h,090h,0e9h,002h,000h,050h,0efh,0ech,033h,0e1h,097h,0efh,0d8h,0e1h	; bc56  ..P....P..3.....
	defb 040h,060h,070h,0ech,041h,046h,0efh,021h,041h,061h,062h,022h,0ech,051h,0e2h,0b5h	; bc66  @`p.AF.!Aab".Q..
	defb 0efh,0b0h,0a0h,0b0h,0e1h,000h,0e2h,0b1h,0e1h,000h,0ech,071h,028h,0efh,020h,000h	; bc76  ...........q(. .
	defb 020h,040h,0ech,042h,042h,0efh,012h,0e2h,091h,0ech,042h,0e1h,062h,0efh,032h,0e2h	; bc86   @.BB.....B.b.2.
	defb 0b1h,0e2h,0b1h,0b0h,0ech,051h,0e1h,078h,0efh,070h,060h,040h,020h,022h,062h,022h	; bc96  .....Q.x.p`@ "b"
	defb 0e2h,0b2h,0ech,041h,063h,0efh,0a1h,0a0h,0a0h,0c0h,050h,0c0h,0ech,051h,0a8h,0efh	; bca6  ...Ac.....P..Q..
	defb 0e1h,011h,010h,010h,0c0h,0e2h,040h,0c0h,0e1h,010h,001h,000h,000h,0c0h,0e2h,030h	; bcb6  ......@........0
	defb 0c0h,0e1h,000h,0feh,0feh,0d9h,0bbh	; bcc6

; ----------------------------------------------------------------------
; DATOS pista_BCCD: pista de los sonidos 0x69 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (325 bytes)
;   0xbccd..0xbe12  (325 bytes)
DATA_pista_BCCD:
	defb 0d8h,0fbh,014h,0e4h,073h,0feh,0ffh,0c6h,0bdh,0fbh,014h,040h,070h,0e3h,000h,0e4h	; bccd  ....s......@p...
	defb 070h,040h,030h,031h,0f8h,012h,030h,0fbh,014h,033h,050h,051h,0f8h,012h,050h,0fbh	; bcdd  p@01..0..3PQ..P.
	defb 014h,053h,073h,0feh,0ffh,0c6h,0bdh,0fbh,014h,000h,020h,040h,070h,020h,031h,0f9h	; bced  .Ss....... @p 1.
	defb 014h,030h,030h,0fah,014h,030h,030h,0fbh,014h,030h,0fch,024h,030h,051h,0f8h,012h	; bcfd  .00..00..0.$0Q..
	defb 050h,0f9h,014h,050h,0fah,014h,050h,0fbh,014h,050h,0fch,014h,050h,050h,0fbh,013h	; bd0d  P..P..P..P..PP..
	defb 041h,0fah,013h,040h,040h,040h,0fbh,013h,041h,0fah,015h,040h,0fbh,013h,041h,0fbh	; bd1d  A..@@@..A..@..A.
	defb 015h,040h,040h,0fah,013h,0e3h,040h,0feh,0ffh,0fch,0bdh,0fbh,015h,0b0h,0fbh,013h	; bd2d  .@@...@.........
	defb 0b1h,0b0h,0fbh,014h,0b1h,0b0h,0fah,013h,0e3h,0b0h,0fbh,014h,0e4h,050h,0b1h,0fbh	; bd3d  .............P..
	defb 013h,0a1h,0fah,013h,0a0h,0a0h,0a0h,0a1h,0fbh,014h,0a0h,0a0h,0a0h,0f8h,012h,0a0h	; bd4d  ................
	defb 0fbh,013h,0e3h,0a1h,0e4h,0a0h,0feh,0ffh,008h,0beh,0b1h,0b0h,0b0h,0e3h,0b0h,0e4h	; bd5d  ................
	defb 0b2h,041h,0fah,013h,040h,040h,0fah,014h,040h,0fbh,013h,0e4h,041h,0fah,015h,030h	; bd6d  .A..@@..@...A..0
	defb 0fbh,013h,041h,0fah,013h,040h,040h,0e3h,040h,0feh,0ffh,0fch,0bdh,0fah,015h,0a0h	; bd7d  ..A..@@.@.......
	defb 0fbh,013h,0b1h,0b0h,0fbh,013h,0b1h,0b0h,0fah,013h,0e3h,0b0h,0fbh,013h,0e4h,050h	; bd8d  ...............P
	defb 0b1h,0a1h,0a0h,0a0h,0f9h,012h,0e3h,0a0h,0e4h,0a0h,0fbh,014h,0a1h,0a0h,0a0h,0f8h	; bd9d  ................
	defb 012h,0a0h,0fah,013h,0e3h,0a1h,0fbh,014h,0e4h,0a0h,0feh,0ffh,008h,0beh,081h,080h	; bdad  ................
	defb 080h,0e3h,080h,0e4h,082h,0feh,0feh,0d1h,0bch,0f8h,012h,071h,0fbh,014h,070h,071h	; bdbd  ...........q..pq
	defb 0f8h,012h,070h,070h,0fbh,014h,070h,0b0h,0e3h,020h,0e4h,0b0h,070h,053h,0f8h,012h	; bdcd  ..pp..p.. ..pS..
	defb 051h,0fbh,014h,050h,051h,0f8h,012h,050h,050h,0fbh,014h,050h,0b0h,0e3h,020h,0e4h	; bddd  Q..PQ..PP..P.. .
	defb 0b0h,050h,043h,0f8h,012h,041h,0fbh,014h,040h,041h,0f8h,012h,040h,040h,0ffh,0e4h	; bded  .PC..A..@A..@@..
	defb 040h,0fbh,013h,041h,0b1h,0fah,013h,0b0h,0b0h,0b0h,0ffh,050h,0a0h,091h,090h,090h	; bdfd  @..A.......P....
	defb 0e3h,090h,0e4h,092h,0ffh	; be0d

; ----------------------------------------------------------------------
; DATOS pista_BE12: pista de los sonidos 0x6A (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (37 bytes)
;   0xbe12..0xbe37  (37 bytes)
DATA_pista_BE12:
	defb 0efh,0d6h,0f9h,013h,0e1h,090h,090h,0f8h,000h,070h,090h,0f9h,013h,040h,040h,0f8h	; be12  .........p...@@.
	defb 000h,020h,040h,0f9h,003h,000h,0e2h,0b0h,090h,080h,0d7h,090h,040h,000h,040h,0d8h	; be22  . @.........@.@.
	defb 0f6h,003h,0e3h,097h,0ffh	; be32

; ----------------------------------------------------------------------
; DATOS pista_BE37: pista de los sonidos 0x6B (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (46 bytes)
;   0xbe37..0xbe65  (46 bytes)
DATA_pista_BE37:
	defb 0efh,0d6h,0f9h,013h,0e1h,040h,040h,0f8h,000h,020h,040h,0f9h,013h,0e2h,0b0h,0b0h	; be37  .....@@.. @.....
	defb 0f8h,000h,090h,0b0h,0f9h,003h,0e8h,0e1h,000h,0e2h,0b0h,090h,080h,0efh,0d7h,0f6h	; be47  ................
	defb 000h,0e1h,090h,040h,000h,040h,0d8h,0f6h,002h,0ech,048h,0e2h,007h,0ffh	; be57  ...@.@....H...

; ----------------------------------------------------------------------
; DATOS pista_BE65: pista de los sonidos 0x6C (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (40 bytes)
;   0xbe65..0xbe8d  (40 bytes)
DATA_pista_BE65:
	defb 0efh,0d6h,0fah,013h,0e4h,090h,0e3h,091h,0e4h,090h,070h,0e3h,071h,0e4h,070h,051h	; be65  ..........p.q.pQ
	defb 050h,050h,0d7h,071h,080h,080h,0d4h,0f8h,000h,091h,0e3h,000h,040h,0e2h,091h,0e1h	; be75  PP.q........@...
	defb 000h,040h,0f6h,000h,0ech,043h,097h,0ffh	; be85  .@...C..

; ----------------------------------------------------------------------
; DATOS pista_BE8D: pista de los sonidos 0x6D (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (63 bytes)
;   0xbe8d..0xbecc  (63 bytes)
DATA_pista_BE8D:
	defb 0efh,0d4h,0fah,023h,0e5h,091h,091h,0e9h,001h,021h,0efh,091h,091h,091h,0e9h,001h	; be8d  ...#.....!......
	defb 021h,0efh,091h,071h,071h,0e9h,001h,021h,0efh,071h,071h,071h,0e9h,001h,021h,0efh	; be9d  !..qq..!.qqq..!.
	defb 071h,061h,061h,0e9h,001h,021h,0efh,061h,061h,061h,0e9h,001h,021h,0efh,061h,051h	; bead  qaa..!.aaa..!.aQ
	defb 051h,0e9h,001h,021h,0efh,051h,051h,0e9h,001h,021h,091h,0a1h,0efh,09dh,0ffh	; bebd  Q..!.QQ..!.....

; ----------------------------------------------------------------------
; DATOS pista_BECC: pista de los sonidos 0x6E (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (54 bytes)
;   0xbecc..0xbf02  (54 bytes)
DATA_pista_BECC:
	defb 0efh,0d4h,0fbh,022h,0e2h,041h,021h,041h,091h,0f8h,002h,091h,0fbh,022h,021h,041h	; becc  ...".A!A....."!A
	defb 071h,091h,021h,041h,091h,0f8h,002h,091h,0fbh,022h,021h,041h,091h,0e1h,001h,021h	; bedc  q.!A....."!A...!
	defb 0e2h,0b1h,091h,0f8h,002h,091h,0fbh,022h,0b1h,073h,051h,0f8h,002h,051h,0fbh,023h	; beec  .......".sQ..Q.#
	defb 051h,051h,051h,073h,09fh,0ffh	; befc

; ----------------------------------------------------------------------
; DATOS pista_BF02: pista de los sonidos 0x6F (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (43 bytes)
;   0xbf02..0xbf2d  (43 bytes)
DATA_pista_BF02:
	defb 0efh,0d4h,0fbh,013h,0e4h,091h,091h,091h,090h,090h,091h,091h,091h,091h,071h,071h	; bf02  ..............qq
	defb 071h,070h,070h,071h,071h,071h,071h,061h,061h,061h,060h,060h,061h,061h,061h,061h	; bf12  qppqqqqaaa``aaaa
	defb 051h,051h,051h,050h,050h,051h,073h,0fbh,014h,09fh,0ffh	; bf22  QQQPPQs....

; ----------------------------------------------------------------------
; DATOS pista_BF2D: pista de los sonidos 0x70 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   lo leen p14:9500 (14 bytes)
;   0xbf2d..0xbf3b  (14 bytes)
DATA_pista_BF2D:
	defb 0e8h,0d1h,0fch,088h,0e1h,004h,074h,044h,074h,0fch,023h,0e0h,009h,0ffh	; bf2d  ......tDt.#...

; ----------------------------------------------------------------------
; DATOS pista_BF3B: pista de los sonidos 0x71 (p14:94FA: notas, 0xDx octava,
;   0xEx ordenes, 0xFx volumen, 0xFE vuelve, 0xFF acaba), hasta la siguiente;
;   se solapan 3 bloques (0xBF3B-0xBF49, 0xBF48-0xC000, 0xBF49-0xBF58); lo
;   leen nadie, p14:9500 (197 bytes)
;   0xbf3b..0xc000  (197 bytes)
DATA_pista_BF3B:
	defb 0efh,0d1h,0fch,088h,0e1h,004h,074h,044h,074h,0fch,023h,0e0h,009h,0ffh,0ffh,0ffh	; bf3b  ......tDt.#.....
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf4b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf5b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf6b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf7b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf8b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf9b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfab  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfbb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfcb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfdb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfeb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh	; bffb
