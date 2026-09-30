; ==========================================================================
; HINOTORI - Konami (1987) - MSX - MegaROM RC-747 de 128 KB (Konami4) - banco 09 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS sin identificar  0xa000..0xb880  (6272 bytes)
DATA_A000:
	defb 000h,000h,000h,0f6h,000h,000h,000h,00fh,000h,000h,000h,000h,000h,000h,000h,000h	; a000  ................
	defb 066h,0f9h,06eh,0f0h,0ffh,0ffh,09eh,0f0h,0ffh,0ffh,0f6h,0f0h,09fh,0ffh,096h,0f0h	; a010  f.n.............
	defb 0f9h,0f9h,06fh,000h,069h,096h,0f0h,000h,0ffh,0ffh,000h,000h,000h,000h,000h,000h	; a020  ..o.i...........
	defb 000h,00fh,0c8h,08ch,000h,0fch,088h,0cch,00fh,0c8h,08ch,0cch,00fh,0ffh,0cch,0c8h	; a030  ................
	defb 00fh,0ffh,0fch,08fh,0f9h,06fh,0f8h,0f0h,0feh,09fh,0ffh,000h,00fh,0ffh,000h,000h	; a040  .....o..........
	defb 0cah,08fh,000h,000h,0cah,0f0h,000h,000h,08fh,000h,000h,000h,0f0h,000h,000h,000h	; a050  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a060  ................
	defb 0f6h,0eeh,0cch,0cch,0f6h,0ech,0ech,0cch,00fh,06eh,0cch,0ech,00fh,06eh,0eeh,0ceh	; a070  .........n...n..
	defb 000h,0f6h,0ech,0eeh,000h,00fh,066h,0eeh,000h,000h,0ffh,066h,000h,000h,000h,0ffh	; a080  ......f....f....
	defb 0cch,0cch,0ceh,06fh,0cch,0eeh,0eeh,06fh,0ceh,0cch,0e6h,0f0h,0ech,0eeh,0e6h,0f0h	; a090  ...o...o........
	defb 0ceh,0eeh,06fh,000h,0eeh,066h,0f0h,000h,066h,0ffh,000h,000h,0ffh,000h,000h,000h	; a0a0  ..o..f..f.......
	defb 000h,000h,000h,0f6h,000h,000h,00fh,06fh,000h,000h,0f6h,0ffh,000h,00fh,06fh,0ffh	; a0b0  .......o......o.
	defb 000h,00fh,06fh,0fah,000h,00fh,06ah,0aah,000h,0f6h,066h,066h,000h,00fh,0ffh,0ffh	; a0c0  ..o...j...ff....
	defb 0feh,0f0h,000h,000h,0afh,0efh,000h,000h,0ffh,0eeh,0f0h,000h,0afh,0ffh,0efh,000h	; a0d0  ................
	defb 0aah,0efh,0efh,000h,0aah,0eeh,0efh,000h,066h,066h,066h,0f0h,0ffh,0ffh,0ffh,000h	; a0e0  ........fff.....
	defb 00fh,0f8h,08ah,088h,00fh,09fh,0f8h,088h,00fh,099h,09fh,0ffh,00fh,099h,099h,099h	; a0f0  ................
	defb 000h,0f9h,099h,096h,000h,00fh,0f9h,066h,000h,000h,00fh,0ffh,000h,000h,000h,000h	; a100  .......f........
	defb 088h,088h,08fh,0f0h,088h,08fh,0f6h,0f0h,0ffh,0f6h,066h,0f0h,096h,066h,066h,0f0h	; a110  ..........f..ff.
	defb 066h,066h,06fh,000h,066h,06fh,0f0h,000h,0ffh,0f0h,000h,000h,000h,000h,000h,000h	; a120  ffo.fo..........
	defb 0aah,0a1h,0d3h,0a1h,00bh,0a2h,0d5h,0a2h,00ah,0a3h,03ch,0a3h,062h,0a3h,0a6h,0a3h	; a130  ..........<.b...
	defb 0deh,0a3h,01ch,0a4h,05ah,0a4h,08ch,0a4h,0d9h,0a4h,01dh,0a5h,064h,0a5h,099h,0a5h	; a140  ....Z.......d...
	defb 0e6h,0a5h,02ah,0a6h,043h,0a2h,048h,0a2h,04dh,0a2h,055h,0a2h,05ah,0a2h,062h,0a2h	; a150  ..*.C.H.M.U.Z.b.
	defb 067h,0a2h,07ah,0a6h,0fdh,0a6h,01dh,0a7h,070h,0a7h,0a8h,0a7h,004h,0a8h,054h,0a8h	; a160  g.z.....p.....T.
	defb 080h,0a8h,09ah,0a8h,0c9h,0a8h,016h,0a9h,054h,0a9h,086h,0a9h,0f7h,0a9h,02fh,0aah	; a170  ........T...../.
	defb 085h,0aah,0e7h,0aah,019h,0abh,0dch,0ach,0e2h,0ach,0e8h,0ach,0eeh,0ach,0f4h,0ach	; a180  ................
	defb 0fah,0ach,000h,0adh,006h,0adh,00ch,0adh,012h,0adh,018h,0adh,01eh,0adh,024h,0adh	; a190  ..............$.
	defb 02ah,0adh,030h,0adh,036h,0adh,03ch,0adh,042h,0adh,00ah,030h,0c8h,014h,03ch,021h	; a1a0  *.0.6.<.B..0..<!
	defb 026h,034h,096h,001h,000h,0d8h,03ch,030h,028h,044h,030h,0c8h,04ch,034h,029h,04eh	; a1b0  &4....<0(D0.L4)N
	defb 030h,068h,056h,034h,082h,05ch,030h,0d8h,068h,034h,02eh,080h,03ch,0b2h,0a0h,008h	; a1c0  0hV4.\0.h4..<...
	defb 017h,0ffh,0ffh,014h,004h,00eh,026h,034h,091h,036h,034h,029h,040h,030h,0c8h,050h	; a1d0  ......&4.64)@0.P
	defb 03ch,040h,052h,034h,0a4h,05eh,028h,020h,063h,034h,06bh,064h,010h,003h,06ch,030h	; a1e0  <@R4.^( c4kd..l0
	defb 028h,06eh,030h,068h,076h,034h,085h,080h,034h,0c9h,084h,00ch,01dh,094h,030h,0c8h	; a1f0  (n0hv4..4.....0.
	defb 0aeh,034h,029h,0b2h,030h,048h,0b6h,028h,0c6h,0ffh,0ffh,002h,030h,058h,004h,034h	; a200  .4).0H.(....0X.4
	defb 056h,015h,040h,020h,028h,03ch,083h,03ah,034h,024h,03ah,030h,0d8h,042h,034h,0cah	; a210  V.@ (<.:4$:0.B4.
	defb 044h,030h,028h,046h,030h,058h,04eh,034h,085h,06ah,034h,08dh,06ah,030h,0d8h,090h	; a220  D0(F0XN4.j4.j0..
	defb 030h,028h,092h,030h,088h,09ah,030h,0d8h,0a2h,030h,028h,0b6h,030h,058h,0b8h,030h	; a230  0(.0..0..0(.0X.0
	defb 088h,0ffh,0ffh,026h,014h,006h,0ffh,0ffh,026h,014h,007h,0ffh,0ffh,026h,014h,008h	; a240  ...&....&....&..
	defb 026h,014h,00bh,0ffh,0ffh,026h,014h,009h,0ffh,0ffh,026h,014h,00ah,026h,014h,00ch	; a250  &....&....&..&..
	defb 0ffh,0ffh,026h,014h,00dh,0ffh,0ffh,0ffh,0ffh,014h,01fh,000h,090h,080h,000h,013h	; a260  ..&.............
	defb 01fh,000h,090h,080h,000h,017h,01fh,000h,090h,080h,000h,012h,01fh,000h,090h,080h	; a270  ................
	defb 000h,015h,01fh,000h,090h,080h,000h,016h,01fh,000h,090h,080h,000h,004h,01fh,000h	; a280  ................
	defb 090h,080h,000h,007h,01fh,000h,090h,080h,000h,00ah,01fh,000h,090h,080h,000h,00dh	; a290  ................
	defb 01fh,000h,090h,080h,000h,010h,01fh,000h,090h,080h,000h,001h,01fh,000h,090h,080h	; a2a0  ................
	defb 000h,004h,01fh,000h,090h,080h,000h,00ah,01fh,000h,090h,080h,000h,018h,01fh,000h	; a2b0  ................
	defb 090h,080h,000h,018h,01fh,000h,090h,080h,000h,018h,01fh,000h,090h,080h,000h,018h	; a2c0  ................
	defb 01fh,000h,090h,080h,000h,00ah,030h,0b8h,014h,034h,021h,01ch,030h,0d8h,02ah,030h	; a2d0  ......0..4!.0.*0
	defb 0d8h,05ah,034h,021h,05eh,034h,02bh,074h,010h,001h,077h,030h,0d8h,084h,030h,0b8h	; a2e0  .Z4!^4+t..w0..0.
	defb 087h,034h,034h,08eh,030h,0d8h,09ah,030h,028h,09ch,034h,022h,0a8h,030h,028h,0b2h	; a2f0  .44.0..0(.4".0(.
	defb 030h,0a8h,0b8h,034h,0d4h,0beh,030h,058h,0ffh,0ffh,014h,004h,00fh,036h,034h,023h	; a300  0..4..0X.....64#
	defb 044h,030h,048h,058h,030h,098h,05bh,034h,0d1h,068h,030h,028h,06ch,030h,0b8h,075h	; a310  D0HX0.[4.h0(l0.u
	defb 034h,0d6h,09ah,028h,0a7h,09ch,030h,038h,0a2h,030h,098h,0aah,030h,0d8h,0ach,030h	; a320  4..(..08.0..0..0
	defb 038h,0afh,030h,058h,0b7h,030h,0a8h,0bch,034h,03eh,0ffh,0ffh,02ah,028h,081h,03ch	; a330  8.0X.0..4>..*(.<
	defb 03ch,0d1h,040h,034h,051h,047h,030h,028h,04eh,030h,0d8h,050h,034h,0d6h,054h,03ch	; a340  <.@4QG0(N0.P4.T<
	defb 020h,060h,00ch,01bh,075h,040h,021h,093h,034h,0d5h,0ach,008h,015h,0b0h,034h,089h	; a350   `..u@!.4.....4.
	defb 0ffh,0ffh,022h,034h,066h,022h,030h,078h,029h,030h,098h,02eh,030h,058h,02eh,030h	; a360  .."4f"0x)0..0X.0
	defb 088h,035h,030h,0b8h,03ah,034h,0d1h,03eh,030h,048h,04eh,030h,028h,052h,034h,08dh	; a370  .50.:4.>0HN0(R4.
	defb 054h,010h,000h,078h,030h,0d8h,07ah,034h,0d4h,07ch,034h,046h,086h,030h,028h,088h	; a380  T..x0.z4.|4F.0(.
	defb 034h,03dh,09eh,034h,066h,0a0h,030h,0d8h,0a2h,030h,0d8h,0aah,030h,028h,0ach,030h	; a390  4=.4f.0..0..0(.0
	defb 068h,0aeh,034h,065h,0ffh,0ffh,014h,004h,010h,02eh,030h,048h,04ah,034h,086h,04ah	; a3a0  h.4e......0HJ4.J
	defb 030h,0d8h,05eh,034h,02ah,06ch,030h,0d8h,06fh,034h,0dbh,072h,034h,08dh,07dh,034h	; a3b0  0.^4*l0.o4.r4.}4
	defb 02eh,07dh,034h,0ddh,07fh,018h,071h,092h,028h,088h,095h,034h,03dh,09ch,008h,014h	; a3c0  .}4...q.(..4=...
	defb 0aah,030h,048h,0b4h,028h,0c2h,0b8h,030h,028h,0beh,030h,0b8h,0ffh,0ffh,029h,030h	; a3d0  .0H.(..0(.0...)0
	defb 088h,034h,030h,048h,038h,030h,048h,03ah,030h,058h,044h,030h,0d8h,048h,034h,0d9h	; a3e0  .40H80H:0XD0.H4.
	defb 05ah,030h,058h,05ah,034h,08dh,070h,03ch,020h,074h,00ch,01ah,07ah,030h,0c8h,07dh	; a3f0  Z0XZ4.p< t..z0.}
	defb 040h,022h,084h,030h,088h,08ch,034h,021h,09fh,030h,088h,0a4h,030h,028h,0a6h,030h	; a400  @".0..4!.0..0(.0
	defb 028h,0aah,034h,0d9h,0bch,034h,024h,0c2h,030h,0b8h,0ffh,0ffh,01ah,034h,065h,021h	; a410  (.4..4$.0....4e!
	defb 030h,0b8h,026h,030h,068h,02ch,034h,0d9h,049h,030h,0a8h,04ch,030h,068h,04eh,030h	; a420  0.&0h,4.I0.L0hN0
	defb 068h,050h,034h,02eh,052h,030h,0d8h,056h,030h,058h,066h,034h,0d9h,076h,034h,031h	; a430  hP4.R0.V0Xf4.v41
	defb 076h,028h,0a9h,092h,034h,0bdh,094h,008h,018h,09eh,028h,063h,0a8h,030h,028h,0aah	; a440  v(..4.....(c.0(.
	defb 034h,0d2h,0b0h,030h,0a8h,0bah,030h,038h,0ffh,0ffh,014h,004h,011h,026h,030h,068h	; a450  4..0..08.....&0h
	defb 02eh,034h,021h,030h,030h,0b8h,036h,034h,0b4h,040h,034h,081h,04dh,040h,043h,05ch	; a460  .4!00.64.@4.M@C\
	defb 034h,081h,062h,030h,0a8h,082h,030h,038h,086h,034h,071h,092h,034h,04dh,094h,030h	; a470  4.b0..08.4q.4M.0
	defb 088h,099h,034h,025h,0aah,034h,0d9h,0bah,030h,068h,0ffh,0ffh,000h,034h,065h,000h	; a480  ..4%.4..0h...4e.
	defb 030h,078h,010h,030h,028h,01dh,034h,05dh,024h,010h,004h,030h,034h,029h,030h,030h	; a490  0x.0(.4]$..04)00
	defb 048h,044h,030h,058h,054h,030h,098h,054h,034h,0d1h,056h,034h,0d4h,05ch,034h,026h	; a4a0  HD0XT0.T4.V4.\4&
	defb 05dh,030h,0d8h,074h,034h,021h,076h,034h,0aah,082h,030h,058h,089h,030h,068h,08ch	; a4b0  ]0.t4!v4..0X.0h.
	defb 030h,028h,098h,030h,0d8h,0a2h,034h,025h,0ach,034h,0d1h,0aeh,034h,0dbh,0b6h,03ch	; a4c0  0(.0..4%.4..4..<
	defb 0d0h,0b8h,00ch,01eh,0bdh,030h,0d8h,0ffh,0ffh,011h,034h,0c9h,034h,030h,028h,036h	; a4d0  .....0....4.40(6
	defb 034h,02dh,040h,008h,019h,04eh,018h,081h,056h,018h,041h,066h,018h,082h,06eh,018h	; a4e0  4-@..N..V.Af..n.
	defb 021h,06eh,018h,082h,082h,030h,088h,082h,034h,0adh,082h,018h,0c1h,08ah,028h,0a4h	; a4f0  !n...0..4.....(.
	defb 08eh,034h,0ddh,08eh,018h,081h,092h,030h,028h,096h,034h,0d1h,09eh,030h,048h,09eh	; a500  .4.....0(.4..0H.
	defb 030h,0b8h,0a8h,030h,038h,0a8h,030h,0b8h,0b2h,034h,0ddh,0ffh,0ffh,014h,004h,012h	; a510  0..08.0..4......
	defb 028h,03ch,0d1h,038h,034h,022h,046h,018h,021h,046h,018h,041h,046h,018h,061h,046h	; a520  (<.84"F.!F.AF.aF
	defb 018h,081h,046h,018h,0a1h,046h,018h,0c1h,052h,030h,028h,057h,030h,0d8h,060h,034h	; a530  ..F..F..R0(W0.`4
	defb 09ah,06eh,030h,028h,07ah,030h,0d8h,082h,034h,0b9h,082h,018h,021h,094h,030h,0a8h	; a540  .n0(z0..4...!.0.
	defb 0a1h,034h,0adh,0a2h,018h,022h,0a6h,018h,0a3h,0a8h,010h,005h,0aeh,028h,02ah,0b6h	; a550  .4...".......(*.
	defb 030h,098h,0ffh,0ffh,04ch,030h,028h,058h,030h,0b8h,05ah,034h,0b5h,062h,030h,0d8h	; a560  0...L0(X0.Z4.b0.
	defb 076h,030h,0d8h,078h,030h,0d8h,080h,03ch,020h,08ah,018h,083h,08eh,018h,0c3h,090h	; a570  v0.x0..< .......
	defb 00ch,01fh,094h,030h,0a8h,097h,040h,044h,09ah,018h,021h,0a2h,034h,02dh,0a6h,018h	; a580  ...0..@D..!.4-..
	defb 041h,0ach,034h,02eh,0ach,030h,088h,0ffh,0ffh,008h,030h,048h,008h,030h,068h,010h	; a590  A.4..0....0H.0h.
	defb 030h,0d8h,012h,030h,0d8h,02ah,030h,038h,02eh,030h,0d8h,042h,020h,020h,042h,020h	; a5a0  0..0.*08.0.B  B
	defb 0c0h,04eh,020h,020h,04eh,020h,0c0h,052h,020h,040h,052h,020h,0a0h,060h,020h,0a0h	; a5b0  .N  N .R @R .` .
	defb 060h,020h,0c0h,064h,020h,080h,06ch,010h,002h,070h,034h,02dh,076h,018h,041h,088h	; a5c0  ` .d .l..p4-v.A.
	defb 030h,0b8h,094h,030h,048h,0a0h,030h,0b8h,0a6h,018h,0c1h,0ach,034h,0d9h,0b6h,030h	; a5d0  0..0H.0.....4..0
	defb 088h,0b8h,034h,031h,0ffh,0ffh,014h,004h,013h,028h,030h,058h,02ah,034h,055h,032h	; a5e0  ..41.....(0X*4U2
	defb 030h,0a8h,03ah,034h,031h,03eh,030h,0c8h,044h,030h,068h,04ah,034h,091h,052h,020h	; a5f0  0.:41>0.D0hJ4.R
	defb 0c0h,056h,020h,020h,05eh,020h,060h,06ch,020h,060h,06ch,020h,0c0h,070h,020h,020h	; a600  .V  ^ `l `l .p
	defb 070h,020h,080h,074h,020h,0c0h,078h,020h,040h,07ch,020h,080h,09eh,018h,041h,0a0h	; a610  p .t .x @| ...A.
	defb 008h,016h,0aah,034h,0b5h,0b8h,028h,0a5h,0ffh,0ffh,004h,020h,040h,00ah,020h,0c0h	; a620  ...4..(.... @. .
	defb 00eh,020h,020h,00eh,020h,060h,022h,028h,0abh,02ah,018h,0c1h,032h,034h,03bh,036h	; a630  .  . `"(.*..24;6
	defb 030h,0c8h,03ch,030h,058h,042h,034h,0a9h,056h,020h,060h,05ah,020h,0c0h,05eh,020h	; a640  0.<0XB4.V `Z .^
	defb 020h,062h,020h,0a0h,066h,020h,080h,06eh,020h,0c0h,076h,020h,020h,08ah,020h,020h	; a650   b .f .n .v  .
	defb 08ah,020h,0c0h,09ah,020h,060h,09ah,020h,080h,0a2h,020h,040h,0a2h,020h,0a0h,0b2h	; a660  . .. `. .. @. ..
	defb 020h,060h,0b2h,020h,0c0h,0bah,020h,0a0h,0ffh,0ffh,000h,010h,020h,001h,010h,0c0h	; a670   `. .. ..... ...
	defb 003h,00eh,0a0h,007h,00eh,060h,009h,010h,080h,009h,00eh,0c0h,00bh,010h,040h,00fh	; a680  .....`........@.
	defb 00eh,0a0h,047h,004h,040h,04bh,004h,0c0h,057h,018h,060h,05dh,010h,0c0h,063h,018h	; a690  ..G.@K..W.`]..c.
	defb 060h,063h,010h,080h,067h,00eh,060h,067h,010h,0c0h,06fh,00eh,0e0h,073h,00eh,020h	; a6a0  `c..g.`g..o..s.
	defb 077h,018h,010h,083h,018h,010h,083h,018h,080h,087h,00ah,0b0h,08fh,018h,010h,08fh	; a6b0  w...............
	defb 018h,080h,08fh,00ah,0b0h,094h,00ah,0d0h,097h,018h,080h,097h,018h,010h,09bh,00ah	; a6c0  ................
	defb 0d0h,0a3h,00eh,080h,0a7h,00eh,020h,0abh,00eh,060h,0afh,00eh,090h,0b0h,00eh,030h	; a6d0  ...... ..`.....0
	defb 0b2h,010h,040h,0b2h,00eh,0c0h,0b4h,00eh,040h,0b5h,00eh,070h,0b9h,00eh,080h,0bbh	; a6e0  ..@.....@..p....
	defb 00eh,030h,0bbh,00eh,0c0h,0beh,00eh,090h,0bfh,00eh,050h,000h,000h,004h,018h,040h	; a6f0  .0........P....@
	defb 007h,018h,0a0h,047h,00ah,080h,04fh,00ah,060h,051h,00ah,0a0h,067h,00ah,070h,06fh	; a700  ...G..O.`Q..g.po
	defb 00ah,080h,077h,00ah,070h,08bh,004h,080h,093h,004h,040h,000h,000h,00bh,018h,060h	; a710  ..w.p.....@....`
	defb 013h,018h,060h,017h,018h,0f0h,027h,004h,040h,02bh,004h,020h,033h,004h,040h,03fh	; a720  ..`...'.@+. 3.@?
	defb 004h,0a0h,043h,004h,040h,053h,010h,060h,05bh,010h,0a0h,06bh,004h,050h,06fh,004h	; a730  ..C.@S.`[..k.Po.
	defb 0a0h,079h,004h,040h,07bh,004h,0c0h,07bh,010h,060h,07fh,010h,0a0h,085h,010h,030h	; a740  .y.@{..{.`.....0
	defb 086h,010h,0c0h,087h,004h,060h,08bh,004h,0c0h,08fh,010h,0a0h,0a3h,018h,010h,0afh	; a750  .....`..........
	defb 006h,000h,0afh,018h,070h,0afh,018h,0f0h,0bbh,018h,070h,0bbh,018h,0f0h,000h,000h	; a760  ....p.....p.....
	defb 006h,002h,000h,01eh,014h,060h,055h,016h,080h,059h,016h,050h,05bh,016h,040h,05dh	; a770  .....`U..Y.P[.@]
	defb 016h,060h,05dh,016h,090h,05dh,016h,0b0h,063h,016h,050h,063h,016h,070h,063h,016h	; a780  .`]..]..c.Pc.pc.
	defb 0c0h,065h,016h,0b0h,066h,016h,0d0h,069h,016h,050h,069h,016h,080h,06bh,016h,0b0h	; a790  .e..f..i.Pi..k..
	defb 0afh,002h,000h,0cfh,002h,000h,000h,000h,02bh,00eh,060h,02dh,00eh,0b0h,034h,00eh	; a7a0  ........+.`-..4.
	defb 030h,03ah,00eh,090h,03fh,00eh,050h,041h,00eh,0a0h,043h,00eh,030h,045h,00eh,090h	; a7b0  0:..?.PA..C.0E..
	defb 047h,00eh,0c0h,04dh,00eh,080h,04dh,00eh,0d0h,04fh,00eh,050h,053h,00eh,090h,05bh	; a7c0  G..M..M..O.PS..[
	defb 00eh,0d0h,063h,00eh,0a0h,07fh,010h,0d0h,087h,010h,0a0h,089h,010h,050h,089h,010h	; a7d0  ..c..........P..
	defb 030h,08dh,010h,030h,08fh,010h,070h,090h,010h,0c0h,091h,010h,0a0h,092h,010h,0d0h	; a7e0  0..0..p.........
	defb 0a5h,00eh,0d0h,0a6h,00eh,070h,0adh,00eh,030h,0adh,00eh,0a0h,0b5h,00eh,0d0h,0b7h	; a7f0  .....p..0.......
	defb 00eh,050h,000h,000h,00fh,006h,000h,025h,006h,000h,04bh,014h,080h,059h,014h,090h	; a800  .P.....%..K..Y..
	defb 05dh,014h,030h,063h,018h,0f0h,069h,010h,0b0h,06bh,010h,060h,06ch,010h,030h,06dh	; a810  ].0c..i..k.`l.0m
	defb 010h,080h,071h,010h,0c0h,07dh,010h,0b0h,07fh,010h,060h,080h,010h,030h,081h,010h	; a820  ..q..}....`..0..
	defb 080h,083h,010h,0c0h,085h,010h,070h,089h,010h,0b0h,08dh,010h,070h,091h,010h,090h	; a830  ......p.....p...
	defb 093h,010h,0c0h,09bh,00ch,080h,0a7h,00ch,080h,0c0h,010h,090h,0c1h,010h,020h,0c3h	; a840  .............. .
	defb 010h,0c0h,000h,000h,008h,014h,030h,01bh,014h,050h,023h,012h,030h,037h,012h,070h	; a850  ......0..P#.07.p
	defb 044h,014h,040h,05fh,012h,090h,072h,014h,060h,06fh,012h,0b0h,077h,012h,070h,083h	; a860  D.@_..r.`o..w.p.
	defb 012h,030h,090h,014h,050h,09fh,012h,030h,0a8h,012h,0b0h,0b7h,012h,050h,000h,000h	; a870  .0..P..0.....P..
	defb 034h,014h,070h,05fh,002h,000h,06fh,002h,000h,0ach,018h,0f0h,0afh,002h,000h,0b0h	; a880  4.p_..o.........
	defb 018h,010h,0bch,018h,0f0h,0bfh,002h,000h,000h,000h,00bh,002h,000h,018h,018h,010h	; a890  ................
	defb 01fh,002h,000h,020h,018h,0f0h,03bh,002h,000h,04bh,008h,000h,050h,018h,0f0h,053h	; a8a0  ... ..;..K..P..S
	defb 002h,000h,054h,018h,010h,058h,018h,0f0h,063h,008h,000h,067h,002h,000h,093h,002h	; a8b0  ..T..X..c..g....
	defb 000h,09bh,002h,000h,0bbh,002h,000h,000h,000h,00bh,010h,0c0h,00fh,010h,030h,019h	; a8c0  ..............0.
	defb 010h,0b0h,01fh,018h,010h,027h,018h,050h,028h,018h,010h,02bh,018h,010h,02dh,018h	; a8d0  .....'.P(..+..-.
	defb 050h,030h,018h,010h,037h,01ah,080h,038h,010h,0c0h,03ah,01ah,060h,03dh,010h,030h	; a8e0  P0..7..8..:.`=.0
	defb 043h,00ch,020h,073h,008h,000h,077h,01ah,0a0h,07ah,008h,000h,07fh,010h,0d0h,082h	; a8f0  C. s..w..z......
	defb 010h,020h,083h,008h,000h,086h,010h,0d0h,087h,01ah,070h,08ah,01ah,040h,08ch,008h	; a900  . ........p..@..
	defb 000h,093h,008h,000h,000h,000h,001h,018h,010h,001h,010h,030h,001h,010h,0c0h,005h	; a910  ...........0....
	defb 018h,050h,005h,010h,090h,091h,014h,060h,0a3h,010h,0d0h,0a5h,010h,030h,0a9h,010h	; a920  .P.....`.....0..
	defb 060h,0afh,010h,0d0h,0afh,01ah,080h,0b1h,018h,010h,0b1h,01ah,0a0h,0b3h,018h,050h	; a930  `..............P
	defb 0b5h,01ah,0c0h,0b6h,010h,0d0h,0b9h,018h,010h,0bah,010h,060h,0bbh,018h,040h,0beh	; a940  ...........`..@.
	defb 018h,010h,000h,000h,011h,002h,000h,023h,002h,000h,037h,014h,090h,041h,014h,060h	; a950  .......#..7..A.`
	defb 05fh,01eh,000h,065h,01eh,000h,067h,01eh,000h,06fh,01eh,000h,074h,01eh,000h,079h	; a960  _..e..g..o..t..y
	defb 01eh,000h,07dh,01eh,000h,083h,01eh,000h,097h,01ah,020h,0a3h,01ah,0a0h,0a7h,01ah	; a970  ..}....... .....
	defb 080h,0afh,01ah,060h,000h,000h,001h,010h,0c0h,005h,010h,020h,005h,010h,0a0h,009h	; a980  ...`....... ....
	defb 010h,0c0h,00bh,010h,020h,011h,010h,040h,019h,010h,0b0h,01fh,020h,000h,025h,01ah	; a990  .... ..@.... .%.
	defb 0c0h,029h,020h,000h,02bh,01ah,030h,030h,01ah,0a0h,033h,020h,000h,03bh,020h,000h	; a9a0  .) .+.00..3 .; .
	defb 03bh,01ah,080h,041h,020h,000h,04bh,018h,0b0h,04dh,00ah,081h,04fh,00ah,0d1h,053h	; a9b0  ;..A .K..M..O..S
	defb 00ah,0c1h,057h,00ah,061h,05bh,018h,0b0h,05bh,00ah,0d1h,05fh,00ah,0c1h,060h,00ah	; a9c0  ..W.a[..[.._..`.
	defb 021h,063h,018h,070h,064h,018h,0b0h,065h,018h,010h,067h,018h,070h,069h,01ch,000h	; a9d0  !c.pd..e..g.pi..
	defb 06bh,00ah,031h,06dh,018h,0a0h,072h,01ch,000h,07bh,01ah,0b0h,07dh,01ah,0c0h,07fh	; a9e0  k.1m..r..{..}...
	defb 01ah,080h,083h,01ah,050h,000h,000h,02bh,00ah,021h,02bh,00ah,0c1h,033h,00ah,0a1h	; a9f0  ....P..+.!+..3..
	defb 039h,00ah,041h,03bh,00ah,0c1h,041h,00ah,031h,043h,00ah,061h,043h,00ah,0b1h,071h	; aa00  9.A;..A.1C.aC..q
	defb 020h,000h,079h,020h,000h,07fh,020h,000h,085h,020h,000h,091h,018h,050h,093h,018h	; aa10   .y .. .. ...P..
	defb 0e0h,099h,018h,0e0h,09bh,018h,010h,0a2h,018h,080h,0a7h,01ch,000h,000h,000h,007h	; aa20  ................
	defb 00ah,0a1h,007h,00ah,021h,009h,00ah,071h,027h,01ch,000h,04fh,01eh,000h,05bh,01eh	; aa30  ....!..q'..O..[.
	defb 000h,05fh,01eh,000h,063h,01eh,000h,067h,01eh,000h,06bh,016h,040h,06dh,016h,040h	; aa40  ._..c..g..k.@m.@
	defb 06fh,016h,040h,073h,01eh,000h,077h,016h,040h,07bh,016h,040h,07fh,016h,040h,083h	; aa50  o.@s..w.@{.@..@.
	defb 016h,040h,093h,018h,0a0h,093h,018h,0e0h,09eh,018h,080h,09eh,018h,0e0h,0a7h,018h	; aa60  .@..............
	defb 080h,0a7h,018h,0e0h,0b3h,00ah,0a1h,0b9h,00ah,041h,0bbh,00ah,091h,0bbh,00ah,021h	; aa70  .........A.....!
	defb 0bfh,00ah,051h,000h,000h,003h,004h,060h,003h,00eh,080h,01fh,020h,000h,021h,00eh	; aa80  ..Q....`.... .!.
	defb 0b0h,029h,00eh,060h,02bh,00eh,0a0h,02dh,00eh,0d0h,033h,00eh,050h,037h,020h,000h	; aa90  .).`+..-..3.P7 .
	defb 037h,00eh,0a0h,03dh,00eh,040h,045h,00eh,0a0h,04bh,00eh,060h,04fh,00eh,0a0h,064h	; aaa0  7..=.@E..K.`O..d
	defb 014h,060h,08fh,00ch,080h,093h,00eh,0b0h,097h,00eh,090h,09bh,00ch,080h,09fh,00eh	; aab0  .`..............
	defb 030h,0a3h,00eh,060h,0a3h,00eh,090h,0a7h,00ch,080h,0a9h,00eh,0a0h,0b1h,00eh,060h	; aac0  0..`...........`
	defb 0b2h,004h,080h,0b5h,00eh,030h,0b5h,00eh,080h,0b7h,004h,030h,0bbh,00eh,050h,0bdh	; aad0  .....0.....0..P.
	defb 004h,090h,0bfh,00eh,040h,000h,000h,003h,00ah,071h,097h,014h,060h,09fh,014h,060h	; aae0  ....@....q..`..`
	defb 0abh,00ah,081h,0adh,00ah,0a1h,0afh,00ah,0c1h,0b3h,00ah,091h,0b3h,00ah,0b1h,0b5h	; aaf0  ................
	defb 00ah,0d1h,0b7h,00ah,061h,0bbh,00ah,081h,0bdh,00ah,051h,0bdh,00ah,0b1h,0bfh,00ah	; ab00  ....a.....Q.....
	defb 041h,0bfh,00ah,071h,0bfh,00ah,0c1h,000h,000h,01bh,018h,050h,024h,018h,010h,024h	; ab10  A..q.......P$..$
	defb 018h,090h,07fh,002h,000h,09bh,002h,000h,09dh,01ah,080h,0a3h,01ah,080h,0a5h,01ah	; ab20  ................
	defb 0b0h,0afh,01ah,060h,0b3h,01ah,0b0h,0bbh,01ah,050h,000h,000h,007h,007h,00fh,00fh	; ab30  ...`.....P......
	defb 00fh,01fh,01fh,03fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0f8h,0f8h,0f0h,0f0h	; ab40  ...?............
	defb 0f0h,0e0h,0e0h,0e0h,000h,000h,000h,000h,001h,003h,00fh,07fh,03fh,07fh,07fh,0ffh	; ab50  ............?...
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fch,0f0h,0c0h,0c0h,0c0h,080h,080h	; ab60  ................
	defb 000h,000h,000h,000h,000h,000h,000h,001h,003h,007h,00fh,00fh,00fh,03fh,0ffh,0ffh	; ab70  .............?..
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0fch,0f8h,0f8h,0f0h,0f8h,0c0h,000h,000h	; ab80  ................
	defb 000h,000h,000h,000h,01fh,01fh,01fh,03fh,03fh,03fh,07fh,07fh,0f0h,0e0h,0e0h,0c0h	; ab90  .......???......
	defb 0c0h,0c0h,080h,080h,000h,000h,000h,000h,000h,001h,001h,003h,07fh,07fh,0ffh,0ffh	; aba0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0feh,0fch,080h,080h,000h,000h	; abb0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,007h,003h,007h,007h,00fh	; abc0  ................
	defb 01fh,03fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0f8h,0fch,0f8h,0f8h,0f0h	; abd0  .?..............
	defb 0e0h,0c0h,000h,000h,000h,003h,00fh,01fh,03fh,07fh,0ffh,0ffh,0ffh,0fch,0f0h,0e0h	; abe0  ........?.......
	defb 0c0h,080h,080h,000h,001h,001h,001h,003h,003h,003h,007h,007h,0ffh,0ffh,0ffh,0ffh	; abf0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0feh,0fch,0fch,0fch,0f8h,0f8h,03ch,03ch,078h,078h	; ac00  ............<<xx
	defb 079h,0f3h,0f7h,0ffh,01fh,03eh,07ch,0f9h,0f3h,0e3h,0c3h,087h,01fh,07fh,0f8h,0f0h	; ac10  y....>|.........
	defb 0e0h,0e0h,0c0h,0c0h,0c0h,0f0h,0f8h,078h,078h,079h,079h,079h,07fh,07fh,0ffh,0f7h	; ac20  .......xxyyy....
	defb 0f7h,0e7h,0e7h,0e7h,00fh,00fh,01eh,01eh,01eh,03ch,03ch,03ch,003h,007h,00fh,00eh	; ac30  .........<<<....
	defb 01eh,03ch,038h,078h,0e0h,0e0h,0e0h,0e0h,0e0h,0e1h,0e1h,0e1h,07eh,07eh,0feh,0f6h	; ac40  .<8x........~~..
	defb 0f6h,0eeh,0eeh,0eeh,00fh,00fh,01fh,01dh,03dh,03bh,07bh,073h,0f1h,0f1h,0e3h,0e3h	; ac50  ........=;{s....
	defb 0e3h,0c7h,0c7h,0c7h,0e0h,0e0h,0c0h,0c0h,0c0h,080h,080h,080h,001h,001h,001h,003h	; ac60  ................
	defb 003h,003h,007h,007h,0efh,0e7h,0e7h,0c7h,0c7h,0c3h,083h,083h,087h,087h,087h,0c7h	; ac70  ................
	defb 0c7h,0c7h,0e3h,0e0h,080h,080h,081h,081h,083h,0c7h,0ffh,0feh,0fbh,0f3h,0f3h,0f7h	; ac80  ................
	defb 0e7h,0c7h,08fh,00fh,0c7h,0c7h,0c7h,087h,087h,087h,007h,007h,078h,078h,079h,0f1h	; ac90  ............xxy.
	defb 0f3h,0f7h,0e7h,0efh,070h,0f0h,0ffh,0ffh,0ffh,080h,080h,000h,0e3h,0e3h,0e3h,0e7h	; aca0  ....p...........
	defb 0e7h,0e7h,0efh,0efh,0ceh,0ceh,0cfh,08fh,08fh,08fh,00fh,00fh,0f7h,0e7h,0c7h,0cfh	; acb0  ................
	defb 08fh,08fh,01eh,01eh,08fh,08fh,08fh,01eh,01eh,01eh,03ch,03ch,007h,008h,017h,014h	; acc0  ..........<<....
	defb 017h,014h,008h,007h,080h,040h,020h,0a0h,020h,0a0h,040h,080h,000h,008h,000h,000h	; acd0  .....@ . .@.....
	defb 000h,000h,000h,008h,000h,000h,000h,008h,000h,008h,008h,001h,000h,000h,000h,010h	; ace0  ................
	defb 000h,000h,010h,000h,000h,004h,000h,004h,000h,004h,000h,000h,000h,000h,000h,000h	; acf0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,008h,000h,008h,000h,008h	; ad00  ................
	defb 000h,008h,028h,000h,000h,000h,000h,008h,000h,002h,022h,022h,000h,000h,020h,000h	; ad10  ..(......."".. .
	defb 000h,002h,000h,020h,020h,000h,000h,000h,000h,022h,000h,000h,010h,000h,000h,000h	; ad20  ...  ...."......
	defb 000h,030h,000h,000h,000h,000h,010h,000h,000h,000h,020h,000h,000h,010h,004h,000h	; ad30  .0........ .....
	defb 000h,000h,004h,010h,000h,010h,000h,000h,000h,000h,07eh,07eh,0ffh,081h,07fh,080h	; ad40  ..........~~....
	defb 00bh,0f4h,000h,0ffh,000h,0ffh,000h,0ffh,000h,000h,006h,006h,09fh,098h,0ffh,040h	; ad50  ...............@
	defb 0ffh,020h,0d0h,02fh,008h,0f7h,000h,0ffh,000h,000h,000h,000h,001h,001h,0c7h,046h	; ad60  . ./...........F
	defb 0ffh,018h,07fh,080h,004h,0fbh,080h,07fh,000h,000h,08ch,08ch,0fdh,0f3h,0f9h,007h	; ad70  ................
	defb 0f1h,00fh,083h,07dh,002h,0feh,003h,0ffh,0ffh,000h,0ffh,000h,086h,079h,000h,0ffh	; ad80  ...}.........y..
	defb 000h,0ffh,000h,0ffh,03eh,0feh,0c0h,0c0h,0ffh,000h,0ffh,000h,003h,0fch,000h,0ffh	; ad90  ....>...........
	defb 030h,0ffh,05fh,0dfh,080h,080h,000h,000h,0ffh,000h,0fbh,004h,0d6h,029h,002h,0fdh	; ada0  0._..........)..
	defb 000h,0ffh,086h,0ffh,07fh,07eh,001h,001h,0e0h,080h,0bfh,0c1h,09fh,0e0h,0c7h,0f8h	; adb0  .....~..........
	defb 040h,07fh,060h,05fh,060h,05fh,070h,04fh,0c0h,0bfh,0e0h,09fh,060h,05fh,060h,05fh	; adc0  @.`_`_pO....`_`_
	defb 070h,06fh,038h,027h,030h,02fh,030h,02fh,040h,07fh,020h,03fh,020h,03fh,020h,03fh	; add0  po8'0/0/@. ? ? ?
	defb 020h,03fh,020h,03fh,020h,03fh,010h,01fh,018h,017h,038h,027h,030h,02fh,030h,02fh	; ade0   ? ? ?....8'0/0/
	defb 038h,027h,030h,02fh,060h,05fh,060h,05fh,020h,03fh,020h,03fh,020h,03fh,020h,03fh	; adf0  8'0/`_`_ ? ? ? ?
	defb 010h,01fh,010h,01fh,00dh,00fh,003h,003h,041h,07eh,043h,07ch,022h,03dh,026h,039h	; ae00  ........A~C|"=&9
	defb 048h,077h,080h,0ffh,0a1h,0dfh,07eh,07eh,0ffh,080h,0beh,0c1h,00ch,073h,040h,07fh	; ae10  Hw....~~.....s@.
	defb 040h,07fh,040h,07fh,03fh,03fh,000h,000h,055h,0aah,022h,0ddh,09ch,063h,055h,0aah	; ae20  @.@.??..U."..cU.
	defb 09ch,063h,022h,0ddh,055h,0aah,088h,077h,0f8h,0f8h,027h,0dfh,09ch,063h,055h,0aah	; ae30  .c".U..w..'..cU.
	defb 09ch,063h,022h,0ddh,055h,0aah,088h,077h,0ffh,0ffh,0ffh,0ffh,09ch,063h,055h,0aah	; ae40  .c".U..w.....cU.
	defb 09ch,063h,022h,0ddh,055h,0aah,088h,077h,0ffh,0ffh,0ffh,0ffh,09dh,063h,055h,0abh	; ae50  .c".U..w.....cU.
	defb 09dh,063h,023h,0ddh,055h,0abh,089h,077h,055h,0aah,022h,0ddh,09ch,063h,055h,0aah	; ae60  .c#.U..wU."..cU.
	defb 09ch,063h,022h,0ddh,0d5h,0eah,03fh,03fh,055h,0aah,022h,0ddh,09ch,063h,055h,0aah	; ae70  .c"...??U."..cU.
	defb 09ch,063h,022h,0ddh,05fh,0afh,0f0h,0f0h,055h,0abh,023h,0dfh,09fh,063h,055h,0abh	; ae80  .c"._...U.#..cU.
	defb 09dh,063h,023h,0ddh,0f5h,0fbh,00eh,00eh,057h,0abh,023h,0dfh,09fh,063h,057h,0abh	; ae90  .c#.....W.#..cW.
	defb 09fh,063h,023h,0dfh,05fh,0afh,0f3h,0f3h,0d5h,0eah,0e2h,0ddh,0dch,0e3h,0d5h,0eah	; aea0  .c#._...........
	defb 0dch,0e3h,0e2h,0ddh,0f5h,0fah,0cfh,0cfh,0fch,0fch,022h,0deh,09dh,063h,055h,0abh	; aeb0  .........."..cU.
	defb 09dh,063h,023h,0ddh,055h,0abh,089h,077h,055h,0aah,022h,0ddh,09ch,063h,055h,0aah	; aec0  .c#.U..wU."..cU.
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,055h,0abh,023h,0ddh,09dh,063h,055h,0abh	; aed0  ........U.#..cU.
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0d5h,0aah,0a2h,0ddh,09ch,0e3h,0d5h,0aah	; aee0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; aef0  ................
	defb 09ch,063h,022h,0ddh,055h,0aah,088h,077h,055h,0abh,023h,0ddh,09dh,063h,055h,0abh	; af00  .c".U..wU.#..cU.
	defb 09fh,063h,022h,0deh,056h,0aah,08eh,076h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; af10  .c".V..v........
	defb 09dh,063h,023h,0ddh,055h,0abh,089h,077h,07ch,07ch,0a3h,0dfh,09ch,063h,055h,0aah	; af20  .c#.U..w||...cU.
	defb 09ch,063h,022h,0ddh,055h,0aah,088h,077h,055h,0abh,023h,0ddh,09dh,063h,055h,0abh	; af30  .c".U..wU.#..cU.
	defb 09dh,063h,020h,0deh,056h,0aah,08fh,075h,055h,0aah,0a2h,0ddh,09ch,0e3h,0d5h,0aah	; af40  .c .V..uU.......
	defb 09ch,063h,022h,0ddh,055h,0aah,088h,077h,055h,0aah,022h,0ddh,09ch,063h,055h,0aah	; af50  .c".U..wU."..cU.
	defb 09ch,063h,022h,0ddh,0ffh,0ffh,0ffh,0ffh,055h,0abh,023h,0ddh,09dh,063h,055h,0abh	; af60  .c".....U.#..cU.
	defb 09dh,063h,023h,0ddh,0ffh,0ffh,0ffh,0ffh,055h,0aah,022h,0ddh,09ch,063h,055h,0aah	; af70  .c#.....U."..cU.
	defb 09fh,063h,023h,0dfh,057h,0abh,08bh,077h,0ffh,0ffh,0e2h,0ddh,0dch,0e3h,0d5h,0eah	; af80  .c#.W..w........
	defb 0dch,0e3h,0e2h,0ddh,0d5h,0eah,088h,077h,0eah,0d5h,0c4h,0fbh,0f9h,0c6h,0fah,0f5h	; af90  .......w........
	defb 0f9h,0e6h,0c4h,0fbh,0aah,0d5h,011h,0eeh,055h,0abh,023h,0dfh,09fh,067h,05fh,0afh	; afa0  ........U.#..g_.
	defb 09fh,063h,023h,0dfh,057h,0afh,0fbh,0fbh,0ffh,0feh,0feh,0fdh,09ch,07bh,055h,0bah	; afb0  .c#.W........{U.
	defb 09ch,063h,022h,0ddh,055h,0aah,088h,077h,088h,077h,055h,0aah,022h,0ddh,09ch,063h	; afc0  .c".U..w.wU."..c
	defb 055h,0bah,09ch,07bh,0feh,0fdh,0ffh,0feh,057h,0abh,023h,0dfh,09fh,063h,057h,0abh	; afd0  U..{....W.#..cW.
	defb 09fh,063h,023h,0dfh,057h,0abh,08bh,077h,055h,0abh,023h,0dfh,09fh,067h,05fh,0afh	; afe0  .c#.W..wU.#..g_.
	defb 09fh,063h,023h,0dfh,057h,0abh,08bh,077h,057h,0abh,023h,0dfh,09fh,063h,057h,0abh	; aff0  .c#.W..wW.#..cW.
	defb 09ch,063h,022h,0ddh,055h,0aah,0b8h,047h,0dfh,0dfh,023h,0ffh,09fh,063h,05fh,0afh	; b000  .c".U..G..#..c_.
	defb 09fh,067h,023h,0dfh,055h,0abh,088h,077h,008h,001h,002h,003h,002h,004h,009h,016h	; b010  .g#.U..w........
	defb 02bh,020h,020h,021h,00ah,016h,037h,02dh,016h,027h,00bh,016h,040h,041h,029h,02ah	; b020  +  !..7-.'..@A)*
	defb 009h,016h,050h,051h,018h,019h,00ch,01ah,01bh,01bh,01ah,01ch,002h,001h,003h,001h	; b030  ..PQ............
	defb 002h,004h,020h,020h,020h,020h,020h,021h,028h,016h,016h,016h,016h,027h,029h,030h	; b040  ..     !(....')0
	defb 042h,043h,029h,02ah,018h,02fh,052h,053h,018h,019h,01ah,01bh,02eh,038h,01bh,01ch	; b050  BC)*./RS.....8..
	defb 001h,001h,002h,003h,001h,00fh,020h,020h,020h,035h,016h,012h,016h,016h,031h,03bh	; b060  ......   5....1;
	defb 016h,010h,029h,030h,044h,045h,016h,013h,018h,02fh,054h,055h,016h,012h,01ah,01bh	; b070  ..)0DE.../TU....
	defb 01dh,01eh,01ah,013h,00bh,017h,026h,017h,017h,01fh,009h,016h,04ah,04bh,03ah,02ah	; b080  ......&.....JK:*
	defb 00ah,016h,05ah,05bh,039h,019h,00ch,016h,031h,03bh,016h,024h,00bh,016h,033h,023h	; b090  ..Z[9...1;.$..3#
	defb 023h,025h,00dh,005h,006h,007h,005h,015h,026h,017h,036h,02ch,026h,01fh,029h,029h	; b0a0  #%......&.6,&.))
	defb 048h,049h,03ah,02ah,018h,018h,058h,059h,039h,019h,028h,016h,016h,016h,016h,024h	; b0b0  HI:*..XY9.(....$
	defb 023h,023h,023h,023h,023h,025h,00eh,005h,006h,005h,007h,015h,017h,026h,034h,03eh	; b0c0  #####%.......&4>
	defb 026h,012h,029h,029h,046h,047h,016h,012h,018h,018h,056h,057h,016h,010h,016h,016h	; b0d0  &.))FG....VW....
	defb 032h,03ch,016h,011h,023h,023h,023h,03dh,016h,012h,00eh,006h,007h,005h,006h,014h	; b0e0  2<..###=........
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h	; b0f0  ................
	defb 003h,003h,003h,003h,000h,000h,000h,000h,0ffh,0ffh,0c0h,0c0h,0c0h,0c0h,0c3h,0c3h	; b100  ................
	defb 003h,003h,003h,003h,003h,003h,0ffh,0ffh,003h,003h,000h,000h,000h,000h,003h,003h	; b110  ................
	defb 0f3h,0f3h,003h,003h,003h,003h,003h,003h,0f0h,0f0h,000h,000h,000h,000h,0c0h,0c0h	; b120  ................
	defb 0c0h,0c0h,0c0h,0c0h,0c0h,0c0h,000h,000h,000h,000h,003h,003h,003h,003h,003h,003h	; b130  ................
	defb 000h,000h,000h,000h,0c0h,0c0h,0c0h,0c0h,033h,033h,033h,033h,033h,033h,030h,030h	; b140  ........33333300
	defb 07eh,07eh,060h,060h,060h,060h,000h,000h,0c0h,0c0h,0c0h,0c0h,0cfh,0cfh,0c0h,0c0h	; b150  ~~````..........
	defb 03fh,03fh,000h,000h,0ffh,0ffh,003h,003h,07fh,07fh,001h,001h,061h,061h,061h,061h	; b160  ??..........aaaa
	defb 081h,081h,081h,081h,081h,081h,081h,081h,003h,003h,0ffh,0ffh,003h,003h,003h,003h	; b170  ................
	defb 060h,060h,060h,060h,060h,060h,07fh,07fh,001h,001h,001h,001h,01fh,01fh,098h,098h	; b180  ``````..........
	defb 0c0h,0c0h,0c0h,0c0h,0ffh,0ffh,0c0h,0c0h,000h,000h,000h,000h,0ffh,0ffh,03fh,03fh	; b190  ..............??
	defb 001h,001h,001h,001h,061h,061h,061h,061h,098h,098h,099h,099h,099h,099h,099h,099h	; b1a0  ....aaaa........
	defb 0c0h,0c0h,0fch,0fch,0c0h,0c0h,0c0h,0c0h,001h,001h,001h,001h,000h,000h,000h,000h	; b1b0  ................
	defb 003h,003h,003h,003h,003h,003h,0f3h,0f3h,0b0h,0b0h,0bfh,0bfh,003h,003h,003h,003h	; b1c0  ................
	defb 000h,000h,03fh,03fh,030h,030h,030h,030h,030h,030h,030h,030h,030h,030h,030h,030h	; b1d0  ..??000000000000
	defb 07eh,07eh,006h,006h,006h,006h,066h,066h,066h,066h,066h,066h,07eh,07eh,006h,006h	; b1e0  ~~....ffffff~~..
	defb 0b0h,0b0h,0b0h,0b0h,0bfh,0bfh,000h,000h,000h,000h,000h,000h,0f0h,0f0h,030h,030h	; b1f0  ..............00
	defb 006h,006h,066h,066h,066h,066h,066h,066h,060h,060h,061h,061h,061h,061h,061h,061h	; b200  ..ffffff``aaaaaa
	defb 000h,000h,0bfh,0bfh,0b0h,0b0h,0b0h,0b0h,030h,030h,0f0h,0f0h,030h,030h,030h,030h	; b210  ........00..0000
	defb 066h,066h,006h,006h,006h,006h,07eh,07eh,061h,061h,060h,060h,060h,060h,07fh,07fh	; b220  ff....~~aa````..
	defb 0fch,0fch,0cch,0cch,0cch,0cch,0fch,0fch,0f3h,0f3h,033h,033h,033h,033h,033h,033h	; b230  ..........333333
	defb 0c3h,0c3h,0c3h,0c3h,0ffh,0ffh,0c0h,0c0h,033h,033h,033h,033h,033h,033h,033h,033h	; b240  ........33333333
	defb 060h,060h,060h,060h,07fh,07fh,060h,060h,001h,001h,001h,001h,0ffh,0ffh,001h,001h	; b250  ````..``........
	defb 066h,066h,066h,066h,066h,066h,066h,066h,01fh,01fh,001h,001h,000h,000h,000h,000h	; b260  ffffffff........
	defb 066h,066h,060h,060h,060h,060h,07fh,07fh,001h,001h,001h,001h,000h,000h,080h,080h	; b270  ff````..........
	defb 001h,001h,000h,000h,060h,060h,060h,060h,0ffh,0ffh,001h,001h,001h,001h,000h,000h	; b280  ....````........
	defb 000h,000h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,000h,000h	; b290  ................
	defb 0c0h,0c0h,0cch,0cch,0cfh,0cfh,0c0h,0c0h,003h,003h,000h,000h,0f0h,0f0h,03fh,03fh	; b2a0  ..............??
	defb 060h,060h,000h,000h,000h,000h,060h,060h,0c0h,0c0h,0fch,0fch,00fh,00fh,000h,000h	; b2b0  ``....``........
	defb 003h,003h,000h,000h,0c0h,0c0h,0ffh,0ffh,07fh,07fh,001h,001h,000h,000h,060h,060h	; b2c0  ..............``
	defb 080h,080h,0f8h,0f8h,01fh,01fh,000h,000h,080h,080h,0ffh,0ffh,07fh,07fh,007h,007h	; b2d0  ................
	defb 0c0h,0c0h,0cch,0cch,0cch,0cch,0cch,0cch,060h,060h,060h,060h,060h,060h,000h,000h	; b2e0  ........``````..
	defb 007h,007h,007h,007h,007h,007h,007h,007h,0c0h,0c0h,0ffh,0ffh,000h,000h,000h,000h	; b2f0  ................
	defb 0b0h,0b0h,0bfh,0bfh,000h,000h,000h,000h,0b0h,0b0h,0b0h,0b0h,0bfh,0bfh,003h,003h	; b300  ................
	defb 000h,000h,000h,000h,000h,000h,0ffh,0ffh,000h,000h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h	; b310  ................
	defb 0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,000h,000h,000h,000h,000h,000h,0bfh,0bfh,000h,000h	; b320  ................
	defb 000h,000h,000h,000h,0c0h,0c0h,0f0h,0f0h,03fh,03fh,000h,000h,000h,000h,000h,000h	; b330  ........??......
	defb 000h,000h,000h,000h,0bfh,0bfh,0b0h,0b0h,060h,060h,07fh,07fh,060h,060h,000h,000h	; b340  ........``..``..
	defb 000h,000h,060h,060h,060h,060h,060h,060h,07fh,07fh,060h,060h,060h,060h,07fh,07fh	; b350  ..``````..````..
	defb 000h,000h,000h,000h,060h,060h,060h,060h,0c0h,0c0h,000h,000h,000h,000h,0c3h,0c3h	; b360  ....````........
	defb 0c3h,0c3h,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h,060h,060h,060h,060h,07fh,07fh,001h,001h	; b370  ........````....
	defb 001h,001h,001h,001h,081h,081h,081h,081h,001h,001h,079h,079h,079h,079h,060h,060h	; b380  ..........yyyy``
	defb 081h,081h,081h,081h,0f9h,0f9h,001h,001h,0b0h,0b0h,0b0h,0b0h,000h,000h,000h,000h	; b390  ................
	defb 0ffh,0ffh,000h,000h,000h,000h,000h,000h,0b0h,0b0h,0b0h,0b0h,0b3h,0b3h,0b0h,0b0h	; b3a0  ................
	defb 000h,000h,000h,000h,0fch,0fch,000h,000h,07eh,07eh,060h,060h,060h,060h,060h,060h	; b3b0  ........~~``````
	defb 01fh,01fh,001h,001h,001h,001h,001h,001h,060h,060h,060h,060h,000h,000h,000h,000h	; b3c0  ........````....
	defb 07fh,07fh,060h,060h,060h,060h,060h,060h,0ffh,0ffh,000h,000h,000h,000h,001h,001h	; b3d0  ..``````........
	defb 00ch,00ch,00ch,00ch,0fch,0fch,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h,0c3h,0c3h,0c3h,0c3h	; b3e0  ................
	defb 0c3h,0c3h,0c3h,0c3h,003h,003h,003h,003h,0b0h,0b0h,000h,000h,000h,000h,0b3h,0b3h	; b3f0  ................
	defb 0b3h,0b3h,0b3h,0b3h,0b3h,0b3h,0b3h,0b3h,0bfh,0bfh,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h	; b400  ................
	defb 0ffh,0ffh,000h,000h,000h,000h,0ffh,0ffh,07eh,07eh,078h,078h,060h,060h,060h,060h	; b410  ........~~xx````
	defb 01fh,01fh,007h,007h,001h,001h,001h,001h,060h,060h,060h,060h,060h,060h,060h,060h	; b420  ........````````
	defb 001h,001h,001h,001h,001h,001h,001h,001h,060h,060h,000h,000h,000h,000h,07fh,07fh	; b430  ........``......
	defb 001h,001h,001h,001h,07fh,07fh,0e1h,0e1h,0c3h,0c3h,0c3h,0c3h,0c3h,0c3h,0c3h,0c3h	; b440  ................
	defb 000h,000h,000h,000h,001h,001h,0ffh,0ffh,0c0h,0c0h,0f0h,0f0h,03fh,03fh,003h,003h	; b450  ............??..
	defb 001h,001h,000h,000h,060h,060h,078h,078h,0f8h,0f8h,078h,078h,019h,019h,019h,019h	; b460  ....``xx..xx....
	defb 01eh,01eh,006h,006h,066h,066h,066h,066h,0c3h,0c3h,003h,003h,003h,003h,0ffh,0ffh	; b470  ....ffff........
	defb 066h,066h,066h,066h,006h,006h,01eh,01eh,019h,019h,018h,018h,018h,018h,01fh,01fh	; b480  ffff............
	defb 0ffh,0ffh,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h,078h,078h,060h,060h,060h,060h,060h,060h	; b490  ........xx``````
	defb 007h,007h,001h,001h,001h,001h,001h,001h,07eh,07eh,07eh,07eh,07eh,07eh,07eh,07eh	; b4a0  ........~~~~~~~~
	defb 01fh,01fh,01fh,01fh,01fh,01fh,01fh,01fh,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h	; b4b0  ................
	defb 000h,000h,003h,003h,0bfh,0bfh,0b0h,0b0h,000h,000h,000h,000h,0b0h,0b0h,0b0h,0b0h	; b4c0  ................
	defb 0b0h,0b0h,000h,000h,000h,000h,0bfh,0bfh,000h,000h,000h,000h,000h,07eh,000h,07eh	; b4d0  .............~.~
	defb 000h,006h,000h,006h,001h,007h,001h,007h,000h,000h,000h,000h,000h,018h,000h,018h	; b4e0  ................
	defb 000h,01fh,000h,01fh,0e0h,0ffh,0e0h,0ffh,000h,07eh,000h,07eh,000h,07eh,000h,07eh	; b4f0  .........~.~.~.~
	defb 000h,07eh,000h,07eh,001h,07fh,001h,07fh,000h,01fh,000h,01fh,000h,01fh,000h,01fh	; b500  .~.~............
	defb 000h,01fh,000h,01fh,0e0h,0ffh,0e0h,0ffh,000h,000h,000h,000h,000h,01fh,000h,01fh	; b510  ................
	defb 000h,01fh,000h,01fh,0e0h,0ffh,0e0h,0ffh,000h,060h,000h,060h,000h,07eh,000h,07eh	; b520  .........`.`.~.~
	defb 000h,07eh,000h,07eh,001h,07fh,001h,07fh,000h,001h,000h,001h,000h,01fh,000h,01fh	; b530  .~.~............
	defb 000h,01fh,000h,01fh,0e0h,0ffh,0e0h,0ffh,000h,03fh,000h,03fh,00ch,03fh,00ch,03fh	; b540  .........?.?.?.?
	defb 000h,003h,000h,003h,000h,003h,000h,003h,000h,019h,000h,019h,000h,019h,000h,019h	; b550  ................
	defb 000h,019h,000h,019h,006h,01fh,006h,01fh,000h,01fh,000h,01fh,000h,07fh,000h,07fh	; b560  ................
	defb 018h,07fh,018h,07fh,000h,060h,000h,060h,000h,0b0h,000h,0b0h,000h,0bfh,000h,0bfh	; b570  .....`.`........
	defb 000h,0bfh,000h,0bfh,003h,0bfh,003h,0bfh,000h,003h,000h,003h,000h,003h,000h,003h	; b580  ................
	defb 000h,003h,000h,003h,030h,0ffh,030h,0ffh,000h,0c0h,000h,0c0h,000h,0c0h,000h,0c0h	; b590  ....0.0.........
	defb 000h,0fch,000h,0fch,030h,0fch,030h,0fch,000h,000h,000h,000h,000h,0c0h,000h,0c0h	; b5a0  ....0.0.........
	defb 00ch,0ffh,00ch,0ffh,000h,000h,000h,000h,003h,0bfh,003h,0bfh,000h,000h,000h,000h	; b5b0  ................
	defb 000h,000h,000h,000h,000h,0bfh,000h,0bfh,00ch,0bfh,00ch,0bfh,000h,0b3h,000h,0b3h	; b5c0  ................
	defb 000h,0b0h,000h,0b0h,000h,0b0h,000h,0b0h,000h,060h,000h,060h,000h,060h,000h,060h	; b5d0  .........`.`.`.`
	defb 000h,060h,000h,060h,018h,07fh,018h,07fh,000h,0bfh,000h,0bfh,000h,000h,000h,000h	; b5e0  .`.`............
	defb 000h,000h,000h,000h,003h,0bfh,003h,0bfh,000h,001h,000h,001h,006h,0ffh,006h,0ffh	; b5f0  ................
	defb 000h,018h,000h,018h,000h,018h,000h,018h,000h,0c0h,000h,0c0h,000h,0c0h,000h,0c0h	; b600  ................
	defb 000h,0f0h,000h,0f0h,00ch,0ffh,00ch,0ffh,00ch,03fh,00ch,03fh,000h,0f0h,000h,0f0h	; b610  .........?.?....
	defb 000h,0c0h,000h,0c0h,000h,0c3h,000h,0c3h,00ch,0ffh,00ch,0ffh,000h,0c0h,000h,0c0h	; b620  ................
	defb 000h,0c0h,000h,0c0h,000h,0c0h,000h,0c0h,060h,0ffh,060h,0ffh,000h,001h,000h,001h	; b630  ........`.`.....
	defb 000h,001h,000h,001h,000h,001h,000h,001h,000h,0b0h,000h,0b0h,003h,0bfh,003h,0bfh	; b640  ................
	defb 000h,0b0h,000h,0b0h,000h,0b0h,000h,0b0h,002h,080h,066h,067h,07ah,002h,0a8h,002h	; b650  ..........fgz...
	defb 080h,068h,069h,07ah,002h,0a8h,002h,0a4h,06ah,06bh,07ah,002h,0a8h,002h,06ch,0a0h	; b660  .hiz....jkz...l.
	defb 06dh,07bh,081h,0a8h,002h,06eh,06fh,070h,07ch,001h,0a8h,002h,089h,071h,098h,07ah	; b670  m{...nop|....q.z
	defb 001h,0a8h,072h,003h,073h,074h,07dh,088h,0abh,075h,080h,076h,077h,07ah,001h,0a8h	; b680  ..r.st}..u.vwz..
	defb 002h,080h,068h,069h,07ah,001h,0a8h,002h,080h,068h,069h,07ah,002h,0a8h,002h,080h	; b690  ..hiz....hiz....
	defb 095h,096h,07ah,002h,0a8h,002h,080h,078h,079h,07ah,002h,0a8h,002h,080h,05ah,05bh	; b6a0  ..z....xyz....Z[
	defb 07ah,002h,0a8h,002h,080h,068h,069h,0a7h,081h,0a8h,002h,003h,05ch,069h,07ah,001h	; b6b0  z....hi.....\iz.
	defb 0a8h,002h,080h,05dh,05eh,062h,001h,0a8h,09ch,080h,068h,069h,063h,001h,0a8h,05fh	; b6c0  ...]^b....hic.._
	defb 080h,068h,069h,063h,001h,0a9h,002h,080h,068h,069h,09fh,001h,0a8h,060h,080h,068h	; b6d0  .hic....hi...`.h
	defb 069h,07ah,001h,0a8h,061h,080h,068h,069h,07ah,001h,0aah,072h,080h,068h,069h,064h	; b6e0  iz..a.hiz..r.hid
	defb 065h,0abh,00bh,080h,095h,096h,07ah,002h,0a9h,002h,080h,078h,079h,07ah,002h,0a8h	; b6f0  e.....z....xyz..
	defb 002h,080h,05ah,05bh,07ah,001h,0a8h,002h,080h,068h,069h,07ah,001h,0a8h,002h,087h	; b700  ..Z[z....hiz....
	defb 04ch,0a2h,056h,001h,0a8h,002h,00ah,04dh,079h,07ah,001h,0a8h,002h,080h,04eh,065h	; b710  L.V....Myz....Ne
	defb 0a1h,002h,0a8h,084h,089h,04fh,069h,07ah,001h,0abh,050h,09bh,068h,069h,064h,057h	; b720  .....Oiz..P.hidW
	defb 0abh,051h,087h,052h,053h,07ah,001h,0a8h,002h,00ah,054h,055h,07ah,001h,0a8h,002h	; b730  .Q.RSz....TUz...
	defb 080h,068h,069h,07ah,001h,0a8h,002h,080h,095h,096h,058h,059h,0a8h,002h,080h,078h	; b740  .hiz......XY...x
	defb 079h,07ah,001h,0a8h,002h,080h,02fh,030h,043h,09dh,0a8h,002h,080h,02fh,069h,07ah	; b750  yz..../0C..../iz
	defb 001h,0a8h,0a3h,005h,031h,032h,056h,001h,0a8h,008h,089h,033h,034h,044h,045h,0abh	; b760  ....12V....34DE.
	defb 002h,080h,068h,035h,046h,001h,0a8h,002h,080h,068h,036h,047h,001h,0a8h,037h,038h	; b770  ..h5F....h6G..78
	defb 039h,035h,046h,001h,0a8h,03ah,03bh,03ch,03dh,048h,049h,0aah,002h,086h,03ch,03eh	; b780  95F..:;<=HI...<>
	defb 046h,04ah,0a8h,03fh,087h,040h,041h,09ah,088h,0a8h,085h,042h,090h,091h,04bh,009h	; b790  FJ.?.@A....B..K.
	defb 0a8h,002h,080h,02fh,079h,07ah,001h,0a8h,002h,006h,01fh,079h,07ah,001h,0a8h,002h	; b7a0  .../yz.....yz...
	defb 087h,020h,099h,021h,022h,0a8h,002h,00ah,023h,024h,025h,026h,0a8h,06ch,065h,027h	; b7b0  . .!"...#$%&.le'
	defb 028h,09eh,029h,0a8h,002h,080h,068h,069h,07ah,001h,0a8h,082h,02ah,068h,069h,07ah	; b7c0  (.)...hiz...*hiz
	defb 001h,0abh,02bh,02ch,068h,069h,07ah,001h,0a8h,075h,02ah,02dh,02eh,07ah,001h,0a8h	; b7d0  ..+,hiz..u*-.z..
	defb 0a5h,007h,068h,069h,07ah,001h,0a8h,002h,080h,068h,036h,021h,00bh,0a8h,002h,080h	; b7e0  ..hiz....h6!....
	defb 095h,094h,046h,002h,0a8h,002h,080h,078h,079h,07ah,001h,0a8h,00bh,00ch,00dh,05bh	; b7f0  ..F....xyz.....[
	defb 07ah,001h,0a9h,00eh,00fh,010h,011h,07ah,001h,0a8h,002h,012h,05dh,0a6h,07ah,001h	; b800  z......z....].z.
	defb 0a8h,004h,072h,013h,014h,047h,001h,0a8h,015h,016h,017h,018h,046h,001h,0a8h,019h	; b810  ..r..G......F...
	defb 097h,068h,069h,07ah,001h,0a8h,002h,080h,068h,069h,07ah,001h,0a8h,002h,080h,068h	; b820  .hiz....hiz....h
	defb 069h,07ah,001h,0a8h,002h,080h,068h,069h,07ah,001h,0a8h,002h,080h,068h,01ah,01ch	; b830  iz....hiz....h..
	defb 01dh,0a8h,002h,080h,092h,093h,063h,01eh,0a8h,083h,01bh,078h,079h,07ah,001h,0a8h	; b840  ......c....xyz..
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b850  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b860  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b870  ................

; ======================================================================
; CODIGO 0xb880..0xb925  (165 bytes)
; ======================================================================


L_B880:
	call L_B8BD		;b880
	ld (0f100h),a		;b883
	ld hl,04002h		;b886
	call L_B8D6		;b889
	ld (0f102h),de		;b88c
	ld hl,0f87fh		;b890
	ld b,0a0h		;b893
	call L_BC4E		;b895
	call L_B8EA		;b898
	call L_B919		;b89b
	call L_B8A4		;b89e
	jp 0f120h		;b8a1
L_B8A4:
	ld a,0c9h		;b8a4
	ld (0fd9fh),a		;b8a6
	ld hl,0f220h		;b8a9
	ld (0fda0h),hl		;b8ac
	ld hl,00000h		;b8af
	ld (0f106h),hl		;b8b2
	ld a,(0f101h)		;b8b5
	ld h,040h		;b8b8
	jp 00024h		;b8ba   ; BIOS ENASLT - Switches to specified slot and page definitively
L_B8BD:
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
L_B8D6:
	ld a,(0f101h)		;b8d6
	ld c,a			;b8d9
	call L_B8DE		;b8da
	ld e,d			;b8dd
L_B8DE:
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
L_B8EA:
	ld hl,(0f102h)		;b8ea
	ld de,0f120h		;b8ed
	ld b,000h		;b8f0
L_B8F2:
	push bc			;b8f2
	push de			;b8f3
	ld a,(0f101h)		;b8f4
	call 0000ch		;b8f7   ; BIOS RDSLT - Reads the value of an address in another slot
	pop de			;b8fa
	pop bc			;b8fb
	ld (de),a			;b8fc
	inc hl			;b8fd
	inc de			;b8fe
	djnz L_B8F2		;b8ff
	ld bc,00100h		;b901
	ld hl,0f120h		;b904
L_B907:
	ld a,0a0h		;b907
	cpir		;b909
	ret nz			;b90b
	ret po			;b90c
	ld a,0fdh		;b90d
	cp (hl)			;b90f
	jr nz,L_B907		;b910
	ld de,0f104h		;b912
	ld (hl),d			;b915
	dec hl			;b916
	ld (hl),e			;b917
	ret			;b918
L_B919:
	ld hl,0b925h		;b919
	ld de,0f220h		;b91c
	ld bc,000aah		;b91f
	ldir		;b922
	ret			;b924

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb925..0xbc4e  (809 bytes)
DATA_B925:
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
	defb 0f5h,0cdh,024h,000h,0f1h,026h,080h,0c3h,024h,000h,03ah,008h,0f1h,0cdh,0aeh,040h	; b9c5  ..$..&..$.:....@
	defb 0dfh,0b9h,0f3h,0b9h,00ch,0bah,034h,0bah,06ah,0bah,0cdh,0c5h,0bbh,0cdh,0b5h,0bbh	; b9d5  ......4.j.......
	defb 021h,06eh,0bch,0cdh,087h,04fh,0cdh,049h,0bch,021h,008h,0f1h,034h,0c9h,0cdh,0d9h	; b9e5  !n...O.I.!..4...
	defb 0bbh,0dah,039h,0bbh,0f5h,021h,0b3h,0bch,0cdh,08bh,04fh,0f1h,0feh,00dh,0c0h,021h	; b9f5  ..9..!....O....!
	defb 0aah,0bch,0cdh,087h,04fh,018h,0e2h,03eh,001h,0cdh,0eah,000h,006h,00ah,0c5h,03eh	; ba05  ....O..>.......>
	defb 0eah,0cdh,0edh,000h,0c1h,0dah,084h,0bah,010h,0f4h,006h,006h,021h,00ah,0f1h,0e5h	; ba15  ............!...
	defb 0c5h,07eh,0cdh,0edh,000h,0dah,084h,0bah,0c1h,0e1h,023h,010h,0f2h,018h,0bah,0afh	; ba25  .~........#.....
	defb 0cdh,0eah,000h,0dah,084h,0bah,021h,0fbh,0bch,05eh,023h,056h,07bh,0b2h,028h,019h	; ba35  ......!..^#V{.(.
	defb 023h,04eh,023h,046h,023h,0e5h,0d5h,0c5h,01ah,0cdh,0edh,000h,0c1h,0d1h,038h,02eh	; ba45  #N#F#.........8.
	defb 013h,00bh,078h,0b1h,020h,0f0h,0e1h,018h,0e0h,0cdh,0f0h,000h,021h,0c0h,0bch,0cdh	; ba55  ..x. .......!...
	defb 087h,04fh,0c3h,0eeh,0b9h,0cdh,09fh,000h,0feh,059h,0cah,039h,0bbh,0feh,079h,0cah	; ba65  .O.......Y.9..y.
	defb 039h,0bbh,0feh,04eh,028h,003h,0feh,06eh,0c0h,0afh,032h,008h,0f1h,0c9h,0e1h,0cdh	; ba75  9..N(..n..2.....
	defb 0f0h,000h,021h,0aah,0bch,0cdh,08bh,04fh,021h,0b3h,0bch,0cdh,087h,04fh,0cdh,049h	; ba85  ..!....O!....O.I
	defb 0bch,03eh,001h,032h,008h,0f1h,0c9h,03ah,008h,0f1h,0cdh,0aeh,040h,0a8h,0bah,0bah	; ba95  .>.2...:....@...
	defb 0bah,0ceh,0bah,0cdh,0c5h,0bbh,0cdh,0b5h,0bbh,021h,08ch,0bch,0cdh,087h,04fh,0cdh	; baa5  .........!....O.
	defb 049h,0bch,0c3h,0eeh,0b9h,0cdh,0d9h,0bbh,0dah,039h,0bbh,0f5h,021h,0ebh,0bch,0cdh	; bab5  I........9..!...
	defb 08bh,04fh,0f1h,0feh,00dh,0c0h,0c3h,0eeh,0b9h,0cdh,0e1h,000h,0dah,091h,0bbh,006h	; bac5  .O..............
	defb 00ah,0c5h,0cdh,0e4h,000h,0c1h,0dah,091h,0bbh,0feh,0eah,020h,0ech,010h,0f2h,006h	; bad5  ........... ....
	defb 006h,021h,010h,0f1h,0c5h,0e5h,0cdh,0e4h,000h,0e1h,0c1h,077h,023h,010h,0f5h,021h	; bae5  .!.........w#..!
	defb 010h,0f1h,011h,00ah,0f1h,006h,006h,01ah,0beh,0c2h,0a3h,0bbh,023h,013h,010h,0f7h	; baf5  ............#...
	defb 021h,0e3h,0bch,0cdh,087h,04fh,0cdh,0ach,0bbh,0cdh,0e1h,000h,038h,07eh,021h,0fbh	; bb05  !....O......8~!.
	defb 0bch,05eh,023h,056h,07bh,0b2h,028h,019h,023h,04eh,023h,046h,023h,0e5h,0d5h,0c5h	; bb15  .^#V{.(.#N#F#...
	defb 0cdh,0e4h,000h,0c1h,0d1h,038h,064h,012h,013h,00bh,078h,0b1h,020h,0f0h,0e1h,018h	; bb25  .....8d...x. ...
	defb 0e0h,0cdh,0e7h,000h,0cdh,0bdh,0bbh,03ah,025h,0c1h,0a7h,020h,014h,021h,021h,0c3h	; bb35  .......:%.. .!!.
	defb 07eh,0feh,080h,038h,002h,036h,080h,021h,007h,0c3h,07eh,0feh,004h,030h,002h,036h	; bb45  ~..8.6.!..~..0.6
	defb 004h,0afh,032h,007h,0f1h,032h,025h,0c3h,03eh,0ffh,032h,048h,0c1h,032h,039h,0c1h	; bb55  ..2..2%.>.2H.29.
	defb 03eh,001h,032h,001h,0c2h,032h,01ah,0c1h,032h,03bh,0c1h,0cdh,076h,0bbh,0c3h,0bbh	; bb65  >.2..2..2;..v...
	defb 0f2h,03eh,001h,032h,023h,0c0h,032h,037h,0c0h,032h,04bh,0c0h,021h,098h,0c0h,036h	; bb75  .>.2#.27.2K.!..6
	defb 0ffh,022h,01ah,0c0h,022h,02eh,0c0h,022h,042h,0c0h,0c9h,0e1h,0cdh,0e7h,000h,021h	; bb85  ."..".."B......!
	defb 0ebh,0bch,0cdh,087h,04fh,0cdh,049h,0bch,03eh,001h,032h,008h,0f1h,0c9h,0cdh,0e1h	; bb95  ....O.I.>.2.....
	defb 000h,021h,0dch,0bch,0cdh,087h,04fh,011h,060h,058h,021h,010h,0f1h,0c3h,03ah,0bch	; bba5  .!....O.`X!...:.
	defb 021h,0f0h,0fbh,006h,028h,0c3h,04eh,0bch,021h,058h,0e0h,001h,020h,010h,018h,00fh	; bbb5  !...(.N.!X.. ...
	defb 021h,008h,008h,001h,0a0h,0a0h,0cdh,0d4h,0bbh,021h,0b0h,008h,001h,018h,0a0h,0afh	; bbc5  !........!......
	defb 057h,0c3h,00bh,04eh,0afh,032h,0ach,0fch,0cdh,09fh,000h,04fh,021h,009h,0f1h,011h	; bbd5  W..N.2.....O!...
	defb 00ah,0f1h,07eh,0cdh,0a9h,040h,079h,0feh,01bh,028h,028h,0feh,00dh,028h,026h,0feh	; bbe5  ..~..@y..((..(&.
	defb 008h,028h,028h,0d6h,030h,0feh,00ah,038h,00fh,0d6h,011h,0feh,01ah,038h,009h,0d6h	; bbf5  .((.0..8.....8..
	defb 020h,0feh,01ah,0d0h,079h,0d6h,020h,04fh,079h,012h,07eh,03ch,0feh,006h,030h,01fh	; bc05   ...y. Oy.~<..0.
	defb 077h,018h,01ch,037h,0c9h,0cdh,034h,0bch,03eh,00dh,0c9h,0ebh,04eh,036h,000h,01ah	; bc15  w..7..4.>...N6..
	defb 03dh,0fah,034h,0bch,012h,079h,0a7h,020h,004h,02bh,077h,018h,002h,0ebh,034h,011h	; bc25  =.4..y. .+w...4.
	defb 050h,030h,021h,00ah,0f1h,006h,006h,07eh,023h,0cdh,0a3h,04fh,07ah,0c6h,008h,057h	; bc35  P0!....~#..Oz..W
	defb 010h,0f5h,0afh,0c9h,021h,009h,0f1h,006h,00eh	; bc45  ....!....

; ======================================================================
; CODIGO 0xbc4e..0xbc54  (6 bytes)
; ======================================================================


L_BC4E:
	ld (hl),000h		;bc4e
	inc hl			;bc50
	djnz L_BC4E		;bc51
	ret			;bc53

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbc54..0xbd31  (221 bytes)
DATA_BC54:
	defb 01eh,000h,03eh,008h,0cdh,093h,000h,01eh,000h,03ch,0cdh,093h,000h,01eh,000h,03ch	; bc54  ..>......<.....<
	defb 0c3h,093h,000h,01eh,0bfh,03eh,007h,0c3h,093h,000h,010h,030h,053h,041h,056h,045h	; bc64  .....>.....0SAVE
	defb 000h,04dh,04fh,044h,045h,0feh,018h,040h,049h,04eh,050h,055h,054h,000h,046h,049h	; bc74  .MODE..@INPUT.FI
	defb 04ch,045h,000h,04eh,041h,04dh,045h,0ffh,010h,030h,04ch,04fh,041h,044h,000h,04dh	; bc84  LE.NAME..0LOAD.M
	defb 04fh,044h,045h,0feh,018h,040h,049h,04eh,050h,055h,054h,000h,046h,049h,04ch,045h	; bc94  ODE..@INPUT.FILE
	defb 000h,04eh,041h,04dh,045h,0ffh,028h,060h,053h,041h,056h,049h,04eh,047h,0ffh,028h	; bca4  .NAME.(`SAVING.(
	defb 060h,053h,041h,056h,045h,000h,045h,052h,052h,04fh,052h,0ffh,018h,070h,04fh,04bh	; bcb4  `SAVE.ERROR..pOK
	defb 03bh,0feh,020h,080h,059h,045h,053h,000h,000h,000h,000h,059h,0feh,020h,088h,04eh	; bcc4  ;. .YES....Y. .N
	defb 04fh,000h,000h,000h,000h,000h,04eh,0ffh,028h,060h,053h,04bh,049h,050h,0ffh,028h	; bcd4  O.....N.(`SKIP.(
	defb 060h,046h,04fh,055h,04eh,044h,0ffh,028h,060h,04ch,04fh,041h,044h,000h,045h,052h	; bce4  `FOUND.(`LOAD.ER
	defb 052h,04fh,052h,000h,000h,000h,0ffh,020h,0c1h,060h,000h,0a0h,0c2h,060h,000h,021h	; bcf4  ROR.... .`...`.!
	defb 0c3h,00ah,000h,040h,0c3h,080h,000h,080h,0c5h,030h,000h,080h,0c6h,001h,000h,000h	; bd04  ...@.....0......
	defb 0deh,020h,000h,000h,0dfh,090h,000h,0c0h,0dfh,020h,000h,010h,0c8h,008h,000h,007h	; bd14  . ....... ......
	defb 0c3h,001h,000h,000h,0c6h,010h,000h,000h,0c8h,010h,000h,000h,000h	; bd24  .............

; ======================================================================
; CODIGO 0xbd31..0xbd96  (101 bytes)
; ======================================================================


L_BD31:
	ld a,(0c205h)		;bd31
	or a			;bd34
	ld a,005h		;bd35
	jp nz,0432eh		;bd37
	ld a,b			;bd3a
	dec a			;bd3b
	jp z,L_BE91		;bd3c
	jp p,L_BF34		;bd3f
	ld a,02fh		;bd42
	call 041c1h		;bd44
	call L_BDA3		;bd47
	ld hl,01720h		;bd4a
	ld a,0cch		;bd4d
	ld bc,0d040h		;bd4f
	call 04941h		;bd52
	call 04cedh		;bd55
	ld a,0ffh		;bd58
	ld hl,01923h		;bd5a
	ld bc,0ca3ah		;bd5d
	call 04961h		;bd60
	ld hl,0bd96h		;bd63
	call 04fbeh		;bd66
	call L_BDF6		;bd69
	call L_BDB1		;bd6c
	ld hl,0d0c0h		;bd6f
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
; DATOS sin identificar  0xbd96..0xbda3  (13 bytes)
DATA_BD96:
	defb 028h,028h,050h,04fh,057h,045h,052h,040h,055h,050h,0ffh,03ch,0ffh	; bd96  ((POWER@UP.<.

; ======================================================================
; CODIGO 0xbda3..0xbe63  (192 bytes)
; ======================================================================


L_BDA3:
	ld hl,0e000h		;bda3
	ld bc,01414h		;bda6
	ld d,001h		;bda9
	ld a,077h		;bdab
	call 0527eh		;bdad
	ret			;bdb0
L_BDB1:
	ld de,02cb8h		;bdb1
	ld (0e800h),de		;bdb4
	ld (0e802h),de		;bdb8
	ld (0e804h),de		;bdbc
	ld a,0ffh		;bdc0
	ld (0e806h),a		;bdc2
	ld hl,0e800h		;bdc5
	call 04fc2h		;bdc8
	ld a,(0c845h)		;bdcb
	ld l,a			;bdce
	ld h,000h		;bdcf
	ld de,0b82ch		;bdd1
	push de			;bdd4
	call 04893h		;bdd5
	ld (0e802h),de		;bdd8
	ld hl,0e803h		;bddc
	pop de			;bddf
	ld b,002h		;bde0
	jp 04853h		;bde2
L_BDE5:
	push de			;bde5
	call 04893h		;bde6
	ld (0e802h),de		;bde9
	ld hl,0e802h		;bded
	pop de			;bdf0
	ld b,001h		;bdf1
	jp 04853h		;bdf3
L_BDF6:
	ld a,(0c840h)		;bdf6
	or a			;bdf9
	jr nz,L_BDFD		;bdfa
	inc a			;bdfc
L_BDFD:
	ld (0c4d2h),a		;bdfd
	ld b,006h		;be00
	call L_BE26		;be02
	jp L_BE08		;be05
L_BE08:
	ld a,043h		;be08
	ex af,af'			;be0a
	ld a,(0c4d2h)		;be0b
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
	ld hl,0e000h		;be1c
	ld bc,01414h		;be1f
	ex af,af'			;be22
	jp 051eah		;be23
L_BE26:
	ld hl,00090h		;be26
	ld de,0273eh		;be29
	ld a,b			;be2c
	or a			;be2d
	ret z			;be2e
L_BE2F:
	push bc			;be2f
	push hl			;be30
	push de			;be31
	call L_BE68		;be32
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
	ld hl,0be63h		;be47
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
; DATOS sin identificar  0xbe63..0xbe68  (5 bytes)
DATA_BE63:
	defb 031h,0ffh,055h,050h,0ffh	; be63

; ======================================================================
; CODIGO 0xbe68..0xbe89  (33 bytes)
; ======================================================================


L_BE68:
	push de			;be68
	push bc			;be69
	ld a,048h		;be6a
	ld bc,01010h		;be6c
	call 051eah		;be6f
	pop bc			;be72
	ld a,007h		;be73
	sub b			;be75
	ld hl,0be89h		;be76
	call 040a4h		;be79
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
; DATOS sin identificar  0xbe89..0xbe91  (8 bytes)
DATA_BE89:
	defb 000h,008h,010h,018h,020h,020h,028h,024h	; be89  ....  ($

; ======================================================================
; CODIGO 0xbe91..0xbf58  (199 bytes)
; ======================================================================


L_BE91:
	ld a,001h		;be91
	ld (0c104h),a		;be93
	ld a,(0c106h)		;be96
	ld c,a			;be99
	and 008h		;be9a
	jr nz,L_BF1D		;be9c
	ld a,c			;be9e
	and 004h		;be9f
	jr nz,L_BF14		;bea1
	ld a,c			;bea3
	and 010h		;bea4
	jr nz,L_BEB1		;bea6
	ld a,(0c108h)		;bea8
	rra			;beab
	rra			;beac
	ret nc			;bead
	jp 04348h		;beae
L_BEB1:
	ld a,(0c4d2h)		;beb1
	ld hl,0c840h		;beb4
	cp (hl)			;beb7
	jp z,04348h		;beb8
	ld hl,0be89h		;bebb
	call 040a4h		;bebe
	ld a,(0c845h)		;bec1
	sub (hl)			;bec4
	jr c,L_BF0C		;bec5
	ld (0c845h),a		;bec7
	ld a,(0c4d2h)		;beca
	cp 007h		;becd
	jr nz,L_BEE3		;becf
	ld a,(0c160h)		;bed1
	add a,001h		;bed4
	daa			;bed6
	jr z,L_BEEB		;bed7
	ld (0c160h),a		;bed9
	ld a,036h		;bedc
	call 041c1h		;bede
	jr L_BEEB		;bee1
L_BEE3:
	ld (0c840h),a		;bee3
	ld a,033h		;bee6
	call 041c1h		;bee8
L_BEEB:
	ld a,01eh		;beeb
	ld (0c104h),a		;beed
	call L_BDB1		;bef0
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
	ld a,004h		;bf0c
	call 041c1h		;bf0e
	jp 04348h		;bf11
L_BF14:
	ld a,(0c4d2h)		;bf14
	cp 002h		;bf17
	ret c			;bf19
	dec a			;bf1a
	jr L_BF24		;bf1b
L_BF1D:
	ld a,(0c4d2h)		;bf1d
	cp 007h		;bf20
	ret nc			;bf22
	inc a			;bf23
L_BF24:
	push af			;bf24
	call L_BE08		;bf25
	pop af			;bf28
	ld (0c4d2h),a		;bf29
	call L_BE08		;bf2c
	ld a,002h		;bf2f
	jp nz,041c1h		;bf31
L_BF34:
	ld a,(0c103h)		;bf34
	and 001h		;bf37
	call z,L_BE08		;bf39
	ld hl,0c104h		;bf3c
	dec (hl)			;bf3f
	ret nz			;bf40
	ld hl,01720h		;bf41
	ld bc,0d040h		;bf44
	call 0496dh		;bf47
	call 04cf8h		;bf4a
	call 0488dh		;bf4d
	ld b,005h		;bf50
	call 043edh		;bf52
	jp 0566eh		;bf55

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbf58..0xc000  (168 bytes)
DATA_BF58:
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
