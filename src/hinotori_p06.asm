; ==========================================================================
; HINOTORI - Konami (1987) - MSX - MegaROM RC-747 de 128 KB (Konami4) - banco 06 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS sin identificar  0xa000..0xad00  (3328 bytes)
DATA_A000:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,006h,007h,007h	; a000  ................
	defb 018h,018h,01fh,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a010  ................
	defb 000h,000h,000h,000h,000h,018h,078h,0f8h,044h,00ch,0fch,0cfh,09fh,0ffh,0afh,0ffh	; a020  ......x.D.......
	defb 0ffh,0ffh,0bfh,0ffh,0bfh,0bfh,0ffh,0dfh,0ffh,0ffh,0f5h,0cfh,0ffh,07eh,070h,07fh	; a030  .............~p.
	defb 01fh,01dh,01fh,0f5h,0f9h,0ffh,0f5h,0fdh,0ffh,0fdh,0ffh,0ffh,0fdh,0fdh,0ffh,0f3h	; a040  ................
	defb 0fbh,0ffh,0a7h,0f3h,0ffh,06eh,00eh,0feh,0f8h,0b8h,0f8h,0ffh,086h,0ffh,0aeh,0c0h	; a050  .....n..........
	defb 0ffh,0eah,0b5h,0ffh,0bdh,097h,0ffh,0efh,0dfh,0ffh,0f5h,0cfh,0ffh,07eh,070h,07fh	; a060  .............~p.
	defb 01fh,01dh,01fh,0fdh,061h,0ffh,071h,085h,0ffh,015h,0afh,0ffh,0bdh,0e9h,0ffh,0f3h	; a070  ....a.q.........
	defb 0fbh,0ffh,0a7h,0f3h,0ffh,06eh,00eh,0feh,0f8h,0b8h,0f8h,02ah,026h,03fh,077h,04eh	; a080  .....n.....*&?wN
	defb 07fh,0beh,0dch,0ffh,07fh,090h,0ffh,0d7h,023h,0ffh,07bh,09ch,0ffh,0d7h,080h,0ffh	; a090  ........#.{.....
	defb 07fh,07dh,07fh,0b2h,0c6h,0feh,0c5h,0f3h,0ffh,0fdh,07bh,0ffh,0fah,009h,0ffh,0b9h	; a0a0  .}........{.....
	defb 0c5h,0ffh,0f4h,071h,0ffh,0e9h,003h,0ffh,0f6h,0b6h,0f6h,00bh,0a1h,04bh,0a1h,08bh	; a0b0  ...q.........K..
	defb 0a1h,0cbh,0a1h,00bh,0a2h,04bh,0a2h,08bh,0a2h,0cbh,0a2h,00bh,0a3h,04bh,0a3h,00bh	; a0c0  .....K.......K..
	defb 0a5h,04bh,0a5h,00bh,0a5h,04bh,0a5h,00bh,0a5h,04bh,0a5h,00bh,0a5h,04bh,0a5h,04bh	; a0d0  .K...K...K...K.K
	defb 0a5h,08bh,0a5h,04bh,0a6h,08bh,0a6h,0cbh,0a6h,00bh,0a7h,04bh,0a7h,08bh,0a7h,08bh	; a0e0  ...K.......K....
	defb 0a3h,0cbh,0a3h,08bh,0a4h,0cbh,0a4h,00bh,0a4h,04bh,0a4h,0cbh,0a5h,00bh,0a6h,04bh	; a0f0  .........K.....K
	defb 0a6h,08bh,0a6h,0cbh,0a6h,00bh,0a7h,04bh,0a7h,08bh,0a7h,000h,000h,000h,000h,000h	; a100  .......K........
	defb 000h,007h,00fh,00fh,00fh,00fh,03fh,067h,0cfh,0ffh,0ffh,000h,000h,000h,000h,000h	; a110  ......?g........
	defb 000h,080h,0c0h,0cch,0f2h,0deh,0eeh,0feh,0fah,0feh,0fch,000h,000h,000h,000h,000h	; a120  ................
	defb 000h,007h,00eh,00fh,00eh,00fh,03bh,05bh,0f1h,0a1h,0b0h,000h,000h,000h,000h,000h	; a130  ......;[........
	defb 000h,080h,0c0h,0cch,0feh,06ah,056h,0c6h,08eh,01ah,01ch,0ffh,0ffh,06eh,01fh,01fh	; a140  .....jV......n..
	defb 01fh,00fh,00eh,00fh,01fh,01fh,03fh,03fh,03fh,01fh,003h,0e0h,0a0h,070h,0d0h,090h	; a150  ......???....p..
	defb 0f0h,0fch,0dch,0fch,09ch,0dch,0f8h,0d8h,090h,0e0h,080h,0dch,0dfh,06dh,01fh,018h	; a160  .............m..
	defb 01ch,00fh,00ah,00fh,01fh,01fh,03fh,03fh,03fh,01fh,003h,060h,0e0h,0f0h,0f0h,070h	; a170  ......???..`...p
	defb 030h,0dch,0bch,0dch,0fch,0bch,0b8h,038h,0f0h,0e0h,080h,000h,000h,000h,000h,000h	; a180  0......8........
	defb 007h,00fh,00fh,00fh,00fh,03fh,04fh,0dfh,0ffh,0ffh,0ffh,000h,000h,000h,000h,000h	; a190  .....?O.........
	defb 080h,0c0h,0c0h,0c0h,0f0h,0d8h,0e6h,0ffh,0fbh,0f9h,0fdh,000h,000h,000h,000h,000h	; a1a0  ................
	defb 007h,00eh,00fh,00dh,00eh,036h,076h,0e3h,0a2h,0b0h,0d8h,000h,000h,000h,000h,000h	; a1b0  .....6v.........
	defb 080h,0c0h,040h,0c0h,0f0h,0a8h,09eh,005h,00fh,01fh,07bh,07fh,02eh,01fh,01fh,01fh	; a1c0  ..@.......{.....
	defb 01fh,01ch,013h,00bh,037h,073h,07fh,07fh,03fh,00fh,000h,0e7h,066h,0d0h,010h,0b0h	; a1d0  ....7s..?...f...
	defb 0f0h,0f0h,090h,0d8h,0fch,09ch,0fch,0f8h,0e0h,0c0h,000h,05fh,02dh,017h,018h,018h	; a1e0  ..........._-...
	defb 01fh,014h,01fh,00fh,03fh,07fh,073h,07fh,03fh,00fh,000h,0a5h,0e6h,0f0h,0f0h,070h	; a1f0  ....?.s.?......p
	defb 0d0h,0b0h,0f0h,0b8h,0bch,0fch,0fch,0f8h,0e0h,0c0h,000h,000h,000h,000h,000h,000h	; a200  ................
	defb 000h,007h,00fh,00fh,00fh,00fh,03fh,05fh,07fh,07fh,07fh,000h,000h,000h,000h,000h	; a210  ......?_........
	defb 000h,080h,0c0h,0c0h,0c0h,0fch,08eh,0eah,0f9h,0fdh,0ffh,000h,000h,000h,000h,000h	; a220  ................
	defb 000h,007h,00ch,00fh,00bh,00bh,03dh,06dh,047h,062h,050h,000h,000h,000h,000h,000h	; a230  ......=mGbP.....
	defb 000h,080h,0c0h,040h,0c0h,0fch,0f6h,01eh,00fh,00fh,015h,03fh,00fh,00eh,01fh,01fh	; a240  ...@.......?....
	defb 01fh,017h,01eh,013h,033h,07bh,07fh,073h,03dh,03fh,01ch,0fbh,0e7h,0d9h,096h,030h	; a250  ....3{.s=?.....0
	defb 0f0h,0d0h,060h,0e0h,0f0h,0fch,0fch,0fch,0d8h,080h,000h,03ch,00fh,00dh,017h,010h	; a260  ..`........<....
	defb 018h,01fh,016h,01fh,03fh,07fh,07bh,07fh,033h,03fh,01ch,07bh,0e5h,07fh,0f6h,0f0h	; a270  ....?.{.3?.{....
	defb 050h,0f0h,060h,0e0h,0f0h,0fch,0fch,0fch,0d8h,080h,000h,000h,000h,000h,000h,000h	; a280  P.`.............
	defb 003h,007h,007h,01fh,02fh,07fh,0ffh,0ffh,0ffh,07fh,00eh,000h,000h,000h,000h,000h	; a290  ..../...........
	defb 080h,0c0h,0e0h,0f8h,01ch,032h,0bah,0ffh,0ffh,0f7h,069h,000h,000h,000h,000h,000h	; a2a0  .....2....i.....
	defb 003h,007h,006h,01dh,036h,064h,0a0h,0b0h,0d0h,077h,00dh,000h,000h,000h,000h,000h	; a2b0  ....6d...w......
	defb 080h,040h,0e0h,0f8h,0e4h,0deh,056h,01fh,00fh,0d5h,0efh,01fh,01fh,01fh,01fh,01fh	; a2c0  .@....V.........
	defb 016h,01eh,009h,00ch,007h,003h,000h,000h,000h,000h,000h,0feh,0f8h,0f8h,0f8h,0d0h	; a2d0  ................
	defb 090h,060h,000h,080h,080h,000h,000h,000h,000h,000h,000h,017h,010h,018h,01fh,017h	; a2e0  .`..............
	defb 01eh,01eh,00fh,00bh,004h,003h,000h,000h,000h,000h,000h,09eh,028h,078h,0c8h,0b0h	; a2f0  ............(x..
	defb 0f0h,060h,000h,080h,080h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a300  .`..............
	defb 000h,000h,007h,00fh,00fh,00fh,01fh,07fh,09fh,0bfh,0ffh,000h,000h,000h,000h,000h	; a310  ................
	defb 000h,000h,080h,0c0h,0c0h,0c0h,0f0h,0dch,0e6h,0fah,0fbh,000h,000h,000h,000h,000h	; a320  ................
	defb 000h,000h,007h,00ch,00fh,00fh,01dh,06eh,0e6h,0c6h,0c3h,000h,000h,000h,000h,000h	; a330  .......n........
	defb 000h,000h,080h,0c0h,040h,0c0h,0f0h,0ech,09eh,086h,00fh,0ffh,0ffh,07fh,02fh,01fh	; a340  ....@........./.
	defb 01fh,01fh,01fh,012h,01fh,03fh,067h,077h,07fh,03fh,00fh,0fbh,0fdh,0fdh,067h,0f7h	; a350  .....?gw.?....g.
	defb 0ffh,0f9h,0d7h,090h,0dch,0fch,0cch,0dch,0f8h,0f0h,0c0h,0a2h,098h,05fh,02ch,017h	; a360  ............._,.
	defb 018h,018h,017h,01eh,013h,037h,07bh,07bh,07fh,03fh,00fh,00fh,03bh,0ffh,0e5h,0d7h	; a370  .....7{{.?..;...
	defb 03dh,03fh,0f7h,0f0h,0fch,0dch,0bch,0bch,0f8h,0f0h,0c0h,000h,000h,000h,007h,00fh	; a380  =?..............
	defb 00fh,00fh,00fh,03fh,067h,0cfh,0ffh,0ffh,0ffh,0ffh,06eh,000h,000h,000h,080h,0c0h	; a390  ...?g.....n.....
	defb 0cch,0f2h,0deh,0eeh,0feh,0fah,0feh,0fch,0e0h,0a0h,060h,000h,000h,000h,007h,00eh	; a3a0  ..........`.....
	defb 00fh,00eh,00fh,03bh,05bh,0f1h,0a1h,0b0h,0dch,0dfh,06dh,000h,000h,000h,080h,0c0h	; a3b0  ...;[.....m.....
	defb 0cch,0feh,06ah,056h,0c6h,08eh,01ah,01ch,060h,0e0h,0e0h,010h,010h,00ah,003h,000h	; a3c0  ..jV....`.......
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,008h,018h,050h,0c0h,000h	; a3d0  .............P..
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,007h,000h,000h,000h,000h	; a3e0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0c0h,000h,000h,000h,000h	; a3f0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,007h,00fh,00fh	; a400  ................
	defb 00fh,00fh,03fh,04fh,0dfh,0ffh,0ffh,0ffh,07fh,02eh,01fh,000h,000h,080h,0c0h,0c0h	; a410  ..?O............
	defb 0c0h,0f0h,0d8h,0e6h,0ffh,0fbh,0f9h,0fdh,0e7h,066h,0d0h,000h,000h,007h,00eh,00fh	; a420  .........f......
	defb 00dh,00eh,036h,076h,0e3h,0a2h,0b0h,0d8h,05fh,02dh,017h,000h,000h,080h,0c0h,040h	; a430  ..6v...._-.....@
	defb 0c0h,0f0h,0a8h,09eh,005h,00fh,01fh,07bh,0a5h,0e6h,0f0h,000h,010h,000h,005h,000h	; a440  .......{........
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,010h,020h,000h,000h	; a450  ............. ..
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,00fh,003h,000h,000h,000h	; a460  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0e0h,080h,000h,000h,000h	; a470  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,007h,00fh	; a480  ................
	defb 00fh,00fh,00fh,03fh,05fh,07fh,07fh,07fh,03fh,00fh,00eh,000h,000h,000h,080h,0c0h	; a490  ...?_...?.......
	defb 0c0h,0c0h,0fch,08eh,0eah,0f9h,0fdh,0ffh,0fbh,0e7h,0e9h,000h,000h,000h,007h,00ch	; a4a0  ................
	defb 00fh,00bh,00bh,03dh,06dh,047h,062h,050h,03ch,00fh,00dh,000h,000h,000h,080h,0c0h	; a4b0  ...=mGbP<.......
	defb 040h,0c0h,0fch,0f6h,01eh,00fh,00fh,015h,07bh,0e5h,06fh,010h,010h,00bh,001h,000h	; a4c0  @.......{.o.....
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,010h,010h,060h,080h,000h	; a4d0  .............`..
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,007h,000h,000h,000h,000h	; a4e0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0c6h,000h,000h,000h,000h	; a4f0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a500  ................
	defb 000h,000h,000h,007h,01fh,03fh,03fh,03fh,01fh,007h,000h,000h,000h,000h,000h,000h	; a510  .....???........
	defb 000h,000h,000h,0e0h,0f8h,0fch,0fch,0fch,0f8h,0e0h,000h,000h,000h,000h,000h,000h	; a520  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a530  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,003h	; a540  ................
	defb 004h,007h,00fh,00fh,00fh,03fh,06fh,0dfh,0ffh,0ffh,0ffh,000h,000h,000h,006h,009h	; a550  .....?o.........
	defb 091h,09bh,0d7h,0cfh,0d9h,0f9h,0dbh,0ffh,0ffh,0feh,0fch,000h,000h,000h,000h,003h	; a560  ................
	defb 007h,007h,00ch,00fh,00fh,03dh,05eh,0a6h,0c6h,0a3h,0a3h,000h,000h,000h,006h,00fh	; a570  .....=^.........
	defb 09fh,09dh,0dbh,049h,05fh,0efh,0fdh,09bh,08dh,082h,00ch,0ffh,07fh,00eh,01fh,01fh	; a580  ...I_...........
	defb 01fh,01fh,01ch,01bh,00fh,03bh,079h,07fh,07fh,03fh,00fh,0f8h,0e0h,070h,0d0h,0d0h	; a590  .....;y..?...p..
	defb 0f0h,0f0h,0f0h,090h,0d8h,0fch,09ch,0fch,0f8h,0e0h,0c0h,0dah,07fh,00dh,017h,013h	; a5a0  ................
	defb 018h,01fh,014h,017h,00fh,03fh,07fh,079h,07fh,03fh,00fh,038h,0e0h,0f0h,0f0h,0b0h	; a5b0  .....?.y.?.8....
	defb 030h,0d0h,0b0h,0f0h,0b8h,0bch,0fch,0fch,0f8h,0e0h,0c0h,000h,003h,004h,007h,00fh	; a5c0  0...............
	defb 00fh,00fh,03fh,06fh,0dfh,0ffh,0ffh,0ffh,0ffh,07fh,00eh,006h,009h,091h,09bh,0d7h	; a5d0  ..?o............
	defb 0cfh,0d9h,0f9h,0dbh,0ffh,0ffh,0feh,0fch,0f8h,0e0h,060h,000h,003h,007h,007h,00ch	; a5e0  ..........`.....
	defb 00fh,00fh,03dh,05eh,0a6h,0c6h,0a3h,0a3h,0dah,07fh,00dh,006h,00fh,09fh,09dh,0dbh	; a5f0  ..=^............
	defb 049h,05fh,0efh,0fdh,09bh,08dh,082h,00ch,038h,0e0h,0e0h,000h,010h,000h,005h,000h	; a600  I_......8.......
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,010h,010h,020h,000h,000h	; a610  ............. ..
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,007h,000h,000h,000h,000h	; a620  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0c0h,000h,000h,000h,000h	; a630  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,004h,006h,043h,023h,027h	; a640  .............C#'
	defb 06fh,07fh,03fh,03fh,07fh,0fch,0fch,0eeh,0fch,0f6h,072h,006h,008h,010h,090h,0b8h	; a650  o.??......r.....
	defb 0bch,03eh,01eh,0deh,0ffh,0ffh,07bh,073h,076h,0feh,0cch,000h,000h,000h,001h,001h	; a660  .>....{sv.......
	defb 003h,002h,006h,007h,03fh,06fh,047h,047h,063h,023h,001h,000h,000h,000h,000h,000h	; a670  ....?oGGc#......
	defb 010h,018h,00ch,00ch,086h,086h,0ceh,0deh,0dch,08ch,000h,00eh,01eh,01ch,039h,03bh	; a680  ..............9;
	defb 03bh,03bh,01dh,01fh,00fh,047h,067h,03fh,01eh,000h,000h,0e0h,070h,0b0h,0d8h,0e8h	; a690  ;;...Gg?....p...
	defb 068h,068h,0bah,0bbh,0afh,0bfh,01eh,00ch,000h,000h,000h,001h,007h,00fh,00fh,00eh	; a6a0  hh..............
	defb 00eh,00eh,007h,007h,003h,003h,002h,004h,000h,000h,000h,080h,0e0h,0e0h,070h,030h	; a6b0  ..............p0
	defb 030h,030h,010h,010h,012h,00ch,000h,000h,000h,000h,000h,001h,001h,002h,006h,006h	; a6c0  00..............
	defb 007h,003h,003h,007h,00fh,01fh,03bh,037h,06fh,06fh,05bh,010h,020h,044h,088h,0d8h	; a6d0  ......;7oo[. D..
	defb 05ch,06eh,0eah,0eah,0b4h,0b8h,0f8h,0fch,08ch,036h,07ah,000h,000h,000h,000h,000h	; a6e0  \n.......6z.....
	defb 002h,001h,001h,003h,003h,006h,00ch,018h,01ah,035h,035h,000h,000h,000h,000h,000h	; a6f0  .........55.....
	defb 008h,004h,044h,044h,048h,040h,080h,070h,0f8h,0c8h,084h,05bh,04dh,02dh,026h,013h	; a700  ..DDH@.p...[M-&.
	defb 079h,06dh,0dch,0deh,0deh,0deh,0ech,071h,07fh,03fh,01eh,07ah,09ah,0f6h,0ech,05ch	; a710  ym.....q.?.z...\
	defb 09ch,0eeh,0ebh,0f5h,0f5h,0f5h,0f3h,0e7h,0feh,07ch,000h,035h,032h,01bh,01dh,00eh	; a720  .........|.52...
	defb 007h,033h,073h,061h,061h,073h,03fh,03fh,01eh,000h,000h,0d4h,0e4h,00ch,098h,0f8h	; a730  .3saas??........
	defb 070h,070h,0b6h,0bah,09ah,09ah,01eh,03ch,018h,000h,000h,000h,000h,000h,000h,001h	; a740  pp.....<........
	defb 001h,003h,003h,001h,000h,010h,024h,007h,047h,003h,031h,040h,040h,040h,080h,080h	; a750  ......$.G.1@@@..
	defb 000h,000h,080h,0c4h,0c2h,0e2h,0a2h,024h,06ch,0d8h,090h,000h,000h,000h,000h,000h	; a760  .......$l.......
	defb 000h,000h,000h,000h,000h,000h,000h,000h,002h,001h,000h,000h,000h,000h,000h,000h	; a770  ................
	defb 000h,000h,000h,080h,000h,040h,040h,0c0h,0c0h,080h,000h,018h,008h,00ch,00ch,01ch	; a780  .....@@.........
	defb 018h,038h,078h,070h,0f0h,0d0h,0dah,06ch,030h,000h,000h,030h,030h,038h,03ch,01eh	; a790  .8xp...l0..008<.
	defb 01ah,00bh,00bh,00eh,014h,038h,000h,000h,000h,000h,000h,000h,000h,000h,000h,008h	; a7a0  .....8..........
	defb 000h,010h,030h,020h,060h,060h,070h,030h,000h,000h,000h,000h,000h,010h,018h,00ch	; a7b0  ..0 ``p0........
	defb 00ch,006h,006h,004h,008h,000h,000h,000h,000h,000h,000h,054h,055h,03ah,05ah,05bh	; a7c0  ...........TU:Z[
	defb 039h,05fh,060h,000h,000h,000h,068h,069h,000h,000h,000h,000h,000h,000h,07ch,07dh	; a7d0  9_`...hi......|}
	defb 000h,000h,000h,017h,056h,058h,05ch,05dh,05eh,061h,01eh,000h,000h,000h,06ah,06bh	; a7e0  ....VX\]^a....jk
	defb 000h,000h,000h,000h,000h,000h,07eh,04fh,000h,000h,000h,018h,046h,057h,059h,062h	; a7f0  ......~O....FWYb
	defb 063h,021h,01dh,035h,042h,06ch,06dh,06eh,06fh,043h,036h,000h,000h,03ch,07fh,080h	; a800  c!.5BlmnoC6..<..
	defb 038h,000h,000h,000h,019h,01ah,064h,065h,020h,01ch,000h,070h,071h,072h,073h,074h	; a810  8.....de ..pqrst
	defb 075h,076h,077h,000h,000h,081h,082h,083h,084h,000h,000h,000h,000h,01fh,066h,047h	; a820  uvw...........fG
	defb 01bh,000h,000h,02dh,078h,048h,049h,04ah,04bh,02eh,02fh,000h,000h,085h,086h,087h	; a830  ...-xHIJK./.....
	defb 088h,000h,000h,000h,000h,03eh,067h,040h,034h,000h,000h,000h,033h,04ch,079h,029h	; a840  .....>g@4...3Ly)
	defb 02bh,000h,000h,000h,03dh,089h,050h,052h,08ah,037h,000h,000h,000h,08dh,027h,026h	; a850  +...=.PR.7....'&
	defb 025h,03fh,000h,000h,000h,07ah,04dh,02ah,000h,000h,000h,000h,044h,030h,053h,08bh	; a860  %?...zM*....D0S.
	defb 08ch,03bh,000h,000h,000h,000h,028h,024h,023h,022h,000h,000h,000h,07bh,045h,02ch	; a870  .;....($#"...{E,
	defb 000h,000h,000h,000h,000h,032h,031h,051h,000h,000h,000h,000h,040h,041h,000h,000h	; a880  .....21Q....@A..
	defb 000h,000h,000h,000h,000h,000h,000h,000h,066h,06ah,06bh,042h,043h,044h,045h,000h	; a890  ........fjkBCDE.
	defb 000h,000h,000h,000h,000h,000h,066h,067h,068h,06ch,06dh,047h,022h,020h,046h,000h	; a8a0  ......fghlmG" F.
	defb 000h,000h,060h,061h,062h,064h,065h,01fh,025h,028h,06eh,048h,023h,021h,00fh,04ch	; a8b0  ..`abde.%(nH#!.L
	defb 04dh,00eh,029h,007h,063h,018h,01ah,01bh,026h,06fh,050h,049h,04ah,024h,04bh,04eh	; a8c0  M.).c...&oPIJ$KN
	defb 00dh,009h,008h,006h,015h,016h,019h,01ch,027h,051h,000h,000h,030h,031h,04fh,032h	; a8d0  ........'Q..01O2
	defb 00ch,00ah,005h,011h,013h,017h,01dh,01eh,052h,000h,000h,000h,000h,080h,08fh,033h	; a8e0  ........R......3
	defb 034h,001h,001h,012h,014h,053h,054h,055h,056h,000h,057h,000h,000h,081h,035h,036h	; a8f0  4....STUV.W...56
	defb 037h,00bh,02ah,010h,004h,090h,091h,05bh,05ah,059h,058h,000h,000h,09bh,0a1h,0a3h	; a900  7.*....[ZYX.....
	defb 0a2h,038h,002h,003h,03bh,03ch,092h,07ah,000h,000h,000h,070h,071h,072h,09ch,08eh	; a910  .8..;<.z...pqr..
	defb 082h,098h,039h,03ah,03dh,03eh,094h,000h,079h,000h,000h,000h,000h,000h,077h,02bh	; a920  ..9:=>..y.....w+
	defb 09dh,09eh,09ah,05ch,03fh,095h,093h,000h,07eh,000h,000h,073h,074h,075h,076h,085h	; a930  ...\?...~..stuv.
	defb 086h,07bh,09fh,05dh,096h,0a0h,0a5h,069h,07dh,000h,000h,000h,000h,083h,084h,087h	; a940  .{.]...i}.......
	defb 000h,089h,08ah,08bh,08ch,097h,07ch,07fh,099h,05eh,05fh,000h,000h,088h,000h,000h	; a950  ......|..^_.....
	defb 000h,000h,000h,000h,08dh,078h,0a4h,02ch,02dh,02eh,02fh,007h,005h,010h,006h,00dh	; a960  .....x.,-./.....
	defb 004h,00eh,00fh,00dh,004h,00eh,00fh,007h,005h,010h,006h,007h,005h,010h,006h,00dh	; a970  ................
	defb 004h,00eh,00fh,00dh,004h,00eh,00fh,007h,005h,010h,006h,013h,014h,015h,016h,011h	; a980  ................
	defb 012h,008h,00bh,011h,012h,008h,009h,013h,014h,015h,016h,011h,012h,015h,016h,011h	; a990  ................
	defb 012h,008h,00bh,011h,012h,008h,009h,013h,014h,015h,016h,000h,000h,000h,002h,00ch	; a9a0  ................
	defb 00ah,003h,001h,002h,00ah,003h,001h,001h,000h,001h,002h,003h,001h,003h,002h,00ch	; a9b0  ................
	defb 00ah,003h,001h,002h,00ah,003h,001h,001h,000h,000h,000h,0d1h,0a9h,026h,0aah,07ah	; a9c0  .............&.z
	defb 0aah,048h,090h,065h,092h,064h,062h,085h,094h,071h,061h,075h,060h,074h,06fh,079h	; a9d0  .H.e.db..qau`toy
	defb 0feh,030h,0a0h,06fh,06fh,092h,06bh,061h,069h,069h,08ah,08ch,082h,091h,06fh,0a9h	; a9e0  .0.oo.kaii....o.
	defb 075h,08dh,068h,092h,08dh,075h,0feh,038h,0b0h,062h,07eh,089h,065h,08bh,088h,069h	; a9f0  u.h..u.8.b~.e..i
	defb 073h,065h,092h,072h,092h,066h,07eh,06bh,06fh,095h,0feh,020h,0c0h,060h,074h,06fh	; aa00  se.r.f~ko.. .`to
	defb 06bh,092h,06bh,08dh,073h,078h,0a9h,06fh,06fh,065h,061h,075h,0a9h,065h,091h,06fh	; aa10  k.k.sx.ooeau.e.o
	defb 078h,072h,092h,06ch,095h,0ffh,028h,090h,06bh,065h,06bh,094h,069h,089h,072h,092h	; aa20  xr.l..(.kek.i.r.
	defb 060h,08dh,06bh,08dh,06bh,072h,079h,0a9h,061h,068h,07eh,06dh,08dh,095h,0feh,050h	; aa30  `.k.kry.ah~m...P
	defb 0a0h,060h,067h,087h,090h,062h,06fh,070h,079h,0a9h,061h,071h,082h,0feh,030h,0b0h	; aa40  .`g..bopy.aq..0.
	defb 075h,08dh,068h,092h,08dh,078h,069h,069h,08ah,078h,074h,065h,075h,0a9h,079h,061h	; aa50  u.h..xii.xteu.ya
	defb 087h,069h,082h,062h,073h,0feh,040h,0c0h,06ch,066h,08ch,0a9h,062h,065h,065h,092h	; aa60  .i.bs.@.lf..bee.
	defb 091h,072h,061h,088h,078h,072h,092h,06ch,095h,0ffh,040h,090h,065h,092h,064h,062h	; aa70  .ra.xr.l..@.e.db
	defb 085h,094h,06ah,060h,0a9h,064h,084h,066h,074h,06ah,061h,095h,0feh,048h,0a0h,060h	; aa80  ..j`.d.ftja..H.`
	defb 06fh,086h,06bh,061h,0a9h,060h,074h,06fh,078h,07fh,070h,08ch,094h,0feh,040h,0b0h	; aa90  o.ka.`tox.p...@.
	defb 069h,078h,085h,075h,0a9h,060h,061h,078h,0a9h,060h,088h,065h,066h,092h,087h,095h	; aaa0  ix.u.`ax.`.ef...
	defb 0ffh,068h,090h,064h,081h,072h,092h,073h,062h,095h,0feh,058h,0a0h,064h,071h,065h	; aab0  .h.d.r.sb..X.dqe
	defb 089h,06ah,07eh,072h,092h,06bh,06fh,095h,0feh,048h,0b0h,060h,068h,07fh,065h,086h	; aac0  .j~r.ko..H.`h.e.
	defb 078h,0a9h,060h,061h,078h,0a9h,069h,073h,079h,092h,079h,094h,0feh,048h,0c0h,046h	; aad0  x.`ax.isy.y..H.F
	defb 055h,04ch,04ch,049h,054h,045h,04dh,044h,041h,059h,04fh,04fh,04eh,0a9h,085h,095h	; aae0  ULLITEMDAYOON...
	defb 0ffh,033h,0abh,031h,0abh,03ah,0abh,057h,0abh,061h,0abh,071h,0abh,031h,0abh,083h	; aaf0  .3.1.:.W.a.q.1..
	defb 0abh,031h,0abh,091h,0abh,0aah,0abh,0b7h,0abh,031h,0abh,0c7h,0abh,031h,0abh,0d9h	; ab00  .1.......1...1..
	defb 0abh,0f2h,0abh,031h,0abh,031h,0abh,0ffh,0abh,031h,0abh,012h,0ach,01fh,0ach,031h	; ab10  ...1.1...1.....1
	defb 0abh,02ah,0ach,0ffh,0ffh,033h,0ach,03eh,0ach,042h,0ach,031h,0abh,04ah,0ach,0ffh	; ab20  .*...3.>.B.1.J..
	defb 0ffh,000h,0ffh,068h,053h,054h,041h,046h,046h,0ffh,010h,050h,052h,04fh,047h,052h	; ab30  ...hSTAFF..PROGR
	defb 041h,04dh,04dh,045h,052h,0a9h,0a9h,055h,04ch,054h,052h,041h,04dh,041h,04eh,0a9h	; ab40  AMMER..ULTRAMAN.
	defb 041h,044h,041h,043h,048h,049h,0ffh,070h,041h,044h,044h,045h,0a9h,045h,044h,041h	; ab50  ADACHI.pADDE.EDA
	defb 0ffh,070h,059h,04fh,053h,048h,049h,04dh,04fh,054h,04fh,0a9h,04fh,048h,054h,041h	; ab60  .pYOSHIMOTO.OHTA
	defb 0ffh,070h,044h,041h,052h,045h,04eh,041h,04eh,044h,041h,0a9h,053h,055h,05ah,055h	; ab70  .pDARENANDA.SUZU
	defb 04bh,049h,0ffh,070h,032h,037h,049h,04eh,043h,048h,0a9h,04eh,041h,047h,041h,045h	; ab80  KI.p27INCH.NAGAE
	defb 0ffh,010h,044h,045h,053h,049h,047h,04eh,045h,052h,0a9h,0a9h,0a9h,0a9h,053h,048h	; ab90  ..DESIGNER....SH
	defb 055h,0a9h,049h,057h,041h,04dh,04fh,054h,04fh,0ffh,070h,04bh,049h,0a9h,04dh,049h	; aba0  U.IWAMOTO.pKI.MI
	defb 05ah,055h,054h,041h,04eh,049h,0ffh,070h,048h,041h,041h,041h,041h,0a9h,04dh,041h	; abb0  ZUTANI.pHAAAA.MA
	defb 04bh,049h,054h,041h,04eh,049h,0ffh,070h,04dh,045h,054h,041h,04ch,053h,04ch,041h	; abc0  KITANI.pMETALSLA
	defb 056h,045h,0a9h,04eh,041h,04fh,04bh,049h,0ffh,010h,053h,04fh,055h,04eh,044h,0a9h	; abd0  VE.NAOKI..SOUND.
	defb 0a9h,0a9h,0a9h,0a9h,0a9h,0a9h,04dh,04fh,041h,049h,0a9h,053h,041h,053h,041h,04bh	; abe0  ......MOAI.SASAK
	defb 049h,0ffh,070h,053h,047h,0a9h,046h,055h,052h,055h,04bh,041h,057h,041h,0ffh,038h	; abf0  I.pSG.FURUKAWA.8
	defb 053h,050h,045h,043h,049h,041h,04ch,0a9h,054h,048h,041h,04eh,04bh,053h,0a9h,054h	; ac00  SPECIAL.THANKS.T
	defb 04fh,0ffh,050h,041h,04bh,045h,04dh,049h,0a9h,04bh,041h,04dh,049h,04fh,0ffh,058h	; ac10  O.PAKEMI.KAMIO.X
	defb 052h,04fh,04fh,04dh,0a9h,031h,030h,031h,033h,0ffh,060h,041h,04eh,044h,0a9h,059h	; ac20  ROOM.1013.`AND.Y
	defb 04fh,055h,0ffh,058h,050h,052h,045h,053h,045h,04eh,054h,045h,044h,0ffh,078h,042h	; ac30  OU.XPRESENTED.xB
	defb 059h,0ffh,068h,04bh,04fh,04eh,041h,04dh,049h,0ffh,050h,03ah,04bh,04fh,04eh,041h	; ac40  Y.hKONAMI.P:KONA
	defb 04dh,049h,0a9h,031h,039h,038h,037h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ac50  MI.1987.........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ac60  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ac70  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ac80  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ac90  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; aca0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; acb0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; acc0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; acd0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ace0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; acf0  ................

; ======================================================================
; CODIGO 0xad00..0xad0a  (10 bytes)
; ======================================================================


L_AD00:
	ld hl,0c4b0h		;ad00
	inc (hl)			;ad03
	ld a,(0cd00h)		;ad04
	call 040aeh		;ad07

; ----------------------------------------------------------------------
; DATOS sin identificar  0xad0a..0xad2e  (36 bytes)
DATA_AD0A:
	defb 02eh,0adh,063h,0adh,076h,0adh,086h,0adh,08ch,0adh,0b6h,0adh,0bdh,0adh,0d4h,0adh	; ad0a  ..c.v...........
	defb 027h,0aeh,05bh,0aeh,0b6h,0adh,07fh,0aeh,091h,0aeh,0aah,0aeh,032h,0afh,028h,0afh	; ad1a  '.[.........2.(.
	defb 0b6h,0adh,047h,044h	; ad2a

; ======================================================================
; CODIGO 0xad2e..0xaed4  (422 bytes)
; ======================================================================


L_AD2E:
	call L_AF41		;ad2e
	ld a,(0cd81h)		;ad31
	or a			;ad34
	ret z			;ad35
	call 05900h		;ad36
	call 04c8dh		;ad39
	ld bc,00f07h		;ad3c
	call 00047h		;ad3f   ; BIOS WRTVDP - Writes data in the VDP-register
	call 05592h		;ad42
	ld a,005h		;ad45
	ld (0c138h),a		;ad47
	ld hl,0a7cbh		;ad4a
	ld bc,01808h		;ad4d
	ld de,00090h		;ad50
	call 058adh		;ad53
	call L_AFA6		;ad56
	call L_AFAF		;ad59
	call 0589fh		;ad5c
	ld a,01eh		;ad5f
	jr L_ADAE		;ad61
L_AD63:
	ld hl,0c10eh		;ad63
	dec (hl)			;ad66
	ret nz			;ad67
	ld hl,0604ch		;ad68
	call 0563eh		;ad6b
	call L_AF96		;ad6e
	call L_B1CE		;ad71
	jr L_ADB1		;ad74
L_AD76:
	call L_AF7A		;ad76
	ld hl,0b0a0h		;ad79
	call L_AF3C		;ad7c
	ld a,(0cd81h)		;ad7f
	or a			;ad82
	ret z			;ad83
	jr L_ADB1		;ad84
L_AD86:
	call L_B201		;ad86
	jp L_AF7A		;ad89
L_AD8C:
	call L_AF7A		;ad8c
	call L_AF41		;ad8f
	ld a,(0cd81h)		;ad92
	or a			;ad95
	ret z			;ad96
	call 05900h		;ad97
	call 04c8dh		;ad9a
	call 0559ah		;ad9d
	call L_AFA6		;ada0
	call L_AFBA		;ada3
	call 0589fh		;ada6
	call L_B35B		;ada9
	ld a,00fh		;adac
L_ADAE:
	ld (0c10eh),a		;adae
L_ADB1:
	ld hl,0cd00h		;adb1
	inc (hl)			;adb4
	ret			;adb5
L_ADB6:
	ld hl,0c10eh		;adb6
	dec (hl)			;adb9
	ret nz			;adba
	jr L_ADB1		;adbb
L_ADBD:
	call L_AF7A		;adbd
	ld hl,0b0c0h		;adc0
	call L_AF3C		;adc3
	ld a,(0cd81h)		;adc6
	or a			;adc9
	ret z			;adca
	ld hl,0a9d1h		;adcb
	call 04fbeh		;adce
	xor a			;add1
	jr L_ADAE		;add2
L_ADD4:
	call L_AF7A		;add4
	ld a,(0cd01h)		;add7
	dec a			;adda
	jr z,L_ADFC		;addb
	jp p,L_AE1B		;addd
	ld a,(0cd85h)		;ade0
	cp 002h		;ade3
	jr z,L_ADB1		;ade5
	ld hl,0c10eh		;ade7
	dec (hl)			;adea
	ret nz			;adeb
	ld hl,0cd87h		;adec
	ld (hl),077h		;adef
	inc hl			;adf1
	ld (hl),007h		;adf2
L_ADF4:
	ld a,007h		;adf4
	ld (0cd89h),a		;adf6
	jp L_AEE3		;adf9
L_ADFC:
	call L_B02D		;adfc
	ret nz			;adff
	ld hl,00090h		;ae00
	ld bc,00040h		;ae03
	ld a,000h		;ae06
	call 04961h		;ae08
	ld hl,0cd85h		;ae0b
	inc (hl)			;ae0e
	ld a,(hl)			;ae0f
	ld hl,0a9cbh		;ae10
	call 04878h		;ae13
	call 04fbeh		;ae16
	jr L_ADF4		;ae19
L_AE1B:
	call L_B05E		;ae1b
	ret nz			;ae1e
	xor a			;ae1f
	ld (0c10eh),a		;ae20
	ld (0cd01h),a		;ae23
	ret			;ae26
L_AE27:
	call L_AF7A		;ae27
	ld a,(0cd86h)		;ae2a
	and a			;ae2d
	call z,L_AE34		;ae2e
	jp L_ADB6		;ae31
L_AE34:
	ld a,008h		;ae34
	call 00141h		;ae36   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	bit 1,a		;ae39
	ret nz			;ae3b
	ld hl,00090h		;ae3c
	ld bc,00040h		;ae3f
	ld a,000h		;ae42
	call 04961h		;ae44
	ld a,034h		;ae47
	call 041ach		;ae49
	ld hl,0aab1h		;ae4c
	call 04fbeh		;ae4f
	xor a			;ae52
	ld (0c10eh),a		;ae53
	inc a			;ae56
	ld (0cd86h),a		;ae57
	ret			;ae5a
L_AE5B:
	call L_AF41		;ae5b
	ld a,(0cd81h)		;ae5e
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
	call L_AF3C		;ae82
	ld a,(0cd81h)		;ae85
	or a			;ae88
	ret z			;ae89
	call L_AFF6		;ae8a
	xor a			;ae8d
	jp L_ADAE		;ae8e
L_AE91:
	ld hl,0c10eh		;ae91
	dec (hl)			;ae94
	jr z,L_AEA1		;ae95
	ld a,(hl)			;ae97
	cp 05ah		;ae98
	ret nz			;ae9a
	ld a,067h		;ae9b
	ld (0c0f4h),a		;ae9d
	ret			;aea0
L_AEA1:
	xor a			;aea1
	ld (0cd01h),a		;aea2
	ld a,008h		;aea5
	jp L_ADAE		;aea7
L_AEAA:
	ld hl,(0c384h)		;aeaa
	ld de,00080h		;aead
	add hl,de			;aeb0
	ld (0c384h),hl		;aeb1
	call 04c65h		;aeb4
	call 04b4dh		;aeb7
	call 04b7ah		;aeba
	ld a,(0c4b0h)		;aebd
	and 01fh		;aec0
	ret nz			;aec2
	ld hl,000f0h		;aec3
	ld bc,00010h		;aec6
	ld a,000h		;aec9
	call 04961h		;aecb
	ld a,(0cd01h)		;aece
	call 040aeh		;aed1

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaed4..0xaede  (10 bytes)
DATA_AED4:
	defb 0deh,0aeh,0e8h,0aeh,007h,0afh,012h,0afh,01eh,0afh	; aed4  ..........

; ======================================================================
; CODIGO 0xaede..0xafdf  (257 bytes)
; ======================================================================


L_AEDE:
	ld hl,0c10eh		;aede
	dec (hl)			;aee1
	ret nz			;aee2
L_AEE3:
	ld hl,0cd01h		;aee3
	inc (hl)			;aee6
	ret			;aee7
L_AEE8:
	ld hl,0aaefh		;aee8
L_AEEB:
	ld a,(0cd80h)		;aeeb
	inc a			;aeee
	ld (0cd80h),a		;aeef
	call 04878h		;aef2
	ld a,h			;aef5
	inc a			;aef6
	ld a,009h		;aef7
	ld (0c10eh),a		;aef9
	jr z,L_AEE3		;aefc
	ld d,(hl)			;aefe
	inc hl			;aeff
	ld e,0d8h		;af00
	ld c,0ffh		;af02
	jp 04fc8h		;af04
L_AF07:
	ld hl,0c10eh		;af07
	dec (hl)			;af0a
	ret nz			;af0b
	xor a			;af0c
	ld (0cd80h),a		;af0d
	jr L_AEE3		;af10
L_AF12:
	ld hl,0ab23h		;af12
	call L_AEEB		;af15
	ld a,005h		;af18
	ld (0c10eh),a		;af1a
	ret			;af1d
L_AF1E:
	ld hl,0c10eh		;af1e
	dec (hl)			;af21
	ret nz			;af22
	ld a,078h		;af23
	jp L_ADAE		;af25
L_AF28:
	ld a,074h		;af28
	ld (0c0f4h),a		;af2a
	ld a,05ah		;af2d
	jp L_ADAE		;af2f
L_AF32:
	ld hl,0c10eh		;af32
	dec (hl)			;af35
	ret nz			;af36
	ld a,00ah		;af37
	jp L_ADAE		;af39
L_AF3C:
	ld a,001h		;af3c
	ld (0cd83h),a		;af3e
L_AF41:
	ld a,(0cd82h)		;af41
	dec a			;af44
	jr z,L_AF5E		;af45
	push hl			;af47
	call 05b5eh		;af48
	pop hl			;af4b
	ld a,(0cd83h)		;af4c
	and a			;af4f
	jr z,L_AF55		;af50
	call 05b70h		;af52
L_AF55:
	xor a			;af55
	ld (0cd81h),a		;af56
	ld hl,0cd82h		;af59
	inc (hl)			;af5c
	ret			;af5d
L_AF5E:
	ld a,(0cd83h)		;af5e
	and a			;af61
	jr nz,L_AF74		;af62
	call 05b31h		;af64
	ret nz			;af67
L_AF68:
	xor a			;af68
	ld (0cd83h),a		;af69
	ld (0cd82h),a		;af6c
	inc a			;af6f
	ld (0cd81h),a		;af70
	ret			;af73
L_AF74:
	call 05b25h		;af74
	ret nz			;af77
	jr L_AF68		;af78
L_AF7A:
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
L_AF96:
	ld a,031h		;af96
	ld hl,0cf00h		;af98
	call 040a4h		;af9b
	ld b,003h		;af9e
	xor a			;afa0
L_AFA1:
	ld (hl),a			;afa1
	inc hl			;afa2
	djnz L_AFA1		;afa3
	ret			;afa5
L_AFA6:
	ld hl,0e000h		;afa6
	ld bc,003ffh		;afa9
	jp 05de9h		;afac
L_AFAF:
	ld hl,0a96bh		;afaf
	ld bc,02003h		;afb2
	ld de,000bch		;afb5
	jr L_AFC3		;afb8
L_AFBA:
	ld hl,0a88bh		;afba
	ld bc,0100eh		;afbd
	ld de,04010h		;afc0
L_AFC3:
	jp 051c2h		;afc3
L_AFC6:
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
	call 040aeh		;afdc

; ----------------------------------------------------------------------
; DATOS sin identificar  0xafdf..0xafeb  (12 bytes)
DATA_AFDF:
	defb 056h,0b2h,05ch,0b2h,0ebh,0afh,0f0h,0afh,0f0h,0afh,0b1h,0adh	; afdf  V.\.........

; ======================================================================
; CODIGO 0xafeb..0xaff5  (10 bytes)
; ======================================================================


L_AFEB:
	ld b,009h		;afeb
	jp 0734bh		;afed
L_AFF0:
	ld hl,0d001h		;aff0
	inc (hl)			;aff3
	ret			;aff4

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaff5..0xaff6  (1 bytes)
DATA_AFF5:
	defb 0c9h	; aff5

; ======================================================================
; CODIGO 0xaff6..0xb0a0  (170 bytes)
; ======================================================================


L_AFF6:
	ld de,07090h		;aff6
	ld hl,0e090h		;aff9
	ld bc,02020h		;affc
	ld a,001h		;afff
	jp 04e47h		;b001
L_B004:
	ld a,(0cd84h)		;b004
	and a			;b007
	ret nz			;b008
	ld hl,(0c384h)		;b009
	ld de,(0ce87h)		;b00c
	and a			;b010
	sbc hl,de		;b011
	ld (0c384h),hl		;b013
	ld a,(0ce98h)		;b016
	sub 020h		;b019
	jr c,L_B022		;b01b
	ld a,001h		;b01d
	ld (0cd84h),a		;b01f
L_B022:
	ld hl,000d5h		;b022
	ld bc,00002h		;b025
	ld a,000h		;b028
	jp 04961h		;b02a
L_B02D:
	ld a,(0c4b0h)		;b02d
	and 001h		;b030
	ret nz			;b032
	ld hl,0cd87h		;b033
	ld c,00ch		;b036
	call L_B040		;b038
	ld hl,0cd89h		;b03b
	dec (hl)			;b03e
	ret			;b03f
L_B040:
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
	jp 04d03h		;b05b
L_B05E:
	ld a,(0c4b0h)		;b05e
	and 001h		;b061
	ret nz			;b063
	ld hl,0cd87h		;b064
	ld bc,0070ch		;b067
	exx			;b06a
	ld bc,00707h		;b06b
	exx			;b06e
	call L_B077		;b06f
	ld hl,0cd89h		;b072
	dec (hl)			;b075
	ret			;b076
L_B077:
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
	jp 04d03h		;b09d

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb0a0..0xb0f8  (88 bytes)
DATA_B0A0:
	defb 000h,000h,053h,004h,061h,002h,071h,000h,024h,003h,077h,007h,000h,000h,000h,000h	; b0a0  ..S.a.q.$.w.....
	defb 024h,002h,000h,000h,000h,000h,000h,000h,012h,001h,051h,001h,074h,005h,000h,000h	; b0b0  $.........Q.t...
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,057h,005h,000h,000h	; b0c0  ............W...
	defb 000h,000h,000h,000h,070h,000h,000h,000h,077h,007h,077h,007h,072h,003h,000h,000h	; b0d0  ....p...w.w.r...
	defb 000h,000h,008h,000h,001h,000h,0f0h,000h,002h,000h,05ah,000h,003h,000h,05ah,000h	; b0e0  ..........Z...Z.
	defb 004h,000h,078h,000h,005h,000h,000h,000h	; b0f0  ..x.....

; ======================================================================
; CODIGO 0xb0f8..0xb115  (29 bytes)
; ======================================================================


L_B0F8:
	ld de,080dch		;b0f8
	ld c,031h		;b0fb
	jp 06d64h		;b0fd
L_B100:
	ld b,008h		;b100
	ld c,032h		;b102
	ld hl,0b115h		;b104
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
; DATOS sin identificar  0xb115..0xb1ce  (185 bytes)
DATA_B115:
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


L_B1CE:
	xor a			;b1ce
	ld (0cd12h),a		;b1cf
	ld h,a			;b1d2
	ld l,03ch		;b1d3
	ld (0cd10h),hl		;b1d5
	ld hl,0ce00h		;b1d8
	call L_B1F1		;b1db
	ld hl,0ce80h		;b1de
	call L_B1F6		;b1e1
	call 07b03h		;b1e4
	call 074e9h		;b1e7
	call L_B0F8		;b1ea
	call L_B100		;b1ed
	ret			;b1f0
L_B1F1:
	ld de,00010h		;b1f1
	jr L_B1F9		;b1f4
L_B1F6:
	ld de,00010h		;b1f6
L_B1F9:
	ld a,00ch		;b1f9
	add a,l			;b1fb
	ld l,a			;b1fc
	ld (hl),e			;b1fd
	inc hl			;b1fe
	ld (hl),d			;b1ff
	ret			;b200
L_B201:
	call L_B21E		;b201
	call L_B004		;b204
	ld hl,(0cd10h)		;b207
	ld a,(0cd12h)		;b20a
	ld de,0b0e0h		;b20d
	call L_AFC6		;b210
	ld (0cd10h),hl		;b213
	ret nz			;b216
	ld hl,0cd12h		;b217
	inc (hl)			;b21a
	jp L_AFDC		;b21b
L_B21E:
	ld ix,0ce00h		;b21e
	call L_B229		;b222
	ld ix,0ce80h		;b225
L_B229:
	ld a,(ix+00bh)		;b229
	or a			;b22c
	call nz,068f9h		;b22d
	ld h,(ix+018h)		;b230
	ld l,(ix+017h)		;b233
	ld d,(ix+008h)		;b236
	ld e,(ix+007h)		;b239
	xor a			;b23c
	add hl,de			;b23d
	adc a,(ix+019h)		;b23e
	ld (ix+019h),a		;b241
	ld (ix+018h),h		;b244
	ld (ix+017h),l		;b247
	ld hl,01000h		;b24a
	or a			;b24d
	sbc hl,de		;b24e
	ret nc			;b250
	ld (ix+00bh),000h		;b251
	ret			;b255
L_B256:
	ld ix,0ce00h		;b256
	jr L_B260		;b25a
L_B25C:
	ld ix,0ce80h		;b25c
L_B260:
	push ix		;b260
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
; DATOS sin identificar  0xb270..0xb35b  (235 bytes)
DATA_B270:
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


L_B35B:
	call 074e9h		;b35b
	call 07b03h		;b35e
	ld b,00ah		;b361
	ld c,033h		;b363
	ld hl,0b376h		;b365
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
; DATOS sin identificar  0xb376..0xb3a8  (50 bytes)
DATA_B376:
	defb 060h,020h,040h,028h,020h,030h,070h,034h,010h,050h,020h,070h,010h,0a0h,030h,0c8h	; b376  ` @( 0p4.P p..0.
	defb 050h,0d8h,078h,0d0h,0ddh,036h,006h,000h,0ddh,036h,010h,054h,0cdh,07fh,098h,0ddh	; b386  P.x..6...6.T....
	defb 086h,003h,0ddh,08eh,005h,0ddh,077h,060h,0c9h,006h,008h,011h,0a7h,0b3h,0c3h,0ffh	; b396  ......w`........
	defb 070h,00fh	; b3a6

; ======================================================================
; CODIGO 0xb3a8..0xb3ec  (68 bytes)
; ======================================================================


L_B3A8:
	ld a,(0c137h)		;b3a8
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
	ld bc,0d040h		;b3c2
	call 04941h		;b3c5
	ld a,0ffh		;b3c8
	ld hl,01923h		;b3ca
	ld bc,0ca3ah		;b3cd
	call 04961h		;b3d0
	ld hl,0b3ech		;b3d3
	call 04fbeh		;b3d6
	ld hl,0b3f7h		;b3d9
	call 04fbeh		;b3dc
	call L_B43E		;b3df
	ld a,049h		;b3e2
	call 041ach		;b3e4
L_B3E7:
	ld hl,0c137h		;b3e7
	inc (hl)			;b3ea
	ret			;b3eb

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb3ec..0xb40f  (35 bytes)
DATA_B3EC:
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
	ld a,(0c106h)		;b418
	and 010h		;b41b
	ret z			;b41d
	ld a,05bh		;b41e
	ld (0c0f4h),a		;b420
	ld a,004h		;b423
	ld (0c137h),a		;b425
	jp L_BA36		;b428
L_B42B:
	ld hl,0b3f7h		;b42b
	call 04fc2h		;b42e
	ld de,03038h		;b431
	ld c,000h		;b434
	ld hl,0b3f9h		;b436
	call 04fc8h		;b439
	jr $-85		;b43c
L_B43E:
	call L_B48B		;b43e
	ld hl,0e902h		;b441
	call L_B46E		;b444
	ld hl,0e902h		;b447
	call L_B758		;b44a
	ld hl,0e900h		;b44d
	call 04fbeh		;b450
	call L_B457		;b453
	ret			;b456
L_B457:
	ld hl,04830h		;b457
	ld (0e980h),hl		;b45a
	ld hl,0e982h		;b45d
	ld (0c4b4h),hl		;b460
	ld de,0e983h		;b463
	ld bc,0007fh		;b466
	ld (hl),0ffh		;b469
	ldir		;b46b
	ret			;b46d
L_B46E:
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
L_B480:
	cp 01fh		;b480
	jr c,L_B486		;b482
	ld a,01fh		;b484
L_B486:
	ld (bc),a			;b486
	inc bc			;b487
	xor d			;b488
	ld d,a			;b489
	ret			;b48a
L_B48B:
	call 0882ch		;b48b
	ld d,000h		;b48e
	ld bc,03830h		;b490
	ld (0e900h),bc		;b493
	ld bc,0e902h		;b497
	ld a,r		;b49a
	rrca			;b49c
	rrca			;b49d
	and 01fh		;b49e
	call L_B480		;b4a0
	ld a,(0c486h)		;b4a3
	call L_B480		;b4a6
	ld a,(0c483h)		;b4a9
	cp 003h		;b4ac
	ld a,(0c487h)		;b4ae
	jr nz,L_B4B5		;b4b1
	ld a,01fh		;b4b3
L_B4B5:
	ld h,a			;b4b5
	and 00fh		;b4b6
	call L_B480		;b4b8
	ld a,h			;b4bb
	rrca			;b4bc
	rrca			;b4bd
	rrca			;b4be
	rrca			;b4bf
	and 00fh		;b4c0
	call L_B480		;b4c2
	ld a,(0c160h)		;b4c5
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
	call L_B480		;b4d7
	ld a,(0c48ah)		;b4da
	rrca			;b4dd
	rrca			;b4de
	rrca			;b4df
	and 01fh		;b4e0
	call L_B480		;b4e2
	ld a,(0c489h)		;b4e5
	rrca			;b4e8
	rrca			;b4e9
	rrca			;b4ea
	and 01fh		;b4eb
	call L_B480		;b4ed
	ld a,(0c8a0h)		;b4f0
	and 001h		;b4f3
	rlca			;b4f5
	ld l,a			;b4f6
	ld a,(0c8b8h)		;b4f7
	and 001h		;b4fa
	or l			;b4fc
	rlca			;b4fd
	rlca			;b4fe
	ld l,a			;b4ff
	ld a,(0c875h)		;b500
	and 020h		;b503
	rrca			;b505
	or l			;b506
	ld l,a			;b507
	ld a,(0c850h)		;b508
	and 003h		;b50b
	or l			;b50d
	call L_B480		;b50e
	ld hl,0c88ch		;b511
	call L_B5B4		;b514
	call L_B480		;b517
	ld hl,0c8a4h		;b51a
	call L_B5B4		;b51d
	call L_B480		;b520
	ld a,(0c884h)		;b523
	or a			;b526
	ld l,000h		;b527
	jr z,L_B52D		;b529
	ld l,010h		;b52b
L_B52D:
	ld a,(0c879h)		;b52d
	and 020h		;b530
	or l			;b532
	rrca			;b533
	ld l,a			;b534
	ld a,(0c85ch)		;b535
	and 007h		;b538
	or l			;b53a
	call L_B480		;b53b
	ld hl,0c8bch		;b53e
	call L_B5B4		;b541
	call L_B480		;b544
	ld a,(0c845h)		;b547
	rrca			;b54a
	rrca			;b54b
	and 03fh		;b54c
	call L_B480		;b54e
	ld a,(0c870h)		;b551
	call L_B480		;b554
	ld a,(0c874h)		;b557
	and 01fh		;b55a
	call L_B480		;b55c
	ld a,(0c879h)		;b55f
	and 01fh		;b562
	call L_B480		;b564
	ld a,(0e907h)		;b567
	ld h,a			;b56a
	ld a,(0e908h)		;b56b
	add a,h			;b56e
	and 01fh		;b56f
	call L_B480		;b571
	ld hl,0c8dch		;b574
	call L_B5B4		;b577
	call L_B480		;b57a
	ld a,(0c840h)		;b57d
	call L_B480		;b580
	ld a,(0c4aah)		;b583
	call L_B480		;b586
	ld a,d			;b589
	and 01fh		;b58a
	call L_B480		;b58c
	ld a,0ffh		;b58f
	ld (bc),a			;b591
	ret			;b592
L_B593:
	cp 05ah		;b593
	jr nz,L_B599		;b595
	ld a,030h		;b597
L_B599:
	cp 059h		;b599
	ret nz			;b59b
	ld a,04fh		;b59c
	ret			;b59e
L_B59F:
	cp 030h		;b59f
	jr nz,L_B5A5		;b5a1
	ld a,05ah		;b5a3
L_B5A5:
	cp 04fh		;b5a5
	ret nz			;b5a7
	ld a,059h		;b5a8
	ret			;b5aa
L_B5AB:
	cp 061h		;b5ab
	ret c			;b5ad
	cp 07bh		;b5ae
	ret nc			;b5b0
	sub 020h		;b5b1
	ret			;b5b3
L_B5B4:
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
L_B5D9:
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
L_B5FE:
	ld bc,0e983h		;b5fe
	ld a,(bc)			;b601
	inc bc			;b602
	ld (0ec0ah),a		;b603
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
	ld (0ec10h),hl		;b613
	ld a,(bc)			;b616
	inc bc			;b617
	ld (0ec12h),a		;b618
	ld a,(bc)			;b61b
	add a,a			;b61c
	add a,a			;b61d
	add a,a			;b61e
	inc bc			;b61f
	ld (0ec13h),a		;b620
	ld a,(bc)			;b623
	add a,a			;b624
	add a,a			;b625
	add a,a			;b626
	inc bc			;b627
	ld (0ec14h),a		;b628
	ld a,(bc)			;b62b
	inc bc			;b62c
	ld (0ec00h),a		;b62d
	ld a,(bc)			;b630
	inc bc			;b631
	ld (0ec01h),a		;b632
	ld a,(bc)			;b635
	inc bc			;b636
	ld (0ec02h),a		;b637
	ld a,(bc)			;b63a
	inc bc			;b63b
	ld (0ec03h),a		;b63c
	ld a,(bc)			;b63f
	inc bc			;b640
	ld (0ec04h),a		;b641
	ld a,(bc)			;b644
	inc bc			;b645
	ld (0ec05h),a		;b646
	ld a,(bc)			;b649
	inc bc			;b64a
	ld (0ec06h),a		;b64b
	ld a,(bc)			;b64e
	inc bc			;b64f
	ld (0ec07h),a		;b650
	ld a,(bc)			;b653
	inc bc			;b654
	ld (0ec08h),a		;b655
	ld a,(0e987h)		;b658
	ld h,a			;b65b
	ld a,(0e988h)		;b65c
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
	ld hl,0c850h		;b66a
	ld bc,000afh		;b66d
	call 05de9h		;b670
	pop bc			;b673
	pop de			;b674
	pop hl			;b675
	ld a,(bc)			;b676
	inc bc			;b677
	ld (0ec09h),a		;b678
	ld a,(bc)			;b67b
	inc bc			;b67c
	ld (0c840h),a		;b67d
	ld a,(bc)			;b680
	ld (0c4aah),a		;b681
	ld a,(0ec0ah)		;b684
	ld (0c486h),a		;b687
	ld hl,(0ec10h)		;b68a
	ld (0c487h),hl		;b68d
	ld a,(0ec12h)		;b690
	ld l,a			;b693
	ld h,000h		;b694
	call 04893h		;b696
	ld a,e			;b699
	ld (0c160h),a		;b69a
	ld a,(0ec13h)		;b69d
	ld (0c48ah),a		;b6a0
	ld a,(0ec14h)		;b6a3
	ld (0c489h),a		;b6a6
	ld a,(0ec00h)		;b6a9
	and 003h		;b6ac
	ld (0c850h),a		;b6ae
	ld a,(0ec03h)		;b6b1
	and 007h		;b6b4
	ld (0c85ch),a		;b6b6
	ld a,(0ec05h)		;b6b9
	add a,a			;b6bc
	add a,a			;b6bd
	ld (0c845h),a		;b6be
	ld a,(0ec06h)		;b6c1
	ld (0c870h),a		;b6c4
	ld a,(0ec07h)		;b6c7
	ld (0c874h),a		;b6ca
	ld a,(0ec03h)		;b6cd
	and 010h		;b6d0
	rlca			;b6d2
	ld l,a			;b6d3
	ld a,(0ec08h)		;b6d4
	or l			;b6d7
	ld (0c879h),a		;b6d8
	call L_B74D		;b6db
	ld (0c878h),a		;b6de
	ld a,(0ec03h)		;b6e1
	and 008h		;b6e4
	jr z,L_B6ED		;b6e6
	ld a,001h		;b6e8
	ld (0c884h),a		;b6ea
L_B6ED:
	ld a,(0ec00h)		;b6ed
	and 004h		;b6f0
	rrca			;b6f2
	rrca			;b6f3
	ld (0c8b8h),a		;b6f4
	ld a,(0ec01h)		;b6f7
	ld hl,0c88ch		;b6fa
	call L_B5D9		;b6fd
	ld a,(0ec02h)		;b700
	ld hl,0c8a4h		;b703
	call L_B5D9		;b706
	ld a,(0ec00h)		;b709
	and 008h		;b70c
	rrca			;b70e
	rrca			;b70f
	rrca			;b710
	ld (0c8a0h),a		;b711
	ld a,(0ec04h)		;b714
	ld hl,0c8bch		;b717
	call L_B5D9		;b71a
	ld a,(0ec09h)		;b71d
	ld hl,0c8dch		;b720
	call L_B5D9		;b723
	ld hl,0c158h		;b726
	ld bc,00002h		;b729
	call 05de9h		;b72c
	ld a,080h		;b72f
	ld (0c481h),a		;b731
	ld (0c485h),a		;b734
	call 07fabh		;b737
	call 0566eh		;b73a
	call 080d1h		;b73d
	ld a,005h		;b740
	ld (0c4dah),a		;b742
	ld a,058h		;b745
	call 041ach		;b747
	jp 04ca3h		;b74a
L_B74D:
	ld bc,00800h		;b74d
L_B750:
	rra			;b750
	jr nc,L_B754		;b751
	inc c			;b753
L_B754:
	djnz L_B750		;b754
	ld a,c			;b756
	ret			;b757
L_B758:
	ld a,(hl)			;b758
	cp 0ffh		;b759
	ret z			;b75b
	call L_B766		;b75c
	call L_B59F		;b75f
	ld (hl),a			;b762
	inc hl			;b763
	jr L_B758		;b764
L_B766:
	cp 00ah		;b766
	ld c,030h		;b768
	jr c,L_B76E		;b76a
	ld c,037h		;b76c
L_B76E:
	add a,c			;b76e
	ret			;b76f
L_B770:
	ld a,(hl)			;b770
	cp 0ffh		;b771
	ret z			;b773
	call L_B593		;b774
	call L_B77E		;b777
	ld (hl),a			;b77a
	inc hl			;b77b
	jr L_B770		;b77c
L_B77E:
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
	ld hl,0e980h		;b78f
	call 04fbeh		;b792
L_B795:
	call 00156h		;b795   ; BIOS KILBUF - Clears keyboard buffer
	xor a			;b798
	ld (0fcach),a		;b799
	call 0009fh		;b79c   ; BIOS CHGET - One character input (waiting)
	call L_B5AB		;b79f
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
	ld de,(0c4b4h)		;b7bc
	ld a,e			;b7c0
	cp 097h		;b7c1
	jr nc,L_B78F		;b7c3
	ld a,c			;b7c5
	ld (de),a			;b7c6
	inc de			;b7c7
	ld (0c4b4h),de		;b7c8
	ld a,001h		;b7cc
	call 041ach		;b7ce
	jr L_B78F		;b7d1

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb7d3..0xb7dc  (9 bytes)
DATA_B7D3:
	defb 0edh,05bh,0b4h,0c4h,07bh,0feh,095h,030h,0b3h	; b7d3  .[..{..0.

; ======================================================================
; CODIGO 0xb7dc..0xb840  (100 bytes)
; ======================================================================


L_B7DC:
	ld de,(0c4b4h)		;b7dc
	ld a,e			;b7e0
	cp 082h		;b7e1
	jr z,$-84		;b7e3
	dec de			;b7e5
	xor a			;b7e6
	ld (de),a			;b7e7
	ld (0c4b4h),de		;b7e8
	jr $-93		;b7ec
L_B7EE:
	xor a			;b7ee
	ld hl,0e982h		;b7ef
L_B7F2:
	ld d,(hl)			;b7f2
	inc hl			;b7f3
	inc d			;b7f4
	ret z			;b7f5
	dec d			;b7f6
	xor d			;b7f7
	jr L_B7F2		;b7f8
L_B7FA:
	call L_B85E		;b7fa
	jr nz,L_B822		;b7fd
	ld hl,0e982h		;b7ff
	call L_B770		;b802
	ld hl,0e982h		;b805
	call L_B46E		;b808
	call L_B7EE		;b80b
	or a			;b80e
	jr nz,L_B827		;b80f
	call L_B5FE		;b811
	ld a,(0c485h)		;b814
	cp 080h		;b817
	jr nz,L_B827		;b819
	ld a,(0e902h)		;b81b
	cp 0ffh		;b81e
	jr z,L_B827		;b820
L_B822:
	call L_B852		;b822
	jr L_B833		;b825
L_B827:
	ld hl,0b3ech		;b827
	call 04fc2h		;b82a
	ld hl,0b84ah		;b82d
	call 04fbeh		;b830
L_B833:
	ld a,01eh		;b833
	ld (0c104h),a		;b835
	ld a,05bh		;b838
	ld (0c0f4h),a		;b83a
	jp L_B3E7		;b83d

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb840..0xb852  (18 bytes)
DATA_B840:
	defb 050h,028h,043h,04fh,052h,052h,045h,043h,054h,0ffh,050h,028h,057h,052h,04fh,04eh	; b840  P(CORRECT.P(WRON
	defb 047h,0ffh	; b850

; ======================================================================
; CODIGO 0xb852..0xb8a0  (78 bytes)
; ======================================================================


L_B852:
	ld hl,0b3ech		;b852
	call 04fc2h		;b855
	ld hl,0b840h		;b858
	jp 04fbeh		;b85b
L_B85E:
	xor a			;b85e
	ld (0c4dch),a		;b85f
	ld hl,00000h		;b862
	ld (0c4dah),hl		;b865
	ld b,011h		;b868
L_B86A:
	push bc			;b86a
	call L_B876		;b86b
	pop bc			;b86e
	djnz L_B86A		;b86f
	ld a,(0c4dch)		;b871
	or a			;b874
	ret			;b875
L_B876:
	ld de,0b8a0h		;b876
	ld a,b			;b879
	dec a			;b87a
	call 0486fh		;b87b
	ld hl,0e982h		;b87e
L_B881:
	ld a,(de)			;b881
	inc de			;b882
	or a			;b883
	jr nz,L_B89B		;b884
	inc hl			;b886
	ld a,(hl)			;b887
	inc a			;b888
	ret nz			;b889
	ld hl,0c600h		;b88a
	ld a,b			;b88d
	call 040a4h		;b88e
	ld a,(hl)			;b891
	or a			;b892
	ret nz			;b893
	inc a			;b894
	ld (0c4dch),a		;b895
	ld (hl),a			;b898
	ex de,hl			;b899
	jp (hl)			;b89a
L_B89B:
	cp (hl)			;b89b
	inc hl			;b89c
	ret nz			;b89d
	jr L_B881		;b89e

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb8a0..0xba36  (406 bytes)
DATA_B8A0:
	defb 0d4h,0b8h,0f3h,0b8h,008h,0b9h,017h,0b9h,023h,0b9h,034h,0b9h,049h,0b9h,060h,0b9h	; b8a0  ........#.4.I.`.
	defb 079h,0b9h,0a6h,0b9h,0bch,0b9h,0d2h,0b9h,0e8h,0b9h,0fch,0b9h,010h,0bah,027h,0bah	; b8b0  y.............'.
	defb 0c2h,0b8h,053h,055h,050h,045h,052h,042h,041h,04ch,04ch,000h,021h,0dch,0c8h,001h	; b8c0  ..SUPERBALL.!...
	defb 013h,000h,018h,016h,04bh,049h,04eh,04fh,04fh,04fh,049h,048h,049h,054h,04fh,044h	; b8d0  ....KINOOOIHITOD
	defb 041h,04eh,045h,000h,021h,08ch,0c8h,001h,047h,000h,03eh,001h,054h,05dh,013h,077h	; b8e0  ANE.!...G.>.T].w
	defb 0edh,0b0h,0c9h,048h,041h,04eh,045h,059h,04fh,04bh,041h,047h,041h,059h,041h,04bh	; b8f0  ...HANEYOKAGAYAK
	defb 045h,000h,03eh,001h,032h,0e3h,0c4h,0c9h,055h,04ch,054h,052h,041h,042h,04fh,058h	; b900  E.>.2...ULTRABOX
	defb 000h,03eh,009h,032h,070h,0c8h,0c9h,054h,055h,052h,042h,04fh,000h,03eh,003h,032h	; b910  .>.2p..TURBO.>.2
	defb 050h,0c8h,0c9h,04dh,045h,054h,041h,04ch,053h,04ch,041h,056h,045h,000h,03eh,0c8h	; b920  P..METALSLAVE.>.
	defb 032h,045h,0c8h,0c9h,048h,04fh,049h,048h,04fh,049h,048h,04fh,049h,04eh,04fh,048h	; b930  2E..HOIHOIHOINOH
	defb 04fh,049h,000h,03eh,009h,032h,084h,0c8h,0c9h,046h,055h,04ch,04ch,049h,054h,045h	; b940  OI.>.2...FULLITE
	defb 04dh,044h,041h,059h,04fh,04fh,04eh,000h,021h,050h,0c8h,001h,03bh,000h,018h,08ah	; b950  MDAYOON.!P..;...
	defb 047h,041h,04fh,04fh,04fh,04fh,04fh,04fh,04fh,04fh,04fh,04fh,048h,000h,03ah,060h	; b960  GAOOOOOOOOOOH.:`
	defb 0c1h,0c6h,010h,027h,0d8h,032h,060h,0c1h,0c9h,045h,04eh,044h,044h,045h,04dh,04fh	; b970  ...'.2`..ENDDEMO
	defb 047h,041h,04dh,049h,054h,041h,049h,04eh,041h,000h,021h,00ch,000h,022h,0dah,0c4h	; b980  GAMITAINA.!.."..
	defb 0afh,032h,088h,0c3h,032h,0f2h,0c0h,032h,092h,0c0h,032h,0b2h,0c0h,032h,0d2h,0c0h	; b990  .2..2..2..2..2..
	defb 03eh,014h,032h,0a8h,0c4h,0c9h,061h,061h,061h,061h,061h,000h,03eh,001h,032h,0d1h	; b9a0  >.2...aaaaa.>.2.
	defb 0c4h,021h,050h,0c8h,001h,0a7h,000h,03eh,003h,0c3h,0ech,0b8h,04bh,04fh,04bh,04fh	; b9b0  .!P....>....KOKO
	defb 057h,041h,044h,04fh,04bh,04fh,000h,03eh,006h,032h,074h,0c8h,03eh,03fh,032h,075h	; b9c0  WADOKO.>.2t.>?2u
	defb 0c8h,0c9h,04eh,041h,04eh,044h,041h,04eh,041h,04eh,044h,041h,04eh,041h,04eh,044h	; b9d0  ..NANDANANDANAND
	defb 041h,000h,03eh,001h,032h,0e0h,0c4h,0c9h,041h,055h,054h,04fh,053h,048h,04fh,054h	; b9e0  A.>.2...AUTOSHOT
	defb 000h,03eh,003h,032h,05ch,0c8h,032h,0e1h,0c4h,0c3h,0abh,07fh,049h,04ch,04fh,056h	; b9f0  .>.2\.2.....ILOV
	defb 045h,048h,049h,04eh,04fh,054h,04fh,052h,049h,000h,03eh,001h,032h,0e2h,0c4h,0c9h	; ba00  EHINOTORI.>.2...
	defb 044h,04fh,04bh,04fh,044h,045h,04dh,04fh,04dh,041h,050h,000h,03eh,006h,032h,078h	; ba10  DOKODEMOMAP.>.2x
	defb 0c8h,03eh,03fh,032h,079h,0c8h,0c9h,048h,041h,059h,041h,04dh,045h,000h,03eh,003h	; ba20  .>?2y..HAYAME.>.
	defb 032h,05ch,0c8h,0c3h,0abh,07fh	; ba30

; ======================================================================
; CODIGO 0xba36..0xba87  (81 bytes)
; ======================================================================


L_BA36:
	ld a,(0c012h)		;ba36
	or a			;ba39
	ret nz			;ba3a
	ld hl,01720h		;ba3b
	ld bc,0d040h		;ba3e
	call 04972h		;ba41
	call 04cf8h		;ba44
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
	ld bc,0d058h		;ba5f
	call 04944h		;ba62
	ld a,0ffh		;ba65
	ld hl,01923h		;ba67
	ld bc,0ca52h		;ba6a
	call 04961h		;ba6d
	ld hl,0ba87h		;ba70
	call 04fbeh		;ba73
	call 04348h		;ba76
	ld de,06810h		;ba79
	ld bc,0e068h		;ba7c
	call 04cedh		;ba7f
	ld a,034h		;ba82
	jp 041ach		;ba84

; ----------------------------------------------------------------------
; DATOS sin identificar  0xba87..0xba9a  (19 bytes)
DATA_BA87:
	defb 040h,028h,049h,054h,045h,04dh,040h,049h,04eh,046h,04fh,052h,04dh,041h,054h,049h	; ba87  @(ITEM@INFORMATI
	defb 04fh,04eh,0ffh	; ba97

; ======================================================================
; CODIGO 0xba9a..0xbb11  (119 bytes)
; ======================================================================


L_BA9A:
	call L_BAC2		;ba9a
	jp 04348h		;ba9d
L_BAA0:
	ld a,(0c106h)		;baa0
	or a			;baa3
	ret z			;baa4
	jp 04348h		;baa5
L_BAA8:
	ld hl,01720h		;baa8
	ld de,01018h		;baab
	ld bc,0d058h		;baae
	call 0497bh		;bab1
	call 055a2h		;bab4
	call 04cf8h		;bab7
	call 0488dh		;baba
	ld b,005h		;babd
	jp 043edh		;babf
L_BAC2:
	ld hl,0c850h		;bac2
	ld de,00004h		;bac5
	ld b,029h		;bac8
L_BACA:
	ld a,(hl)			;baca
	or a			;bacb
	push hl			;bacc
	push de			;bacd
	push bc			;bace
	call nz,L_BAD9		;bacf
	pop bc			;bad2
	pop de			;bad3
	pop hl			;bad4
	add hl,de			;bad5
	djnz L_BACA		;bad6
	ret			;bad8
L_BAD9:
	ld (0e880h),a		;bad9
	ld a,02ah		;badc
	sub b			;bade
	ld (0e801h),a		;badf
	ld de,0bb11h		;bae2
	dec a			;bae5
	call 0486fh		;bae6
	ld a,d			;bae9
	or a			;baea
	ret z			;baeb
	res 0,d		;baec
	rrca			;baee
	jr c,L_BB03		;baef
	push de			;baf1
	ld hl,0e880h		;baf2
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
	ld hl,0e800h		;bb03
	ld a,e			;bb06
	ld (0e802h),a		;bb07
	ld a,d			;bb0a
	ld (0e803h),a		;bb0b
	jp 07b60h		;bb0e

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbb11..0xbb69  (88 bytes)
DATA_BB11:
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
	ld bc,0d060h		;bb7c
	call 04944h		;bb7f
	ld a,0ffh		;bb82
	ld hl,01923h		;bb84
	ld bc,0ca5ah		;bb87
	call 04961h		;bb8a
	call L_BBFD		;bb8d
	call 04348h		;bb90
	call 04cedh		;bb93
	ld hl,0ea00h		;bb96
	ld bc,003ffh		;bb99
	call 05de9h		;bb9c
	ld hl,0bd3eh		;bb9f
	ld de,04728h		;bba2
	ld bc,01006h		;bba5
	call 051c8h		;bba8
	ld de,00808h		;bbab
	ld bc,01006h		;bbae
	ld hl,09e18h		;bbb1
	call 055c6h		;bbb4
	call 058dch		;bbb7
	ld a,034h		;bbba
	jp 041c1h		;bbbc
L_BBBF:
	ld a,078h		;bbbf
	ld (0c104h),a		;bbc1
	ld a,(0c4bdh)		;bbc4
	ld hl,0be43h		;bbc7
	call 04878h		;bbca
	call L_BBD2		;bbcd
	jr L_BC13		;bbd0
L_BBD2:
	ld de,0e800h		;bbd2
	call L_BBDC		;bbd5
	ld a,0ffh		;bbd8
	ld (de),a			;bbda
	ret			;bbdb
L_BBDC:
	ld a,(hl)			;bbdc
	cp 0ffh		;bbdd
	ret z			;bbdf
	inc hl			;bbe0
	cp 0c0h		;bbe1
	call nc,L_BBEC		;bbe3
	jr nc,L_BBDC		;bbe6
	ld (de),a			;bbe8
	inc de			;bbe9
	jr L_BBDC		;bbea
L_BBEC:
	push hl			;bbec
	push de			;bbed
	sub 0c0h		;bbee
	ld hl,0bd9eh		;bbf0
	call 04878h		;bbf3
	pop de			;bbf6
	call L_BBDC		;bbf7
	pop hl			;bbfa
	or a			;bbfb
	ret			;bbfc
L_BBFD:
	ld bc,00001h		;bbfd
	ld (0c4bbh),bc		;bc00
L_BC04:
	ld bc,01605h		;bc04
	ld (0c4b6h),bc		;bc07
	ld bc,0040bh		;bc0b
	ld (0c4b8h),bc		;bc0e
	ret			;bc12
L_BC13:
	call L_BC04		;bc13
	ld bc,00000h		;bc16
	ld a,(0c4b6h)		;bc19
	dec a			;bc1c
	ld d,a			;bc1d
	ld a,(0c4b8h)		;bc1e
	ld e,a			;bc21
	ld hl,0e800h		;bc22
L_BC25:
	push bc			;bc25
	call L_BCA7		;bc26
	pop bc			;bc29
	call c,L_BC7D		;bc2a
	inc bc			;bc2d
	or a			;bc2e
	push hl			;bc2f
	ld hl,(0c4bbh)		;bc30
	sbc hl,bc		;bc33
	pop hl			;bc35
	jr nz,L_BC25		;bc36
	inc bc			;bc38
	ld (0c4bbh),bc		;bc39
	cp 07eh		;bc3d
	jr z,L_BC86		;bc3f
	ld a,(0c4b8h)		;bc41
	sub e			;bc44
	neg		;bc45
	add a,a			;bc47
	add a,a			;bc48
	ld c,a			;bc49
	add a,a			;bc4a
	add a,c			;bc4b
	ld e,a			;bc4c
	ld a,(0c4b8h)		;bc4d
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
L_BC7D:
	dec a			;bc7d
	jr z,L_BC84		;bc7e
	pop hl			;bc80
	jp 04348h		;bc81
L_BC84:
	jr L_BC84		;bc84
L_BC86:
	ld a,(0c4b6h)		;bc86
	add a,a			;bc89
	add a,a			;bc8a
	add a,a			;bc8b
	ld h,a			;bc8c
	ld a,(0c4b8h)		;bc8d
	add a,a			;bc90
	add a,a			;bc91
	add a,a			;bc92
	ld l,a			;bc93
	ld a,(0c4b7h)		;bc94
	add a,a			;bc97
	add a,a			;bc98
	add a,a			;bc99
	ld b,a			;bc9a
	ld a,(0c4b9h)		;bc9b
	add a,a			;bc9e
	add a,a			;bc9f
	add a,a			;bca0
	ld c,a			;bca1
	ld d,000h		;bca2
	jp 04e0bh		;bca4
L_BCA7:
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
	jr nz,L_BCC8		;bcbb
	ld a,(0c4b6h)		;bcbd
	cp d			;bcc0
	jr nz,L_BCC8		;bcc1
	jr L_BCA7		;bcc3
L_BCC5:
	call L_BCC8		;bcc5
L_BCC8:
	push hl			;bcc8
	call L_BCEF		;bcc9
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
	ld hl,0c4b6h		;bcd5
	ld a,(hl)			;bcd8
	inc hl			;bcd9
	add a,(hl)			;bcda
	ld d,a			;bcdb
	pop hl			;bcdc
	jr L_BCA7		;bcdd
L_BCDF:
	call L_BC04		;bcdf
	ld bc,00000h		;bce2
	ld a,(0c4b6h)		;bce5
	dec a			;bce8
	ld d,a			;bce9
	ld a,(0c4b8h)		;bcea
	ld e,a			;bced
	ret			;bcee
L_BCEF:
	inc d			;bcef
	ld a,d			;bcf0
	ld hl,0c4b6h		;bcf1
	sub (hl)			;bcf4
	inc hl			;bcf5
	cp (hl)			;bcf6
	ccf			;bcf7
	ret nc			;bcf8
	ld a,(0c4b6h)		;bcf9
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
	ld a,(0c104h)		;bd0c
	or a			;bd0f
	jr nz,L_BD19		;bd10
	ld a,(0c102h)		;bd12
	and 001h		;bd15
	jr nz,L_BD1E		;bd17
L_BD19:
	ld a,(0c106h)		;bd19
	or a			;bd1c
	ret z			;bd1d
L_BD1E:
	ld hl,01720h		;bd1e
	ld de,01018h		;bd21
	ld bc,0d060h		;bd24
	call 0497bh		;bd27
	call 055a2h		;bd2a
	call 04cf8h		;bd2d
	call 04884h		;bd30
	xor a			;bd33
	ld (0c4bdh),a		;bd34
	ld hl,00005h		;bd37
	ld (0c100h),hl		;bd3a
	ret			;bd3d

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbd3e..0xc000  (706 bytes)
DATA_BD3E:
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
	defb 059h,049h,062h,03ch,03ch,07fh,051h,04eh,03dh,05dh,065h,0c7h,0ffh,0ffh,0ffh,0ffh	; bf7e  YIb<<.QN=]e.....
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf8e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf9e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfae  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfbe  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfce  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfde  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfee  ................
	defb 0ffh,0ffh	; bffe
