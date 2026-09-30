; ==========================================================================
; HINOTORI - Konami (1987) - MSX - MegaROM RC-747 de 128 KB (Konami4) - banco 07 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ----------------------------------------------------------------------
; DATOS sprites_de_cada_area: la lista de patrones de sprite de cada area
;   (0xC480), una palabra; lo leen p00:5662 (48 bytes)
;   0x6000..0x6030  (48 bytes)
DATA_sprites_de_cada_area:
	defb 05ch,060h	; 6000
	defb 05ch,060h	; 6002
	defb 06bh,060h	; 6004
	defb 07eh,060h	; 6006
	defb 07eh,060h	; 6008
	defb 093h,060h	; 600a
	defb 0a6h,060h	; 600c
	defb 0a6h,060h	; 600e
	defb 0a6h,060h	; 6010
	defb 0b3h,060h	; 6012
	defb 0c4h,060h	; 6014
	defb 0d1h,060h	; 6016
	defb 0e0h,060h	; 6018
	defb 0f3h,060h	; 601a
	defb 004h,061h	; 601c
	defb 015h,061h	; 601e
	defb 02ah,061h	; 6020
	defb 035h,061h	; 6022
	defb 046h,061h	; 6024
	defb 04dh,061h	; 6026
	defb 056h,061h	; 6028
	defb 05dh,061h	; 602a
	defb 062h,061h	; 602c
	defb 069h,061h	; 602e

; ----------------------------------------------------------------------
; DATOS lista_vram_6030: lista de p00:4AB0: 0 [rle][vram]; 1 [vram][n][vram]:
;   n dibujos de la VRAM girados; 2+ [fuente][n][vram]: n bytes tal cual; 0xFF
;   acaba; lo leen p00:564A (28 bytes)
;   0x6030..0x604c  (28 bytes)
DATA_lista_vram_6030:
	defb 000h,0bch,070h,080h,0f8h,000h,073h	; 6030
	defb 071h,0c0h,0f8h,000h,0d5h,072h,040h	; 6037
	defb 0f9h,000h,0c0h,072h,040h,0fah,002h	; 603e
	defb 053h,071h,020h,000h,060h,0fah,0ffh	; 6045

; ----------------------------------------------------------------------
; DATOS lista_vram_604C: lista de p00:4AB0: 0 [rle][vram]; 1 [vram][n][vram]:
;   n dibujos de la VRAM girados; 2+ [fuente][n][vram]: n bytes tal cual; 0xFF
;   acaba; lo leen p06:AD68 (16 bytes)
;   0x604c..0x605c  (16 bytes)
DATA_lista_vram_604C:
	defb 000h,0dah,073h,000h,0f8h,000h,0c0h	; 604c
	defb 073h,080h,0f8h,000h,0c7h,073h,0a0h	; 6053
	defb 0f8h,0ffh	; 605a

; ----------------------------------------------------------------------
; DATOS sprites_605C: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (15 bytes)
;   0x605c..0x606b  (15 bytes)
DATA_sprites_605C:
	defb 00bh,050h	; 605c
	defb 00ah,068h	; 605e
	defb 002h,070h	; 6060
	defb 013h,080h	; 6062
	defb 006h,090h	; 6064
	defb 010h,0a0h	; 6066
	defb 000h,0b0h	; 6068
	defb 0ffh	; 606a

; ----------------------------------------------------------------------
; DATOS sprites_606B: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (19 bytes)
;   0x606b..0x607e  (19 bytes)
DATA_sprites_606B:
	defb 00bh,058h	; 606b
	defb 00ah,050h	; 606d
	defb 002h,090h	; 606f
	defb 013h,070h	; 6071
	defb 006h,080h	; 6073
	defb 010h,0a0h	; 6075
	defb 000h,0b0h	; 6077
	defb 003h,0d0h	; 6079
	defb 004h,0f8h	; 607b
	defb 0ffh	; 607d

; ----------------------------------------------------------------------
; DATOS sprites_607E: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (21 bytes)
;   0x607e..0x6093  (21 bytes)
DATA_sprites_607E:
	defb 001h,050h	; 607e
	defb 00eh,058h	; 6080
	defb 00fh,078h	; 6082
	defb 011h,088h	; 6084
	defb 00bh,090h	; 6086
	defb 005h,0a8h	; 6088
	defb 00ch,0b8h	; 608a
	defb 00ah,0c8h	; 608c
	defb 014h,0d0h	; 608e
	defb 013h,0e0h	; 6090
	defb 0ffh	; 6092

; ----------------------------------------------------------------------
; DATOS sprites_6093: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (19 bytes)
;   0x6093..0x60a6  (19 bytes)
DATA_sprites_6093:
	defb 003h,050h	; 6093
	defb 00eh,078h	; 6095
	defb 00bh,098h	; 6097
	defb 008h,0b0h	; 6099
	defb 009h,0b0h	; 609b
	defb 004h,0c0h	; 609d
	defb 005h,0c8h	; 609f
	defb 012h,0d8h	; 60a1
	defb 013h,0e8h	; 60a3
	defb 0ffh	; 60a5

; ----------------------------------------------------------------------
; DATOS sprites_60A6: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (13 bytes)
;   0x60a6..0x60b3  (13 bytes)
DATA_sprites_60A6:
	defb 00dh,050h	; 60a6
	defb 00eh,070h	; 60a8
	defb 005h,090h	; 60aa
	defb 001h,0a0h	; 60ac
	defb 010h,0b0h	; 60ae
	defb 013h,0c0h	; 60b0
	defb 0ffh	; 60b2

; ----------------------------------------------------------------------
; DATOS sprites_60B3: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (17 bytes)
;   0x60b3..0x60c4  (17 bytes)
DATA_sprites_60B3:
	defb 012h,050h	; 60b3
	defb 010h,060h	; 60b5
	defb 00bh,070h	; 60b7
	defb 015h,088h	; 60b9
	defb 005h,090h	; 60bb
	defb 008h,0a0h	; 60bd
	defb 009h,0a0h	; 60bf
	defb 013h,0b0h	; 60c1
	defb 0ffh	; 60c3

; ----------------------------------------------------------------------
; DATOS sprites_60C4: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (13 bytes)
;   0x60c4..0x60d1  (13 bytes)
DATA_sprites_60C4:
	defb 013h,050h	; 60c4
	defb 00bh,060h	; 60c6
	defb 015h,078h	; 60c8
	defb 012h,080h	; 60ca
	defb 007h,090h	; 60cc
	defb 00eh,0a0h	; 60ce
	defb 0ffh	; 60d0

; ----------------------------------------------------------------------
; DATOS sprites_60D1: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (15 bytes)
;   0x60d1..0x60e0  (15 bytes)
DATA_sprites_60D1:
	defb 012h,050h	; 60d1
	defb 015h,060h	; 60d3
	defb 001h,068h	; 60d5
	defb 017h,070h	; 60d7
	defb 00eh,090h	; 60d9
	defb 007h,0b0h	; 60db
	defb 028h,0fch	; 60dd
	defb 0ffh	; 60df

; ----------------------------------------------------------------------
; DATOS sprites_60E0: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (19 bytes)
;   0x60e0..0x60f3  (19 bytes)
DATA_sprites_60E0:
	defb 00bh,050h	; 60e0
	defb 012h,068h	; 60e2
	defb 007h,078h	; 60e4
	defb 016h,088h	; 60e6
	defb 015h,0a8h	; 60e8
	defb 018h,0b0h	; 60ea
	defb 006h,0d0h	; 60ec
	defb 013h,0e0h	; 60ee
	defb 028h,0fch	; 60f0
	defb 0ffh	; 60f2

; ----------------------------------------------------------------------
; DATOS sprites_60F3: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (17 bytes)
;   0x60f3..0x6104  (17 bytes)
DATA_sprites_60F3:
	defb 016h,050h	; 60f3
	defb 013h,070h	; 60f5
	defb 011h,080h	; 60f7
	defb 018h,088h	; 60f9
	defb 006h,0a8h	; 60fb
	defb 015h,0b8h	; 60fd
	defb 017h,0c0h	; 60ff
	defb 028h,0fch	; 6101
	defb 0ffh	; 6103

; ----------------------------------------------------------------------
; DATOS sprites_6104: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (17 bytes)
;   0x6104..0x6115  (17 bytes)
DATA_sprites_6104:
	defb 016h,050h	; 6104
	defb 013h,070h	; 6106
	defb 011h,080h	; 6108
	defb 017h,088h	; 610a
	defb 006h,0a8h	; 610c
	defb 00fh,0b8h	; 610e
	defb 012h,0c8h	; 6110
	defb 028h,0fch	; 6112
	defb 0ffh	; 6114

; ----------------------------------------------------------------------
; DATOS sprites_6115: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (21 bytes)
;   0x6115..0x612a  (21 bytes)
DATA_sprites_6115:
	defb 002h,050h	; 6115
	defb 00ah,060h	; 6117
	defb 008h,068h	; 6119
	defb 009h,068h	; 611b
	defb 012h,078h	; 611d
	defb 027h,088h	; 611f
	defb 018h,090h	; 6121
	defb 011h,0b0h	; 6123
	defb 00eh,0b8h	; 6125
	defb 028h,0fch	; 6127
	defb 0ffh	; 6129

; ----------------------------------------------------------------------
; DATOS sprites_612A: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (11 bytes)
;   0x612a..0x6135  (11 bytes)
DATA_sprites_612A:
	defb 006h,050h	; 612a
	defb 027h,060h	; 612c
	defb 00ch,068h	; 612e
	defb 011h,078h	; 6130
	defb 00eh,080h	; 6132
	defb 0ffh	; 6134

; ----------------------------------------------------------------------
; DATOS sprites_6135: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (17 bytes)
;   0x6135..0x6146  (17 bytes)
DATA_sprites_6135:
	defb 027h,050h	; 6135
	defb 015h,058h	; 6137
	defb 00ch,060h	; 6139
	defb 001h,070h	; 613b
	defb 011h,078h	; 613d
	defb 016h,080h	; 613f
	defb 013h,0a0h	; 6141
	defb 028h,0fch	; 6143
	defb 0ffh	; 6145

; ----------------------------------------------------------------------
; DATOS sprites_6146: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (7 bytes)
;   0x6146..0x614d  (7 bytes)
DATA_sprites_6146:
	defb 019h,050h	; 6146
	defb 01fh,0b0h	; 6148
	defb 01eh,0f0h	; 614a
	defb 0ffh	; 614c

; ----------------------------------------------------------------------
; DATOS sprites_614D: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (9 bytes)
;   0x614d..0x6156  (9 bytes)
DATA_sprites_614D:
	defb 01ah,050h	; 614d
	defb 020h,0d0h	; 614f
	defb 021h,0d8h	; 6151
	defb 01eh,0f0h	; 6153
	defb 0ffh	; 6155

; ----------------------------------------------------------------------
; DATOS sprites_6156: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (7 bytes)
;   0x6156..0x615d  (7 bytes)
DATA_sprites_6156:
	defb 01bh,050h	; 6156
	defb 022h,094h	; 6158
	defb 01eh,0f0h	; 615a
	defb 0ffh	; 615c

; ----------------------------------------------------------------------
; DATOS sprites_615D: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (5 bytes)
;   0x615d..0x6162  (5 bytes)
DATA_sprites_615D:
	defb 023h,09ch	; 615d
	defb 01eh,0f0h	; 615f
	defb 0ffh	; 6161

; ----------------------------------------------------------------------
; DATOS sprites_6162: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (7 bytes)
;   0x6162..0x6169  (7 bytes)
DATA_sprites_6162:
	defb 01ch,050h	; 6162
	defb 024h,0b0h	; 6164
	defb 01eh,0f0h	; 6166
	defb 0ffh	; 6168

; ----------------------------------------------------------------------
; DATOS sprites_6169: pares [cosa de 0x6173][sitio en 0xCF00 y en los patrones
;   0xF800 + 8*sitio] ... 0xFF (p00:5686); lo leen p00:5686 (9 bytes)
;   0x6169..0x6172  (9 bytes)
DATA_sprites_6169:
	defb 01dh,050h	; 6169
	defb 025h,0b0h	; 616b
	defb 026h,0b0h	; 616d
	defb 01eh,0f0h	; 616f
	defb 0ffh	; 6171

; ----------------------------------------------------------------------
; DATOS relleno_6172: relleno de 0xFF: nadie lo lee (1 bytes)
;   0x6172..0x6173  (1 bytes)
DATA_relleno_6172:
	defb 0ffh	; 6172

; ----------------------------------------------------------------------
; DATOS cosas_con_sprite: 41 cosas: [ficha 0xCF00+][tipo 0 = RLE, 1 = nada, 2+
;   = tal cual][fuente][bytes] (p00:5694); las listas de las areas piden de la
;   0 a la 40; lo leen p00:5694 (246 bytes)
;   0x6173..0x6269  (246 bytes)
DATA_cosas_con_sprite:
	defb 001h,000h,077h,06fh,000h,001h	; 6173
	defb 002h,000h,052h,06ch,040h,000h	; 6179
	defb 003h,000h,09ah,069h,080h,000h	; 617f
	defb 004h,000h,090h,067h,000h,001h	; 6185
	defb 005h,000h,093h,068h,040h,000h	; 618b
	defb 006h,000h,017h,069h,080h,000h	; 6191
	defb 007h,000h,01dh,06ah,080h,000h	; 6197
	defb 009h,000h,0a0h,06ah,080h,000h	; 619d
	defb 00ah,000h,00dh,06eh,080h,000h	; 61a3
	defb 00bh,000h,00dh,06eh,080h,000h	; 61a9
	defb 00ch,000h,0d5h,068h,040h,000h	; 61af
	defb 00dh,000h,0a6h,06bh,0c0h,000h	; 61b5
	defb 00eh,000h,023h,06bh,080h,000h	; 61bb
	defb 00fh,000h,094h,06ch,000h,001h	; 61c1
	defb 010h,000h,090h,06eh,000h,001h	; 61c7
	defb 011h,000h,08ah,06dh,080h,000h	; 61cd
	defb 012h,000h,049h,066h,080h,000h	; 61d3
	defb 013h,000h,0cch,066h,040h,000h	; 61d9
	defb 014h,000h,00eh,067h,080h,000h	; 61df
	defb 015h,000h,0c9h,065h,080h,000h	; 61e5
	defb 016h,000h,004h,065h,080h,000h	; 61eb
	defb 017h,000h,087h,065h,040h,000h	; 61f1
	defb 018h,000h,02ah,064h,000h,001h	; 61f7
	defb 019h,000h,069h,062h,000h,001h	; 61fd
	defb 01ah,000h,035h,063h,000h,001h	; 6203
	defb 01bh,000h,0b3h,085h,000h,003h	; 6209
	defb 01dh,000h,06dh,088h,000h,004h	; 620f
	defb 01ch,000h,019h,08ch,020h,002h	; 6215
	defb 01fh,000h,0e0h,08dh,000h,003h	; 621b
	defb 020h,000h,0a2h,090h,000h,003h	; 6221
	defb 021h,000h,069h,095h,080h,000h	; 6227
	defb 024h,000h,098h,093h,080h,000h	; 622d
	defb 022h,000h,029h,094h,040h,000h	; 6233
	defb 023h,000h,0e7h,093h,040h,000h	; 6239
	defb 029h,000h,067h,094h,040h,000h	; 623f
	defb 025h,000h,0a4h,094h,040h,000h	; 6245
	defb 026h,000h,0e6h,094h,040h,000h	; 624b
	defb 027h,000h,028h,095h,040h,000h	; 6251
	defb 028h,000h,028h,095h,040h,000h	; 6257
	defb 02ah,000h,07ah,070h,040h,000h	; 625d
	defb 000h,002h,033h,071h,020h,000h	; 6263

; ----------------------------------------------------------------------
; DATOS rle_6269: patrones de sprite en RLE de la cosa 23 (p00:56C1); lo leen
;   p00:56C7 (204 bytes)
;   0x6269..0x6335  (204 bytes)
DATA_rle_6269:
	defb 008h,000h,088h,003h,00fh,01fh,01fh,03fh,03fh,05dh,04eh,008h,000h,088h,0f0h,0f8h	; 6269  .......??]N.....
	defb 0fch,0f2h,0f7h,0ffh,07fh,0f9h,008h,000h,088h,003h,00ch,013h,017h,02fh,02fh,077h	; 6279  .............//w
	defb 07fh,008h,000h,090h,0f0h,008h,08ch,0deh,0edh,0e5h,0d9h,0bfh,093h,0e3h,0e1h,092h	; 6289  ................
	defb 097h,07fh,0ffh,05fh,003h,0dfh,08ah,0d3h,0e0h,0e0h,040h,040h,0f9h,0feh,0c8h,088h	; 6299  ..._......@@....
	defb 098h,004h,0fch,082h,0dch,088h,005h,000h,088h,0f3h,0a3h,0a1h,0f3h,0f7h,07ch,08fh	; 62a9  ..............|.
	defb 07fh,003h,0ffh,087h,0f3h,0e0h,0e0h,040h,040h,0efh,01eh,003h,0f8h,086h,0ech,0cch	; 62b9  .......@@.......
	defb 0fch,0fch,0dch,088h,00dh,000h,082h,00fh,01fh,004h,03fh,082h,07ah,0fdh,008h,000h	; 62c9  ..........?.z...
	defb 088h,0c0h,0f0h,0f8h,0fch,0fch,0f4h,0f2h,0f9h,008h,000h,088h,00fh,010h,027h,02fh	; 62d9  ..............'/
	defb 03fh,03fh,07fh,08fh,008h,000h,094h,0c0h,070h,008h,084h,0cch,0dch,09eh,0ffh,0dbh	; 62e9  ??......p.......
	defb 0d3h,054h,058h,059h,0ffh,0efh,0ffh,0ffh,05fh,047h,003h,004h,000h,003h,0ffh,002h	; 62f9  .TXY...._G......
	defb 0b9h,083h,0ceh,0e8h,0fch,003h,0feh,082h,03eh,00ch,003h,000h,08ch,0fbh,0f3h,077h	; 6309  ........>......w
	defb 07fh,07fh,0feh,0edh,0ffh,0ffh,05fh,047h,003h,004h,000h,08dh,0edh,01dh,0f7h,0afh	; 6319  ......_G........
	defb 0bfh,0feh,0f8h,0fch,0e6h,0ceh,0feh,03eh,00ch,003h,000h,000h	; 6329  .......>....

; ----------------------------------------------------------------------
; DATOS rle_6335: patrones de sprite en RLE de la cosa 24 (p00:56C1); lo leen
;   p00:56C7 (245 bytes)
;   0x6335..0x642a  (245 bytes)
DATA_rle_6335:
	defb 005h,000h,08bh,001h,003h,004h,005h,00bh,01bh,037h,023h,057h,05ah,03fh,005h,000h	; 6335  .........7#WZ?..
	defb 08bh,0c0h,020h,090h,050h,0ech,0eeh,0f5h,0f9h,04eh,03dh,0f1h,005h,000h,08bh,001h	; 6345  .. .P....N=.....
	defb 002h,007h,007h,00fh,01eh,02fh,03fh,07dh,07fh,02bh,005h,000h,0cbh,0c0h,0e0h,070h	; 6355  ...../?}.+.....p
	defb 0f0h,0fch,0bah,07bh,0dfh,0beh,0fbh,0efh,02dh,019h,00fh,00eh,00bh,01fh,012h,02eh	; 6365  ...{....-.......
	defb 034h,034h,048h,0adh,0ffh,03fh,00fh,003h,05ah,02ch,0d2h,09ah,066h,0aah,011h,015h	; 6375  44H..?..Z,..f...
	defb 009h,00eh,019h,0f3h,0f5h,0feh,0f8h,080h,03bh,01fh,00bh,00bh,00fh,01fh,01eh,03eh	; 6385  ........;......>
	defb 02ch,03ch,078h,0ddh,0ffh,03fh,00fh,003h,0b6h,0fch,0feh,0f6h,0fah,0beh,01fh,01bh	; 6395  ,<x..?..........
	defb 00fh,00eh,01fh,0fdh,0fbh,0feh,0f8h,080h,004h,000h,08ch,003h,006h,009h,00ah,017h	; 63a5  ................
	defb 037h,06fh,047h,0aeh,0b4h,07fh,05ah,004h,000h,08ch,080h,040h,020h,0a0h,0d8h,0dch	; 63b5  7oG...Z....@ ...
	defb 0eah,0f2h,09ch,07ah,0e2h,0b4h,004h,000h,08ch,003h,005h,00eh,00fh,01fh,03dh,05eh	; 63c5  ...z..........=^
	defb 07fh,0fbh,0ffh,057h,077h,004h,000h,0b3h,080h,0c0h,0e0h,0e0h,0f8h,074h,0f6h,0beh	; 63d5  ...Ww........t..
	defb 07ch,0f6h,0deh,06ch,032h,01fh,01eh,015h,00fh,00ah,007h,003h,002h,003h,01ch,07dh	; 63e5  |..l2..........}
	defb 07eh,01fh,003h,000h,07ch,0d8h,0a8h,0c8h,050h,0a0h,0a0h,0e0h,030h,068h,070h,0bch	; 63f5  ~...|...P...0hp.
	defb 07ch,0f0h,080h,000h,03fh,017h,017h,01fh,00fh,00fh,006h,003h,003h,08bh,01fh,07eh	; 6405  |...?..........~
	defb 07fh,01fh,003h,000h,0fch,0f8h,0d8h,0b8h,0f0h,003h,060h,088h,0f0h,0f8h,0b0h,07ch	; 6415  ..........`....|
	defb 0fch,0f0h,080h,000h,000h	; 6425

; ----------------------------------------------------------------------
; DATOS rle_642A: patrones de sprite en RLE de la cosa 22 (p00:56C1); lo leen
;   p00:56C7 (218 bytes)
;   0x642a..0x6504  (218 bytes)
DATA_rle_642A:
	defb 008h,000h,003h,003h,085h,00fh,01eh,02fh,04fh,05fh,007h,000h,089h,080h,0e0h,0f8h	; 642a  ......./O_......
	defb 0fch,0fch,0bah,07ah,0feh,0fah,008h,000h,088h,003h,002h,002h,00fh,013h,031h,07bh	; 643a  ...z..........1{
	defb 06fh,007h,000h,094h,080h,060h,038h,024h,0e4h,0e6h,0f6h,0feh,0feh,077h,077h,07fh	; 644a  o....`8$.....ww.
	defb 04fh,037h,005h,007h,007h,00eh,01fh,01fh,003h,03fh,083h,013h,000h,0f4h,003h,0f8h	; 645a  O7.......?......
	defb 086h,0e8h,068h,028h,034h,07ch,07ch,003h,0f8h,08eh,0e0h,080h,000h,077h,075h,05fh	; 646a  ..h(4||......wu_
	defb 07fh,035h,007h,007h,005h,00eh,01fh,01fh,003h,03fh,091h,013h,000h,0f4h,0e8h,038h	; 647a  .5.......?.....8
	defb 0f8h,0f8h,058h,038h,034h,04ch,06ch,0f8h,0c8h,0f8h,0e0h,080h,008h,000h,089h,001h	; 648a  ..X84Ll.........
	defb 007h,01fh,03fh,03fh,07dh,05eh,07fh,05fh,008h,000h,003h,0c0h,085h,0f0h,078h,0f4h	; 649a  ..??}^._......x.
	defb 0f2h,0fah,007h,000h,089h,001h,006h,01ch,024h,027h,067h,06fh,07fh,07fh,008h,000h	; 64aa  ........$'go....
	defb 089h,0c0h,040h,040h,0f0h,0c8h,08ch,0deh,0f6h,02fh,003h,01fh,096h,017h,016h,014h	; 64ba  ..@@...../......
	defb 01eh,03eh,07fh,07fh,03fh,03fh,01fh,00eh,000h,0eeh,0eeh,0feh,0f2h,0ech,0a0h,0e0h	; 64ca  .>..??..........
	defb 0e0h,0c0h,0e0h,003h,0f0h,09dh,0a0h,000h,000h,02fh,017h,01ch,01fh,01fh,01ah,01ch	; 64da  ........./......
	defb 01eh,032h,07bh,07fh,033h,03fh,01fh,00eh,000h,0eeh,0aeh,0fah,0feh,0ach,0e0h,0e0h	; 64ea  .2{.3?..........
	defb 0a0h,0c0h,0e0h,003h,0f0h,083h,0a0h,000h,000h,000h	; 64fa  ..........

; ----------------------------------------------------------------------
; DATOS rle_6504: patrones de sprite en RLE de la cosa 20 (p00:56C1); lo leen
;   p00:56C7 (131 bytes)
;   0x6504..0x6587  (131 bytes)
DATA_rle_6504:
	defb 0ffh,003h,007h,01eh,02bh,05dh,06fh,09dh,0afh,0ebh,0f0h,06eh,077h,026h,076h,05ch	; 6504  ....+]o....nw&v\
	defb 038h,080h,0c0h,0f0h,0a8h,064h,0fah,052h,0fah,0b6h,05ah,0ach,0d4h,04ch,02ah,02fh	; 6514  8....d.R..Z..L*/
	defb 015h,003h,004h,01fh,03eh,06ah,05dh,0ffh,0deh,0ffh,09fh,05dh,07fh,03eh,05ah,064h	; 6524  ....>j]....].>Zd
	defb 038h,080h,040h,0f0h,0f8h,0bch,06eh,0feh,0feh,0fah,0beh,07ch,0ech,074h,03eh,031h	; 6534  8.@...n....|.t>1
	defb 01bh,001h,003h,00fh,015h,026h,05fh,04ah,05fh,06dh,05ah,035h,02bh,032h,054h,0f4h	; 6544  .....&_J_mZ5+2T.
	defb 0a8h,0c0h,0e0h,078h,0d4h,0bah,0f6h,0b9h,0f5h,0d7h,00fh,076h,0eeh,064h,06eh,03ah	; 6554  ...x.......v.dn:
	defb 01ch,001h,002h,00fh,01fh,03dh,076h,07fh,07fh,05fh,07dh,03eh,037h,02eh,07ch,08ch	; 6564  .....=v.._}>7.|.
	defb 0d8h,0c0h,020h,0f8h,07ch,056h,0bah,0ffh,07bh,0ffh,0f9h,0bah,0feh,07ch,05ah,026h	; 6574  .. .|V..{....|Z&
	defb 081h,01ch,000h	; 6584

; ----------------------------------------------------------------------
; DATOS rle_6587: patrones de sprite en RLE de la cosa 21 (p00:56C1); lo leen
;   p00:56C7 (66 bytes)
;   0x6587..0x65c9  (66 bytes)
DATA_rle_6587:
	defb 088h,003h,006h,005h,007h,00fh,01fh,03fh,03fh,003h,01fh,0b5h,037h,07fh,0ffh,0dfh	; 6587  .......??...7...
	defb 03ch,0e0h,030h,0d0h,058h,0fch,0bch,0eeh,0bah,076h,0fbh,0efh,0d7h,0fbh,0ffh,0ffh	; 6597  <.0.X....v......
	defb 0ceh,003h,005h,007h,005h,00ah,016h,02fh,033h,018h,010h,010h,02ah,040h,0a9h,0d7h	; 65a7  ......./3...*@..
	defb 03ch,0e0h,0d0h,070h,0f8h,0a4h,064h,0dah,056h,0cah,005h,019h,029h,005h,013h,0b5h	; 65b7  <..p..d.V...)...
	defb 0ceh,000h	; 65c7

; ----------------------------------------------------------------------
; DATOS rle_65C9: patrones de sprite en RLE de la cosa 19 (p00:56C1); lo leen
;   p00:56C7 (128 bytes)
;   0x65c9..0x6649  (128 bytes)
DATA_rle_65C9:
	defb 002h,000h,08ch,007h,00fh,01fh,02fh,03fh,03fh,017h,02dh,023h,014h,008h,004h,004h	; 65c9  ....../??.-#....
	defb 000h,08ch,0e0h,0d0h,0f8h,0f4h,0b8h,0e8h,0f4h,0a8h,054h,048h,090h,020h,003h,000h	; 65d9  ..........TH. ..
	defb 09eh,007h,018h,030h,020h,050h,040h,040h,068h,052h,05ch,02bh,037h,01bh,007h,000h	; 65e9  ...0 P@@hR\+7...
	defb 000h,0e0h,018h,02ch,004h,00ah,046h,016h,00ah,056h,0aah,0b4h,06ch,0d8h,0e0h,003h	; 65f9  ...,..F..V..l...
	defb 000h,08ch,002h,009h,002h,02bh,005h,007h,013h,00fh,02bh,01eh,00fh,005h,004h,000h	; 6609  .....+....+.....
	defb 08ch,080h,050h,0e8h,0b8h,0f4h,0fch,07ch,0fch,0fch,0f8h,0f0h,0e0h,003h,000h,09fh	; 6619  ..P....|........
	defb 007h,01dh,036h,03dh,054h,07ah,078h,06ch,070h,054h,021h,030h,01ah,007h,000h,000h	; 6629  ..6=TzxlpT!0....
	defb 0e0h,078h,0ach,014h,046h,00ah,002h,082h,002h,002h,004h,00ch,018h,0e0h,000h,000h	; 6639  .x..F...........

; ----------------------------------------------------------------------
; DATOS rle_6649: patrones de sprite en RLE de la cosa 16 (p00:56C1); lo leen
;   p00:56C7 (131 bytes)
;   0x6649..0x66cc  (131 bytes)
DATA_rle_6649:
	defb 0ffh,072h,0bbh,0dfh,0afh,0d6h,06dh,07fh,0feh,07fh,0dbh,0fdh,04fh,007h,001h,002h	; 6649  .r....m.....O...
	defb 004h,04eh,0ddh,0fbh,0f5h,06bh,0b6h,0feh,07fh,0feh,0dbh,0bfh,0f2h,0e0h,080h,040h	; 6659  .N...k.........@
	defb 020h,072h,0cbh,0a6h,0d5h,0abh,057h,06eh,0bdh,04ah,0b5h,0b3h,04bh,006h,001h,002h	; 6669   r....Wn.J..K...
	defb 004h,04eh,0d3h,065h,0abh,0d5h,0eah,076h,0bdh,052h,0adh,0cdh,0d2h,060h,080h,040h	; 6679  .N.e...v.R...`.@
	defb 020h,02ah,057h,06fh,057h,06ah,035h,07fh,0feh,07fh,0fbh,0bdh,0efh,047h,001h,002h	; 6689   *WoWj5......G..
	defb 002h,054h,0eah,0f6h,0eah,056h,0ach,0feh,07fh,0feh,0dfh,0bdh,0f7h,0e2h,080h,040h	; 6699  .T...V.........@
	defb 040h,03ah,06fh,056h,06bh,057h,02fh,076h,0bdh,04ah,095h,0f3h,0abh,046h,001h,002h	; 66a9  @:oVkW/v.J...F..
	defb 002h,05ch,0f6h,06ah,0d6h,0eah,0f4h,06eh,0bdh,052h,0a9h,0cfh,0d5h,062h,080h,040h	; 66b9  .\.j...n.R...b.@
	defb 081h,040h,000h	; 66c9

; ----------------------------------------------------------------------
; DATOS rle_66CC: patrones de sprite en RLE de la cosa 17 (p00:56C1); lo leen
;   p00:56C7 (66 bytes)
;   0x66cc..0x670e  (66 bytes)
DATA_rle_66CC:
	defb 0abh,006h,01dh,031h,063h,045h,042h,05dh,02eh,03fh,01fh,017h,009h,00ch,00bh,007h	; 66cc  ...1cEB].?......
	defb 003h,030h,05ch,0c6h,063h,0d1h,021h,0ddh,03ah,07eh,07ch,0b4h,0c8h,098h,0e8h,0f0h	; 66dc  .0\.c.!.:~|.....
	defb 0e0h,006h,01fh,03eh,07ch,07ah,07dh,072h,03fh,03fh,017h,01ah,003h,00fh,092h,005h	; 66ec  ...>|z}r??......
	defb 003h,030h,07ch,0beh,09fh,02fh,0dfh,027h,0feh,0feh,0f4h,0ech,0f8h,078h,0f8h,050h	; 66fc  .0|../.'.....x.P
	defb 0e0h,000h	; 670c

; ----------------------------------------------------------------------
; DATOS rle_670E: patrones de sprite en RLE de la cosa 18 (p00:56C1); lo leen
;   p00:56C7 (130 bytes)
;   0x670e..0x6790  (130 bytes)
DATA_rle_670E:
	defb 0cdh,000h,01eh,025h,079h,047h,027h,005h,006h,00fh,01fh,016h,019h,016h,00eh,005h	; 670e  ...%yG'.........
	defb 003h,000h,000h,084h,0c2h,0e2h,0e7h,0bdh,07ah,0feh,0b4h,0c8h,0b0h,000h,000h,040h	; 671e  ........z......@
	defb 080h,000h,01eh,03bh,07fh,046h,024h,006h,007h,009h,010h,019h,01fh,01eh,00ah,007h	; 672e  ...;.F$.........
	defb 003h,000h,000h,084h,0c2h,062h,027h,07fh,0ceh,086h,0cch,0f8h,0b0h,000h,000h,040h	; 673e  .....b'........@
	defb 080h,000h,001h,000h,000h,01dh,03fh,07fh,0adh,0d2h,0adh,0c7h,047h,033h,003h,000h	; 674e  ......?.....G3..
	defb 09dh,0e0h,050h,038h,064h,0fch,0fch,068h,098h,070h,0a0h,0e2h,0f2h,0dch,088h,070h	; 675e  ..P8d..h.p.....p
	defb 000h,000h,001h,000h,000h,01dh,033h,061h,0f3h,0bfh,0eeh,0c4h,046h,033h,003h,000h	; 676e  ......3a....F3..
	defb 090h,0e0h,070h,028h,07ch,09ch,00ch,098h,0f8h,0f0h,060h,022h,072h,0bch,0f8h,070h	; 677e  ..p(|.....`"r..p
	defb 000h,000h	; 678e

; ----------------------------------------------------------------------
; DATOS rle_6790: patrones de sprite en RLE de la cosa 3 (p00:56C1); lo leen
;   p00:56C7 (259 bytes)
;   0x6790..0x6893  (259 bytes)
DATA_rle_6790:
	defb 0c3h,014h,028h,048h,050h,090h,088h,045h,043h,023h,016h,03fh,07dh,0dfh,0ffh,0ffh	; 6790  ..(HP..EC#.?}...
	defb 0efh,028h,014h,012h,00ah,009h,009h,0d1h,0e2h,062h,034h,07eh,0ddh,07fh,0ffh,07eh	; 67a0  .(.......b4~...~
	defb 0feh,01ch,038h,078h,070h,0f0h,0f8h,07dh,07eh,03eh,01dh,03ah,04fh,0aah,08dh,09eh	; 67b0  ..8xp..}~>.:O...
	defb 0bbh,038h,01ch,01eh,00eh,00fh,00fh,0dfh,03eh,0beh,0dch,0aah,07bh,0a9h,0d9h,0beh	; 67c0  .8......>...{...
	defb 0eah,07fh,077h,07bh,003h,03fh,0ffh,02bh,01eh,03ch,03fh,03fh,07fh,07fh,03fh,00fh	; 67d0  ..w{.?.+.<??..?.
	defb 000h,0ffh,07fh,0ffh,0f6h,0eeh,0eeh,03eh,07ch,07ch,0feh,0feh,0dah,0dah,0fch,0e0h	; 67e0  .......>||......
	defb 000h,04dh,05eh,067h,032h,03dh,027h,03fh,01eh,03ch,03fh,03fh,07fh,07fh,03fh,00fh	; 67f0  .M^g2='?.<??..?.
	defb 000h,0d9h,0b9h,0edh,0deh,0f2h,0f2h,036h,04ch,064h,0deh,082h,0a6h,0feh,0fch,0e0h	; 6800  .......6Ld......
	defb 000h,014h,028h,048h,050h,090h,090h,08bh,047h,046h,02ch,07eh,0bbh,0feh,0ffh,07eh	; 6810  ..(HP...GF,~...~
	defb 07fh,028h,014h,012h,00ah,009h,011h,0a2h,0c2h,0c4h,068h,0fch,0beh,0fbh,0ffh,0ffh	; 6820  .(........h.....
	defb 0f7h,01ch,038h,078h,070h,0f0h,0f0h,0fbh,07ch,07dh,03bh,055h,0deh,095h,09bh,075h	; 6830  ..8xp...|};U...u
	defb 05bh,038h,01ch,01eh,00eh,00fh,01fh,0beh,07eh,07ch,0b8h,05ch,0f2h,055h,0b1h,059h	; 6840  [8......~|.\.U.Y
	defb 0bdh,0feh,0ffh,0ffh,06fh,077h,08eh,077h,07ch,03eh,03eh,07fh,07fh,05bh,05bh,03fh	; 6850  ....ow.w|>>..[[?
	defb 007h,000h,0feh,0eeh,0deh,003h,0fch,0aah,0d4h,078h,03ch,0fch,0fch,0feh,0feh,0fch	; 6860  .........x<.....
	defb 0f0h,000h,09dh,09fh,0b7h,07bh,04fh,04fh,06ch,032h,026h,07bh,041h,065h,07fh,03fh	; 6870  .....{OOl2&{Ae.?
	defb 007h,000h,072h,0fah,0e6h,04ch,0bch,0e4h,0fch,078h,03ch,0fch,0fch,0feh,0feh,0fch	; 6880  ..r..L...x<.....
	defb 0f0h,000h,000h	; 6890

; ----------------------------------------------------------------------
; DATOS rle_6893: patrones de sprite en RLE de la cosa 4 (p00:56C1); lo leen
;   p00:56C7 (66 bytes)
;   0x6893..0x68d5  (66 bytes)
DATA_rle_6893:
	defb 093h,014h,028h,068h,050h,0d0h,0d0h,0ebh,077h,07eh,03ch,01eh,03bh,07eh,03fh,01eh	; 6893  ..(hP...w~<.;~?.
	defb 00fh,028h,014h,016h,003h,00bh,09dh,0b6h,0ceh,0fch,078h,0f0h,0b8h,0fch,0f8h,0f0h	; 68a3  .(........x.....
	defb 0e0h,01ch,038h,058h,070h,0b0h,0b0h,09bh,04ch,045h,02bh,015h,01eh,035h,01bh,00dh	; 68b3  ..8Xp...LE+..5..
	defb 007h,038h,01ch,01ah,003h,00dh,08ah,0bah,072h,044h,0a8h,050h,0f0h,058h,0b0h,060h	; 68c3  .8......rD.P.X.`
	defb 0c0h,000h	; 68d3

; ----------------------------------------------------------------------
; DATOS rle_68D5: patrones de sprite en RLE de la cosa 10 (p00:56C1); lo leen
;   p00:56C7 (66 bytes)
;   0x68d5..0x6917  (66 bytes)
DATA_rle_68D5:
	defb 0c0h,01eh,025h,05ah,06dh,05eh,0edh,0bbh,0afh,095h,068h,09dh,0bbh,0bfh,0bch,051h	; 68d5  ..%Zm^....h....Q
	defb 03fh,078h,0a4h,05ah,0b6h,07ah,0b7h,0ddh,0f5h,0a9h,016h,0b9h,0ddh,0fdh,03dh,08ah	; 68e5  ?x.Z.z........=.
	defb 0fch,01eh,03bh,07dh,076h,06bh,0b7h,0dch,0dah,0ffh,057h,0fbh,0ffh,0ffh,0f7h,06eh	; 68f5  ..;}vk....W....n
	defb 03fh,078h,0dch,0beh,06eh,0d6h,0edh,03bh,05bh,0ffh,0eah,0dfh,0ffh,0ffh,0efh,076h	; 6905  ?x..n..;[......v
	defb 0fch,000h	; 6915

; ----------------------------------------------------------------------
; DATOS rle_6917: patrones de sprite en RLE de la cosa 5 (p00:56C1); lo leen
;   p00:56C7 (131 bytes)
;   0x6917..0x699a  (131 bytes)
DATA_rle_6917:
	defb 0ffh,007h,00bh,015h,033h,035h,07eh,0e7h,068h,0e9h,0f7h,077h,0bbh,02fh,01fh,009h	; 6917  ....35~.h..w./..
	defb 004h,0e0h,0d0h,0a8h,0cch,0ach,07eh,0e7h,016h,097h,0efh,0eeh,0ddh,0f4h,0f8h,090h	; 6927  ......~.........
	defb 020h,007h,00ch,01ah,03ch,03eh,07bh,0feh,077h,0feh,0ffh,07bh,0bch,02fh,01fh,009h	; 6937   ...<>{.w..{./..
	defb 004h,0e0h,030h,058h,03ch,07ch,0deh,07fh,0eeh,07fh,0ffh,0deh,03dh,0f4h,0f8h,090h	; 6947  ..0X<|......=...
	defb 020h,007h,008h,011h,033h,031h,07eh,0e7h,068h,0e9h,0f7h,073h,0bdh,02fh,01fh,009h	; 6957   ...31~.h..s./..
	defb 004h,0e0h,010h,088h,0cch,08ch,07eh,0e7h,016h,097h,0efh,0ceh,0bdh,0f4h,0f8h,090h	; 6967  ......~.........
	defb 020h,007h,00fh,01eh,03ch,03eh,079h,0feh,077h,0feh,0ffh,07ch,0beh,02fh,01fh,009h	; 6977   ...<>y.w..|./..
	defb 004h,0e0h,0f0h,078h,03ch,07ch,09eh,07fh,0eeh,07fh,0ffh,03eh,07dh,0f4h,0f8h,090h	; 6987  ...x<|.....>}...
	defb 081h,020h,000h	; 6997

; ----------------------------------------------------------------------
; DATOS rle_699A: patrones de sprite en RLE de la cosa 2 (p00:56C1); lo leen
;   p00:56C7 (131 bytes)
;   0x699a..0x6a1d  (131 bytes)
DATA_rle_699A:
	defb 0ffh,041h,0e2h,0f3h,0bdh,07ah,056h,02bh,04dh,0ceh,06fh,036h,01fh,015h,00bh,005h	; 699a  .A...zV+M.o6....
	defb 003h,082h,047h,0cfh,0bdh,05eh,06ah,0d4h,0b2h,073h,0f6h,06ch,0f8h,0a8h,0d0h,0a0h	; 69aa  ..G..^j..s.l....
	defb 0c0h,041h,0a3h,092h,0ceh,045h,069h,03ch,07eh,0bbh,056h,03bh,018h,01fh,00fh,006h	; 69ba  .A...Ei<~.V;....
	defb 003h,082h,0c5h,049h,073h,0a2h,096h,03ch,07eh,0ddh,06ah,0dch,018h,0f8h,0f0h,060h	; 69ca  ...Is..<~.j....`
	defb 0c0h,041h,0e2h,0f3h,0bdh,056h,026h,06bh,0cdh,06eh,02fh,016h,01bh,015h,017h,00bh	; 69da  .A...V&k.n/.....
	defb 005h,082h,047h,0cfh,0bdh,06ah,064h,0d6h,0b3h,076h,0f4h,068h,0d8h,0a8h,0e8h,0d0h	; 69ea  ..G..jd..v.h....
	defb 0a0h,041h,0a3h,092h,0ceh,069h,039h,07ch,0beh,05bh,036h,019h,01ch,01fh,01fh,00fh	; 69fa  .A...i9|.[6.....
	defb 006h,082h,0c5h,049h,073h,096h,09ch,03eh,07dh,0dah,06ch,098h,038h,0f8h,0f8h,0f0h	; 6a0a  ...Is..>}.l.8...
	defb 081h,060h,000h	; 6a1a

; ----------------------------------------------------------------------
; DATOS rle_6A1D: patrones de sprite en RLE de la cosa 6 (p00:56C1); lo leen
;   p00:56C7 (131 bytes)
;   0x6a1d..0x6aa0  (131 bytes)
DATA_rle_6A1D:
	defb 0ffh,007h,00ah,014h,015h,02ch,033h,065h,0ceh,097h,05fh,06ch,0bdh,09bh,0aeh,073h	; 6a1d  .....,3e.._l...s
	defb 000h,0e0h,050h,028h,0a8h,034h,0cch,0a6h,073h,0e9h,0fah,036h,0bdh,0dah,075h,0d3h	; 6a2d  ..P(.4..s..6..u.
	defb 00eh,007h,00dh,01bh,01fh,03bh,03ch,05ah,0b1h,0ech,066h,053h,0eeh,0ffh,0ddh,073h	; 6a3d  .....;<Z..fS...s
	defb 000h,0e0h,0b0h,0d8h,0f8h,0dch,03ch,05ah,08dh,037h,066h,0cah,077h,0feh,0bbh,0ddh	; 6a4d  ......<Z.7f.w...
	defb 00eh,00fh,014h,028h,02dh,04ch,073h,065h,0ceh,097h,05fh,06ch,0bdh,05bh,0afh,0cah	; 6a5d  ...(-Lse.._l.[..
	defb 071h,0c0h,0a0h,050h,0a8h,038h,0cch,0a6h,073h,0e9h,0fah,036h,0bdh,0d9h,0f5h,04eh	; 6a6d  q..P.8..s..6...N
	defb 080h,00fh,01bh,037h,037h,07bh,07ch,05ah,0b1h,0ech,066h,053h,0eeh,07fh,0ddh,0bbh	; 6a7d  ...77{|Z..fS....
	defb 071h,0c0h,060h,0b0h,0f8h,0d8h,03ch,05ah,08dh,037h,066h,0cah,077h,0ffh,0bbh,0ceh	; 6a8d  q.`...<Z.7f.w...
	defb 081h,080h,000h	; 6a9d

; ----------------------------------------------------------------------
; DATOS rle_6AA0: patrones de sprite en RLE de la cosa 7 (p00:56C1); lo leen
;   p00:56C7 (131 bytes)
;   0x6aa0..0x6b23  (131 bytes)
DATA_rle_6AA0:
	defb 0ffh,001h,002h,00dh,01dh,017h,01bh,03ch,053h,06dh,066h,03dh,01eh,01eh,015h,00bh	; 6aa0  .......<Smf=....
	defb 01eh,0e0h,0d0h,0ech,0eeh,0fah,0f4h,0ceh,0f7h,0efh,0cdh,016h,038h,0bch,0d4h,068h	; 6ab0  ............8..h
	defb 03ch,001h,003h,00eh,017h,01ah,01dh,027h,06eh,05bh,05dh,026h,019h,013h,01bh,00dh	; 6ac0  <......'n[]&....
	defb 012h,0e0h,030h,01ch,03ah,0d6h,0ech,03ah,0ddh,039h,0fbh,0f6h,0c8h,064h,0ech,058h	; 6ad0  ..0.:..:.9...d.X
	defb 024h,001h,01bh,017h,037h,059h,074h,07ch,056h,05bh,039h,018h,072h,0e5h,078h,030h	; 6ae0  $...7Yt|V[9.r.x0
	defb 000h,0e0h,0f6h,0fah,0fah,0f4h,0eeh,0cdh,0dbh,0fbh,0fah,0cch,01ah,0e7h,09eh,00ch	; 6af0  ................
	defb 000h,001h,01ah,01fh,03ah,06fh,04fh,05fh,06fh,06eh,03fh,017h,06fh,09dh,048h,030h	; 6b00  ....:oO_on?.o.H0
	defb 000h,0e0h,016h,02eh,0d6h,0ech,01ah,0fbh,0fdh,0d5h,036h,0fch,0e6h,079h,092h,00ch	; 6b10  ..........6..y..
	defb 081h,000h,000h	; 6b20

; ----------------------------------------------------------------------
; DATOS rle_6B23: patrones de sprite en RLE de la cosa 12 (p00:56C1); lo leen
;   p00:56C7 (131 bytes)
;   0x6b23..0x6ba6  (131 bytes)
DATA_rle_6B23:
	defb 0ffh,005h,00fh,01ch,01bh,03fh,02fh,037h,07bh,05eh,07ah,0f7h,0afh,04fh,037h,01ah	; 6b23  .....?/7{^z..O7.
	defb 00fh,0a0h,0f0h,038h,0d8h,0fch,0f4h,0ech,0deh,07ah,05eh,0efh,0f5h,0f2h,0ech,058h	; 6b33  ...8.....z^....X
	defb 0f0h,007h,00ah,017h,01dh,02ah,03dh,03eh,05dh,07fh,07dh,0bdh,0ffh,07fh,03dh,01dh	; 6b43  .....*=>].}...=.
	defb 00fh,0e0h,050h,0e8h,0b8h,054h,0bch,07ch,0bah,0feh,0beh,0bdh,0ffh,0feh,0bch,0b8h	; 6b53  ..P..T.|........
	defb 0f0h,005h,00fh,01ch,01bh,03fh,02fh,02fh,073h,05eh,07ah,0f7h,0afh,047h,03ah,01fh	; 6b63  .....?//s^z..G:.
	defb 007h,0a0h,0f0h,038h,0d8h,0fch,0f4h,0f4h,0ceh,07ah,05eh,0efh,0f5h,0e2h,05ch,0f8h	; 6b73  ...8.....z^...\.
	defb 0e0h,007h,00ah,017h,01dh,02eh,03bh,03eh,05dh,07fh,07dh,0bdh,0ffh,07dh,03dh,01fh	; 6b83  ......;>].}..}=.
	defb 007h,0e0h,050h,0e8h,0b8h,074h,0dch,07ch,0bah,0feh,0beh,0bdh,0ffh,0beh,0bch,0f8h	; 6b93  ..P..t.|........
	defb 081h,0e0h,000h	; 6ba3

; ----------------------------------------------------------------------
; DATOS rle_6BA6: patrones de sprite en RLE de la cosa 11 (p00:56C1); lo leen
;   p00:56C7 (172 bytes)
;   0x6ba6..0x6c52  (172 bytes)
DATA_rle_6BA6:
	defb 0c0h,003h,0c4h,0e9h,0f3h,0f0h,0d3h,0f1h,0d7h,067h,073h,031h,076h,07fh,07fh,03fh	; 6ba6  .........gs1v..?
	defb 00fh,0c0h,023h,0f7h,0ffh,0f7h,0e3h,0cfh,0fbh,0f6h,0feh,0fch,0f8h,0f8h,0f0h,0e0h	; 6bb6  ..#.............
	defb 080h,003h,0c7h,0aeh,09ch,09fh,0bch,0beh,0bfh,05dh,04fh,03eh,07fh,07bh,07ch,03fh	; 6bc6  .........]O>.{|?
	defb 00fh,0c0h,0e3h,015h,009h,009h,01dh,03dh,0edh,0aah,0c2h,00ch,068h,0d8h,030h,0e0h	; 6bd6  .......=....h.0.
	defb 080h,003h,000h,08ch,003h,0c4h,0e9h,0f3h,0f0h,0d3h,0f7h,0d7h,0e7h,078h,03fh,01fh	; 6be6  .............x?.
	defb 004h,000h,08ch,0c0h,023h,0f7h,0ffh,0f7h,0f3h,0dfh,0fbh,0f6h,038h,0f0h,080h,004h	; 6bf6  ....#.......8...
	defb 000h,08ch,003h,0c7h,0aeh,09ch,09fh,0bch,0b8h,0ffh,0fdh,07fh,03fh,01fh,004h,000h	; 6c06  ............?...
	defb 08ch,0c0h,0e3h,015h,009h,009h,00dh,02dh,0efh,0aeh,0d8h,0f0h,080h,007h,000h,088h	; 6c16  .......-........
	defb 003h,0c4h,0e9h,0f3h,0f0h,0fbh,03fh,01fh,008h,000h,088h,0c0h,023h,0f7h,0ffh,0ffh	; 6c26  ......?.....#...
	defb 0feh,0e0h,080h,008h,000h,088h,003h,0c7h,0aeh,09ch,0ffh,0fch,03fh,01fh,008h,000h	; 6c36  ............?...
	defb 08ah,0c0h,0e3h,015h,009h,00fh,01eh,0e0h,080h,000h,000h,000h	; 6c46  ............

; ----------------------------------------------------------------------
; DATOS rle_6C52: patrones de sprite en RLE de la cosa 1 (p00:56C1); lo leen
;   p00:56C7 (66 bytes)
;   0x6c52..0x6c94  (66 bytes)
DATA_rle_6C52:
	defb 0c0h,007h,018h,031h,061h,0ach,07eh,0f7h,05dh,0d7h,04bh,0afh,07fh,0b4h,07ah,0bdh	; 6c52  ...1a.~.].K...z.
	defb 073h,0c0h,0f8h,0f4h,0cah,0b5h,07fh,0eah,075h,0dfh,0b6h,0eah,0feh,05bh,0bdh,07ah	; 6c62  s.......u....[.z
	defb 0dch,007h,01fh,03eh,07eh,0ffh,0f7h,0fah,0feh,0ech,077h,0ffh,077h,0efh,06dh,0beh	; 6c72  ...>~.....w.w.m.
	defb 073h,0c0h,038h,01ch,03eh,07fh,0efh,0deh,0ffh,067h,0ceh,0feh,0deh,0efh,06dh,0fah	; 6c82  s.8.>....g....m.
	defb 0dch,000h	; 6c92

; ----------------------------------------------------------------------
; DATOS rle_6C94: patrones de sprite en RLE de la cosa 13 (p00:56C1); lo leen
;   p00:56C7 (246 bytes)
;   0x6c94..0x6d8a  (246 bytes)
DATA_rle_6C94:
	defb 005h,000h,08bh,004h,00eh,00fh,00fh,035h,04bh,0b5h,096h,072h,09ah,0ebh,005h,000h	; 6c94  .......5K..r....
	defb 08bh,090h,0b8h,0f8h,0f8h,054h,0eah,0f2h,0d6h,06ah,0edh,0f7h,005h,000h,08bh,004h	; 6ca4  .....T...j......
	defb 00ah,00bh,00dh,03eh,076h,0cfh,0edh,0ffh,0ffh,09eh,005h,000h,0ffh,090h,028h,068h	; 6cb4  ...>v.........(h
	defb 058h,0bch,036h,05eh,03eh,0beh,0fbh,0b9h,0afh,05fh,0d7h,0ffh,074h,02eh,077h,076h	; 6cc4  X.6^>...._..t.wv
	defb 02bh,013h,00dh,03fh,079h,07bh,035h,01fh,0fbh,0beh,04fh,09fh,015h,05dh,02ah,054h	; 6cd4  +..?y{5...O..]*T
	defb 0c8h,0d8h,03eh,0efh,0ffh,0feh,0fch,080h,0dfh,067h,0abh,0abh,07fh,039h,04ch,04fh	; 6ce4  ..>......g...9LO
	defb 037h,01fh,00bh,03dh,07eh,07dh,03fh,01fh,07dh,0e6h,0f1h,0efh,0fbh,0b3h,0f6h,0ech	; 6cf4  7..=~}?.}.......
	defb 0f8h,0e8h,026h,0f3h,0ebh,0feh,0fch,080h,009h,01dh,01fh,02fh,07ah,057h,06bh,02dh	; 6d04  ..&......../zWk-
	defb 024h,075h,0f7h,0dbh,02fh,0dfh,07bh,0bdh,020h,070h,0f0h,0e0h,0b0h,0cch,0f2h,0b9h	; 6d14  $u../.{. p......
	defb 0d6h,0cdh,0cbh,0afh,0d7h,0e2h,0fah,0d5h,009h,014h,016h,03ah,04dh,06ch,07eh,03ah	; 6d24  ...........:Ml~:
	defb 03fh,05fh,09dh,0beh,0dfh,0bfh,067h,0c3h,020h,050h,0d0h,0a0h,097h,070h,07ch,0aeh	; 6d34  ?_....g. P...p|.
	defb 067h,06fh,0ffh,07dh,0d9h,0f9h,0feh,0c6h,0abh,0feh,0fch,0e8h,07ch,02fh,013h,01ch	; 6d44  go.}........|/..
	defb 03ch,044h,07dh,028h,005h,000h,09bh,0bfh,07fh,007h,03bh,0d5h,0efh,0feh,054h,0a8h	; 6d54  <D}(......;...T.
	defb 070h,0b0h,0b8h,09ch,044h,07ch,028h,0f1h,09bh,09fh,04fh,037h,01fh,014h,024h,07ch	; 6d64  p...D|(...O7..$|
	defb 055h,028h,005h,000h,090h,0ebh,0ffh,0f9h,0fdh,0efh,0f3h,0e2h,06ch,0d8h,0b0h,0d0h	; 6d74  U(..........l...
	defb 0c8h,0e4h,07ch,054h,028h,000h	; 6d84

; ----------------------------------------------------------------------
; DATOS rle_6D8A: patrones de sprite en RLE de la cosa 15 (p00:56C1); lo leen
;   p00:56C7 (131 bytes)
;   0x6d8a..0x6e0d  (131 bytes)
DATA_rle_6D8A:
	defb 0ffh,000h,044h,0efh,0edh,0bbh,05bh,03ah,02dh,015h,017h,00fh,016h,03dh,069h,09eh	; 6d8a  ..D...[:-....=i.
	defb 06fh,042h,0f7h,0edh,0fah,0d4h,0f4h,0b8h,0a8h,068h,050h,0e0h,0d8h,0eeh,0f3h,0deh	; 6d9a  oB.......hP.....
	defb 0f8h,000h,044h,0abh,0abh,0deh,06eh,02fh,037h,01fh,01fh,00fh,01fh,02eh,05fh,0f3h	; 6daa  ..D...n/7....._.
	defb 06fh,042h,0b5h,05bh,056h,0bch,0ach,0e8h,078h,0d8h,0f0h,0e0h,0f8h,0b6h,0ddh,06eh	; 6dba  oB.[V...x......n
	defb 0f8h,042h,0efh,0b7h,05fh,02bh,02fh,01dh,015h,016h,00ah,007h,01bh,077h,0cfh,07bh	; 6dca  .B.._+/......w.{
	defb 01fh,000h,022h,0f7h,0b7h,0ddh,0dah,05ch,0b4h,0a8h,0e8h,0f0h,068h,0bch,096h,079h	; 6dda  .."....\....h..y
	defb 0f6h,042h,0adh,0dah,06ah,03dh,035h,017h,01eh,01bh,00fh,007h,01fh,06dh,0bbh,076h	; 6dea  .B..j=5......m.v
	defb 01fh,000h,022h,0d5h,0d5h,07bh,076h,0f4h,0ech,0f8h,0f8h,0f0h,0f8h,074h,0fah,0cfh	; 6dfa  .."..{v......t..
	defb 081h,0f6h,000h	; 6e0a

; ----------------------------------------------------------------------
; DATOS rle_6E0D: patrones de sprite en RLE de la cosa 8 (p00:56C1); lo leen
;   p00:56C7 (131 bytes)
;   0x6e0d..0x6e90  (131 bytes)
DATA_rle_6E0D:
	defb 0ffh,007h,01dh,030h,071h,04fh,0cdh,0bbh,095h,0dfh,09fh,0efh,047h,069h,032h,01dh	; 6e0d  ...0qO......Gi2.
	defb 007h,0e0h,038h,0cch,016h,0e2h,0f3h,0f5h,0f9h,0f1h,0fdh,0e7h,0f2h,016h,0dch,038h	; 6e1d  ..8............8
	defb 0e0h,007h,01eh,03fh,06eh,077h,0ffh,0dfh,0ffh,0bfh,0ffh,0dch,07fh,076h,03dh,01eh	; 6e2d  ...?nw.......v=.
	defb 007h,0e0h,0f8h,03ch,0eeh,0deh,06fh,0fbh,0d7h,09fh,033h,07bh,0ceh,0eeh,02ch,0f8h	; 6e3d  ...<..o...3{..,.
	defb 0e0h,007h,01ch,033h,068h,047h,0cfh,0afh,09fh,08fh,0bfh,0e7h,04fh,068h,03bh,01ch	; 6e4d  ...3hG......Oh;.
	defb 007h,0e0h,0b8h,00ch,08eh,0f2h,0b3h,0ddh,0a9h,0fbh,0f9h,0f7h,0e2h,096h,04ch,0b8h	; 6e5d  ..............L.
	defb 0e0h,007h,01fh,03ch,077h,07bh,0f6h,0dfh,0ebh,0f9h,0cch,0deh,073h,077h,034h,01fh	; 6e6d  ...<w{......sw4.
	defb 007h,0e0h,078h,0fch,076h,0eeh,0ffh,0fbh,0ffh,0fdh,0ffh,03bh,0feh,06eh,0bch,078h	; 6e7d  ..x.v......;.n.x
	defb 081h,0e0h,000h	; 6e8d

; ----------------------------------------------------------------------
; DATOS rle_6E90: patrones de sprite en RLE de la cosa 14 (p00:56C1); lo leen
;   p00:56C7 (231 bytes)
;   0x6e90..0x6f77  (231 bytes)
DATA_rle_6E90:
	defb 0ffh,007h,00fh,01dh,02fh,046h,047h,05dh,03fh,01fh,01fh,017h,03bh,074h,07bh,03ch	; 6e90  ..../FG]?...;t{<
	defb 00fh,0f0h,0f8h,0dch,0fah,0b1h,0f1h,0ddh,0feh,0fch,0fch,0f4h,0fch,074h,0fch,078h	; 6ea0  .............t.x
	defb 0f0h,007h,008h,016h,037h,079h,07dh,06fh,02fh,017h,01ah,01ch,03fh,07fh,07fh,03fh	; 6eb0  ....7y}o/...?..?
	defb 00fh,0f0h,008h,034h,076h,04fh,0dfh,0fbh,0fah,0f4h,0ach,01ch,0ech,09ch,0ech,098h	; 6ec0  ...4vO..........
	defb 0f0h,000h,000h,007h,00fh,01dh,02fh,046h,057h,03dh,01fh,01bh,03fh,074h,07bh,03ch	; 6ed0  ....../FW=..?t{<
	defb 00fh,000h,000h,0f0h,0f8h,0dch,0fah,0b1h,0f5h,0deh,0fch,0ech,0fch,074h,0fch,078h	; 6ee0  .............t.x
	defb 0f0h,000h,000h,007h,008h,016h,037h,079h,06dh,02fh,016h,01ch,03fh,07fh,07fh,03fh	; 6ef0  ......7ym/..?..?
	defb 00fh,000h,000h,0f0h,008h,034h,076h,04fh,0dbh,0fah,0b4h,01ch,0fch,09ch,0ech,098h	; 6f00  .....4vO........
	defb 081h,0f0h,005h,000h,08bh,007h,00fh,01dh,02fh,046h,057h,03dh,07fh,07bh,03fh,00fh	; 6f10  ......../FW=.{?.
	defb 005h,000h,08bh,0f0h,0f8h,0dch,0fah,0b1h,0f5h,0deh,0fch,0ech,0f8h,0e0h,005h,000h	; 6f20  ................
	defb 08bh,007h,008h,016h,037h,079h,06dh,02fh,076h,07ch,03fh,00fh,005h,000h,08bh,0f0h	; 6f30  ....7ym/v|?.....
	defb 008h,034h,076h,04fh,0dbh,0fah,0b4h,01ch,0f8h,0e0h,008h,000h,088h,007h,00fh,01dh	; 6f40  .4vO............
	defb 02fh,066h,077h,03dh,00fh,008h,000h,088h,0f0h,0f8h,0dch,0fah,0b2h,0f4h,0d8h,0f0h	; 6f50  /fw=............
	defb 008h,000h,088h,007h,008h,016h,037h,079h,07dh,03fh,00fh,008h,000h,088h,0f0h,008h	; 6f60  ......7y}?......
	defb 034h,076h,04eh,0dch,0f8h,0f0h,000h	; 6f70

; ----------------------------------------------------------------------
; DATOS rle_6F77: patrones de sprite en RLE de la cosa 0 (p00:56C1); lo leen
;   p00:56C7 (259 bytes)
;   0x6f77..0x707a  (259 bytes)
DATA_rle_6F77:
	defb 0ffh,013h,035h,03bh,02fh,012h,013h,019h,01dh,02bh,03ch,039h,03ah,019h,01dh,00fh	; 6f77  ..5;/....+<9:...
	defb 003h,0c8h,0ach,0dch,0f4h,048h,0c8h,098h,0b8h,0d4h,03ch,09ch,05ch,098h,0b8h,0f0h	; 6f87  .....H....<.\...
	defb 0c0h,013h,036h,02ch,036h,01fh,01ch,017h,01eh,037h,023h,027h,037h,017h,01bh,00dh	; 6f97  ..6,6....7#'7...
	defb 003h,0c8h,06ch,034h,06ch,0f8h,038h,0e8h,078h,0ech,0c4h,0e4h,0ech,0e8h,0d8h,0b0h	; 6fa7  ..l4l.8.x.......
	defb 0c0h,013h,035h,03bh,02fh,012h,013h,01fh,01fh,02dh,03bh,031h,032h,035h,01ch,018h	; 6fb7  ..5;/....-;125..
	defb 008h,0c8h,0ach,0dch,0f4h,048h,0c8h,0f8h,0f8h,0b4h,0dch,08ch,04ch,0ach,038h,018h	; 6fc7  .....H......L.8.
	defb 010h,013h,036h,02ch,036h,01fh,01ch,015h,01bh,036h,027h,02fh,02fh,02dh,014h,018h	; 6fd7  ..6,6....6'//-..
	defb 008h,0c8h,06ch,034h,06ch,0f8h,038h,0a8h,0d8h,06ch,0e4h,0f4h,0f4h,0b4h,028h,018h	; 6fe7  ..l4l.8..l....(.
	defb 090h,010h,000h,000h,013h,035h,03bh,02fh,012h,037h,07fh,07fh,0e7h,0e3h,0d9h,0e6h	; 6ff7  .....5;/.7......
	defb 041h,003h,000h,08dh,0c8h,0ach,0dch,0f4h,048h,0ech,0feh,0feh,0e7h,0c7h,09bh,067h	; 7007  A.......H......g
	defb 082h,003h,000h,08dh,013h,036h,02ch,036h,01fh,038h,055h,04bh,09dh,09eh,0bfh,0a7h	; 7017  .....6,6.8UK....
	defb 041h,003h,000h,08dh,0c8h,06ch,034h,06ch,0f8h,01ch,0aah,0d2h,0b9h,079h,0fdh,0e5h	; 7027  A....l4l.....y..
	defb 082h,003h,000h,08dh,003h,017h,02fh,02ah,017h,037h,07fh,07fh,0e7h,0c3h,0c9h,076h	; 7037  ....../*.7.....v
	defb 021h,003h,000h,08dh,0c0h,0e8h,0f4h,054h,0e8h,0ech,0feh,0feh,0e7h,0c3h,093h,06eh	; 7047  !......T.......n
	defb 084h,003h,000h,08dh,003h,014h,03eh,037h,018h,03dh,057h,04bh,09dh,0beh,0bfh,057h	; 7057  ......>7.=WK...W
	defb 021h,003h,000h,08eh,0c0h,028h,07ch,0ech,018h,0bch,0eah,0d2h,0b9h,07dh,0fdh,0eah	; 7067  !....(|......}..
	defb 084h,000h,000h	; 7077

; ----------------------------------------------------------------------
; DATOS rle_707A: patrones de sprite en RLE de la cosa 39 (p00:56C1); lo leen
;   p00:56C7 (52 bytes)
;   0x707a..0x70ae  (52 bytes)
DATA_rle_707A:
	defb 005h,000h,085h,002h,022h,055h,009h,008h,009h,000h,089h,020h,000h,020h,020h,056h	; 707a  ...."U..... .  V
	defb 088h,080h,000h,080h,005h,000h,005h,002h,09ah,004h,01ah,001h,005h,005h,001h,001h	; 708a  ................
	defb 000h,001h,000h,040h,000h,040h,040h,050h,050h,040h,0ach,030h,020h,020h,000h,020h	; 709a  ...@.@@PP@.0  .
	defb 020h,000h,000h,000h	; 70aa

; ----------------------------------------------------------------------
; DATOS patrones_f8a0: 7 palabras, por 0xC840: los 32 bytes que p00:566E sube
;   a la VRAM 0xF8A0 (un patron de sprite de 16x16); lo leen p00:5674 (14
;   bytes)
;   0x70ae..0x70bc  (14 bytes)
DATA_patrones_f8a0:
	defb 0d3h,070h	; 70ae
	defb 0f3h,070h	; 70b0
	defb 0f3h,070h	; 70b2
	defb 013h,071h	; 70b4
	defb 013h,071h	; 70b6
	defb 013h,071h	; 70b8
	defb 013h,071h	; 70ba

; ----------------------------------------------------------------------
; DATOS rle_70BC: patrones en RLE para la VRAM 0xF880 (p00:4A8D: 0 acaba, 0x80
;   cambia de direccion, bit 7 = tal cual, sin el = repetir); lo leen p00:4ACA
;   (lista 0x6030) (23 bytes)
;   0x70bc..0x70d3  (23 bytes)
DATA_rle_70BC:
	defb 008h,000h,082h,001h,00fh,003h,01fh,083h,00fh,007h,001h,008h,000h,088h,0c0h,0e0h	; 70bc  ................
	defb 0f6h,0feh,0feh,0fch,0d8h,080h,000h	; 70cc

; ----------------------------------------------------------------------
; DATOS f8a0_70D3: 32 bytes para la VRAM 0xF8A0 (p00:566E); lo leen p00:5680
;   (32 bytes)
;   0x70d3..0x70f3  (32 bytes)
DATA_f8a0_70D3:
	defb 001h,001h,001h,001h,001h,001h,001h,001h,001h,004h,003h,000h,001h,001h,001h,000h	; 70d3  ................
	defb 000h,080h,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h,010h,0e0h,000h,0c0h,0c0h,0c0h,080h	; 70e3  ................

; ----------------------------------------------------------------------
; DATOS f8a0_70F3: 32 bytes para la VRAM 0xF8A0 (p00:566E); lo leen p00:5680
;   (32 bytes)
;   0x70f3..0x7113  (32 bytes)
DATA_f8a0_70F3:
	defb 001h,001h,003h,003h,003h,005h,001h,003h,003h,005h,001h,001h,001h,000h,000h,000h	; 70f3  ................
	defb 0c0h,0c0h,0e0h,0e0h,0d0h,0c0h,0e0h,0e0h,0d0h,0c0h,0c0h,0c0h,0c0h,080h,080h,080h	; 7103  ................

; ----------------------------------------------------------------------
; DATOS f8a0_7113: 32 bytes para la VRAM 0xF8A0 (p00:566E); lo leen p00:5680
;   (32 bytes)
;   0x7113..0x7133  (32 bytes)
DATA_f8a0_7113:
	defb 000h,000h,001h,002h,002h,00bh,00bh,007h,013h,00fh,000h,003h,000h,000h,000h,000h	; 7113  ................
	defb 000h,000h,000h,060h,080h,0f8h,0e4h,0f0h,0e8h,0e8h,0a0h,020h,040h,000h,000h,000h	; 7123  ...`....... @...

; ----------------------------------------------------------------------
; DATOS patrones_7133: 32 bytes de patrones de sprite de la cosa 40
;   (p00:56CA); lo leen p00:56D5 (32 bytes)
;   0x7133..0x7153  (32 bytes)
DATA_patrones_7133:
	defb 022h,036h,014h,02ah,01ch,02ah,01ch,008h,008h,008h,008h,008h,01ch,01ch,008h,000h	; 7133  "6.*.*..........
	defb 088h,0d8h,050h,0a8h,070h,0a8h,070h,020h,020h,020h,020h,020h,070h,070h,020h,000h	; 7143  ..P.p.p     pp .

; ----------------------------------------------------------------------
; DATOS vram_7153: 32 bytes tal cual a la VRAM 0xFA60 (p00:4B07); lo leen
;   p00:4B07 (lista 0x6030) (32 bytes)
;   0x7153..0x7173  (32 bytes)
DATA_vram_7153:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,010h,033h,014h,014h,014h,014h,013h,000h	; 7153  .........3......
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,06ch,092h,092h,092h,092h,06ch,000h	; 7163  .........l....l.

; ----------------------------------------------------------------------
; DATOS rle_7173: patrones en RLE para la VRAM 0xF8C0 (p00:4A8D: 0 acaba, 0x80
;   cambia de direccion, bit 7 = tal cual, sin el = repetir); lo leen p00:4ACA
;   (lista 0x6030) (82 bytes)
;   0x7173..0x71c5  (82 bytes)
DATA_rle_7173:
	defb 007h,000h,003h,003h,092h,005h,017h,028h,07ch,080h,000h,020h,072h,077h,07fh,03fh	; 7173  .......(|.. rw.?
	defb 026h,02ch,070h,0c0h,0f0h,0f0h,080h,00dh,000h,084h,001h,003h,000h,010h,006h,000h	; 7183  &,p.............
	defb 088h,014h,01ch,01ch,010h,000h,000h,080h,080h,00ch,000h,094h,006h,007h,007h,005h	; 7193  ................
	defb 017h,01ch,016h,038h,040h,070h,076h,0ffh,0feh,098h,0b0h,0c0h,080h,0e0h,0e0h,0c0h	; 71a3  ...8@pv.........
	defb 00eh,000h,002h,003h,002h,000h,081h,008h,004h,000h,084h,060h,078h,070h,040h,00ah	; 71b3  ...........`xp@.
	defb 000h,000h	; 71c3

; ----------------------------------------------------------------------
; DATOS sin_lector_71C5: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (251 bytes)
;   0x71c5..0x72c0  (251 bytes)
DATA_sin_lector_71C5:
	defb 001h,006h,008h,008h,030h,070h,078h,03eh,01ch,034h,07eh,07fh,07eh,03ch,01eh,007h	; 71c5  ....0px>.4~.~<..
	defb 0c0h,030h,0c8h,068h,024h,004h,008h,030h,018h,014h,03ch,07ch,03ch,098h,0b0h,0c0h	; 71d5  .0.h$..0..<|<...
	defb 001h,007h,00fh,00fh,03fh,07fh,07fh,03fh,01fh,03fh,07bh,075h,07bh,03fh,01fh,007h	; 71e5  ....?..?.?{u{?..
	defb 0c0h,0f0h,038h,098h,0dch,0fch,0f8h,0f0h,0f8h,0fch,0ech,0d4h,0ech,0f8h,0f0h,0c0h	; 71f5  ..8.............
	defb 000h,000h,000h,003h,00ch,010h,010h,060h,0e6h,0fch,060h,04ch,0c6h,0e0h,07ch,01fh	; 7205  .......`..`L..|.
	defb 000h,000h,000h,0e0h,018h,064h,034h,002h,032h,01ch,006h,019h,031h,082h,01ch,0e0h	; 7215  .....d4.2...1...
	defb 000h,000h,000h,003h,00fh,01fh,01fh,07fh,0ffh,0ffh,07fh,07fh,0ffh,0ffh,07fh,01fh	; 7225  ................
	defb 000h,000h,000h,0e0h,0f8h,09ch,0cch,0feh,0feh,0fch,0feh,0ffh,0ffh,0feh,0fch,0e0h	; 7235  ................
	defb 004h,000h,08ch,001h,003h,003h,007h,0e9h,0f0h,0b3h,067h,036h,029h,06dh,074h,005h	; 7245  ..........g6)mt.
	defb 000h,002h,080h,089h,0c0h,06eh,0feh,0f2h,0f4h,0e8h,0dch,0beh,0aeh,004h,000h,08ch	; 7255  .....n..........
	defb 001h,002h,002h,006h,0eeh,0bfh,0dfh,05dh,03fh,03eh,05eh,04fh,005h,000h,002h,080h	; 7265  .......]?>^O....
	defb 0c9h,0c0h,0aeh,01ah,09eh,04ch,0d8h,03ch,07ah,0f2h,0b7h,0f5h,0abh,0a4h,0a4h,0aeh	; 7275  .....L.<z.......
	defb 07fh,03fh,05eh,06ch,03eh,016h,01ch,03ch,03eh,016h,0d5h,0dbh,0afh,04bh,04fh,0ebh	; 7285  .?^l>..<>....KO.
	defb 0beh,0bch,07eh,032h,07ch,068h,038h,03ch,07ch,068h,0dfh,0beh,0cfh,0f7h,0d7h,0ebh	; 7295  ..~2|h8<|h......
	defb 051h,033h,066h,07ch,03ah,01eh,014h,024h,02ah,016h,07bh,0fdh,0e1h,0ddh,0d1h,0adh	; 72a5  Q3f|:..$*.{.....
	defb 0d2h,0fch,07ah,03eh,05ch,078h,028h,024h,054h,068h,000h	; 72b5  ..z>\x($Th.

; ----------------------------------------------------------------------
; DATOS rle_72C0: patrones en RLE para la VRAM 0xFA40 (p00:4A8D: 0 acaba, 0x80
;   cambia de direccion, bit 7 = tal cual, sin el = repetir); lo leen p00:4ACA
;   (lista 0x6030) (21 bytes)
;   0x72c0..0x72d5  (21 bytes)
DATA_rle_72C0:
	defb 005h,000h,086h,001h,003h,007h,005h,002h,001h,00ah,000h,086h,080h,0c0h,0e0h,0e0h	; 72c0  ................
	defb 040h,080h,005h,000h,000h	; 72d0

; ----------------------------------------------------------------------
; DATOS rle_72D5: patrones en RLE para la VRAM 0xF940 (p00:4A8D: 0 acaba, 0x80
;   cambia de direccion, bit 7 = tal cual, sin el = repetir); lo leen p00:4ACA
;   (lista 0x6030) (235 bytes)
;   0x72d5..0x73c0  (235 bytes)
DATA_rle_72D5:
	defb 0a0h,001h,000h,00fh,03fh,07fh,047h,0dfh,09ch,0beh,03eh,03fh,03bh,01bh,018h,00eh	; 72d5  ....?.G...>?;...
	defb 003h,0c0h,070h,018h,0d8h,0dch,0fch,07ch,07dh,039h,0fbh,0e2h,0feh,0fch,0f0h,000h	; 72e5  ..p....|}9......
	defb 080h,003h,000h,089h,00ch,003h,001h,007h,00fh,00fh,00bh,013h,011h,008h,000h,089h	; 72f5  ................
	defb 088h,0c8h,0d0h,0f0h,0f0h,0e0h,080h,0c0h,030h,003h,000h,0dfh,003h,00fh,010h,00eh	; 7305  ........0.......
	defb 03fh,079h,07eh,0e6h,0cch,0dbh,05bh,05eh,02eh,00fh,007h,001h,080h,0e0h,0f0h,074h	; 7315  ?y~...[^.......t
	defb 07ah,0dah,0dbh,033h,067h,07eh,09eh,0fch,070h,008h,0f0h,0c0h,000h,001h,000h,000h	; 7325  z..3g~..p.......
	defb 00eh,03fh,023h,047h,047h,00fh,00dh,00ch,004h,006h,001h,000h,000h,080h,060h,020h	; 7335  .?#GG.........`
	defb 030h,0b0h,0f0h,0e2h,0e2h,0c4h,0fch,070h,000h,000h,080h,000h,000h,007h,01eh,03fh	; 7345  0......p.......?
	defb 020h,00eh,03fh,078h,052h,076h,076h,037h,033h,01bh,001h,000h,000h,080h,0d8h,0cch	; 7355   .?xRvv73.......
	defb 0ech,06eh,06eh,04ah,01eh,0fch,070h,004h,0fch,078h,0e0h,003h,000h,081h,007h,003h	; 7365  .nnJ..p..x......
	defb 000h,082h,008h,010h,003h,020h,082h,002h,001h,006h,000h,082h,080h,040h,003h,004h	; 7375  ..... .......@..
	defb 082h,008h,010h,003h,000h,081h,0e0h,005h,000h,09ah,01eh,038h,060h,040h,040h,000h	; 7385  ...........8`@@.
	defb 010h,010h,018h,018h,00ch,007h,000h,000h,0e0h,030h,018h,018h,008h,008h,000h,002h	; 7395  .........0......
	defb 002h,006h,01ch,078h,007h,000h,082h,010h,020h,006h,000h,082h,008h,004h,004h,000h	; 73a5  ...x.... .......
	defb 082h,020h,010h,006h,000h,082h,004h,008h,004h,000h,000h	; 73b5  . .........

; ----------------------------------------------------------------------
; DATOS rle_73C0: patrones en RLE para la VRAM 0xF880 (p00:4A8D: 0 acaba, 0x80
;   cambia de direccion, bit 7 = tal cual, sin el = repetir); lo leen p00:4ACA
;   (lista 0x604C) (7 bytes)
;   0x73c0..0x73c7  (7 bytes)
DATA_rle_73C0:
	defb 005h,000h,081h,010h,01ah,000h,000h	; 73c0

; ----------------------------------------------------------------------
; DATOS rle_73C7: patrones en RLE para la VRAM 0xF8A0 (p00:4A8D: 0 acaba, 0x80
;   cambia de direccion, bit 7 = tal cual, sin el = repetir); lo leen p00:4ACA
;   (lista 0x604C) (19 bytes)
;   0x73c7..0x73da  (19 bytes)
DATA_rle_73C7:
	defb 004h,000h,002h,001h,085h,003h,01fh,003h,001h,001h,00bh,000h,083h,080h,0f0h,080h	; 73c7  ................
	defb 007h,000h,000h	; 73d7

; ----------------------------------------------------------------------
; DATOS rle_73DA: patrones en RLE para la VRAM 0xF800 (p00:4A8D: 0 acaba, 0x80
;   cambia de direccion, bit 7 = tal cual, sin el = repetir); lo leen p00:4ACA
;   (lista 0x604C) (125 bytes)
;   0x73da..0x7457  (125 bytes)
DATA_rle_73DA:
	defb 002h,000h,083h,003h,004h,007h,003h,00fh,083h,03fh,07fh,07fh,004h,0ffh,081h,07fh	; 73da  .........?......
	defb 003h,000h,002h,080h,003h,0c0h,098h,0f8h,0dch,0eeh,0fah,0fbh,0f9h,0fdh,0efh,000h	; 73ea  ................
	defb 000h,003h,007h,007h,00ch,00fh,00fh,03dh,04eh,046h,0a6h,0a3h,0b2h,097h,058h,003h	; 73fa  .......=NF....X.
	defb 000h,002h,080h,0a7h,0c0h,040h,0c0h,0f8h,0e4h,09eh,08eh,00fh,01fh,0dbh,02dh,03fh	; 740a  .....@........-?
	defb 01fh,01fh,03fh,03fh,01bh,01eh,01ah,012h,01ah,01eh,014h,012h,01eh,00eh,000h,0f7h	; 741a  ..??............
	defb 0f7h,0ffh,0f9h,0ffh,0d0h,0f0h,068h,048h,048h,078h,070h,004h,000h,09ch,037h,018h	; 742a  ......hHHxp...7.
	defb 010h,02fh,03dh,015h,01ah,016h,01eh,016h,01ah,01ch,01eh,012h,00eh,000h,0d5h,037h	; 743a  ./=............7
	defb 01dh,0efh,09fh,0b0h,0b0h,058h,078h,078h,048h,070h,004h,000h,000h	; 744a  .....XxxHp...

; ----------------------------------------------------------------------
; DATOS rle_sin_puntero (tramo): 18 tiras en el RLE de p00:4A8D (cada una
;   acaba en su 0; 320, 256, 192 y 256 bytes al abrirlas) seguidas, de 0x7457
;   a 0x81E2 en este banco y la cola en el 8: ninguna palabra del cartucho
;   vale 0x7457 ni ninguno de los principios de las tiras, y la sonda de
;   openMSX no las lee
;   0x7457..0x8000  (2985 bytes)  de 0x7457..0x824e (3575 bytes)
DATA_rle_sin_puntero:
	defb 0c0h,000h,006h,00dh,018h,018h,031h,031h,033h,03fh,072h,05eh,0ffh,0feh,03fh,02fh	; 7457  ......113?r^..?/
	defb 01eh,000h,000h,0ffh,03bh,0d7h,0ffh,0bfh,0ffh,0feh,0ffh,07fh,01fh,09fh,08eh,007h	; 7467  ....;...........
	defb 00fh,000h,006h,00bh,01fh,017h,02fh,02fh,02dh,03dh,07eh,06ah,0bfh,0ffh,036h,033h	; 7477  ......//-=~j..63
	defb 01eh,000h,000h,0ffh,0dfh,02ah,087h,045h,026h,017h,0f7h,07fh,01fh,097h,089h,007h	; 7487  .....*.E&.......
	defb 00fh,010h,000h,08bh,00fh,01fh,01fh,00fh,00fh,01fh,01eh,01fh,01bh,01fh,03fh,003h	; 7497  ..............?.
	defb 07fh,082h,03fh,01fh,010h,000h,09bh,00fh,018h,010h,00fh,00dh,018h,011h,010h,014h	; 74a7  ..?.............
	defb 019h,03fh,074h,070h,070h,038h,01fh,000h,0e0h,0beh,0bfh,0efh,07eh,0feh,0ach,0ddh	; 74b7  .?tpp8......~...
	defb 0f9h,0bbh,005h,0ffh,003h,000h,09dh,0e0h,010h,008h,00ch,084h,0c6h,0feh,0fah,0ffh	; 74c7  ................
	defb 07dh,0f9h,0dbh,0f2h,000h,0e0h,07eh,0d9h,0dfh,08fh,0b7h,0ffh,0efh,0ffh,055h,0e3h	; 74d7  }.....~.......U.
	defb 073h,0ffh,0dfh,0fdh,003h,000h,094h,0e0h,0f0h,0f8h,0fch,07ch,03eh,0c2h,0f6h,083h	; 74e7  s..........|>...
	defb 04bh,0ffh,0e5h,04eh,0f7h,0efh,0dbh,0c7h,0ffh,0ffh,0dfh,003h,0ffh,092h,0feh,0f8h	; 74f7  K..N............
	defb 0f0h,0f0h,0e0h,080h,0fah,0deh,0ddh,0fdh,0fbh,0ffh,0fbh,0fah,0feh,09ah,01eh,00ch	; 7507  ................
	defb 004h,000h,09ch,0fah,0d0h,024h,039h,0c7h,0ffh,05eh,07ch,0ffh,0ffh,07eh,078h,070h	; 7517  .....$9..^|..~xp
	defb 070h,0e0h,080h,076h,0dah,0d3h,0e3h,0edh,07dh,07fh,0f6h,0feh,096h,01ah,00ch,004h	; 7527  p..v....}.......
	defb 000h,0c0h,007h,00ch,01ch,019h,031h,031h,033h,03fh,076h,05eh,0ffh,0feh,03fh,02fh	; 7537  ......113?v^..?/
	defb 01eh,000h,000h,0f8h,00fh,0d3h,0f7h,0bfh,0ffh,0ffh,0feh,07fh,09fh,09fh,08fh,007h	; 7547  ................
	defb 00bh,01fh,007h,00bh,01bh,016h,02fh,02fh,02dh,03dh,07ah,06ah,0bfh,0ffh,036h,033h	; 7557  ......//-=zj..63
	defb 01eh,000h,000h,0f8h,0ffh,02fh,08ah,067h,025h,0b6h,0ffh,07fh,097h,097h,089h,007h	; 7567  ...../.g%.......
	defb 00fh,013h,000h,010h,000h,003h,01fh,004h,00fh,082h,01fh,03fh,004h,07fh,082h,03fh	; 7577  ...........?...?
	defb 007h,011h,000h,089h,015h,01fh,01fh,00fh,00fh,00bh,008h,01dh,03fh,004h,07fh,08fh	; 7587  ............?...
	defb 03fh,007h,000h,000h,0e0h,0b0h,0beh,0efh,07fh,0feh,0ach,0ddh,0f9h,0b3h,0f9h,003h	; 7597  ?...............
	defb 0ffh,081h,0f9h,004h,000h,09ch,0e0h,030h,008h,008h,004h,0c4h,0eah,0fah,0cbh,0edh	; 75a7  .......0........
	defb 0fdh,0f9h,000h,0e0h,070h,0deh,0ddh,08fh,0b7h,0ffh,0eeh,0feh,05dh,0f7h,0c1h,0c7h	; 75b7  ....p.......]...
	defb 07dh,0beh,004h,000h,08eh,0e0h,0f0h,0f8h,0f8h,0fch,0bch,0d6h,0a6h,0bdh,0d7h,0fbh	; 75c7  }...............
	defb 0d7h,0f8h,0f7h,003h,0ffh,085h,0feh,0dfh,0cfh,08fh,0cfh,005h,0ffh,0afh,03fh,0dbh	; 75d7  ..............?.
	defb 0f2h,0fah,0deh,0fdh,0fdh,07bh,0ffh,07ah,0dah,0deh,09ah,09eh,08ch,000h,000h,0e7h	; 75e7  .....{.z........
	defb 088h,0c7h,00fh,0f8h,0f9h,0d8h,0c8h,08ch,0ceh,0f7h,0f2h,0f0h,0f0h,0f9h,03fh,0e5h	; 75f7  ..............?.
	defb 04eh,076h,0dah,0f3h,063h,0adh,03dh,0beh,056h,0deh,096h,09ah,08ch,009h,000h,002h	; 7607  Nv..c.=.V.......
	defb 001h,087h,003h,002h,004h,004h,005h,00dh,00dh,003h,000h,08dh,001h,03fh,0cfh,0a7h	; 7617  .............?..
	defb 0e7h,0e7h,0dfh,0ffh,03fh,01eh,03fh,0ffh,0ffh,007h,000h,002h,001h,002h,003h,002h	; 7627  ....?.?.........
	defb 007h,083h,006h,00bh,00fh,003h,000h,08dh,001h,03fh,0f9h,0d9h,01bh,01eh,027h,08dh	; 7637  .........?....'.
	defb 0feh,0ffh,0d7h,01bh,03fh,000h,08dh,01bh,011h,011h,01ah,01bh,01fh,077h,05fh,0ffh	; 7647  ....?........w_.
	defb 0feh,03fh,02fh,01eh,003h,000h,002h,0dfh,09bh,05fh,0cfh,08fh,08fh,00fh,01fh,0bfh	; 7657  .?/......_......
	defb 0ffh,0ffh,07fh,07fh,03fh,007h,000h,014h,01eh,01eh,015h,01eh,01fh,07bh,06bh,0bfh	; 7667  ....?........{k.
	defb 0ffh,036h,033h,01eh,003h,000h,0d2h,0d5h,05fh,0dfh,04fh,08fh,08bh,008h,01dh,0bfh	; 7677  .63....._.O.....
	defb 0ffh,0ffh,07fh,07fh,03fh,007h,000h,000h,007h,01ch,0f8h,0fah,0ffh,0bfh,0bdh,0ech	; 7687  ....?...........
	defb 07eh,0feh,0afh,0dfh,0ffh,0bfh,0f9h,07ch,0f6h,07ah,02dh,02dh,03dh,0ffh,0fbh,0fah	; 7697  ~......|.z--=...
	defb 0b2h,0fah,0f6h,07eh,076h,0b4h,0bch,000h,007h,01fh,0ffh,0cdh,0e0h,070h,0d3h,0dbh	; 76a7  ...~v........p..
	defb 08dh,0b5h,0fdh,0e9h,0ffh,05dh,0feh,07ch,0feh,0c6h,0f3h,0d7h,0cbh,0c9h,09fh,0feh	; 76b7  .....].|........
	defb 0aeh,0c6h,0dah,07ah,07eh,0ach,0bch,0f8h,0f7h,003h,0ffh,085h,0feh,0dfh,0cfh,08fh	; 76c7  ...z~...........
	defb 0cfh,005h,0ffh,08ch,03fh,0f4h,0fch,0d8h,0c0h,0e0h,0e0h,060h,0e0h,060h,0c0h,0c0h	; 76d7  ....?......`.`..
	defb 003h,080h,002h,000h,09bh,0e7h,088h,0c7h,00fh,0f8h,0f9h,0d8h,0c8h,08ch,0ceh,0f7h	; 76e7  ................
	defb 0f2h,0f0h,0f0h,0f9h,03fh,0ech,074h,058h,0c0h,0e0h,060h,0a0h,020h,0a0h,040h,0c0h	; 76f7  ....?.tX..`. .@.
	defb 003h,080h,002h,000h,000h,002h,000h,083h,003h,01fh,07fh,003h,0ffh,086h,0e7h,0cah	; 7707  ................
	defb 091h,073h,03eh,01ch,004h,000h,003h,0ffh,099h,0feh,0fch,0fah,0fbh,0fdh,0fdh,0feh	; 7717  .s>.............
	defb 07fh,0ffh,0f8h,0f3h,000h,000h,003h,01eh,079h,0e0h,0dch,0bfh,0ffh,0f7h,0eeh,04fh	; 7727  ........y......O
	defb 026h,01ch,004h,000h,098h,0ffh,038h,083h,047h,00fh,09dh,0dfh,09bh,09fh,09fh,04fh	; 7737  &.....8.G......O
	defb 0efh,0bfh,0dfh,000h,001h,003h,003h,007h,00fh,00fh,01fh,03fh,07fh,003h,0ffh,083h	; 7747  ...........?....
	defb 07fh,01fh,000h,009h,0ffh,081h,0f0h,005h,0ffh,092h,07fh,000h,001h,003h,002h,004h	; 7757  ................
	defb 008h,008h,01ch,02ah,04dh,087h,081h,0c3h,07fh,01fh,000h,0efh,003h,0ffh,086h,07fh	; 7767  ...*M...........
	defb 070h,038h,03fh,01fh,0f0h,005h,0ffh,091h,07fh,000h,000h,0e0h,0f8h,0ffh,07fh,03fh	; 7777  p8?............?
	defb 01fh,0dfh,03fh,0bfh,07fh,0ffh,0ffh,01fh,0cbh,005h,000h,088h,0c0h,0e0h,0f0h,0f0h	; 7787  ..?.............
	defb 0f8h,0f8h,0fch,0fch,003h,0feh,002h,000h,08eh,0e0h,018h,0c7h,0e1h,0f0h,0fah,0fbh	; 7797  ................
	defb 0dbh,0fbh,0f2h,0e7h,0f7h,0ffh,0ffh,005h,000h,08ch,0c0h,060h,030h,010h,098h,008h	; 77a7  ...........`0...
	defb 0cch,084h,03ah,07eh,0eeh,0f7h,008h,0ffh,081h,07fh,005h,0ffh,088h,0f0h,06eh,0c2h	; 77b7  ..:~..........n.
	defb 0b1h,0b9h,0ddh,0f7h,0c0h,003h,0e0h,081h,0c0h,003h,0e0h,099h,080h,000h,03fh,09dh	; 77c7  ..............?.
	defb 09dh,0bbh,0e2h,006h,01ch,0fch,0f8h,07ch,0e6h,0f3h,0f0h,0f8h,0ffh,0f0h,05eh,0feh	; 77d7  .......|......^.
	defb 0cfh,0c7h,0fbh,077h,040h,003h,020h,086h,040h,0e0h,060h,060h,080h,000h,000h,004h	; 77e7  ...w@. .@.``....
	defb 000h,084h,001h,003h,007h,00fh,003h,01fh,002h,03fh,003h,07fh,002h,000h,08eh,00fh	; 77f7  .........?......
	defb 07fh,0ffh,0feh,0fch,0fah,0fbh,0fdh,0fdh,0feh,0ffh,0ffh,0f8h,0f3h,004h,000h,0a6h	; 7807  ................
	defb 001h,003h,006h,00ch,01ch,010h,01ch,031h,021h,05ch,07eh,077h,000h,000h,00fh,07ch	; 7817  .......1!\~w...|
	defb 0e3h,0cfh,00fh,01dh,05fh,09bh,09fh,0dfh,0efh,0ffh,0dfh,0dfh,076h,043h,09fh,0bbh	; 7827  ...._.......vC..
	defb 0bfh,0efh,00fh,01fh,03fh,07fh,003h,0ffh,083h,07fh,01fh,000h,009h,0ffh,081h,0f0h	; 7837  ....?...........
	defb 005h,0ffh,092h,07fh,07ah,07fh,0e3h,0c6h,0fch,0e8h,008h,01ch,02ah,04dh,087h,081h	; 7847  ....z.......*M..
	defb 0c3h,07fh,01fh,000h,0efh,003h,0ffh,086h,07fh,070h,038h,03fh,01fh,0f0h,005h,0ffh	; 7857  .........p8?....
	defb 083h,07fh,000h,000h,003h,0ffh,099h,07fh,03fh,01fh,0dfh,03fh,0bfh,07fh,0feh,0fdh	; 7867  ........?..?....
	defb 01dh,0cbh,000h,000h,080h,0f0h,0fch,0feh,0ffh,0ffh,0e7h,053h,089h,0ceh,07ch,038h	; 7877  ...........S..|8
	defb 004h,000h,09fh,0ffh,018h,0c0h,0e2h,0f3h,0fbh,0fah,0d3h,0f1h,0e3h,0e2h,0f7h,0ffh	; 7887  ................
	defb 0ffh,000h,000h,080h,070h,00ch,082h,039h,07dh,0ffh,0efh,077h,0f2h,064h,038h,000h	; 7897  ....p..9}..w.d8.
	defb 000h,0f7h,008h,0ffh,081h,07fh,005h,0ffh,082h,0f0h,000h,003h,080h,003h,0c0h,003h	; 78a7  ................
	defb 0e0h,081h,0c0h,003h,0e0h,093h,080h,000h,03fh,09dh,09dh,0bbh,0e2h,006h,01ch,0fch	; 78b7  ........?.......
	defb 0f8h,07ch,0e6h,0f3h,0f0h,0f8h,0ffh,0f0h,000h,003h,080h,083h,0c0h,040h,040h,003h	; 78c7  .|...........@@.
	defb 020h,086h,040h,0e0h,060h,060h,080h,000h,000h,083h,003h,01fh,07fh,003h,0ffh,086h	; 78d7   .@.``..........
	defb 0e7h,0cah,091h,073h,03eh,01ch,003h,000h,081h,001h,003h,0ffh,099h,0feh,0fch,0fah	; 78e7  ...s>...........
	defb 0fbh,0fdh,0fdh,0feh,07fh,0ffh,0f8h,0f3h,0ffh,0ffh,003h,01eh,079h,0e0h,0dch,0bfh	; 78f7  ............y...
	defb 0ffh,0f7h,0eeh,04fh,026h,01ch,003h,000h,093h,001h,0ffh,038h,083h,047h,00fh,09dh	; 7907  ...O&......8.G..
	defb 0dfh,09bh,09fh,09fh,04fh,0efh,0bfh,0dfh,0efh,0ffh,001h,001h,003h,003h,004h,007h	; 7917  ....O...........
	defb 082h,003h,007h,003h,00fh,082h,007h,001h,007h,0ffh,081h,0fch,008h,0ffh,002h,001h	; 7927  ................
	defb 083h,003h,002h,002h,003h,004h,096h,006h,003h,006h,00ch,00ch,00eh,007h,001h,0ffh	; 7937  ................
	defb 07fh,07fh,070h,038h,01fh,01fh,03ch,0dfh,0afh,0cfh,01fh,03fh,07fh,005h,0ffh,099h	; 7947  ..p8..<....?....
	defb 07fh,03fh,01fh,0dfh,03fh,0bfh,07fh,0feh,0fdh,01dh,0cbh,0f7h,0ffh,080h,0f0h,0fch	; 7957  .?..?...........
	defb 0feh,0ffh,0ffh,0e7h,053h,089h,0ceh,07ch,038h,003h,000h,09dh,080h,0ffh,018h,0c0h	; 7967  ....S..|8.......
	defb 0e2h,0f3h,0fbh,0fah,0d3h,0f1h,0e3h,0e2h,0f7h,0ffh,0ffh,03fh,09dh,080h,070h,00ch	; 7977  ...........?..p.
	defb 082h,039h,07dh,0ffh,0efh,077h,0f2h,064h,038h,003h,000h,081h,080h,007h,0ffh,081h	; 7987  .9}..w.d8.......
	defb 03fh,007h,0ffh,083h,0c0h,080h,080h,003h,0c0h,004h,0e0h,081h,0c0h,004h,0e0h,097h	; 7997  ?...............
	defb 0c0h,000h,09dh,0bbh,0e2h,006h,01ch,0fch,0f8h,03ch,0fah,0f5h,0f3h,0f8h,0fch,0feh	; 79a7  .........<......
	defb 0ffh,0c0h,080h,080h,0c0h,040h,040h,004h,020h,087h,0c0h,060h,020h,020h,060h,0c0h	; 79b7  .....@@. ..`  `.
	defb 000h,000h,004h,000h,084h,001h,003h,007h,00fh,003h,01fh,002h,03fh,003h,07fh,002h	; 79c7  ............?...
	defb 000h,08eh,00fh,07fh,0ffh,0feh,0fch,0fah,0fbh,0fdh,0fdh,0feh,0ffh,0ffh,0f8h,0f3h	; 79d7  ................
	defb 004h,000h,0a3h,001h,003h,006h,00ch,01ch,010h,01ch,031h,021h,05ch,07eh,077h,000h	; 79e7  ..........1!\~w.
	defb 000h,00fh,07ch,0e3h,0cfh,00fh,01dh,05fh,09bh,09fh,0dfh,0efh,0ffh,0dfh,0dfh,076h	; 79f7  ..|...._.......v
	defb 043h,09fh,0bbh,0bfh,0e3h,003h,003h,007h,081h,003h,003h,007h,082h,001h,000h,009h	; 7a07  C...............
	defb 0ffh,081h,0feh,005h,0ffh,088h,07fh,07ah,07fh,0e3h,0c7h,0ffh,0e2h,002h,003h,004h	; 7a17  .......z........
	defb 098h,002h,007h,006h,006h,001h,000h,0efh,0ffh,0ffh,07fh,07fh,070h,038h,01fh,01fh	; 7a27  ............p8..
	defb 03eh,067h,0cfh,00fh,01fh,0ffh,07fh,000h,000h,003h,0ffh,099h,07fh,03fh,01fh,0dfh	; 7a37  >g...........?..
	defb 03fh,0bfh,07fh,0feh,0fdh,01dh,0cbh,000h,000h,080h,0f0h,0fch,0feh,0ffh,0ffh,0e7h	; 7a47  ?...............
	defb 053h,089h,0ceh,07ch,038h,004h,000h,09fh,0ffh,018h,0c0h,0e2h,0f3h,0fbh,0fah,0d3h	; 7a57  S..|8...........
	defb 0f1h,0e3h,0e2h,0f7h,0ffh,0ffh,000h,000h,080h,070h,00ch,082h,039h,07dh,0ffh,0efh	; 7a67  .........p..9}..
	defb 077h,0f2h,064h,038h,000h,000h,0f7h,008h,0ffh,081h,00fh,005h,0ffh,08bh,0f0h,000h	; 7a77  w.d8............
	defb 080h,080h,0c0h,0e0h,0f0h,0f0h,0f8h,0fch,0feh,003h,0ffh,08dh,0feh,0f8h,000h,03fh	; 7a87  ...............?
	defb 09dh,09dh,0bbh,0e2h,006h,01ch,0fch,0f8h,00fh,005h,0ffh,091h,0f0h,000h,080h,080h	; 7a97  ................
	defb 0c0h,020h,010h,010h,038h,054h,0b2h,0e1h,081h,0c3h,0feh,0f8h,000h,000h,002h,000h	; 7aa7  . ..8T..........
	defb 083h,003h,01fh,07fh,003h,0ffh,086h,0e7h,0cah,091h,073h,03eh,01ch,004h,000h,003h	; 7ab7  ..........s>....
	defb 0ffh,099h,0feh,0fch,0fah,0fbh,0fdh,0fdh,0feh,07fh,0ffh,0f8h,0f3h,000h,000h,003h	; 7ac7  ................
	defb 01eh,079h,0e0h,0dch,0bfh,0ffh,0f7h,0eeh,04fh,026h,01ch,004h,000h,08fh,0ffh,038h	; 7ad7  .y......O&.....8
	defb 083h,047h,00fh,09dh,0dfh,09bh,09fh,09fh,04fh,0efh,0bfh,0dfh,000h,003h,001h,003h	; 7ae7  .G......O.......
	defb 003h,003h,007h,081h,003h,003h,007h,082h,001h,000h,009h,0ffh,081h,0feh,005h,0ffh	; 7af7  ................
	defb 082h,07fh,000h,003h,001h,083h,003h,002h,002h,003h,004h,0a6h,002h,007h,006h,006h	; 7b07  ................
	defb 001h,000h,0efh,0ffh,0ffh,07fh,07fh,070h,038h,01fh,01fh,03eh,067h,0cfh,00fh,01fh	; 7b17  .......p8..>g...
	defb 0ffh,07fh,000h,000h,0e0h,0f8h,0ffh,07fh,03fh,01fh,0dfh,03fh,0bfh,07fh,0ffh,0ffh	; 7b27  ........?..?....
	defb 01fh,0cbh,005h,000h,088h,0c0h,0e0h,0f0h,0f0h,0f8h,0f8h,0fch,0fch,003h,0feh,002h	; 7b37  ................
	defb 000h,08eh,0e0h,018h,0c7h,0e1h,0f0h,0fah,0fbh,0dbh,0fbh,0f2h,0e7h,0f7h,0ffh,0ffh	; 7b47  ................
	defb 005h,000h,08ch,0c0h,060h,030h,010h,098h,008h,0cch,084h,03ah,07eh,0eeh,0f7h,008h	; 7b57  ....`0.....:~...
	defb 0ffh,081h,00fh,005h,0ffh,08bh,0f0h,06eh,0c2h,0b1h,0b9h,0ddh,0f7h,0f0h,0f8h,0fch	; 7b67  .......n........
	defb 0feh,003h,0ffh,08dh,0feh,0f8h,000h,03fh,09dh,09dh,0bbh,0e2h,006h,01ch,0fch,0f8h	; 7b77  .......?........
	defb 00fh,005h,0ffh,091h,0f0h,05eh,0feh,0cfh,0c7h,0fbh,037h,010h,038h,054h,0b2h,0e1h	; 7b87  .....^....7.8T..
	defb 081h,0c3h,0feh,0f8h,000h,000h,006h,000h,003h,001h,003h,003h,004h,00fh,084h,007h	; 7b97  ................
	defb 01fh,03eh,07eh,00ch,0ffh,006h,000h,003h,001h,003h,003h,002h,00fh,002h,00bh,093h	; 7ba7  .>~.............
	defb 007h,01ah,03dh,065h,0deh,0a7h,0deh,0bfh,03fh,05fh,05fh,092h,024h,064h,0fch,0f7h	; 7bb7  ..=e....?__.$d..
	defb 00fh,007h,003h,004h,007h,082h,003h,001h,007h,000h,099h,0feh,0fdh,0ffh,0fbh,0ffh	; 7bc7  ................
	defb 0ffh,0feh,0feh,0ffh,0ffh,07fh,07fh,03eh,01fh,007h,000h,00bh,005h,003h,007h,007h	; 7bd7  .......>........
	defb 006h,004h,003h,001h,007h,000h,0a0h,0f1h,0fbh,0efh,0efh,0bfh,09bh,087h,0c7h,0e7h	; 7be7  ................
	defb 0edh,06eh,078h,039h,01ch,007h,000h,0f0h,03ch,012h,01dh,01bh,0fdh,0f6h,0fbh,0edh	; 7bf7  .nx9....<.......
	defb 0eeh,0b6h,0f7h,0dbh,0dfh,0dfh,0f3h,004h,000h,002h,080h,087h,0c0h,040h,040h,0e0h	; 7c07  .............@@.
	defb 060h,060h,078h,003h,0e8h,090h,0f0h,0fch,0feh,0ffh,0f7h,0bbh,0fdh,0f6h,0dbh,0fdh	; 7c17  ``x.............
	defb 0efh,0aeh,0b6h,0b7h,0bch,0fch,004h,000h,002h,080h,003h,0c0h,003h,0e0h,002h,0f8h	; 7c27  ................
	defb 09ch,098h,058h,007h,06fh,07bh,07eh,07ch,078h,030h,031h,073h,0fbh,03fh,00fh,00eh	; 7c37  ..X.o{~|x01s.?..
	defb 0dch,0f0h,000h,0c8h,0d0h,0e0h,0d0h,050h,0d0h,0e0h,0c0h,080h,080h,006h,000h,09ah	; 7c47  .......P........
	defb 0f8h,0deh,0feh,0abh,0bfh,0a7h,0cfh,0eeh,0ech,0d4h,0f9h,0fbh,0fah,03ch,0f0h,000h	; 7c57  .............<..
	defb 078h,070h,060h,070h,0f0h,070h,060h,0c0h,080h,080h,006h,000h,000h,006h,000h,003h	; 7c67  xp`p.p`.........
	defb 001h,003h,003h,004h,00fh,084h,007h,01fh,03eh,07eh,00ch,0ffh,006h,000h,003h,001h	; 7c77  ........>~......
	defb 003h,003h,002h,00fh,002h,00bh,093h,007h,01ah,03dh,065h,0deh,0a7h,0deh,0bfh,03fh	; 7c87  .........=e....?
	defb 05fh,05fh,092h,024h,064h,0fch,0f7h,00fh,007h,003h,004h,007h,083h,003h,001h,001h	; 7c97  __.$d...........
	defb 006h,000h,087h,0feh,0fdh,0ffh,0fbh,0ffh,0ffh,0feh,004h,0ffh,002h,07fh,08dh,03fh	; 7ca7  ...............?
	defb 01fh,007h,00bh,005h,003h,007h,007h,006h,004h,003h,001h,001h,006h,000h,0a0h,0f1h	; 7cb7  ................
	defb 0fbh,0efh,0efh,09fh,082h,0c7h,0e7h,0e8h,0efh,0ebh,069h,07eh,03fh,01ch,007h,0f0h	; 7cc7  ..........i~?...
	defb 03ch,012h,01dh,01bh,0fdh,0f6h,0fbh,0edh,0eeh,0b6h,0f7h,0dbh,0dfh,0dfh,0f3h,004h	; 7cd7  <...............
	defb 000h,002h,080h,087h,0c0h,040h,040h,0e0h,060h,060h,078h,003h,0e8h,090h,0f0h,0fch	; 7ce7  .....@@.``x.....
	defb 0feh,0ffh,0f7h,0bbh,0fdh,0f6h,0dbh,0fdh,0efh,0aeh,0b6h,0b7h,0bch,0fch,004h,000h	; 7cf7  ................
	defb 002h,080h,003h,0c0h,003h,0e0h,002h,0f8h,08bh,098h,058h,007h,06fh,07bh,07eh,07ch	; 7d07  ..........X.o{~|
	defb 030h,031h,073h,0dfh,004h,0ffh,08eh,0feh,0fch,0f0h,0c8h,0d0h,0e0h,0d0h,050h,0d0h	; 7d17  01s...........P.
	defb 0e0h,0c0h,0c0h,080h,080h,005h,000h,09bh,0f8h,0deh,0feh,0abh,0bfh,0efh,0ceh,0fch	; 7d27  ................
	defb 0a8h,0f9h,0e9h,0edh,01fh,0feh,01ch,0f0h,078h,070h,060h,070h,0f0h,070h,060h,0c0h	; 7d37  ........xp`p.p`.
	defb 0c0h,080h,080h,005h,000h,000h,009h,000h,087h,06ah,0d5h,0ffh,06bh,06bh,03eh,03eh	; 7d47  .........j..kk>>
	defb 008h,000h,088h,007h,00ch,01fh,03fh,03fh,03dh,01fh,00fh,009h,000h,087h,06ah,0bfh	; 7d57  ......??=.....j.
	defb 095h,055h,055h,022h,032h,008h,000h,08dh,007h,00fh,017h,02ah,037h,02fh,01dh,00fh	; 7d67  .UU"2......*7/..
	defb 01bh,01dh,00eh,007h,003h,00bh,000h,088h,03fh,0ffh,0ffh,07eh,0f7h,0f8h,03fh,00fh	; 7d77  ........?..~..?.
	defb 008h,000h,085h,017h,01bh,00dh,006h,003h,00bh,000h,08bh,03eh,0ffh,07bh,0edh,0dfh	; 7d87  ...........>.{..
	defb 0efh,030h,08fh,080h,040h,00eh,00dh,000h,088h,0e0h,030h,0f8h,0fch,0fch,0bch,0f8h	; 7d97  .0..@.....0.....
	defb 0f0h,009h,000h,087h,06ah,0d5h,0ffh,06bh,06bh,03eh,02ch,008h,000h,088h,0e0h,0f0h	; 7da7  ....j..kk>,.....
	defb 0e8h,054h,0ech,0f4h,0b8h,070h,009h,000h,08fh,06ah,0bfh,095h,055h,055h,022h,034h	; 7db7  .T...p...j..UU"4
	defb 07ch,0efh,09eh,0f7h,0e3h,087h,0fch,0f0h,008h,000h,085h,0e8h,0d8h,030h,0e0h,0c0h	; 7dc7  |............0..
	defb 00bh,000h,08bh,0fch,0ffh,0edh,09eh,0feh,0fbh,08ch,0f0h,001h,006h,018h,005h,000h	; 7dd7  ................
	defb 087h,0d8h,028h,0d0h,020h,0c0h,000h,040h,009h,000h,000h,00dh,000h,083h,06ah,0d5h	; 7de7  ..(. ..@......j.
	defb 0ffh,00ch,000h,084h,007h,00ch,01fh,03fh,00dh,000h,083h,06ah,0bfh,095h,00ch,000h	; 7df7  .......?...j....
	defb 089h,007h,00fh,017h,02ah,06bh,06bh,03eh,03eh,00eh,00bh,000h,088h,03fh,03dh,01fh	; 7e07  ....*kk>>....?=.
	defb 00fh,03fh,03fh,01fh,00fh,008h,000h,002h,055h,085h,022h,032h,00eh,020h,00ch,009h	; 7e17  .??.....U."2. ..
	defb 000h,08ah,037h,02fh,01dh,04fh,0beh,0bfh,09bh,00fh,040h,010h,012h,000h,084h,0e0h	; 7e27  ..7/.O....@.....
	defb 030h,0f8h,0fch,00dh,000h,083h,06ah,0d5h,0ffh,00ch,000h,084h,0e0h,0f0h,0e8h,054h	; 7e37  0.....j........T
	defb 00dh,000h,08bh,06ah,0bfh,095h,0fch,0bch,0f8h,0f0h,07ch,0ech,098h,0f0h,008h,000h	; 7e47  ...j......|.....
	defb 002h,06bh,083h,03eh,02ch,038h,00bh,000h,08ah,0ech,0f4h,0b8h,072h,0fdh,0fdh,0e8h	; 7e57  .k.>,8......r...
	defb 0f0h,002h,018h,006h,000h,002h,055h,085h,022h,034h,03ah,042h,038h,009h,000h,000h	; 7e67  ......U."4:B8...
	defb 01ah,000h,086h,003h,00fh,01fh,03eh,03ch,03ch,01ah,000h,086h,003h,009h,01bh,027h	; 7e77  ......><<......'
	defb 02fh,037h,003h,000h,096h,003h,007h,00eh,018h,013h,036h,024h,06ch,046h,0c2h,0adh	; 7e87  /7........6$lF..
	defb 0afh,0dbh,07eh,07fh,0ffh,0fdh,07fh,03fh,0ffh,03fh,00fh,003h,000h,081h,00ch,006h	; 7e97  ..~....?.?......
	defb 000h,09ah,003h,006h,00dh,01fh,01fh,02eh,03ch,074h,07ah,0feh,0fbh,0f9h,0dbh,067h	; 7ea7  ........<tz....g
	defb 06bh,0fdh,07fh,0ffh,0eeh,0e7h,031h,00fh,080h,0d0h,01eh,00ch,00dh,000h,086h,0c0h	; 7eb7  k.....1.........
	defb 0f0h,0f8h,07ch,03ch,03ch,01ah,000h,086h,0c0h,070h,0d8h,0fch,0e4h,0fch,010h,000h	; 7ec7  ..|<<....p......
	defb 08dh,07eh,0feh,0ffh,0bfh,0ffh,0fah,0f7h,0fch,0f0h,000h,008h,010h,040h,006h,000h	; 7ed7  .~...........@..
	defb 09ah,0c0h,0e0h,070h,038h,0d8h,06ch,024h,036h,062h,043h,0b5h,0f5h,0dbh,0e6h,0d6h	; 7ee7  ...p8.l$6bC.....
	defb 03fh,0feh,07eh,07fh,0ffh,08ch,0f2h,000h,01ch,070h,040h,006h,000h,08dh,0c0h,060h	; 7ef7  ?.~......p@....`
	defb 0b0h,0d8h,0e8h,074h,03ch,02eh,05eh,07fh,0dfh,09fh,0dbh,000h,004h,000h,090h,001h	; 7f07  ...t<.^.........
	defb 00fh,01fh,037h,037h,027h,027h,037h,01fh,00fh,00fh,01fh,000h,000h,003h,07fh,005h	; 7f17  ..77''7.........
	defb 0ffh,087h,0efh,0f2h,0feh,0f7h,0fdh,0feh,0ffh,004h,000h,0e4h,001h,00fh,012h,02eh	; 7f27  ................
	defb 02ch,03ch,03ch,02ch,016h,00ah,00eh,01fh,000h,000h,003h,07fh,0c6h,01dh,015h,017h	; 7f37  ,<<,............
	defb 03ah,03ch,03fh,03fh,07fh,07fh,077h,03eh,03fh,079h,05eh,0efh,0bfh,05fh,0ffh,0a7h	; 7f47  :<??..w>?y^.._..
	defb 046h,003h,001h,001h,003h,007h,006h,00ch,0feh,0ffh,0ffh,0bfh,09fh,09dh,0ffh,07eh	; 7f57  F..............~
	defb 0ffh,0feh,0ffh,0bfh,0bfh,03fh,01fh,00fh,021h,07eh,06fh,0ffh,0d9h,070h,0beh,0e7h	; 7f67  .....?..!~o..p..
	defb 047h,003h,001h,001h,002h,004h,005h,00bh,0bfh,0dfh,0edh,0a3h,09eh,09bh,0eeh,0efh	; 7f77  G...............
	defb 0e7h,0f7h,033h,078h,076h,0d8h,0eeh,0ffh,00ch,01ch,014h,01bh,01fh,019h,00fh,007h	; 7f87  ..3xv...........
	defb 008h,000h,08bh,07fh,07ch,0fbh,0fah,0fah,0fbh,0f1h,05dh,0b6h,0ddh,008h,005h,000h	; 7f97  ....|.....].....
	defb 088h,00bh,01bh,01bh,014h,019h,016h,009h,007h,008h,000h,08bh,0b9h,0ebh,07dh,0feh	; 7fa7  ..............}.
	defb 0d6h,075h,0efh,077h,0ffh,0d5h,008h,007h,000h,083h,0e0h,0f8h,0ffh,003h,07fh,088h	; 7fb7  .u.w............
	defb 03fh,01bh,0a3h,02bh,0f7h,05fh,03fh,07fh,005h,000h,09bh,0c0h,0e0h,0f8h,0fch,0f6h	; 7fc7  ?..+._?.........
	defb 0f2h,0f2h,0fah,0feh,0ech,0e4h,000h,000h,0e0h,0f8h,0efh,0deh,0f2h,0eeh,0fdh,0ffh	; 7fd7  ................
	defb 07fh,0ffh,07fh,0fdh,0f7h,0aah,005h,000h,08bh,0c0h,020h,018h,01ch,01eh,09eh,09eh	; 7fe7  .......... .....
	defb 016h,03eh,03ch,03ch,000h,081h,0bfh,003h,0ffh	; 7ff7  .><<.....
