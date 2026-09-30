; ==========================================================================
; HINOTORI - Konami (1987) - MSX - MegaROM RC-747 de 128 KB (Konami4) - banco 02 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; Etiquetas que no caen en ninguna posicion emitida del listado
; (destinos fuera del binario o dentro de una instruccion).
; ----------------------------------------------------------------------
L_9E6D:	equ 0x09e6d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8000..0x8004  (4 bytes)
DATA_8000:
	defb 019h,010h,0edh,0c9h	; 8000

; ======================================================================
; CODIGO 0x8004..0x8031  (45 bytes)
; ======================================================================


L_8004:
	exx			;8004
	ld a,(ix+003h)		;8005
	sub e			;8008
	cp 010h		;8009
	ret nc			;800b
	ld a,(ix+005h)		;800c
	sub d			;800f
	cp 00ch		;8010
	ret nc			;8012
	push de			;8013
	call 06a85h		;8014
	pop de			;8017
	ld hl,0c834h		;8018
	dec (hl)			;801b
	ret			;801c
L_801D:
	call 0623eh		;801d
	ret c			;8020
	ld bc,04038h		;8021
	jp L_811C		;8024
L_8027:
	call 0623eh		;8027
	ret c			;802a
	ld a,(ix+001h)		;802b
	call 040aeh		;802e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8031..0x8039  (8 bytes)
DATA_8031:
	defb 050h,080h,066h,080h,08eh,080h,0a4h,080h	; 8031  P.f.....

; ======================================================================
; CODIGO 0x8039..0x8043  (10 bytes)
; ======================================================================


L_8039:
	call 0623eh		;8039
	ret c			;803c
	ld a,(ix+001h)		;803d
	call 040aeh		;8040

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8043..0x804b  (8 bytes)
DATA_8043:
	defb 055h,080h,066h,080h,08eh,080h,0a4h,080h	; 8043  U.f.....

; ======================================================================
; CODIGO 0x804b..0x80b3  (104 bytes)
; ======================================================================


L_804B:
	ld hl,0c88ch		;804b
	jr L_8058		;804e
L_8050:
	ld hl,0c8bch		;8050
	jr L_8058		;8053
L_8055:
	ld hl,0c8a4h		;8055
L_8058:
	ld a,(0c481h)		;8058
	dec a			;805b
	add a,a			;805c
	add a,a			;805d
	call 040a4h		;805e
	ld a,(hl)			;8061
	or a			;8062
	ret z			;8063
	jr L_80A0		;8064
L_8066:
	ld a,(ix+046h)		;8066
	or a			;8069
	ret nz			;806a
	ld (ix+046h),040h		;806b
	ld (ix+028h),00bh		;806f
	inc (ix+02ch)		;8073
	inc (ix+02ch)		;8076
	dec (ix+02ah)		;8079
	ld a,(ix+02ah)		;807c
	cp 004h		;807f
	jr z,L_80A0		;8081
	ld a,(ix+02ch)		;8083
	cp 003h		;8086
	ret nz			;8088
	ld a,023h		;8089
	jp 041ach		;808b
L_808E:
	ld bc,00205h		;808e
	call L_8126		;8091
	ld a,d			;8094
	add a,008h		;8095
	ld d,a			;8097
	ld a,e			;8098
	add a,0e0h		;8099
	ld e,a			;809b
	xor a			;809c
	call 0631ch		;809d
L_80A0:
	inc (ix+001h)		;80a0
	ret			;80a3
L_80A4:
	ld bc,02020h		;80a4
	jr $+117		;80a7
L_80A9:
	call 0623eh		;80a9
	ret c			;80ac
	ld a,(ix+001h)		;80ad
	call 040aeh		;80b0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x80b3..0x80bb  (8 bytes)
DATA_80B3:
	defb 04bh,080h,066h,080h,08eh,080h,0bbh,080h	; 80b3  K.f.....

; ======================================================================
; CODIGO 0x80bb..0x827e  (451 bytes)
; ======================================================================


L_80BB:
	ld bc,02020h		;80bb
	call L_811C		;80be
	ld a,(0c800h)		;80c1
	cp 002h		;80c4
	ret z			;80c6
	ld de,0ffe0h		;80c7
	call 0610eh		;80ca
	ret nc			;80cd
	call 06079h		;80ce
L_80D1:
	ld a,(0c880h)		;80d1
	ld b,a			;80d4
	xor a			;80d5
	ld (0c858h),a		;80d6
	ld (0c860h),a		;80d9
	ld (0c87ch),a		;80dc
	ld (0c880h),a		;80df
	ld a,b			;80e2
	or a			;80e3
	ld a,000h		;80e4
	ld (0c0f2h),a		;80e6
	ld (0c092h),a		;80e9
	ld (0c0b2h),a		;80ec
	ld (0c0d2h),a		;80ef
	ret			;80f2
L_80F3:
	call 0623eh		;80f3
	ld a,(ix+001h)		;80f6
	or a			;80f9
	jr nz,L_8115		;80fa
	ld de,0ffd8h		;80fc
	call 0610eh		;80ff
	ret nc			;8102
	inc (ix+001h)		;8103
	ld (ix+006h),03ch		;8106
	call 04ca3h		;810a
	call L_80D1		;810d
	ld a,055h		;8110
	jp 041ach		;8112
L_8115:
	dec (ix+006h)		;8115
	ret nz			;8118
	jp 06079h		;8119
L_811C:
	call L_8126		;811c
	ld a,e			;811f
	sub 030h		;8120
	ld e,a			;8122
	jp L_812D		;8123
L_8126:
	ld d,(ix+005h)		;8126
	ld e,(ix+003h)		;8129
	ret			;812c
L_812D:
	ld a,020h		;812d
	add a,e			;812f
	ld e,a			;8130
	ld a,002h		;8131
	ld (0c4beh),a		;8133
	ld hl,0e600h		;8136
L_8139:
	call L_8146		;8139
	inc l			;813c
	inc l			;813d
	inc l			;813e
	inc l			;813f
	ld a,l			;8140
	and 07fh		;8141
	jr nz,L_8139		;8143
	ret			;8145
L_8146:
	inc l			;8146
	ld a,(hl)			;8147
	dec l			;8148
	sub d			;8149
	cp b			;814a
	ret nc			;814b
	ld a,(hl)			;814c
	add a,020h		;814d
	sub e			;814f
	ret c			;8150
	cp 010h		;8151
	jr z,L_8157		;8153
	jr c,L_8163		;8155
L_8157:
	sub c			;8157
	ret nc			;8158
	neg		;8159
	cp 010h		;815b
	jr z,L_8161		;815d
	jr c,L_817A		;815f
L_8161:
	ld a,010h		;8161
L_8163:
	or a			;8163
	ret z			;8164
	push hl			;8165
	push de			;8166
	push bc			;8167
	ld b,a			;8168
	ld h,000h		;8169
	add hl,hl			;816b
	add hl,hl			;816c
	ld de,0e40fh		;816d
	add hl,de			;8170
L_8171:
	ld (hl),000h		;8171
	dec l			;8173
	djnz L_8171		;8174
	pop bc			;8176
	pop de			;8177
	pop hl			;8178
	ret			;8179
L_817A:
	push hl			;817a
	push de			;817b
	push bc			;817c
	ld b,a			;817d
	ld h,000h		;817e
	add hl,hl			;8180
	add hl,hl			;8181
	ld de,0e400h		;8182
	add hl,de			;8185
L_8186:
	ld (hl),000h		;8186
	inc l			;8188
	djnz L_8186		;8189
	pop bc			;818b
	pop de			;818c
	pop hl			;818d
	ret			;818e
L_818F:
	call L_819B		;818f
	ex de,hl			;8192
	ld bc,01010h		;8193
	ld a,048h		;8196
	jp 051eah		;8198
L_819B:
	ld c,a			;819b
	and 00fh		;819c
	add a,a			;819e
	add a,a			;819f
	add a,a			;81a0
	add a,a			;81a1
	ld d,a			;81a2
	ld a,c			;81a3
	and 0f0h		;81a4
	add a,090h		;81a6
	ld e,a			;81a8
	ret			;81a9
L_81AA:
	call 06136h		;81aa
	ld (ix+046h),080h		;81ad
	ld de,082beh		;81b1
	call 06162h		;81b4
	ld de,082d3h		;81b7
	call 061a5h		;81ba
	call 061a5h		;81bd
	call 061cfh		;81c0
	ld hl,0827eh		;81c3
	call L_8262		;81c6
	ld a,(0cb06h)		;81c9
	ld (ix+014h),a		;81cc
	ld a,(ix+005h)		;81cf
	sub 010h		;81d2
	ld (ix+005h),a		;81d4
	ld a,(ix+003h)		;81d7
	add a,024h		;81da
	ld (ix+003h),a		;81dc
	ld (ix+016h),040h		;81df
	ld (ix+015h),010h		;81e3
	ret			;81e7
L_81E8:
	call 06136h		;81e8
	ld de,082cch		;81eb
	call 06162h		;81ee
	ld de,082d3h		;81f1
	call 061a5h		;81f4
	ld de,082cch		;81f7
	call 061a5h		;81fa
	call 061cfh		;81fd
	ld a,(ix+022h)		;8200
	sub 007h		;8203
	ld (ix+022h),a		;8205
	ld hl,0827eh		;8208
	call L_8262		;820b
	ld a,(ix+032h)		;820e
	add a,005h		;8211
	ld (ix+032h),a		;8213
	ld (ix+036h),0b0h		;8216
	ld (ix+035h),0a0h		;821a
	ld (ix+046h),0a0h		;821e
	ld a,(0cb06h)		;8222
	ld (ix+014h),a		;8225
	ld (ix+016h),040h		;8228
	ld (ix+015h),020h		;822c
	ret			;8230
L_8231:
	call 06136h		;8231
	ld (ix+046h),080h		;8234
	ld de,082c5h		;8238
	call 06162h		;823b
	call 061cfh		;823e
	ld hl,0827eh		;8241
	jp L_8262		;8244
L_8247:
	call 06136h		;8247
	ld (ix+046h),080h		;824a
	ld de,082cch		;824e
	call 06162h		;8251
	ld de,082d3h		;8254
	call 061a5h		;8257
	call 061cfh		;825a
	ld hl,0827eh		;825d
	jr L_8262		;8260
L_8262:
	ld a,(0cb06h)		;8262
	add a,a			;8265
	ld e,a			;8266
	ld d,000h		;8267
	add hl,de			;8269
	ld a,(hl)			;826a
	inc hl			;826b
	ld b,(hl)			;826c
	ld (ix+005h),b		;826d
	call L_819B		;8270
	ld (ix+026h),d		;8273
	ld (ix+025h),e		;8276
	ld (ix+02eh),0ffh		;8279
	ret			;827d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x827e..0x82db  (93 bytes)
DATA_827E:
	defb 00ah,0a0h,009h,020h,00dh,0c0h,008h,0c0h,00bh,040h,00ch,0a0h,009h,080h,00ah,080h	; 827e  ... .....@......
	defb 00bh,040h,00ch,080h,00dh,040h,008h,0c0h,009h,0c0h,00bh,080h,008h,060h,009h,060h	; 828e  .@...@.......`.`
	defb 00ah,060h,00bh,060h,00ch,060h,00dh,060h,012h,0c0h,011h,040h,015h,080h,010h,0c0h	; 829e  .`.`.`.`...@....
	defb 013h,040h,014h,040h,018h,040h,017h,020h,01bh,060h,016h,020h,019h,0a0h,01ah,040h	; 82ae  .@.@.@. .`. ...@
	defb 004h,0beh,008h,010h,010h,080h,0b0h,004h,0f4h,018h,010h,010h,080h,0b0h,004h,0f2h	; 82be  ................
	defb 009h,010h,010h,080h,0b0h,00bh,0f0h,010h,013h,001h,0ffh,0ffh,000h	; 82ce  .............

; ======================================================================
; CODIGO 0x82db..0x8312  (55 bytes)
; ======================================================================


L_82DB:
	ld hl,062d2h		;82db
	ld a,004h		;82de
	call 05469h		;82e0
	ld hl,03816h		;82e3
	ld bc,03264h		;82e6
	ld a,(0c385h)		;82e9
	add a,l			;82ec
	ld l,a			;82ed
	ld a,0ffh		;82ee
	ld d,000h		;82f0
	call 0527eh		;82f2
	ld a,009h		;82f5
	call 05434h		;82f7
	ld a,(0c481h)		;82fa
	dec a			;82fd
	ld hl,08312h		;82fe
	call 04878h		;8301
	ld de,03818h		;8304
	ld bc,0070ch		;8307
	call 058e5h		;830a
	ld a,003h		;830d
	jp 05434h		;830f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8312..0x831e  (12 bytes)
DATA_8312:
	defb 058h,0b6h,0ach,0b6h,000h,0b7h,054h,0b7h,0a8h,0b7h,0fch,0b7h	; 8312  X.....T.....

; ======================================================================
; CODIGO 0x831e..0x83ed  (207 bytes)
; ======================================================================


L_831E:
	ld a,(0c809h)		;831e
	srl a		;8321
	srl a		;8323
	srl a		;8325
	srl a		;8327
	ld c,a			;8329
	ld a,(0c483h)		;832a
	ld b,a			;832d
	add a,a			;832e
	add a,a			;832f
	add a,a			;8330
	add a,a			;8331
	add a,b			;8332
	add a,c			;8333
	add a,038h		;8334
	ld d,a			;8336
	ld a,(0c302h)		;8337
	neg		;833a
	add a,0c0h		;833c
	ld l,a			;833e
	ld h,000h		;833f
	ld a,(0c80bh)		;8341
	rrca			;8344
	rrca			;8345
	rrca			;8346
	and 01fh		;8347
	ld c,a			;8349
	ld b,000h		;834a
	add hl,bc			;834c
	ld bc,000c0h		;834d
	add hl,bc			;8350
	call L_8373		;8351
	ld a,l			;8354
	or a			;8355
	rra			;8356
	add a,018h		;8357
	ld e,a			;8359
	ld a,(0c385h)		;835a
	add a,e			;835d
	ld e,a			;835e
	ex de,hl			;835f
	ld a,(0c103h)		;8360
	and 004h		;8363
	ld a,0ffh		;8365
	jr z,L_836B		;8367
	ld a,0cch		;8369
L_836B:
	ld bc,00202h		;836b
	ld d,000h		;836e
	jp 0527eh		;8370
L_8373:
	call 0491bh		;8373
	ret c			;8376
	or a			;8377
	sbc hl,bc		;8378
	jr L_8373		;837a
L_837C:
	call L_8410		;837c
	ld hl,09e22h		;837f
	call 055c6h		;8382
	ld hl,0ea00h		;8385
	ld bc,003ffh		;8388
	call 05de9h		;838b
	ld a,(0c884h)		;838e
	or a			;8391
	ld a,006h		;8392
	jr nz,L_8399		;8394
	ld a,(0c878h)		;8396
L_8399:
	or a			;8399
	ret z			;839a
	cp 006h		;839b
	jr c,L_83A1		;839d
	ld a,006h		;839f
L_83A1:
	ld b,a			;83a1
	ld c,000h		;83a2
L_83A4:
	ld a,c			;83a4
	inc c			;83a5
	ld hl,0841eh		;83a6
	call 04878h		;83a9
	push bc			;83ac
	call L_83D1		;83ad
	pop bc			;83b0
	djnz L_83A4		;83b1
	ret			;83b3
L_83B4:
	ld a,(0c878h)		;83b4
	or a			;83b7
	ret z			;83b8
	ld a,(0c884h)		;83b9
	or a			;83bc
	jr z,L_83C1		;83bd
	ld a,006h		;83bf
L_83C1:
	ld b,a			;83c1
L_83C2:
	ld a,b			;83c2
	ld hl,0841eh		;83c3
	call 04878h		;83c6
	push bc			;83c9
	call L_83E9		;83ca
	pop bc			;83cd
	djnz L_83C2		;83ce
	ret			;83d0
L_83D1:
	call L_83FF		;83d1
	ld h,b			;83d4
	ld l,c			;83d5
	ld bc,00606h		;83d6
	ex de,hl			;83d9
	push hl			;83da
	ld a,009h		;83db
	call 05434h		;83dd
	pop hl			;83e0
	call 051c8h		;83e1
	ld a,003h		;83e4
	jp 05434h		;83e6
L_83E9:
	call L_83FF		;83e9
	ret			;83ec

; ----------------------------------------------------------------------
; DATOS sin identificar  0x83ed..0x83ff  (18 bytes)
DATA_83ED:
	defb 021h,010h,010h,019h,0c3h,0f4h,083h,0cdh,09bh,081h,001h,010h,010h,03eh,048h,0c3h	; 83ed  !............>H.
	defb 0eah,051h	; 83fd

; ======================================================================
; CODIGO 0x83ff..0x841e  (31 bytes)
; ======================================================================


L_83FF:
	ld de,04020h		;83ff
	ld a,(hl)			;8402
	inc hl			;8403
	add a,e			;8404
	ld c,a			;8405
	ld a,(hl)			;8406
	inc hl			;8407
	add a,d			;8408
	ld b,a			;8409
	ld e,(hl)			;840a
	inc hl			;840b
	ld d,(hl)			;840c
	inc hl			;840d
	ld a,(hl)			;840e
	ret			;840f
L_8410:
	ld hl,0c0b0h		;8410
	ld bc,01010h		;8413
	ld d,001h		;8416
	ld a,077h		;8418
	call 0527eh		;841a
	ret			;841d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x841e..0x8448  (42 bytes)
DATA_841E:
	defb 02ah,084h,02fh,084h,034h,084h,039h,084h,03eh,084h,043h,084h,000h,000h,018h,0b0h	; 841e  *./.4.9.>.C.....
	defb 008h,000h,030h,03ch,0b0h,009h,000h,060h,060h,0b0h,00ah,030h,060h,0cch,0b0h,00dh	; 842e  ..0<...``..0`...
	defb 030h,030h,0a8h,0b0h,00ch,030h,000h,084h,0b0h,00bh	; 843e  00...0....

; ======================================================================
; CODIGO 0x8448..0x868e  (582 bytes)
; ======================================================================


L_8448:
	ret			;8448
L_8449:
	ld hl,062a5h		;8449
	ld a,004h		;844c
	jp 05469h		;844e
L_8451:
	ld a,(0c385h)		;8451
	add a,l			;8454
	ld l,a			;8455
	ld de,00030h		;8456
	ld a,004h		;8459
	call 05252h		;845b
	ld a,(0c204h)		;845e
	set 1,a		;8461
	ld (0c204h),a		;8463
	jp 04d4dh		;8466
L_8469:
	ld a,(0c385h)		;8469
	add a,e			;846c
	ld e,a			;846d
	ld hl,00030h		;846e
	ld a,001h		;8471
	call 05226h		;8473
	ld a,(0c581h)		;8476
	res 1,a		;8479
	ld (0c581h),a		;847b
	jp 04d4dh		;847e
L_8481:
	ld a,(0c884h)		;8481
	or a			;8484
	ret z			;8485
	ld a,(0c481h)		;8486
	ld (0c887h),a		;8489
	call L_84D5		;848c
	ret			;848f
L_8490:
	ld a,(0c887h)		;8490
	call L_84C7		;8493
	ld a,(0c106h)		;8496
	and 00fh		;8499
	ret z			;849b
	cp 008h		;849c
	jr nz,L_84A1		;849e
	inc c			;84a0
L_84A1:
	cp 004h		;84a1
	jr nz,L_84A6		;84a3
	dec c			;84a5
L_84A6:
	ld a,b			;84a6
	push bc			;84a7
	call L_84D5		;84a8
	pop bc			;84ab
	ld a,(0c887h)		;84ac
	push af			;84af
	ld a,c			;84b0
	call L_84C7		;84b1
	ld (0c887h),a		;84b4
	push af			;84b7
	call L_84D5		;84b8
	pop af			;84bb
	pop bc			;84bc
	cp b			;84bd
	ret z			;84be
	ld a,(0c887h)		;84bf
	ld a,002h		;84c2
	call 041c1h		;84c4
L_84C7:
	or a			;84c7
	jr nz,L_84CC		;84c8
	ld a,006h		;84ca
L_84CC:
	cp 007h		;84cc
	jr c,L_84D2		;84ce
	ld a,001h		;84d0
L_84D2:
	ld b,a			;84d2
	ld c,a			;84d3
	ret			;84d4
L_84D5:
	dec a			;84d5
	ld hl,0841eh		;84d6
	call 04878h		;84d9
	call L_83FF		;84dc
	ld hl,01008h		;84df
	add hl,bc			;84e2
	ex de,hl			;84e3
	ld hl,0c0b0h		;84e4
	ld bc,01010h		;84e7
	ld a,(0c887h)		;84ea
	cp 004h		;84ed
	jr nc,L_84F5		;84ef
	ld a,e			;84f1
	add a,010h		;84f2
	ld e,a			;84f4
L_84F5:
	ld a,043h		;84f5
	jp 051eah		;84f7
L_84FA:
	djnz L_8508		;84fa
	call 04cedh		;84fc
	call L_82DB		;84ff
	call L_831E		;8502
	jp 04348h		;8505
L_8508:
	djnz L_8515		;8508
	call L_831E		;850a
	ld a,(0c106h)		;850d
	or a			;8510
	ret z			;8511
	jp 04348h		;8512
L_8515:
	djnz L_852B		;8515
	ld de,03814h		;8517
	ld bc,04c7ch		;851a
	call L_8469		;851d
	call 04cf8h		;8520
	call 04881h		;8523
L_8526:
	ld a,005h		;8526
	jp 0432eh		;8528
L_852B:
	ld a,(0c483h)		;852b
	cp 003h		;852e
	jr nc,L_8526		;8530
	ld hl,0c874h		;8532
	ld a,(hl)			;8535
	or a			;8536
	jr z,L_8526		;8537
	dec (hl)			;8539
	push bc			;853a
	ld a,(0c102h)		;853b
	and 001h		;853e
	call nz,063dbh		;8540
	pop bc			;8543
	ld hl,03814h		;8544
	ld bc,04c7ch		;8547
	call L_8451		;854a
	ld a,02fh		;854d
	call 041c1h		;854f
	jp 04348h		;8552
L_8555:
	djnz L_857A		;8555
	push bc			;8557
	ld a,(0c102h)		;8558
	and 001h		;855b
	call nz,063dbh		;855d
	pop bc			;8560
	call L_837C		;8561
	call 04cedh		;8564
	call 058dch		;8567
	call L_83B4		;856a
	call L_8448		;856d
	ld a,(0c884h)		;8570
	or a			;8573
	call nz,L_8481		;8574
	jp 04348h		;8577
L_857A:
	djnz L_85B1		;857a
	ld a,(0c884h)		;857c
	or a			;857f
	call nz,L_8490		;8580
	ld a,(0c106h)		;8583
	and 030h		;8586
	ret z			;8588
	ld a,(0c884h)		;8589
	or a			;858c
	jp z,04348h		;858d
	ld a,(0c887h)		;8590
	ld hl,0c481h		;8593
	cp (hl)			;8596
	jp z,04348h		;8597
	ld a,058h		;859a
	call 041c1h		;859c
	ld hl,0c884h		;859f
	dec (hl)			;85a2
	ld a,03ch		;85a3
	ld (0c104h),a		;85a5
	ld a,004h		;85a8
	ld (0c101h),a		;85aa
	call 04ca3h		;85ad
	ret			;85b0
L_85B1:
	djnz L_85CA		;85b1
	ld de,04020h		;85b3
	ld bc,0f860h		;85b6
	call L_8469		;85b9
	call 055a2h		;85bc
	call 04cf8h		;85bf
	call 04881h		;85c2
L_85C5:
	ld a,005h		;85c5
	jp 0432eh		;85c7
L_85CA:
	djnz L_85E6		;85ca
	ld hl,0c104h		;85cc
	dec (hl)			;85cf
	ret nz			;85d0
	call L_80D1		;85d1
	xor a			;85d4
	ld (0c0f2h),a		;85d5
	ld a,(0c887h)		;85d8
	call 065cfh		;85db
	call 064cdh		;85de
	ld a,005h		;85e1
	jp 0432eh		;85e3
L_85E6:
	ld a,(0c878h)		;85e6
	or a			;85e9
	jr z,L_85C5		;85ea
	call L_8449		;85ec
	ld hl,04020h		;85ef
	ld bc,0f860h		;85f2
	call L_8451		;85f5
	ld a,02fh		;85f8
	call 041c1h		;85fa
	jp 04348h		;85fd
L_8600:
	ld a,(0c4e2h)		;8600
	ld c,a			;8603
	ld a,(0c4d1h)		;8604
	or c			;8607
	jr z,L_860F		;8608
	ld a,07fh		;860a
	ld (0c834h),a		;860c
L_860F:
	call L_8A1D		;860f
	call L_8672		;8612
	call L_8967		;8615
	call L_8A10		;8618
	ld a,(0c800h)		;861b
	cp 003h		;861e
	call nz,L_8BE0		;8620
	call L_8C16		;8623
	ld a,(0c389h)		;8626
	or a			;8629
	ret z			;862a
	ld a,(0c809h)		;862b
	ld d,a			;862e
	ld a,(0c80bh)		;862f
	ld e,a			;8632
	call 04913h		;8633
	dec e			;8636
	inc e			;8637
	ret z			;8638
	cp 000h		;8639
	jr z,L_8644		;863b
	cp 028h		;863d
	jr z,L_8644		;863f
	cp 020h		;8641
	ret nz			;8643
L_8644:
	ld a,(0c809h)		;8644
	sub 00dh		;8647
	cp 0e6h		;8649
	ret nc			;864b
	ld a,(0c385h)		;864c
	and 007h		;864f
	ld c,a			;8651
	ld a,(0c809h)		;8652
	ld (0c49fh),a		;8655
	ld a,(0c80bh)		;8658
	add a,c			;865b
	ld (0c4a0h),a		;865c
	ld hl,(0c302h)		;865f
	ld (0c4a1h),hl		;8662
	ld a,(0c384h)		;8665
	ld (0c4a3h),a		;8668
	ld a,(0c480h)		;866b
	ld (0c4a4h),a		;866e
	ret			;8671
L_8672:
	ld a,(0c809h)		;8672
	ld d,a			;8675
	ld a,(0c80bh)		;8676
	ld e,a			;8679
	call 04913h		;867a
	ld (0c82eh),a		;867d
	ld a,(0c800h)		;8680
	cp 001h		;8683
	call nz,L_8BD6		;8685
	ld a,(0c800h)		;8688
	call 040aeh		;868b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x868e..0x869a  (12 bytes)
DATA_868E:
	defb 0a5h,086h,05fh,087h,003h,088h,0c9h,088h,009h,087h,09ah,086h	; 868e  .._.........

; ======================================================================
; CODIGO 0x869a..0x869f  (5 bytes)
; ======================================================================


L_869A:
	xor a			;869a
	ld (0c800h),a		;869b
	ret			;869e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x869f..0x86a5  (6 bytes)
DATA_869F:
	defb 021h,000h,000h,0cdh,0ffh,087h	; 869f

; ======================================================================
; CODIGO 0x86a5..0x8765  (192 bytes)
; ======================================================================


L_86A5:
	ld a,(0c106h)		;86a5
	and 020h		;86a8
	jr z,L_86B5		;86aa
	ld hl,00001h		;86ac
	call L_87FF		;86af
	jp L_876D		;86b2
L_86B5:
	call L_8ADD		;86b5
	ld hl,08d74h		;86b8
	ld a,(0c860h)		;86bb
	or a			;86be
	ld a,003h		;86bf
	jr nz,L_86C6		;86c1
	ld a,(0c850h)		;86c3
L_86C6:
	call 04878h		;86c6
	call L_8AFE		;86c9
	call L_8B4B		;86cc
	call L_8A2A		;86cf
	call L_89F7		;86d2
	jp z,L_88AD		;86d5
	ld a,(0c204h)		;86d8
	or a			;86db
	jr z,L_86EF		;86dc
	ld a,(0c804h)		;86de
	or a			;86e1
	jr nz,L_86EF		;86e2
	ld a,004h		;86e4
	ld (0c81ch),a		;86e6
	ld a,002h		;86e9
	ld (0c818h),a		;86eb
	ret			;86ee
L_86EF:
	ld hl,08d41h		;86ef
	ld c,005h		;86f2
	call L_8B75		;86f4
	ld a,(0c82eh)		;86f7
	and 0f0h		;86fa
	cp 028h		;86fc
	jr z,L_8703		;86fe
	cp 020h		;8700
	ret nz			;8702
L_8703:
	ld hl,00004h		;8703
	jp L_87FF		;8706
L_8709:
	ld a,(0c106h)		;8709
	and 020h		;870c
	jr z,L_8720		;870e
	ld a,(0c82eh)		;8710
	cp 028h		;8713
	jr z,L_8720		;8715
	ld hl,00001h		;8717
	call L_87FF		;871a
	jp L_876D		;871d
L_8720:
	call L_8ADD		;8720
	ld hl,08d80h		;8723
	ld a,(0c82eh)		;8726
	and 00fh		;8729
	cp 008h		;872b
	jr z,L_8740		;872d
	ld hl,08d74h		;872f
	ld a,(0c860h)		;8732
	or a			;8735
	ld a,003h		;8736
	jr nz,L_873D		;8738
	ld a,(0c850h)		;873a
L_873D:
	call 04878h		;873d
L_8740:
	call L_8AFE		;8740
	call L_8B4B		;8743
	call L_8A2A		;8746
	ld hl,08d3ch		;8749
	ld c,005h		;874c
	call L_8B75		;874e
	ld a,(0c82eh)		;8751
	xor 028h		;8754
	and 0f0h		;8756
	ret z			;8758
	ld hl,00000h		;8759
	jp L_87FF		;875c
L_875F:
	ld a,(0c801h)		;875f
	call 040aeh		;8762

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8765..0x876d  (8 bytes)
DATA_8765:
	defb 06dh,087h,08eh,087h,0aah,087h,0bah,087h	; 8765  m.......

; ======================================================================
; CODIGO 0x876d..0x883a  (205 bytes)
; ======================================================================


L_876D:
	call L_89FD		;876d
	ld a,00bh		;8770
	call 041c1h		;8772
	call L_8ADD		;8775
	ld hl,08e10h		;8778
	call L_8B17		;877b
	ld a,004h		;877e
	ld (0c81ch),a		;8780
	xor a			;8783
	ld (0c81ah),a		;8784
	inc a			;8787
	ld (0c818h),a		;8788
	call L_87FA		;878b
L_878E:
	call L_89EA		;878e
	call L_8BBD		;8791
	call L_8B35		;8794
	call L_8A2A		;8797
	ld a,(0c80dh)		;879a
	or a			;879d
	ret p			;879e
	call L_89F7		;879f
	jp z,L_88AD		;87a2
	call L_8BD6		;87a5
	jr L_87FA		;87a8
L_87AA:
	call L_89EA		;87aa
	ld a,001h		;87ad
	ld (0c803h),a		;87af
	call L_8B4B		;87b2
	call L_8A2A		;87b5
	jr L_87FA		;87b8
L_87BA:
	call L_89EA		;87ba
	ld a,001h		;87bd
	ld (0c818h),a		;87bf
	ld a,001h		;87c2
	ld (0c81ah),a		;87c4
	call L_8B4B		;87c7
	call L_8A2A		;87ca
	ld a,(0c84bh)		;87cd
	or a			;87d0
	jr nz,L_87F4		;87d1
	ld a,(0c82eh)		;87d3
	cp 028h		;87d6
	jr z,L_87E9		;87d8
	cp 020h		;87da
	jr z,L_87E9		;87dc
	ld a,00dh		;87de
	call 041c1h		;87e0
	ld hl,00000h		;87e3
	jp L_87FF		;87e6
L_87E9:
	ld a,00ch		;87e9
	call 041c1h		;87eb
	ld hl,00004h		;87ee
	jp L_87FF		;87f1
L_87F4:
	ld hl,00002h		;87f4
	jp L_87FF		;87f7
L_87FA:
	ld hl,0c801h		;87fa
	inc (hl)			;87fd
	ret			;87fe
L_87FF:
	ld (0c800h),hl		;87ff
	ret			;8802
L_8803:
	ld a,(0c801h)		;8803
	dec a			;8806
	jp z,L_889E		;8807
	xor a			;880a
	ld (0c84bh),a		;880b
	call L_882C		;880e
	xor a			;8811
	ld (0c0f1h),a		;8812
	ld (0c0f2h),a		;8815
	ld (0c81ah),a		;8818
	inc a			;881b
	ld (0c818h),a		;881c
	ld a,05ah		;881f
	ld (0c836h),a		;8821
	call L_87FA		;8824
	ld a,06ah		;8827
	jp 041ach		;8829
L_882C:
	ld a,(0c483h)		;882c
	cp 003h		;882f
	jr nc,$+20		;8831
	ld a,(0c481h)		;8833
	cp 005h		;8836
	jr $+28		;8838

; ----------------------------------------------------------------------
; DATOS sin identificar  0x883a..0x8845  (11 bytes)
DATA_883A:
	defb 03eh,001h,032h,083h,0c4h,0cdh,0f5h,065h,032h,086h,0c4h	; 883a  >.2....e2..

; ======================================================================
; CODIGO 0x8845..0x88ab  (102 bytes)
; ======================================================================


L_8845:
	ld a,080h		;8845
	ld (0c48ah),a		;8847
	ld (0c489h),a		;884a
	ld hl,0001fh		;884d
	ld (0c487h),hl		;8850
	ret			;8853
L_8854:
	ld a,050h		;8854
	ld (0c489h),a		;8856
	ld a,(0c49fh)		;8859
	ld (0c48ah),a		;885c
	ld a,(0c4a0h)		;885f
	rrca			;8862
	rrca			;8863
	rrca			;8864
	and 01fh		;8865
	sub 00ah		;8867
	neg		;8869
	ld e,a			;886b
	rlca			;886c
	sbc a,a			;886d
	ld d,a			;886e
	ld hl,(0c4a1h)		;886f
	add hl,de			;8872
	call L_8884		;8873
	ld (0c487h),hl		;8876
	xor a			;8879
	ld (0c48bh),a		;887a
	ld a,(0c4a4h)		;887d
	ld (0c486h),a		;8880
	ret			;8883
L_8884:
	ld a,h			;8884
	or a			;8885
	ld de,000c0h		;8886
	jp m,L_8896		;8889
L_888C:
	or a			;888c
	sbc hl,de		;888d
	add hl,de			;888f
	ret c			;8890
	or a			;8891
	sbc hl,de		;8892
	jr L_888C		;8894
L_8896:
	or a			;8896
	sbc hl,de		;8897
	add hl,de			;8899
	ret c			;889a
	add hl,de			;889b
	jr L_8896		;889c
L_889E:
	call L_8B97		;889e
	ld hl,0c836h		;88a1
	dec (hl)			;88a4
	ret nz			;88a5
	xor a			;88a6
	ld (0c163h),a		;88a7
	ret			;88aa

; ----------------------------------------------------------------------
; DATOS sin identificar  0x88ab..0x88ad  (2 bytes)
DATA_88AB:
	defb 035h,0c9h	; 88ab

; ======================================================================
; CODIGO 0x88ad..0x8a09  (348 bytes)
; ======================================================================


L_88AD:
	ld a,001h		;88ad
	ld (0c803h),a		;88af
	ld (0c841h),a		;88b2
	ld hl,00000h		;88b5
	ld (0c810h),hl		;88b8
	ld l,003h		;88bb
	xor a			;88bd
	ld (0c81ah),a		;88be
	inc a			;88c1
	ld (0c818h),a		;88c2
	call L_87FF		;88c5
	ret			;88c8
L_88C9:
	ld a,(0c801h)		;88c9
	dec a			;88cc
	jr z,L_8906		;88cd
	jp p,L_894C		;88cf
	call L_8BB0		;88d2
	ld hl,(0c814h)		;88d5
	ld de,0fac0h		;88d8
	call 04921h		;88db
	jr nc,L_88E1		;88de
	ex de,hl			;88e0
L_88E1:
	ld (0c814h),hl		;88e1
	call L_8B35		;88e4
	call L_8BE0		;88e7
	ld a,(0c820h)		;88ea
	ld d,a			;88ed
	ld a,(0c821h)		;88ee
	ld (0c822h),a		;88f1
	cp 0f1h		;88f4
	jp nc,L_87FA		;88f6
	add a,008h		;88f9
	ld e,a			;88fb
	call 048fbh		;88fc
	ld a,d			;88ff
	cp 040h		;8900
	ret z			;8902
	jp L_87FA		;8903
L_8906:
	call L_8B35		;8906
	call L_8BE0		;8909
	ld a,(0c822h)		;890c
	ld d,a			;890f
	ld a,(0c821h)		;8910
	sub d			;8913
	cp 005h		;8914
	jr nc,L_891C		;8916
	ld c,014h		;8918
	jr L_893C		;891a
L_891C:
	cp 00ah		;891c
	jr nc,L_8924		;891e
	ld c,018h		;8920
	jr L_893C		;8922
L_8924:
	cp 00fh		;8924
	jr nc,L_892C		;8926
	ld c,01ch		;8928
	jr L_893C		;892a
L_892C:
	ld a,0f0h		;892c
	ld (0c821h),a		;892e
	ld a,002h		;8931
	ld (0c801h),a		;8933
	ld a,00ah		;8936
	ld (0c803h),a		;8938
	ret			;893b
L_893C:
	ld a,d			;893c
	ld (0c821h),a		;893d
	ld a,(0c81ch)		;8940
	and 07eh		;8943
	cp c			;8945
	ret nc			;8946
	ld a,c			;8947
	ld (0c81ch),a		;8948
	ret			;894b
L_894C:
	call L_8AD3		;894c
	ret nz			;894f
	call L_89C8		;8950
	ld a,000h		;8953
	call 0607ch		;8955
	ld a,(0c481h)		;8958
	cp 008h		;895b
	ld hl,00000h		;895d
	jr nz,L_8964		;8960
	inc l			;8962
	inc l			;8963
L_8964:
	jp L_87FF		;8964
L_8967:
	ld a,(0d402h)		;8967
	or a			;896a
	ret nz			;896b
	ld a,(0c800h)		;896c
	cp 002h		;896f
	ret z			;8971
	ld hl,0c858h		;8972
	ld a,(hl)			;8975
	or a			;8976
	jr nz,L_898B		;8977
	ld hl,0c860h		;8979
	ld a,(hl)			;897c
	or a			;897d
	jr nz,L_89A4		;897e
	ld a,(0c834h)		;8980
	or a			;8983
	ret p			;8984
	ld hl,00002h		;8985
	jp L_87FF		;8988
L_898B:
	ld a,(0c4b0h)		;898b
	and 002h		;898e
	ld (0c82ch),a		;8990
	ld a,(0c4b0h)		;8993
	and 01fh		;8996
	ret nz			;8998
	dec (hl)			;8999
	ld a,(hl)			;899a
	cp 005h		;899b
	jr c,L_89C1		;899d
	ld a,015h		;899f
	jp 041ach		;89a1
L_89A4:
	ld a,(0c4b0h)		;89a4
	and 002h		;89a7
	ld (0c849h),a		;89a9
	ld a,(0c4b0h)		;89ac
	and 01fh		;89af
	ret nz			;89b1
	dec (hl)			;89b2
	xor a			;89b3
	ld (0c834h),a		;89b4
	ld a,(hl)			;89b7
	cp 005h		;89b8
	jr c,L_89C1		;89ba
	ld a,014h		;89bc
	jp 041ach		;89be
L_89C1:
	or a			;89c1
	ret z			;89c2
	ld a,025h		;89c3
	jp 041ach		;89c5
L_89C8:
	ld hl,(0c302h)		;89c8
	ld (0c49ah),hl		;89cb
	ld a,(0c480h)		;89ce
	ld (0c499h),a		;89d1
	ld a,(0c809h)		;89d4
	ld (0c49dh),a		;89d7
	ld a,(0c80bh)		;89da
	ld (0c49ch),a		;89dd
	xor a			;89e0
	ld (0c49eh),a		;89e1
	ld a,080h		;89e4
	ld (0c498h),a		;89e6
	ret			;89e9
L_89EA:
	ld a,(0c388h)		;89ea
	or a			;89ed
	ret z			;89ee
	ld a,(0c80bh)		;89ef
	inc a			;89f2
	ld (0c80bh),a		;89f3
	ret			;89f6
L_89F7:
	ld a,(0e810h)		;89f7
	cp 040h		;89fa
	ret			;89fc
L_89FD:
	ld a,(0c82eh)		;89fd
	and 002h		;8a00
	ret z			;8a02
	ld hl,00000h		;8a03
	jp L_87FF		;8a06

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8a09..0x8a10  (7 bytes)
DATA_8A09:
	defb 0d9h,067h,01fh,0ach,017h,0d9h,0c9h	; 8a09

; ======================================================================
; CODIGO 0x8a10..0x8a95  (133 bytes)
; ======================================================================


L_8A10:
	ld hl,(0c808h)		;8a10
	ld (0c828h),hl		;8a13
	ld hl,(0c80ah)		;8a16
	ld (0c826h),hl		;8a19
	ret			;8a1c
L_8A1D:
	ld a,(0c388h)		;8a1d
	or a			;8a20
	ret z			;8a21
	ld hl,(0c826h)		;8a22
	inc h			;8a25
	ld (0c826h),hl		;8a26
	ret			;8a29
L_8A2A:
	ld a,(0c837h)		;8a2a
	or a			;8a2d
	call z,L_8A46		;8a2e
	ld a,(0c809h)		;8a31
	ld d,a			;8a34
	ld a,(0c80bh)		;8a35
	ld e,a			;8a38
	call 04913h		;8a39
	ld (0c82eh),a		;8a3c
	rrca			;8a3f
	ret c			;8a40
	xor a			;8a41
	ld (0c837h),a		;8a42
	ret			;8a45
L_8A46:
	ld a,(0c80bh)		;8a46
	cp 0d0h		;8a49
	call nc,L_8AA1		;8a4b
	cp 020h		;8a4e
	call c,L_8AB2		;8a50
	ld a,(0c809h)		;8a53
	ld d,a			;8a56
	ld a,(0c80bh)		;8a57
	ld e,a			;8a5a
	call 048fbh		;8a5b
	ret nc			;8a5e
	ld a,(0c809h)		;8a5f
	ld d,a			;8a62
	ld a,(0c827h)		;8a63
	ld e,a			;8a66
	call 048fbh		;8a67
	jr nc,$+81		;8a6a
	ld a,(0c829h)		;8a6c
	ld d,a			;8a6f
	ld a,(0c80bh)		;8a70
	ld e,a			;8a73
	call 048fbh		;8a74
	jr nc,$+75		;8a77
	ld a,(0c829h)		;8a79
	ld d,a			;8a7c
	ld a,(0c827h)		;8a7d
	ld e,a			;8a80
	call L_8AB8		;8a81
	call 048fbh		;8a84
	ret nc			;8a87
	ld a,(0c800h)		;8a88
	cp 001h		;8a8b
	jr z,$+9		;8a8d
	ld hl,00002h		;8a8f
	jp L_87FF		;8a92

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8a95..0x8a96  (1 bytes)
DATA_8A95:
	defb 0c9h	; 8a95

; ======================================================================
; CODIGO 0x8a96..0x8ac9  (51 bytes)
; ======================================================================


L_8A96:
	ld a,001h		;8a96
	ld (0c84bh),a		;8a98
	ld hl,0c581h		;8a9b
	set 7,(hl)		;8a9e
	ret			;8aa0
L_8AA1:
	ld a,0d0h		;8aa1
	ld (0c80bh),a		;8aa3
	ld a,(0c827h)		;8aa6
	cp 0d0h		;8aa9
	ret c			;8aab
	ld a,0d0h		;8aac
	ld (0c827h),a		;8aae
	ret			;8ab1
L_8AB2:
	ld a,020h		;8ab2
	ld (0c80bh),a		;8ab4
	ret			;8ab7
L_8AB8:
	call L_8AC2		;8ab8
L_8ABB:
	ld a,(0c827h)		;8abb
	ld (0c80bh),a		;8abe
	ret			;8ac1
L_8AC2:
	ld a,(0c829h)		;8ac2
	ld (0c809h),a		;8ac5
	ret			;8ac8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8ac9..0x8ad3  (10 bytes)
DATA_8AC9:
	defb 03ah,02bh,0c8h,0b7h,0c8h,03dh,032h,02bh,0c8h,0c9h	; 8ac9  :+...=2+..

; ======================================================================
; CODIGO 0x8ad3..0x8aee  (27 bytes)
; ======================================================================


L_8AD3:
	ld a,(0c803h)		;8ad3
	or a			;8ad6
	ret z			;8ad7
	dec a			;8ad8
	ld (0c803h),a		;8ad9
	ret			;8adc
L_8ADD:
	ld a,(0c107h)		;8add
	and 00fh		;8ae0
	ld hl,08aeeh		;8ae2
	ld e,a			;8ae5
	ld d,000h		;8ae6
	add hl,de			;8ae8
	ld a,(hl)			;8ae9
	ld (0c804h),a		;8aea
	ret			;8aed

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8aee..0x8afe  (16 bytes)
DATA_8AEE:
	defb 000h,003h,007h,000h,005h,004h,006h,005h,001h,002h,008h,001h,000h,003h,007h,000h	; 8aee  ................

; ======================================================================
; CODIGO 0x8afe..0x8b22  (36 bytes)
; ======================================================================


L_8AFE:
	ld a,(0c804h)		;8afe
	add a,a			;8b01
	add a,a			;8b02
	ld e,a			;8b03
	ld d,000h		;8b04
	add hl,de			;8b06
	ld e,(hl)			;8b07
	inc hl			;8b08
	ld d,(hl)			;8b09
	inc hl			;8b0a
	ld c,(hl)			;8b0b
	inc hl			;8b0c
	ld b,(hl)			;8b0d
	ld (0c810h),de		;8b0e
	ld (0c812h),bc		;8b12
	ret			;8b16
L_8B17:
	ld e,(hl)			;8b17
	inc hl			;8b18
	ld d,(hl)			;8b19
	inc hl			;8b1a
	ld (0c814h),de		;8b1b
	jp L_8AFE		;8b1f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8b22..0x8b35  (19 bytes)
DATA_8B22:
	defb 011h,000h,000h,0edh,053h,014h,0c8h,011h,000h,000h,0edh,053h,010h,0c8h,0edh,053h	; 8b22  ....S......S...S
	defb 012h,0c8h,0c9h	; 8b32

; ======================================================================
; CODIGO 0x8b35..0x8cc4  (399 bytes)
; ======================================================================


L_8B35:
	ld hl,0ffa0h		;8b35
	ld de,(0c814h)		;8b38
	add hl,de			;8b3c
	ld (0c814h),hl		;8b3d
	ld hl,(0c80ch)		;8b40
	ld de,(0c814h)		;8b43
	add hl,de			;8b47
	ld (0c80ch),hl		;8b48
L_8B4B:
	ld hl,(0c808h)		;8b4b
	ld de,(0c810h)		;8b4e
	add hl,de			;8b52
	ld de,(0c830h)		;8b53
	add hl,de			;8b57
	ld (0c808h),hl		;8b58
	ld hl,(0c80ah)		;8b5b
	ld de,(0c812h)		;8b5e
	add hl,de			;8b62
	ld de,(0c832h)		;8b63
	add hl,de			;8b67
	ld (0c80ah),hl		;8b68
	ld hl,00000h		;8b6b
	ld (0c830h),hl		;8b6e
	ld (0c832h),hl		;8b71
	ret			;8b74
L_8B75:
	ld a,(0c818h)		;8b75
	dec a			;8b78
	ld (0c818h),a		;8b79
	ret nz			;8b7c
	ld a,c			;8b7d
	ld (0c818h),a		;8b7e
	ld a,(0c81ah)		;8b81
	inc a			;8b84
	cp (hl)			;8b85
	jr c,L_8B8A		;8b86
	ld a,001h		;8b88
L_8B8A:
	ld (0c81ah),a		;8b8a
	ld e,a			;8b8d
	ld d,000h		;8b8e
	add hl,de			;8b90
	ld a,(hl)			;8b91
	ld (0c81ch),a		;8b92
	xor a			;8b95
	ret			;8b96
L_8B97:
	ld hl,08d57h		;8b97
	ld a,(0c82eh)		;8b9a
	xor 028h		;8b9d
	and 0f0h		;8b9f
	jr nz,L_8BA6		;8ba1
	ld hl,08d61h		;8ba3
L_8BA6:
	call L_8B75		;8ba6
	ret nz			;8ba9
	ld hl,08d4dh		;8baa
	jp L_8BCA		;8bad
L_8BB0:
	ld hl,08d6bh		;8bb0
	call L_8B75		;8bb3
	ret nz			;8bb6
	ld hl,08d6fh		;8bb7
	jp L_8BCA		;8bba
L_8BBD:
	ld hl,08d46h		;8bbd
	call L_8B75		;8bc0
	ret nz			;8bc3
	ld hl,08d4ah		;8bc4
	jp L_8BCA		;8bc7
L_8BCA:
	ld a,(0c81ah)		;8bca
	ld e,a			;8bcd
	ld d,000h		;8bce
	add hl,de			;8bd0
	ld a,(hl)			;8bd1
	ld (0c818h),a		;8bd2
	ret			;8bd5
L_8BD6:
	ld hl,00000h		;8bd6
	ld (0c80ch),hl		;8bd9
	ld (0c814h),hl		;8bdc
	ret			;8bdf
L_8BE0:
	call L_8BEC		;8be0
	ld a,(0c800h)		;8be3
	cp 001h		;8be6
	call z,L_8C05		;8be8
	ret			;8beb
L_8BEC:
	ld hl,0c809h		;8bec
	ld a,(hl)			;8bef
	ld (0c820h),a		;8bf0
	inc hl			;8bf3
	inc hl			;8bf4
	ld a,(hl)			;8bf5
	inc hl			;8bf6
	inc hl			;8bf7
	sub (hl)			;8bf8
	ld (0c821h),a		;8bf9
	rra			;8bfc
	xor (hl)			;8bfd
	ret p			;8bfe
	ld a,0f1h		;8bff
	ld (0c821h),a		;8c01
	ret			;8c04
L_8C05:
	ld hl,0c809h		;8c05
	ld a,(hl)			;8c08
	ld (0c824h),a		;8c09
	inc hl			;8c0c
	inc hl			;8c0d
	ld a,(hl)			;8c0e
	ld hl,0c820h		;8c0f
	ld (0c825h),a		;8c12
	ret			;8c15
L_8C16:
	ld hl,08cc4h		;8c16
	call L_8C50		;8c19
	ld a,(0c800h)		;8c1c
	cp 002h		;8c1f
	jr z,L_8C2F		;8c21
	ld a,(0c82ch)		;8c23
	or a			;8c26
	jr nz,L_8C34		;8c27
	ld a,(0c849h)		;8c29
	or a			;8c2c
	jr nz,L_8C39		;8c2d
L_8C2F:
	call L_8C84		;8c2f
	jr L_8C3F		;8c32
L_8C34:
	ld hl,08d2bh		;8c34
	jr L_8C3C		;8c37
L_8C39:
	ld hl,08d2ch		;8c39
L_8C3C:
	call L_8C84		;8c3c
L_8C3F:
	call L_8C9E		;8c3f
	call L_8CAA		;8c42
	ld a,(0c800h)		;8c45
	cp 001h		;8c48
	jp z,L_8C65		;8c4a
	jp L_8C7B		;8c4d
L_8C50:
	ld a,(0c81ch)		;8c50
	rrca			;8c53
	rrca			;8c54
	and 03fh		;8c55
	call 04878h		;8c57
	push hl			;8c5a
	ld bc,00010h		;8c5b
	ld de,0e618h		;8c5e
	ldir		;8c61
	pop hl			;8c63
	ret			;8c64
L_8C65:
	ld a,(0c824h)		;8c65
	add a,0f8h		;8c68
	ld (0e67dh),a		;8c6a
	ld a,(0c825h)		;8c6d
	add a,0f1h		;8c70
	ld (0e67ch),a		;8c72
	ld a,010h		;8c75
	ld (0e67eh),a		;8c77
	ret			;8c7a
L_8C7B:
	ld a,0e0h		;8c7b
	ld (0e67dh),a		;8c7d
	ld (0e67ch),a		;8c80
	ret			;8c83
L_8C84:
	inc hl			;8c84
	inc hl			;8c85
	inc hl			;8c86
	ld de,00004h		;8c87
	ld b,004h		;8c8a
	exx			;8c8c
	ld hl,0e460h		;8c8d
	exx			;8c90
L_8C91:
	ld a,(hl)			;8c91
	exx			;8c92
	ld b,010h		;8c93
L_8C95:
	ld (hl),a			;8c95
	inc hl			;8c96
	djnz L_8C95		;8c97
	exx			;8c99
	add hl,de			;8c9a
	djnz L_8C91		;8c9b
	ret			;8c9d
L_8C9E:
	ld hl,0e5f0h		;8c9e
	ld a,00fh		;8ca1
	ld b,010h		;8ca3
L_8CA5:
	ld (hl),a			;8ca5
	inc hl			;8ca6
	djnz L_8CA5		;8ca7
	ret			;8ca9
L_8CAA:
	ld hl,0e618h		;8caa
	ld a,(0c821h)		;8cad
	ld e,a			;8cb0
	ld a,(0c820h)		;8cb1
	ld d,a			;8cb4
	ld b,004h		;8cb5
L_8CB7:
	ld a,e			;8cb7
	add a,(hl)			;8cb8
	ld (hl),a			;8cb9
	inc l			;8cba
	ld a,d			;8cbb
	add a,(hl)			;8cbc
	ld (hl),a			;8cbd
	inc l			;8cbe
	inc l			;8cbf
	inc l			;8cc0
	djnz L_8CB7		;8cc1
	ret			;8cc3

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8cc4..0x8e36  (370 bytes)
DATA_8CC4:
	defb 0ech,08ch,0ech,08ch,0ech,08ch,0ech,08ch,0ech,08ch,0ech,08ch,0ech,08ch,0ech,08ch	; 8cc4  ................
	defb 0ech,08ch,00ch,08dh,00ch,08dh,00ch,08dh,00ch,08dh,0fch,08ch,0fch,08ch,0fch,08ch	; 8cd4  ................
	defb 01ch,08dh,00ch,08dh,00ch,08dh,00ch,08dh,0e3h,0f8h,000h,00dh,0e3h,0f8h,004h,04eh	; 8ce4  ...............N
	defb 0f3h,0f8h,008h,00dh,0f3h,0f8h,00ch,04eh,0ech,0f8h,000h,00dh,0ech,0f8h,004h,04eh	; 8cf4  .......N.......N
	defb 0fch,0f8h,008h,00ch,0fch,0f8h,00ch,04fh,0ech,0f8h,000h,00ah,0ech,0f8h,004h,04ch	; 8d04  .......O.......L
	defb 0fch,0f8h,008h,00ah,0fch,0f8h,00ch,04ch,0ech,0f8h,000h,00ah,0ech,0f8h,004h,04ch	; 8d14  .......L.......L
	defb 0fch,0f8h,008h,000h,0fch,0f8h,00ch,000h,0ech,0f8h,000h,00ah,0ech,0f8h,000h,00ah	; 8d24  ................
	defb 0fch,0f8h,000h,00ah,0fch,0f8h,000h,00ah,005h,038h,03ch,034h,03ch,005h,000h,004h	; 8d34  .........8<4<...
	defb 008h,004h,004h,00ch,00ch,004h,002h,0ffh,0ffh,006h,006h,006h,006h,006h,006h,006h	; 8d44  ................
	defb 006h,0ffh,0ffh,024h,028h,02ch,028h,02ch,028h,02ch,028h,030h,030h,040h,044h,048h	; 8d54  ...$(,(,(,(00@DH
	defb 044h,048h,044h,048h,044h,04ch,04ch,014h,018h,01ch,020h,002h,005h,006h,0ffh,0ffh	; 8d64  DHDHDLL... .....
	defb 080h,08dh,0a4h,08dh,0c8h,08dh,0ech,08dh,0ech,08dh,0ech,08dh,000h,000h,000h,000h	; 8d74  ................
	defb 0a0h,001h,000h,000h,0a0h,001h,060h,0feh,000h,000h,060h,0feh,060h,0feh,060h,0feh	; 8d84  ......`...`.`.`.
	defb 060h,0feh,000h,000h,060h,0feh,0a0h,001h,000h,000h,0a0h,001h,0a0h,001h,0a0h,001h	; 8d94  `...`...........
	defb 000h,000h,000h,000h,0c3h,002h,000h,000h,0c3h,002h,03dh,0fdh,000h,000h,03dh,0fdh	; 8da4  ..........=...=.
	defb 03dh,0fdh,03dh,0fdh,03dh,0fdh,000h,000h,03dh,0fdh,0c3h,002h,000h,000h,0c3h,002h	; 8db4  =.=.=...=.......
	defb 0c3h,002h,0c3h,002h,000h,000h,000h,000h,040h,003h,000h,000h,040h,003h,0c0h,0fch	; 8dc4  ........@...@...
	defb 000h,000h,0c0h,0fch,0c0h,0fch,0c0h,0fch,0c0h,0fch,000h,000h,0c0h,0fch,040h,003h	; 8dd4  ..............@.
	defb 000h,000h,040h,003h,040h,003h,040h,003h,000h,000h,000h,000h,093h,003h,000h,000h	; 8de4  ..@.@.@.........
	defb 093h,003h,06dh,0fch,000h,000h,06dh,0fch,06dh,0fch,06dh,0fch,06dh,0fch,000h,000h	; 8df4  ..m...m.m.m.m...
	defb 06dh,0fch,093h,003h,000h,000h,093h,003h,093h,003h,093h,003h,040h,005h,000h,000h	; 8e04  m...........@...
	defb 000h,000h,049h,002h,000h,000h,024h,001h,0b7h,0fdh,000h,000h,0b7h,0fdh,0dch,0feh	; 8e14  ..I...$.........
	defb 0b7h,0fdh,0b7h,0fdh,000h,000h,0dch,0feh,049h,002h,000h,000h,049h,002h,024h,001h	; 8e24  ........I...I.$.
	defb 049h,002h	; 8e34

; ======================================================================
; CODIGO 0x8e36..0x8ea2  (108 bytes)
; ======================================================================


L_8E36:
	xor a			;8e36
	ld (0c48bh),a		;8e37
	ld (0c80ch),a		;8e3a
	call L_8EBE		;8e3d
	call L_8A10		;8e40
	ld a,(0c80bh)		;8e43
	ld e,a			;8e46
	ld a,(0c809h)		;8e47
	ld d,a			;8e4a
	call 04913h		;8e4b
	ld (0c82eh),a		;8e4e
	and 0f0h		;8e51
	cp 020h		;8e53
	ld a,004h		;8e55
	ld c,000h		;8e57
	jr nz,L_8E5F		;8e59
	ld a,03ch		;8e5b
	ld c,004h		;8e5d
L_8E5F:
	ld (0c81ch),a		;8e5f
	ld a,c			;8e62
	ld (0c800h),a		;8e63
	ret			;8e66
L_8E67:
	ld a,001h		;8e67
	ld (0c818h),a		;8e69
	ld a,(0c489h)		;8e6c
	ld (0c80bh),a		;8e6f
	ld e,a			;8e72
	ld a,(0c48ah)		;8e73
	ld (0c809h),a		;8e76
	ld l,a			;8e79
	call L_8EBE		;8e7a
	call L_8A10		;8e7d
	ld a,000h		;8e80
	ld (0c834h),a		;8e82
	xor a			;8e85
	ld (0c82ch),a		;8e86
	ld (0c849h),a		;8e89
	ld (0c81ah),a		;8e8c
	ld (0c841h),a		;8e8f
	ld a,006h		;8e92
	ld (0cad0h),a		;8e94
	ld hl,0ca00h		;8e97
	ld de,00020h		;8e9a
	ld b,006h		;8e9d
	jp 06152h		;8e9f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8ea2..0x8eb4  (18 bytes)
DATA_8EA2:
	defb 0cdh,043h,08eh,03ah,009h,0c8h,032h,09fh,0c4h,03ah,00bh,0c8h,032h,0a0h,0c4h,0cdh	; 8ea2  .C.:..2..:..2...
	defb 06eh,056h	; 8eb2

; ======================================================================
; CODIGO 0x8eb4..0x8fd6  (290 bytes)
; ======================================================================


L_8EB4:
	ld hl,0c870h		;8eb4
	ld a,(hl)			;8eb7
	or a			;8eb8
	jp z,L_8F2B		;8eb9
	dec (hl)			;8ebc
	ret			;8ebd
L_8EBE:
	xor a			;8ebe
	ld (0c837h),a		;8ebf
	ld a,(0c809h)		;8ec2
	ld d,a			;8ec5
	ld a,(0c80bh)		;8ec6
	ld e,a			;8ec9
	call 04913h		;8eca
	call L_8F22		;8ecd
	ret z			;8ed0
	ld a,(0c809h)		;8ed1
	ld d,a			;8ed4
	ld a,(0c80bh)		;8ed5
	add a,008h		;8ed8
	ld e,a			;8eda
	call 048fbh		;8edb
	call L_8F22		;8ede
	jr z,L_8F19		;8ee1
	ld a,(0c809h)		;8ee3
	ld d,a			;8ee6
	ld a,(0c80bh)		;8ee7
	add a,010h		;8eea
	ld e,a			;8eec
	call 048fbh		;8eed
	call L_8F22		;8ef0
	jr z,L_8F10		;8ef3
	ld a,(0c80bh)		;8ef5
	sub 008h		;8ef8
	ld (0c80bh),a		;8efa
	ld e,a			;8efd
	ld a,(0c809h)		;8efe
	ld d,a			;8f01
	call 04913h		;8f02
	ld (0c82eh),a		;8f05
	rra			;8f08
	ret nc			;8f09
	ld a,001h		;8f0a
	ld (0c837h),a		;8f0c
	ret			;8f0f
L_8F10:
	ld a,(0c80bh)		;8f10
	add a,010h		;8f13
	ld (0c80bh),a		;8f15
	ret			;8f18
L_8F19:
	ld a,(0c80bh)		;8f19
	add a,008h		;8f1c
	ld (0c80bh),a		;8f1e
	ret			;8f21
L_8F22:
	cp 028h		;8f22
	ret z			;8f24
	cp 020h		;8f25
	ret z			;8f27
	cp 000h		;8f28
	ret			;8f2a
L_8F2B:
	xor a			;8f2b
	ld (0c847h),a		;8f2c
	ld (0c840h),a		;8f2f
	ld (0c845h),a		;8f32
	ld (0c842h),a		;8f35
	inc a			;8f38
	ld (0c84ah),a		;8f39
	ld hl,0c850h		;8f3c
	ld bc,00037h		;8f3f
	call 05de9h		;8f42
	ret			;8f45
L_8F46:
	call L_8F4F		;8f46
	call L_9162		;8f49
	jp L_9368		;8f4c
L_8F4F:
	ld a,(0c840h)		;8f4f
	cp 006h		;8f52
	jr z,L_8FAC		;8f54
	ld a,(0c4e1h)		;8f56
	or a			;8f59
	jr z,L_8F73		;8f5a
	ld a,004h		;8f5c
	ld (0c85ch),a		;8f5e
	call 07fabh		;8f61
	ld a,(0c4b0h)		;8f64
	and 007h		;8f67
	jr nz,L_8F73		;8f69
	ld a,(0c107h)		;8f6b
	and 010h		;8f6e
	ret z			;8f70
	jr L_8F79		;8f71
L_8F73:
	ld a,(0c106h)		;8f73
	and 010h		;8f76
	ret z			;8f78
L_8F79:
	ld a,(0c840h)		;8f79
	cp 006h		;8f7c
	jr z,L_8F8D		;8f7e
	ld a,(0cad0h)		;8f80
	neg		;8f83
	add a,006h		;8f85
	ld c,a			;8f87
	ld a,(0c84ah)		;8f88
	cp c			;8f8b
	ret c			;8f8c
L_8F8D:
	call L_8FDD		;8f8d
	ex de,hl			;8f90
	ld a,(0cad0h)		;8f91
	sub (hl)			;8f94
	ret c			;8f95
	ld (0cad0h),a		;8f96
	call L_8FF5		;8f99
	ld a,(0c840h)		;8f9c
	ld hl,08fd6h		;8f9f
	ld e,a			;8fa2
	ld d,000h		;8fa3
	add hl,de			;8fa5
	ld a,(hl)			;8fa6
	call 041ach		;8fa7
	xor a			;8faa
	ret			;8fab
L_8FAC:
	ld a,(0c107h)		;8fac
	and 010h		;8faf
	ret z			;8fb1
	ld a,(0c106h)		;8fb2
	and 010h		;8fb5
	call nz,L_8FC5		;8fb7
	ld a,(0c844h)		;8fba
	or a			;8fbd
	jr z,L_8FCB		;8fbe
	dec a			;8fc0
	ld (0c844h),a		;8fc1
	ret			;8fc4
L_8FC5:
	ld hl,0c848h		;8fc5
	ld (hl),000h		;8fc8
	ret			;8fca
L_8FCB:
	ld a,002h		;8fcb
	ld (0c844h),a		;8fcd
	ld hl,0c848h		;8fd0
	inc (hl)			;8fd3
	jr L_8F79		;8fd4

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8fd6..0x8fdd  (7 bytes)
DATA_8FD6:
	defb 005h,006h,006h,007h,008h,009h,00ah	; 8fd6

; ======================================================================
; CODIGO 0x8fdd..0x906b  (142 bytes)
; ======================================================================


L_8FDD:
	ld a,(0c840h)		;8fdd
	ld de,0906bh		;8fe0
	jp 0486fh		;8fe3
L_8FE6:
	ld hl,0ca00h		;8fe6
	ld de,00020h		;8fe9
	ld b,006h		;8fec
	xor a			;8fee
L_8FEF:
	cp (hl)			;8fef
	ret z			;8ff0
	add hl,de			;8ff1
	djnz L_8FEF		;8ff2
	ret			;8ff4
L_8FF5:
	ld b,(hl)			;8ff5
L_8FF6:
	inc hl			;8ff6
	ld a,(hl)			;8ff7
	dec a			;8ff8
	exx			;8ff9
	ld de,09090h		;8ffa
	call 0486fh		;8ffd
	push de			;9000
	call L_8FE6		;9001
	ex de,hl			;9004
	pop hl			;9005
	call L_900D		;9006
	exx			;9009
	djnz L_8FF6		;900a
	ret			;900c
L_900D:
	ld a,b			;900d
	ex af,af'			;900e
	ldi		;900f
	ld a,(0c80dh)		;9011
	cp 007h		;9014
	jr c,L_901E		;9016
	dec e			;9018
	ex de,hl			;9019
	set 6,(hl)		;901a
	ex de,hl			;901c
	inc e			;901d
L_901E:
	ldi		;901e
	inc e			;9020
	ld a,(0c821h)		;9021
	add a,(hl)			;9024
	ld (de),a			;9025
	inc hl			;9026
	inc e			;9027
	inc e			;9028
	ld a,(0c820h)		;9029
	add a,(hl)			;902c
	ld (de),a			;902d
	inc hl			;902e
	inc e			;902f
	ld bc,00005h		;9030
	ldir		;9033
	ld a,(0c840h)		;9035
	cp 005h		;9038
	ld a,(0c842h)		;903a
	jr nz,L_9048		;903d
	rrca			;903f
	rrca			;9040
	and 03fh		;9041
	ld b,a			;9043
	rrca			;9044
	and 07fh		;9045
	add a,b			;9047
L_9048:
	ld (de),a			;9048
	inc e			;9049
	inc e			;904a
	inc e			;904b
	inc e			;904c
	inc e			;904d
	ex af,af'			;904e
	dec a			;904f
	add a,a			;9050
	add a,a			;9051
	ld (de),a			;9052
	inc e			;9053
	ldi		;9054
	ldi		;9056
	ldi		;9058
	add a,a			;905a
	add a,a			;905b
	ld e,a			;905c
	ld d,000h		;905d
	ld a,(hl)			;905f
	ld hl,0e400h		;9060
	add hl,de			;9063
	ld b,010h		;9064
L_9066:
	ld (hl),a			;9066
	inc hl			;9067
	djnz L_9066		;9068
	ret			;906a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x906b..0x9162  (247 bytes)
DATA_906B:
	defb 079h,090h,07bh,090h,07dh,090h,083h,090h,080h,090h,087h,090h,08eh,090h,001h,001h	; 906b  y.{.}...........
	defb 001h,002h,002h,003h,004h,002h,002h,005h,003h,002h,006h,007h,006h,009h,00ah,00bh	; 907b  ................
	defb 00ch,00dh,00eh,001h,00fh,0aeh,090h,0bah,090h,0c6h,090h,0d2h,090h,0deh,090h,0eah	; 908b  ................
	defb 090h,0f6h,090h,002h,091h,00eh,091h,01ah,091h,026h,091h,032h,091h,03eh,091h,04ah	; 909b  .........&.2.>.J
	defb 091h,056h,091h,001h,000h,0fbh,000h,000h,0f9h,000h,000h,000h,014h,00ch,00ah,002h	; 90ab  .V..............
	defb 000h,0fbh,000h,000h,0f9h,000h,000h,002h,014h,00ah,00ah,003h,000h,0fbh,0f8h,000h	; 90bb  ................
	defb 0fbh,000h,000h,002h,014h,00ah,00ah,004h,000h,0fbh,008h,000h,0fbh,000h,000h,002h	; 90cb  ................
	defb 014h,00ah,00ah,005h,000h,0f8h,0f8h,000h,000h,000h,000h,002h,014h,00ah,00ah,006h	; 90db  ................
	defb 000h,0fbh,0f8h,000h,0f9h,000h,0fah,002h,014h,00ah,00ah,007h,000h,0fbh,0f8h,000h	; 90eb  ................
	defb 0f9h,000h,006h,002h,014h,00ah,00ah,008h,000h,0fbh,000h,000h,0f9h,000h,000h,002h	; 90fb  ................
	defb 014h,00ah,00ah,009h,000h,0fbh,000h,000h,0f5h,000h,000h,002h,014h,00ah,00ah,00ah	; 910b  ................
	defb 000h,0fbh,000h,000h,0f8h,000h,0f8h,002h,014h,00ah,00ah,00bh,000h,0fbh,000h,000h	; 911b  ................
	defb 008h,000h,0f7h,002h,014h,00ah,00ah,00ch,000h,0fbh,000h,000h,00bh,000h,000h,002h	; 912b  ................
	defb 014h,00ah,00ah,00dh,000h,0fbh,000h,000h,008h,000h,009h,002h,014h,00ah,00ah,00eh	; 913b  ................
	defb 000h,0fbh,000h,000h,0f8h,000h,008h,002h,014h,00ah,00ah,00fh,000h,0fbh,000h,000h	; 914b  ................
	defb 000h,000h,000h,002h,014h,00ah,00ah	; 915b

; ======================================================================
; CODIGO 0x9162..0x91a4  (66 bytes)
; ======================================================================


L_9162:
	ld hl,0ca00h		;9162
	ld b,006h		;9165
L_9167:
	ld a,(hl)			;9167
	and 03fh		;9168
	jr z,L_9179		;916a
	push hl			;916c
	push bc			;916d
	push hl			;916e
	pop ix		;916f
	call L_9196		;9171
	pop bc			;9174
	pop hl			;9175
	call L_9180		;9176
L_9179:
	ld de,00020h		;9179
	add hl,de			;917c
	djnz L_9167		;917d
	ret			;917f
L_9180:
	ld d,h			;9180
	ld e,l			;9181
	inc e			;9182
	inc e			;9183
	inc e			;9184
	ld a,(de)			;9185
	cp 0e0h		;9186
	jr nc,L_9192		;9188
	inc e			;918a
	inc e			;918b
	ld a,(de)			;918c
	add a,008h		;918d
	cp 0f0h		;918f
	ret c			;9191
L_9192:
	ld a,0ffh		;9192
	ld (hl),a			;9194
	ret			;9195
L_9196:
	exx			;9196
	dec (ix+00bh)		;9197
	jp z,L_9333		;919a
	cp 01eh		;919d
	ret nc			;919f
	dec a			;91a0
	call 040aeh		;91a1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x91a4..0x91c2  (30 bytes)
DATA_91A4:
	defb 03ch,092h,092h,092h,092h,092h,092h,092h,058h,092h,0e8h,091h,0e8h,091h,092h,092h	; 91a4  <.......X.......
	defb 0edh,091h,0edh,091h,0edh,091h,0edh,091h,0edh,091h,0edh,091h,0c2h,091h	; 91b4  ..............

; ======================================================================
; CODIGO 0x91c2..0x9338  (374 bytes)
; ======================================================================


L_91C2:
	ld a,(ix+001h)		;91c2
	or a			;91c5
	jr nz,L_91ED		;91c6
	ld a,(0c848h)		;91c8
	and 007h		;91cb
	add a,a			;91cd
	ld de,09348h		;91ce
	call 0486fh		;91d1
	ld (ix+006h),e		;91d4
	ld (ix+007h),d		;91d7
	inc hl			;91da
	ld e,(hl)			;91db
	inc hl			;91dc
	ld d,(hl)			;91dd
	ld (ix+008h),e		;91de
	ld (ix+009h),d		;91e1
	inc (ix+001h)		;91e4
	ret			;91e7
L_91E8:
	call L_91ED		;91e8
	jr L_921E		;91eb
L_91ED:
	exx			;91ed
	push hl			;91ee
	call L_9295		;91ef
	pop hl			;91f2
	inc l			;91f3
	inc l			;91f4
	inc l			;91f5
	inc l			;91f6
	ld e,(hl)			;91f7
	inc l			;91f8
	ld d,(hl)			;91f9
	inc l			;91fa
	inc l			;91fb
	inc l			;91fc
	ld (0e804h),hl		;91fd
	ld (0e806h),de		;9200
	ld c,(hl)			;9204
	inc l			;9205
	ld b,(hl)			;9206
	ex de,hl			;9207
	add hl,bc			;9208
	ex de,hl			;9209
	dec l			;920a
	dec l			;920b
	dec l			;920c
	dec l			;920d
	ld (hl),d			;920e
	dec l			;920f
	ld (hl),e			;9210
	dec l			;9211
	dec l			;9212
	ld (0e800h),de		;9213
	ld (0e802h),bc		;9217
	jp L_9244		;921b
L_921E:
	ld h,b			;921e
	ld l,c			;921f
	add hl,hl			;9220
	add hl,de			;9221
	ld a,h			;9222
	add a,008h		;9223
	ld de,(0e800h)		;9225
	ld hl,(0e802h)		;9229
	add hl,hl			;922c
	add hl,de			;922d
	ld d,h			;922e
	ld e,a			;922f
	call 04906h		;9230
	ret nc			;9233
	ld hl,(0e804h)		;9234
	xor a			;9237
	ld (hl),a			;9238
	inc l			;9239
	ld (hl),a			;923a
	ret			;923b
L_923C:
	exx			;923c
	inc l			;923d
	inc l			;923e
	call L_9244		;923f
	jr L_927E		;9242
L_9244:
	ld e,(hl)			;9244
	inc l			;9245
	ld d,(hl)			;9246
	inc l			;9247
	inc l			;9248
	inc l			;9249
	ld c,(hl)			;924a
	inc l			;924b
	ld b,(hl)			;924c
	ex de,hl			;924d
	add hl,bc			;924e
	ex de,hl			;924f
	dec l			;9250
	dec l			;9251
	dec l			;9252
	dec l			;9253
	ld (hl),d			;9254
	dec l			;9255
	ld (hl),e			;9256
	ret			;9257
L_9258:
	exx			;9258
	inc l			;9259
	inc (hl)			;925a
	ld a,(hl)			;925b
	cp 080h		;925c
	jp z,L_928D		;925e
	and 007h		;9261
	push hl			;9263
	ld de,09338h		;9264
	call 0486fh		;9267
	pop hl			;926a
	inc l			;926b
	inc l			;926c
	ld a,(0c821h)		;926d
	add a,e			;9270
	add a,0fch		;9271
	ld (hl),a			;9273
	ld e,a			;9274
	inc l			;9275
	inc l			;9276
	ld a,(0c820h)		;9277
	add a,d			;927a
	ld (hl),a			;927b
	ld d,a			;927c
	ret			;927d
L_927E:
	bit 6,(ix+000h)		;927e
	ret nz			;9282
	ld d,(ix+005h)		;9283
	ld e,(ix+003h)		;9286
	call 04906h		;9289
	ret nc			;928c
L_928D:
	ld (ix+000h),0ffh		;928d
	ret			;9291
L_9292:
	call L_923C		;9292
L_9295:
	ld a,(ix+003h)		;9295
	ld e,a			;9298
	ld a,(ix+005h)		;9299
	ld d,a			;929c
	ld (0e830h),de		;929d
	call 048bfh		;92a1
	ld e,(hl)			;92a4
	ld d,0c9h		;92a5
	ld a,(de)			;92a7
	ld d,a			;92a8
	ld (0e812h),de		;92a9
	ld de,00020h		;92ad
	add hl,de			;92b0
	res 2,h		;92b1
	ld e,(hl)			;92b3
	ld d,0c9h		;92b4
	ld a,(de)			;92b6
	ld d,a			;92b7
	ld (0e814h),de		;92b8
	ld a,d			;92bc
	cp 050h		;92bd
	jr nz,L_92E6		;92bf
	ld de,(0e830h)		;92c1
	ld a,e			;92c5
	add a,008h		;92c6
	ld e,a			;92c8
	push de			;92c9
	ld a,(0c442h)		;92ca
	call 0630dh		;92cd
	pop de			;92d0
	ld hl,000b8h		;92d1
	ld a,r		;92d4
	rrca			;92d6
	jr c,L_92DB		;92d7
	set 3,h		;92d9
L_92DB:
	call L_9322		;92db
	ld a,001h		;92de
	ld bc,00808h		;92e0
	call 05226h		;92e3
L_92E6:
	ld a,(0e813h)		;92e6
	cp 061h		;92e9
	jr z,L_92F1		;92eb
	cp 051h		;92ed
	jr nz,L_9314		;92ef
L_92F1:
	dec (ix+00ah)		;92f1
	call L_932E		;92f4
	ld a,(0c440h)		;92f7
	ld de,(0e830h)		;92fa
	call 0630dh		;92fe
	ld de,(0e830h)		;9301
	ld hl,018b8h		;9305
	call L_9322		;9308
	ld a,001h		;930b
	ld bc,00808h		;930d
	call 05226h		;9310
	ret			;9313
L_9314:
	bit 6,(ix+000h)		;9314
	ret nz			;9318
	ld a,(0e813h)		;9319
	rrca			;931c
	rrca			;931d
	rrca			;931e
	ret nc			;931f
	jr L_9333		;9320
L_9322:
	ld a,(0c385h)		;9322
	add a,e			;9325
	and 0f8h		;9326
	ld e,a			;9328
	ld a,d			;9329
	and 0f8h		;932a
	ld d,a			;932c
	ret			;932d
L_932E:
	ld a,(ix+00ah)		;932e
	or a			;9331
	ret p			;9332
L_9333:
	ld (ix+000h),0ffh		;9333
	ret			;9337

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9338..0x9368  (48 bytes)
DATA_9338:
	defb 0e7h,000h,0efh,011h,000h,019h,011h,011h,019h,000h,011h,0efh,000h,0e7h,0efh,0efh	; 9338  ................
	defb 000h,0fdh,000h,0fdh,000h,0f9h,000h,000h,000h,0f9h,000h,000h,000h,0fah,000h,001h	; 9348  ................
	defb 000h,0fah,000h,0ffh,000h,0fbh,000h,002h,000h,0fbh,000h,0feh,000h,0fdh,000h,003h	; 9358  ................

; ======================================================================
; CODIGO 0x9368..0x9409  (161 bytes)
; ======================================================================


L_9368:
	ld hl,0ca00h		;9368
	ld de,00020h		;936b
	ld b,006h		;936e
L_9370:
	ld a,(hl)			;9370
	or a			;9371
	jr z,L_937E		;9372
	push hl			;9374
	exx			;9375
	pop hl			;9376
	call m,L_93C3		;9377
	call L_9382		;937a
	exx			;937d
L_937E:
	add hl,de			;937e
	djnz L_9370		;937f
	ret			;9381
L_9382:
	set 4,l		;9382
	push hl			;9384
	ld c,(hl)			;9385
	ld b,000h		;9386
	ld de,0e600h		;9388
	ex de,hl			;938b
	add hl,bc			;938c
	ex de,hl			;938d
	inc l			;938e
	ld a,(hl)			;938f
	res 4,l		;9390
	inc l			;9392
	inc l			;9393
	ex af,af'			;9394
	ld a,(hl)			;9395
	add a,0f8h		;9396
	ld c,a			;9398
	inc l			;9399
	inc l			;939a
	ld a,(hl)			;939b
	add a,0f8h		;939c
	ld b,a			;939e
	ex af,af'			;939f
	ex de,hl			;93a0
	ld (hl),c			;93a1
	inc l			;93a2
	ld (hl),b			;93a3
	inc l			;93a4
	ld (hl),a			;93a5
	pop hl			;93a6
	ld b,(hl)			;93a7
	inc l			;93a8
	inc l			;93a9
	ld a,(0c4b0h)		;93aa
	rrca			;93ad
	jr c,L_93B1		;93ae
	inc l			;93b0
L_93B1:
	ld c,(hl)			;93b1
	ld a,b			;93b2
	add a,a			;93b3
	add a,a			;93b4
	ld e,a			;93b5
	ld d,000h		;93b6
	ld hl,0e400h		;93b8
	add hl,de			;93bb
	ld b,010h		;93bc
L_93BE:
	ld (hl),c			;93be
	inc hl			;93bf
	djnz L_93BE		;93c0
	ret			;93c2
L_93C3:
	ld a,(0cad0h)		;93c3
	inc a			;93c6
	ld (0cad0h),a		;93c7
	xor a			;93ca
	ld (hl),a			;93cb
	inc l			;93cc
	inc l			;93cd
	inc l			;93ce
	ld a,0e5h		;93cf
	ld (hl),a			;93d1
	dec l			;93d2
	dec l			;93d3
	dec l			;93d4
	ret			;93d5
L_93D6:
	ld a,(0c81ch)		;93d6
	bit 0,a		;93d9
	ret nz			;93db
	or 001h		;93dc
	ld (0c81ch),a		;93de
	rrca			;93e1
	and 07eh		;93e2
	ld de,0a0bbh		;93e4
	ld l,a			;93e7
	ld h,000h		;93e8
	add hl,hl			;93ea
	add hl,de			;93eb
	ld e,(hl)			;93ec
	inc hl			;93ed
	ld d,(hl)			;93ee
	inc hl			;93ef
	push hl			;93f0
	ex de,hl			;93f1
	ld de,0f800h		;93f2
	ld bc,00040h		;93f5
	call 049f3h		;93f8
	pop hl			;93fb
	ld e,(hl)			;93fc
	inc hl			;93fd
	ld d,(hl)			;93fe
	ex de,hl			;93ff
	ld de,0f840h		;9400
	ld bc,00040h		;9403
	jp 049f3h		;9406

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9409..0x9577  (366 bytes)
DATA_9409:
	defb 0c3h,094h,0c6h,094h,0c9h,094h,0cch,094h,0c3h,094h,0c3h,094h,0c6h,094h,0cfh,094h	; 9409  ................
	defb 0d4h,094h,0c3h,094h,0c3h,094h,0c3h,094h,0c6h,094h,0c3h,094h,0c6h,094h,0cfh,094h	; 9419  ................
	defb 0d4h,094h,0c3h,094h,0c6h,094h,0c3h,094h,0c6h,094h,0c3h,094h,0c3h,094h,0c6h,094h	; 9429  ................
	defb 0c9h,094h,0c3h,094h,0c6h,094h,0cfh,094h,0d4h,094h,0c3h,094h,0c6h,094h,0c9h,094h	; 9439  ................
	defb 0cch,094h,0c3h,094h,0c6h,094h,0c3h,094h,0c6h,094h,0c3h,094h,0c6h,094h,0c3h,094h	; 9449  ................
	defb 0c6h,094h,0c3h,094h,0c6h,094h,0c3h,094h,0c6h,094h,0d9h,094h,0e2h,094h,0ebh,094h	; 9459  ................
	defb 017h,095h,033h,095h,0d9h,094h,0e2h,094h,0ebh,094h,0f4h,094h,04fh,095h,0fdh,094h	; 9469  ..3.........O...
	defb 00ah,095h,0fdh,094h,00ah,095h,04fh,095h,053h,095h,0cfh,094h,0c3h,094h,0c3h,094h	; 9479  ......O.S.......
	defb 0c3h,094h,0c3h,094h,0bfh,094h,0c1h,094h,0bfh,094h,0c1h,094h,055h,095h,058h,095h	; 9489  ............U.X.
	defb 05bh,095h,05eh,095h,0c3h,094h,0c6h,094h,0bfh,094h,0c1h,094h,061h,095h,064h,095h	; 9499  [.^.........a.d.
	defb 067h,095h,069h,095h,06eh,095h,075h,095h,0c3h,094h,0cfh,094h,0d4h,094h,0cfh,094h	; 94a9  g.i.n.u.........
	defb 0d4h,094h,0cfh,094h,0d4h,094h,081h,000h,081h,004h,081h,000h,004h,081h,008h,00ch	; 94b9  ................
	defb 081h,010h,014h,081h,018h,01ch,080h,000h,004h,008h,00ch,080h,010h,014h,018h,01ch	; 94c9  ................
	defb 082h,000h,004h,008h,00ch,010h,014h,018h,01ch,082h,020h,024h,028h,02ch,030h,034h	; 94d9  .......... $(,04
	defb 038h,03ch,082h,040h,044h,048h,04ch,050h,054h,058h,05ch,082h,060h,064h,068h,06ch	; 94e9  8<.@DHLPTX\.`dhl
	defb 070h,074h,078h,07ch,083h,000h,004h,008h,00ch,010h,014h,018h,01ch,020h,024h,028h	; 94f9  ptx|......... $(
	defb 02ch,083h,030h,034h,038h,03ch,040h,044h,048h,04ch,050h,054h,058h,05ch,084h,0e1h	; 9509  ,.048<@DHLPTX\..
	defb 0f0h,000h,0e1h,0f0h,004h,0f1h,0f0h,008h,0f1h,0f0h,00ch,0e1h,000h,010h,0e1h,000h	; 9519  ................
	defb 014h,0f1h,000h,018h,0f1h,000h,01ch,000h,0f8h,040h,084h,0e1h,0f0h,020h,0e1h,0f0h	; 9529  .........@... ..
	defb 024h,0f1h,0f0h,028h,0f1h,0f0h,02ch,0e1h,000h,030h,0e1h,000h,034h,0f1h,000h,038h	; 9539  $..(..,..0..4..8
	defb 0f1h,000h,03ch,000h,0f8h,040h,084h,0f8h,0f8h,048h,081h,0fch,081h,028h,02ch,081h	; 9549  ..<..@...H...(,.
	defb 030h,034h,081h,038h,03ch,081h,040h,044h,081h,018h,01ch,081h,020h,024h,081h,04ch	; 9559  04.8<.@D.... $.L
	defb 080h,000h,004h,008h,00ch,084h,0f1h,0f8h,010h,0e0h,0b8h,010h,081h,014h	; 9569  ..............

; ======================================================================
; CODIGO 0x9577..0x9581  (10 bytes)
; ======================================================================


L_9577:
	call 0623eh		;9577
	ret c			;957a
	ld a,(ix+001h)		;957b
	call 040aeh		;957e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9581..0x9587  (6 bytes)
DATA_9581:
	defb 087h,095h,090h,095h,0c4h,095h	; 9581

; ======================================================================
; CODIGO 0x9587..0x95f0  (105 bytes)
; ======================================================================


L_9587:
	bit 2,(ix+055h)		;9587
	ret z			;958b
L_958C:
	inc (ix+001h)		;958c
	ret			;958f
L_9590:
	ld a,(0c800h)		;9590
	cp 002h		;9593
	ret z			;9595
	ld a,(ix+041h)		;9596
	ld c,a			;9599
	ld a,(0c481h)		;959a
	dec a			;959d
	add a,a			;959e
	add a,a			;959f
	add a,a			;95a0
	add a,c			;95a1
	ld hl,0cd00h		;95a2
	push af			;95a5
	call 040a4h		;95a6
	pop af			;95a9
	bit 0,(hl)		;95aa
	jp nz,075ceh		;95ac
	ld (hl),001h		;95af
	ld (0c4bdh),a		;95b1
	ld b,012h		;95b4
	call 043edh		;95b6
	ld hl,0c860h		;95b9
	ld a,(hl)			;95bc
	or a			;95bd
	jr nz,L_95C2		;95be
	ld (hl),001h		;95c0
L_95C2:
	jr L_958C		;95c2
L_95C4:
	call 075ceh		;95c4
	jp 0af5ch		;95c7
L_95CA:
	call 06136h		;95ca
	ld a,(0cb06h)		;95cd
	ld c,a			;95d0
	and 0f8h		;95d1
	ld (ix+005h),a		;95d3
	xor c			;95d6
	ld (ix+041h),a		;95d7
	ld (ix+046h),080h		;95da
	ld de,095f0h		;95de
	call 06162h		;95e1
	call 061cfh		;95e4
	ld de,095f7h		;95e7
	call 06186h		;95ea
	jp 061cfh		;95ed

; ----------------------------------------------------------------------
; DATOS sin identificar  0x95f0..0x95fd  (13 bytes)
DATA_95F0:
	defb 004h,0e0h,000h,020h,010h,040h,040h,080h,0e0h,000h,020h,010h,000h	; 95f0  ... .@@... ..

; ======================================================================
; CODIGO 0x95fd..0x960e  (17 bytes)
; ======================================================================


L_95FD:
	ld a,(0c4d0h)		;95fd
	or a			;9600
	call nz,L_9725		;9601
	call 0623eh		;9604
	ret c			;9607
	ld a,(ix+001h)		;9608
	call 040aeh		;960b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x960e..0x9616  (8 bytes)
DATA_960E:
	defb 016h,096h,02dh,096h,097h,096h,0a4h,096h	; 960e  ..-.....

; ======================================================================
; CODIGO 0x9616..0x9788  (370 bytes)
; ======================================================================


L_9616:
	ld a,(ix+003h)		;9616
	sub 008h		;9619
	cp 0c0h		;961b
	ret nc			;961d
	set 7,(ix+038h)		;961e
	jr L_96A0		;9622
L_9624:
	call L_8126		;9624
	call L_9893		;9627
	cp 080h		;962a
	ret			;962c
L_962D:
	call L_967A		;962d
	ld a,(ix+009h)		;9630
	dec a			;9633
	jr z,L_964E		;9634
	jp p,L_965E		;9636
	call L_9624		;9639
	ret nc			;963c
	call L_987F		;963d
	rrca			;9640
	rrca			;9641
	rrca			;9642
	and 01fh		;9643
	add a,020h		;9645
	ld (ix+006h),a		;9647
	inc (ix+009h)		;964a
	ret			;964d
L_964E:
	dec (ix+006h)		;964e
	ret nz			;9651
	ld (ix+006h),007h		;9652
	inc (ix+009h)		;9656
	set 5,(ix+046h)		;9659
	ret			;965d
L_965E:
	dec (ix+006h)		;965e
	ret nz			;9661
	ld (ix+009h),000h		;9662
	set 6,(ix+046h)		;9666
	ld c,02bh		;966a
	call L_8126		;966c
	ld a,d			;966f
	add a,008h		;9670
	ld d,a			;9672
	ld a,e			;9673
	sub 008h		;9674
	ld e,a			;9676
	jp 06d64h		;9677
L_967A:
	ld de,00101h		;967a
	ld hl,00001h		;967d
	ld a,(ix+055h)		;9680
	call 062d6h		;9683
	neg		;9686
	add a,(ix+043h)		;9688
	ld (ix+043h),a		;968b
	ret p			;968e
	inc (ix+001h)		;968f
	ld (ix+046h),010h		;9692
	ret			;9696
L_9697:
	ld a,(ix+046h)		;9697
	or a			;969a
	ret nz			;969b
	set 7,(ix+020h)		;969c
L_96A0:
	inc (ix+001h)		;96a0
	ret			;96a3
L_96A4:
	ld c,02ch		;96a4
	ld b,000h		;96a6
	call L_8126		;96a8
	ld a,d			;96ab
	add a,008h		;96ac
	ld d,a			;96ae
	push ix		;96af
	call 06d64h		;96b1
	pop ix		;96b4
	ld a,(ix+00bh)		;96b6
	or a			;96b9
	jr z,L_96C5		;96ba
	dec a			;96bc
	ld (ix+00bh),a		;96bd
	ld a,(0d411h)		;96c0
	or a			;96c3
	ret z			;96c4
L_96C5:
	ld a,(ix+041h)		;96c5
	or a			;96c8
	jr z,L_9706		;96c9
	ex af,af'			;96cb
	ld a,(ix+005h)		;96cc
	add a,000h		;96cf
	ld d,a			;96d1
	ld a,(ix+003h)		;96d2
	add a,0f0h		;96d5
	ld e,a			;96d7
	ex af,af'			;96d8
	cp 00bh		;96d9
	jr z,L_970E		;96db
	ld c,a			;96dd
	push de			;96de
	push bc			;96df
	push ix		;96e0
	call 07f64h		;96e2
	pop ix		;96e5
	pop bc			;96e7
	pop de			;96e8
	ld a,c			;96e9
	jr nc,L_9701		;96ea
L_96EC:
	push ix		;96ec
	call 073e3h		;96ee
	pop ix		;96f1
L_96F3:
	ld a,017h		;96f3
	call 041ach		;96f5
	call 075ceh		;96f8
	ld hl,00002h		;96fb
	jp 04818h		;96fe
L_9701:
	call 073f6h		;9701
	jr L_96F3		;9704
L_9706:
	ld a,012h		;9706
	call 041ach		;9708
	jp 075ceh		;970b
L_970E:
	ld hl,0c879h		;970e
	call L_971C		;9711
	ld a,00bh		;9714
	jr c,L_9701		;9716
	ld a,00bh		;9718
	jr L_96EC		;971a
L_971C:
	ld a,(0c481h)		;971c
	ld b,a			;971f
	ld a,(hl)			;9720
L_9721:
	rrca			;9721
	djnz L_9721		;9722
	ret			;9724
L_9725:
	call L_8126		;9725
	call L_9893		;9728
	cp 030h		;972b
	ret nc			;972d
	jp 075ceh		;972e
L_9731:
	call 06136h		;9731
	ld a,(0cb06h)		;9734
	ld c,a			;9737
	and 0f0h		;9738
	ld (ix+005h),a		;973a
	xor c			;973d
	ld (ix+041h),a		;973e
	ld (ix+043h),003h		;9741
	ld (ix+00bh),004h		;9745
	ld (ix+046h),0c0h		;9749
	ld de,09788h		;974d
	call 06162h		;9750
	ld de,0978fh		;9753
	call 061a5h		;9756
	ld de,09796h		;9759
	call 061a5h		;975c
	ld de,0979dh		;975f
	call 061a5h		;9762
	call 061cfh		;9765
	ld de,097a4h		;9768
	call 06186h		;976b
	call 061cfh		;976e
	ld a,(ix+000h)		;9771
	cp 00ch		;9774
	ret z			;9776
	ld a,(ix+02eh)		;9777
	add a,030h		;977a
	ld (ix+02eh),a		;977c
	ld a,(ix+036h)		;977f
	add a,030h		;9782
	ld (ix+036h),a		;9784
	ret			;9787

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9788..0x97aa  (34 bytes)
DATA_9788:
	defb 002h,0f0h,000h,010h,010h,040h,060h,004h,0f0h,000h,010h,010h,040h,060h,004h,0f0h	; 9788  .....@`.....@`..
	defb 000h,010h,010h,040h,050h,00ch,0f0h,000h,010h,010h,000h,000h,080h,0f0h,000h,010h	; 9798  ...@P...........
	defb 010h,000h	; 97a8

; ======================================================================
; CODIGO 0x97aa..0x97bb  (17 bytes)
; ======================================================================


L_97AA:
	ld a,(0c4d0h)		;97aa
	or a			;97ad
	call nz,L_97C1		;97ae
	call 0623eh		;97b1
	ret c			;97b4
	ld a,(ix+001h)		;97b5
	call 040aeh		;97b8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x97bb..0x97c1  (6 bytes)
DATA_97BB:
	defb 0cdh,097h,0c2h,098h,0ceh,075h	; 97bb

; ======================================================================
; CODIGO 0x97c1..0x990a  (329 bytes)
; ======================================================================


L_97C1:
	call L_8126		;97c1
	call L_9893		;97c4
	cp 040h		;97c7
	ret nc			;97c9
	jp 075ceh		;97ca
L_97CD:
	call L_98A9		;97cd
	call L_97FB		;97d0
	call L_97F2		;97d3
	jr nc,L_97DA		;97d6
	jr L_9836		;97d8
L_97DA:
	ld a,(ix+017h)		;97da
	and a			;97dd
	jr nz,L_9836		;97de
	ld (ix+009h),000h		;97e0
	call L_987F		;97e4
	and 01fh		;97e7
	ld b,000h		;97e9
	jr nz,L_97EE		;97eb
	inc b			;97ed
L_97EE:
	ld (ix+017h),b		;97ee
	ret			;97f1
L_97F2:
	call L_8126		;97f2
	call L_9893		;97f5
	cp 060h		;97f8
	ret			;97fa
L_97FB:
	ld a,(0c4b0h)		;97fb
	and 00fh		;97fe
	cp (ix+040h)		;9800
	ret nz			;9803
	set 7,(ix+028h)		;9804
	call L_8126		;9808
	call L_9893		;980b
	cp 060h		;980e
	jr c,L_9824		;9810
	ld a,(0c809h)		;9812
	sub (ix+005h)		;9815
	jr c,L_981F		;9818
L_981A:
	ld (ix+02eh),020h		;981a
	ret			;981e
L_981F:
	ld (ix+02eh),010h		;981f
	ret			;9823
L_9824:
	ld (ix+02eh),000h		;9824
	ld a,d			;9828
	add a,e			;9829
	cp 028h		;982a
	ret nc			;982c
	ld a,r		;982d
	rrca			;982f
	ret c			;9830
	rrca			;9831
	jr c,L_981F		;9832
	jr L_981A		;9834
L_9836:
	ld a,(ix+009h)		;9836
	dec a			;9839
	jr z,L_984C		;983a
	dec a			;983c
	jr z,L_9858		;983d
	ret p			;983f
	call L_987F		;9840
	and 01fh		;9843
	ld (ix+006h),a		;9845
	inc (ix+009h)		;9848
	ret			;984b
L_984C:
	dec (ix+006h)		;984c
	ret nz			;984f
	ld (ix+006h),01fh		;9850
	inc (ix+009h)		;9854
	ret			;9857
L_9858:
	ld a,(ix+006h)		;9858
	and 007h		;985b
	jr nz,L_9873		;985d
	ld c,02ah		;985f
	call L_8126		;9861
	ld a,e			;9864
	sub 028h		;9865
	ld e,a			;9867
	ld a,d			;9868
	add a,010h		;9869
	ld d,a			;986b
	push ix		;986c
	call 06d64h		;986e
	pop ix		;9871
L_9873:
	dec (ix+006h)		;9873
	ret nz			;9876
	inc (ix+009h)		;9877
	ld (ix+017h),000h		;987a
	ret			;987e
L_987F:
	ld hl,(0c4c0h)		;987f
	inc hl			;9882
	ld (0c4c0h),hl		;9883
	ld a,h			;9886
	and 00fh		;9887
	or 050h		;9889
	ld a,(0c4bfh)		;988b
	xor (hl)			;988e
	ld (0c4bfh),a		;988f
	ret			;9892
L_9893:
	ld a,(0c809h)		;9893
	sub d			;9896
	jr nc,L_989B		;9897
	neg		;9899
L_989B:
	ld d,a			;989b
	ld a,(0c80bh)		;989c
	sub e			;989f
	jr nc,L_98A4		;98a0
	neg		;98a2
L_98A4:
	ld e,a			;98a4
	add a,d			;98a5
	ret nc			;98a6
	sbc a,a			;98a7
	ret			;98a8
L_98A9:
	ld de,00101h		;98a9
	ld hl,00001h		;98ac
	ld a,(ix+055h)		;98af
	call 062d6h		;98b2
	neg		;98b5
	add a,(ix+043h)		;98b7
	ld (ix+043h),a		;98ba
	ret p			;98bd
	inc (ix+001h)		;98be
	ret			;98c1
L_98C2:
	set 7,(ix+030h)		;98c2
	inc (ix+001h)		;98c6
	ld a,01ah		;98c9
	call 041ach		;98cb
	ld hl,00014h		;98ce
	jp 04818h		;98d1
L_98D4:
	call 06136h		;98d4
	ld a,(0cb06h)		;98d7
	ld c,a			;98da
	and 0f0h		;98db
	ld (ix+005h),a		;98dd
	xor c			;98e0
	ld (ix+041h),a		;98e1
	ld (ix+043h),008h		;98e4
	ld (ix+046h),080h		;98e8
	ld de,0990ah		;98ec
	call 06162h		;98ef
	ld de,09911h		;98f2
	call 061a5h		;98f5
	ld de,09918h		;98f8
	call 061a5h		;98fb
	call 061cfh		;98fe
	ld de,0991fh		;9901
	call 06186h		;9904
	jp 061cfh		;9907

; ----------------------------------------------------------------------
; DATOS sin identificar  0x990a..0x9925  (27 bytes)
DATA_990A:
	defb 004h,0ceh,000h,020h,020h,048h,000h,004h,0d6h,008h,008h,010h,040h,000h,004h,0ceh	; 990a  ...  H......@...
	defb 000h,020h,020h,048h,020h,080h,0cdh,000h,020h,020h,000h	; 991a  .  H ...  .

; ======================================================================
; CODIGO 0x9925..0x9994  (111 bytes)
; ======================================================================


L_9925:
	ld a,(ix+041h)		;9925
	dec a			;9928
	ld hl,0c850h		;9929
	add a,a			;992c
	add a,a			;992d
	call 040a4h		;992e
	ld a,(hl)			;9931
	or a			;9932
	ret nz			;9933
L_9934:
	call 0623eh		;9934
	ret c			;9937
	ld a,(ix+001h)		;9938
	dec a			;993b
	jr z,L_9942		;993c
	inc (ix+001h)		;993e
	ret			;9941
L_9942:
	ld a,(ix+005h)		;9942
	add a,008h		;9945
	ld d,a			;9947
	ld a,(ix+003h)		;9948
	add a,0e0h		;994b
	ld e,a			;994d
	ld a,(ix+041h)		;994e
	call 073e3h		;9951
	jp 075ceh		;9954
L_9957:
	call L_9977		;9957
	ld a,(ix+041h)		;995a
	add a,024h		;995d
	ld (ix+041h),a		;995f
	ld (ix+020h),004h		;9962
	ret			;9966
L_9967:
	call L_9977		;9967
	ld a,(ix+041h)		;996a
	add a,010h		;996d
	ld (ix+041h),a		;996f
	ld (ix+020h),004h		;9972
	ret			;9976
L_9977:
	call 06136h		;9977
	ld a,(0cb06h)		;997a
	ld c,a			;997d
	and 0f0h		;997e
	ld (ix+005h),a		;9980
	xor c			;9983
	ld (ix+041h),a		;9984
	ld (ix+046h),080h		;9987
	ld de,09994h		;998b
	call 06162h		;998e
	jp 061cfh		;9991

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9994..0x999b  (7 bytes)
DATA_9994:
	defb 000h,0e0h,0fch,020h,020h,050h,0e0h	; 9994

; ======================================================================
; CODIGO 0x999b..0x99cd  (50 bytes)
; ======================================================================


L_999B:
	ld hl,099eeh		;999b
	call 07084h		;999e
	ld a,(0c4aah)		;99a1
	ld hl,099cdh		;99a4
	cp 005h		;99a7
	jr c,L_99B5		;99a9
	ld hl,099d8h		;99ab
	cp 00ah		;99ae
	jr c,L_99B5		;99b0
	ld hl,099e3h		;99b2
L_99B5:
	call 07073h		;99b5
	bit 7,(ix+005h)		;99b8
	ld a,000h		;99bc
	jr z,L_99C1		;99be
	inc a			;99c0
L_99C1:
	ld (ix+018h),a		;99c1
	ld (ix+060h),000h		;99c4
	ld b,030h		;99c8
	jp 0713fh		;99ca

; ----------------------------------------------------------------------
; DATOS sin identificar  0x99cd..0x99f2  (37 bytes)
DATA_99CD:
	defb 052h,003h,000h,000h,000h,0abh,0ffh,055h,000h,001h,010h,06ah,004h,000h,000h,000h	; 99cd  R......U...j....
	defb 08fh,0ffh,071h,000h,001h,00ch,08ch,005h,000h,000h,000h,072h,0ffh,08eh,000h,001h	; 99dd  ..q........r....
	defb 00ah,0edh,0f5h,018h,015h	; 99ed

; ======================================================================
; CODIGO 0x99f2..0x9a05  (19 bytes)
; ======================================================================


L_99F2:
	call L_9A9E		;99f2
	ld a,(0c4aah)		;99f5
	cp 005h		;99f8
	ld b,030h		;99fa
	call nc,07130h		;99fc
	ld a,(ix+001h)		;99ff
	call 040aeh		;9a02

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9a05..0x9a1f  (26 bytes)
DATA_9A05:
	defb 01fh,09ah,036h,09ah,056h,09ah,06bh,09ah,056h,09ah,036h,09ah,08bh,09ah,06bh,09ah	; 9a05  ..6.V.k.V.6...k.
	defb 056h,09ah,036h,09ah,056h,09ah,06bh,09ah,09dh,09ah	; 9a15  V.6.V.k...

; ======================================================================
; CODIGO 0x9a1f..0x9ab3  (148 bytes)
; ======================================================================


L_9A1F:
	dec (ix+011h)		;9a1f
	ret nz			;9a22
	inc (ix+001h)		;9a23
	ld (ix+00bh),001h		;9a26
	ld (ix+011h),00ah		;9a2a
	bit 0,(ix+018h)		;9a2e
	ret z			;9a32
	jp 070a1h		;9a33
L_9A36:
	dec (ix+011h)		;9a36
	ret nz			;9a39
	inc (ix+001h)		;9a3a
	ld (ix+00bh),000h		;9a3d
	ld a,(0c4aah)		;9a41
	ld b,008h		;9a44
	cp 005h		;9a46
	jr c,L_9A52		;9a48
	ld b,004h		;9a4a
	cp 00ah		;9a4c
	jr c,L_9A52		;9a4e
	ld b,002h		;9a50
L_9A52:
	ld (ix+011h),b		;9a52
	ret			;9a55
L_9A56:
	dec (ix+011h)		;9a56
	ret nz			;9a59
	inc (ix+001h)		;9a5a
	ld (ix+00bh),001h		;9a5d
	ld (ix+011h),00ah		;9a61
	call 0709dh		;9a65
	jp 070a1h		;9a68
L_9A6B:
	dec (ix+011h)		;9a6b
	ret nz			;9a6e
	inc (ix+001h)		;9a6f
	ld (ix+00bh),000h		;9a72
	ld a,(0c4aah)		;9a76
	ld b,00ch		;9a79
	cp 005h		;9a7b
	jr c,L_9A87		;9a7d
	ld b,008h		;9a7f
	cp 00ah		;9a81
	jr c,L_9A87		;9a83
	ld b,006h		;9a85
L_9A87:
	ld (ix+011h),b		;9a87
	ret			;9a8a
L_9A8B:
	dec (ix+011h)		;9a8b
	ret nz			;9a8e
	inc (ix+001h)		;9a8f
	ld (ix+00bh),001h		;9a92
	ld (ix+011h),00ah		;9a96
	jp 070a1h		;9a9a
L_9A9D:
	ret			;9a9d
L_9A9E:
	ld hl,09ab3h		;9a9e
	inc (ix+060h)		;9aa1
	ld a,(ix+060h)		;9aa4
	rra			;9aa7
	rra			;9aa8
	and 003h		;9aa9
	call 040a4h		;9aab
	ld a,(hl)			;9aae
	ld (ix+010h),a		;9aaf
	ret			;9ab2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9ab3..0x9ab7  (4 bytes)
DATA_9AB3:
	defb 001h,002h,003h,004h	; 9ab3

; ======================================================================
; CODIGO 0x9ab7..0x9ae8  (49 bytes)
; ======================================================================


L_9AB7:
	ld b,008h		;9ab7
L_9AB9:
	push bc			;9ab9
	call L_9AC8		;9aba
	call 06d12h		;9abd
	pop bc			;9ac0
	ret nz			;9ac1
	push hl			;9ac2
	pop ix		;9ac3
	djnz L_9AB9		;9ac5
	ret			;9ac7
L_9AC8:
	ld a,b			;9ac8
	ld hl,09ae8h		;9ac9
	call 0706ah		;9acc
	ld hl,09aedh		;9acf
	call 040a4h		;9ad2
	ld a,(hl)			;9ad5
	ld b,a			;9ad6
	and 0f0h		;9ad7
	ld (ix+005h),a		;9ad9
	sla b		;9adc
	sla b		;9ade
	sla b		;9ae0
	sla b		;9ae2
	ld (ix+004h),b		;9ae4
	ret			;9ae7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9ae8..0x9af6  (14 bytes)
DATA_9AE8:
	defb 001h,001h,080h,002h,000h,000h,082h,0e6h,08dh,026h,0e2h,0edh,02dh,022h	; 9ae8  .........&..-"

; ======================================================================
; CODIGO 0x9af6..0x9b13  (29 bytes)
; ======================================================================


L_9AF6:
	ld bc,02020h		;9af6
	call 07123h		;9af9
	ld hl,09b13h		;9afc
	call 07084h		;9aff
	ld (ix+006h),000h		;9b02
	ld (ix+010h),005h		;9b06
	ld (ix+011h),03ch		;9b0a
	ld (ix+074h),003h		;9b0e
	ret			;9b12

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9b13..0x9b17  (4 bytes)
DATA_9B13:
	defb 0edh,0f5h,018h,015h	; 9b13

; ======================================================================
; CODIGO 0x9b17..0x9b79  (98 bytes)
; ======================================================================


L_9B17:
	ld a,(ix+001h)		;9b17
	dec a			;9b1a
	jr z,L_9B44		;9b1b
	jp p,L_9B58		;9b1d
	call 07155h		;9b20
	ret nz			;9b23
	inc (ix+001h)		;9b24
	ld (ix+006h),001h		;9b27
	ld a,(0c80bh)		;9b2b
	ld (ix+017h),a		;9b2e
	ld a,(0c809h)		;9b31
	ld (ix+018h),a		;9b34
	ld (ix+074h),000h		;9b37
	ld a,(0c4aah)		;9b3b
	add a,a			;9b3e
	add a,080h		;9b3f
	jp 07189h		;9b41
L_9B44:
	call L_9B5F		;9b44
	cp 020h		;9b47
	ret nc			;9b49
	call L_9B69		;9b4a
	cp 020h		;9b4d
	ret nc			;9b4f
	inc (ix+001h)		;9b50
	ld (ix+011h),010h		;9b53
	ret			;9b57
L_9B58:
	dec (ix+011h)		;9b58
	ret nz			;9b5b
	jp 06a85h		;9b5c
L_9B5F:
	ld a,(ix+017h)		;9b5f
	sub (ix+003h)		;9b62
	ret nc			;9b65
	neg		;9b66
	ret			;9b68
L_9B69:
	ld a,(ix+018h)		;9b69
	sub (ix+005h)		;9b6c
	ret nc			;9b6f
	neg		;9b70
	ret			;9b72
L_9B73:
	ld hl,09b79h		;9b73
	jp L_9DEC		;9b76

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9b79..0x9b9c  (35 bytes)
DATA_9B79:
	defb 001h,001h,001h,003h,000h,000h,03eh,001h,032h,01bh,0d4h,03ah,00bh,0c8h,0c6h,0c0h	; 9b79  ......>.2..:....
	defb 05fh,03ah,009h,0c8h,0feh,080h,006h,020h,038h,002h,006h,0e0h,080h,057h,00eh,003h	; 9b89  _:..... 8....W..
	defb 0c3h,064h,06dh	; 9b99

; ======================================================================
; CODIGO 0x9b9c..0x9bce  (50 bytes)
; ======================================================================


L_9B9C:
	ld bc,02020h		;9b9c
	call 07123h		;9b9f
	ld hl,09bceh		;9ba2
	call 07084h		;9ba5
	xor a			;9ba8
	ld (ix+006h),a		;9ba9
	ld (ix+014h),a		;9bac
	ld (ix+010h),006h		;9baf
	ld a,r		;9bb3
	and 01fh		;9bb5
	add a,010h		;9bb7
	ld (ix+011h),a		;9bb9
	ld (ix+074h),003h		;9bbc
	ld a,(0d41bh)		;9bc0
	and a			;9bc3
	ret z			;9bc4
	xor a			;9bc5
	ld (0d41bh),a		;9bc6
	ld (ix+011h),001h		;9bc9
	ret			;9bcd

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9bce..0x9bd2  (4 bytes)
DATA_9BCE:
	defb 0edh,0f5h,018h,015h	; 9bce

; ======================================================================
; CODIGO 0x9bd2..0x9c2d  (91 bytes)
; ======================================================================


L_9BD2:
	call 0710fh		;9bd2
	ld a,(ix+001h)		;9bd5
	dec a			;9bd8
	jr z,L_9BEA		;9bd9
	dec a			;9bdb
	jr z,L_9BFA		;9bdc
	dec (ix+011h)		;9bde
	ret nz			;9be1
	ld (ix+011h),010h		;9be2
	inc (ix+001h)		;9be6
	ret			;9be9
L_9BEA:
	call 07155h		;9bea
	ret nz			;9bed
	inc (ix+001h)		;9bee
	ld (ix+074h),000h		;9bf1
	ld (ix+011h),01fh		;9bf5
	ret			;9bf9
L_9BFA:
	ld a,(ix+011h)		;9bfa
	and 007h		;9bfd
	jr nz,L_9C08		;9bff
	ld (ix+010h),007h		;9c01
	call 07809h		;9c05
L_9C08:
	dec (ix+011h)		;9c08
	ret nz			;9c0b
	xor a			;9c0c
	ld (ix+001h),a		;9c0d
	ld (ix+010h),006h		;9c10
	ld (ix+011h),018h		;9c14
	ld (ix+014h),a		;9c18
	ld (ix+074h),003h		;9c1b
	ret			;9c1f
L_9C20:
	ld hl,09c2dh		;9c20
	call 0706ah		;9c23
	ld a,(0c809h)		;9c26
	ld (ix+005h),a		;9c29
	ret			;9c2c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9c2d..0x9c33  (6 bytes)
DATA_9C2D:
	defb 001h,001h,000h,004h,000h,000h	; 9c2d

; ======================================================================
; CODIGO 0x9c33..0x9c46  (19 bytes)
; ======================================================================


L_9C33:
	call 07119h		;9c33
	ld hl,09c51h		;9c36
	call 07084h		;9c39
	ld (ix+015h),009h		;9c3c
	ld hl,09c46h		;9c40
	jp 07073h		;9c43

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9c46..0x9c55  (15 bytes)
DATA_9C46:
	defb 000h,002h,000h,000h,000h,000h,000h,000h,000h,008h,020h,0ddh,0f5h,028h,015h	; 9c46  .......... ..(.

; ======================================================================
; CODIGO 0x9c55..0x9d16  (193 bytes)
; ======================================================================


L_9C55:
	call 071a4h		;9c55
	ld a,(ix+001h)		;9c58
	dec a			;9c5b
	jr z,L_9C88		;9c5c
	jp p,L_9CEC		;9c5e
	ld bc,00808h		;9c61
	call 070f1h		;9c64
	dec (ix+011h)		;9c67
	ret nz			;9c6a
	inc (ix+001h)		;9c6b
	ld (ix+011h),078h		;9c6e
	ld (ix+017h),00ch		;9c72
	ld de,00000h		;9c76
	ld (ix+018h),d		;9c79
	call 0792ch		;9c7c
	ld de,00200h		;9c7f
	call 07933h		;9c82
	jp L_9CF2		;9c85
L_9C88:
	ld bc,00808h		;9c88
	call 070f1h		;9c8b
	call L_9CF2		;9c8e
	ld bc,0d828h		;9c91
	ld de,00200h		;9c94
	call 07193h		;9c97
	ld d,(ix+005h)		;9c9a
	ld a,0f0h		;9c9d
	add a,(ix+003h)		;9c9f
	ld e,a			;9ca2
	call 048fbh		;9ca3
	jr nc,L_9CAF		;9ca6
	call 0710fh		;9ca8
	ld (ix+018h),001h		;9cab
L_9CAF:
	ld a,(ix+018h)		;9caf
	dec a			;9cb2
	jr z,L_9CD7		;9cb3
	ld a,(0c4b0h)		;9cb5
	and 001h		;9cb8
	ret z			;9cba
	dec (ix+011h)		;9cbb
	jr z,L_9CD3		;9cbe
	dec (ix+017h)		;9cc0
	ret nz			;9cc3
	ld (ix+017h),00ch		;9cc4
	ld c,005h		;9cc8
	ld d,(ix+005h)		;9cca
	ld e,(ix+003h)		;9ccd
	jp 06d64h		;9cd0
L_9CD3:
	inc (ix+018h)		;9cd3
	ret			;9cd6
L_9CD7:
	call 070bdh		;9cd7
	cp 002h		;9cda
	ret nc			;9cdc
	inc (ix+001h)		;9cdd
	ld de,00500h		;9ce0
	call 0792ch		;9ce3
	ld de,00000h		;9ce6
	jp 07933h		;9ce9
L_9CEC:
	ld bc,00804h		;9cec
	jp 070f1h		;9cef
L_9CF2:
	ld a,008h		;9cf2
	bit 7,(ix+00ah)		;9cf4
	jr z,L_9CFC		;9cf8
	ld a,0f7h		;9cfa
L_9CFC:
	add a,(ix+005h)		;9cfc
	ld d,a			;9cff
	ld e,(ix+003h)		;9d00
	call 048fbh		;9d03
	ret nc			;9d06
	jp 07099h		;9d07
L_9D0A:
	ld hl,09d21h		;9d0a
	call 07084h		;9d0d
	ld hl,09d16h		;9d10
	jp 07073h		;9d13

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9d16..0x9d25  (15 bytes)
DATA_9D16:
	defb 000h,002h,000h,000h,000h,000h,000h,000h,000h,00ah,008h,0edh,0f5h,018h,015h	; 9d16  ...............

; ======================================================================
; CODIGO 0x9d25..0x9d42  (29 bytes)
; ======================================================================


L_9D25:
	call 071a4h		;9d25
	ld b,008h		;9d28
	ld de,09d42h		;9d2a
	call 070ffh		;9d2d
	ld a,(ix+001h)		;9d30
	dec a			;9d33
	jp z,0710fh		;9d34
	dec (ix+011h)		;9d37
	ret nz			;9d3a
	inc (ix+001h)		;9d3b
	dec (ix+006h)		;9d3e
	ret			;9d41

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9d42..0x9d44  (2 bytes)
DATA_9D42:
	defb 00ah,04dh	; 9d42

; ======================================================================
; CODIGO 0x9d44..0x9d4a  (6 bytes)
; ======================================================================


L_9D44:
	ld hl,09d4ah		;9d44
	jp 0706ah		;9d47

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9d4a..0x9d50  (6 bytes)
DATA_9D4A:
	defb 002h,001h,003h,006h,000h,000h	; 9d4a

; ======================================================================
; CODIGO 0x9d50..0x9d5f  (15 bytes)
; ======================================================================


L_9D50:
	call 0a8b4h		;9d50
	ld hl,09d6ah		;9d53
	call 07084h		;9d56
	ld hl,09d5fh		;9d59
	jp 07073h		;9d5c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9d5f..0x9d6e  (15 bytes)
DATA_9D5F:
	defb 000h,006h,000h,000h,000h,000h,000h,000h,000h,022h,004h,0edh,0f5h,018h,015h	; 9d5f  .........".....

; ======================================================================
; CODIGO 0x9d6e..0x9dc9  (91 bytes)
; ======================================================================


L_9D6E:
	ld bc,00c04h		;9d6e
	call 070f1h		;9d71
	ld a,(ix+001h)		;9d74
	dec a			;9d77
	jr z,L_9D86		;9d78
	dec (ix+011h)		;9d7a
	ret nz			;9d7d
	inc (ix+001h)		;9d7e
	ld (ix+017h),000h		;9d81
	ret			;9d85
L_9D86:
	inc (ix+011h)		;9d86
	ld a,(ix+011h)		;9d89
	cp 009h		;9d8c
	jr nc,L_9DC1		;9d8e
	and 001h		;9d90
	ret nz			;9d92
	call L_987F		;9d93
	and 001h		;9d96
	ld hl,09dc9h		;9d98
	jr z,L_9DA0		;9d9b
	ld hl,09dd9h		;9d9d
L_9DA0:
	inc (ix+017h)		;9da0
	ld a,(ix+017h)		;9da3
	and 003h		;9da6
	add a,a			;9da8
	add a,a			;9da9
	call 040a4h		;9daa
	ld e,(hl)			;9dad
	inc hl			;9dae
	ld d,(hl)			;9daf
	inc hl			;9db0
	ld c,(hl)			;9db1
	inc hl			;9db2
	ld b,(hl)			;9db3
	ld h,b			;9db4
	ld l,c			;9db5
	ld a,001h		;9db6
	ld b,(ix+005h)		;9db8
	ld c,(ix+003h)		;9dbb
	jp 07819h		;9dbe
L_9DC1:
	dec (ix+001h)		;9dc1
	ld (ix+011h),00eh		;9dc4
	ret			;9dc8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9dc9..0x9de9  (32 bytes)
DATA_9DC9:
	defb 000h,000h,000h,002h,06bh,001h,06bh,001h,095h,0feh,06bh,001h,000h,002h,000h,000h	; 9dc9  ....k.k...k.....
	defb 000h,000h,000h,0feh,06bh,001h,095h,0feh,095h,0feh,095h,0feh,000h,0feh,000h,000h	; 9dd9  ....k...........

; ======================================================================
; CODIGO 0x9de9..0x9e01  (24 bytes)
; ======================================================================


L_9DE9:
	ld hl,09e01h		;9de9
L_9DEC:
	call 0706ah		;9dec
	ld a,(ix+006h)		;9def
	ld b,a			;9df2
	and 0f0h		;9df3
	add a,008h		;9df5
	ld (ix+005h),a		;9df7
	ld a,b			;9dfa
	and 00fh		;9dfb
	ld (ix+006h),a		;9dfd
	ret			;9e00

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9e01..0x9e07  (6 bytes)
DATA_9E01:
	defb 001h,001h,000h,007h,000h,000h	; 9e01

; ======================================================================
; CODIGO 0x9e07..0x9e2c  (37 bytes)
; ======================================================================


L_9E07:
	call 07119h		;9e07
	ld hl,09e37h		;9e0a
	call 07084h		;9e0d
	ld a,(ix+015h)		;9e10
	ld (ix+017h),a		;9e13
	ld (ix+015h),000h		;9e16
	and a			;9e1a
	jr z,L_9E21		;9e1b
	ld (ix+012h),005h		;9e1d
L_9E21:
	ld b,040h		;9e21
	call 0713fh		;9e23
	ld hl,09e2ch		;9e26
	jp 07073h		;9e29

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9e2c..0x9e3b  (15 bytes)
DATA_9E2C:
	defb 080h,001h,000h,000h,000h,000h,000h,000h,000h,00eh,020h,0edh,0f5h,018h,015h	; 9e2c  .......... ....

; ======================================================================
; CODIGO 0x9e3b..0x9f0f  (212 bytes)
; ======================================================================


L_9E3B:
	ld a,(ix+001h)		;9e3b
	dec a			;9e3e
	jr z,L_9E9D		;9e3f
	jp p,L_9E9D		;9e41
	ld bc,00e10h		;9e44
	call 070f1h		;9e47
	call 070cfh		;9e4a
	ld b,040h		;9e4d
	call nc,07130h		;9e4f
	call 070bdh		;9e52
	and a			;9e55
	ld de,00000h		;9e56
	jr z,L_9E6E		;9e59
	call L_9EC2		;9e5b
	ld de,00000h		;9e5e
	jr c,L_9E6E		;9e61
	call 070d6h		;9e63
	ld de,00050h		;9e66
	jr nc,$+4		;9e69
	ld de,0ffb0h		;9e6b
L_9E6E:
	call 07933h		;9e6e
	call L_9ED5		;9e71
	dec (ix+011h)		;9e74
	ret nz			;9e77
	inc (ix+001h)		;9e78
	dec (ix+006h)		;9e7b
	ld (ix+011h),010h		;9e7e
	bit 0,(ix+017h)		;9e82
	ret z			;9e86
	ld a,(ix+003h)		;9e87
	cp 040h		;9e8a
	ret c			;9e8c
	inc (ix+001h)		;9e8d
	ld (ix+011h),018h		;9e90
	ld (ix+025h),00eh		;9e94
	ld (ix+02ah),04dh		;9e98
	ret			;9e9c
L_9E9D:
	call 0710fh		;9e9d
	dec (ix+011h)		;9ea0
	ret nz			;9ea3
	bit 1,(ix+001h)		;9ea4
	call nz,0b625h		;9ea8
	dec (ix+001h)		;9eab
	inc (ix+006h)		;9eae
	call L_9EED		;9eb1
	call L_987F		;9eb4
	add a,(ix+005h)		;9eb7
	and 00fh		;9eba
	add a,020h		;9ebc
	ld (ix+011h),a		;9ebe
	ret			;9ec1
L_9EC2:
	call 070d6h		;9ec2
	ld a,008h		;9ec5
	jr nc,L_9ECB		;9ec7
	neg		;9ec9
L_9ECB:
	add a,(ix+005h)		;9ecb
	ld d,a			;9ece
	ld e,(ix+003h)		;9ecf
	jp 048fbh		;9ed2
L_9ED5:
	ld d,(ix+005h)		;9ed5
	ld e,(ix+003h)		;9ed8
	call 048fbh		;9edb
	ld de,00180h		;9ede
	jr nc,L_9EE6		;9ee1
	ld de,00000h		;9ee3
L_9EE6:
	call 0792ch		;9ee6
	ret nc			;9ee9
	jp 0710fh		;9eea
L_9EED:
	ld a,(ix+010h)		;9eed
	cp 00eh		;9ef0
	ld a,010h		;9ef2
	jr z,L_9EF7		;9ef4
	xor a			;9ef6
L_9EF7:
	ld (ix+060h),a		;9ef7
	ret			;9efa
L_9EFB:
	call 0a8b4h		;9efb
	ld hl,09f1bh		;9efe
	call 07084h		;9f01
	ld hl,09f0fh		;9f04
	call 07073h		;9f07
	ld b,030h		;9f0a
	jp 0713fh		;9f0c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9f0f..0x9f1f  (16 bytes)
DATA_9F0F:
	defb 000h,002h,000h,000h,000h,000h,000h,000h,000h,012h,00ah,000h,0edh,0f5h,018h,015h	; 9f0f  ................

; ======================================================================
; CODIGO 0x9f1f..0x9f52  (51 bytes)
; ======================================================================


L_9F1F:
	call 0710fh		;9f1f
	ld b,030h		;9f22
	call 07130h		;9f24
	ld a,(ix+001h)		;9f27
	dec a			;9f2a
	jr z,$+50		;9f2b
	dec a			;9f2d
	jp z,L_9F70		;9f2e
	jp p,L_9F8B		;9f31
	dec (ix+011h)		;9f34
	ret nz			;9f37
	inc (ix+001h)		;9f38
	ld (ix+006h),001h		;9f3b
	ld hl,09f52h		;9f3f
	call 07073h		;9f42
	call 070d6h		;9f45
	ret c			;9f48
	ld a,002h		;9f49
L_9F4B:
	add a,(ix+00ah)		;9f4b
	ld (ix+00ah),a		;9f4e
	ret			;9f51

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9f52..0x9f5d  (11 bytes)
DATA_9F52:
	defb 000h,0feh,000h,001h,001h,038h,000h,000h,000h,013h,014h	; 9f52  .....8.....

; ======================================================================
; CODIGO 0x9f5d..0x9ff1  (148 bytes)
; ======================================================================


L_9F5D:
	dec (ix+011h)		;9f5d
	ret nz			;9f60
	inc (ix+001h)		;9f61
	dec (ix+006h)		;9f64
	ld (ix+010h),012h		;9f67
	ld (ix+011h),005h		;9f6b
	ret			;9f6f
L_9F70:
	dec (ix+011h)		;9f70
	ret nz			;9f73
	inc (ix+001h)		;9f74
	inc (ix+006h)		;9f77
	ld hl,09f52h		;9f7a
	call 07073h		;9f7d
	call 07099h		;9f80
	call 070d6h		;9f83
	ret nc			;9f86
	ld a,0feh		;9f87
	jr $-62		;9f89
L_9F8B:
	dec (ix+011h)		;9f8b
	ret nz			;9f8e
	ld (ix+001h),000h		;9f8f
	dec (ix+006h)		;9f93
	ld (ix+010h),012h		;9f96
	ld (ix+011h),005h		;9f9a
	ret			;9f9e
L_9F9F:
	push ix		;9f9f
	call L_9FA7		;9fa1
	pop ix		;9fa4
	ret			;9fa6
L_9FA7:
	push ix		;9fa7
	pop iy		;9fa9
	ld l,(ix+017h)		;9fab
	ld h,(ix+018h)		;9fae
	push hl			;9fb1
	pop ix		;9fb2
	ld (ix+013h),001h		;9fb4
	ld a,(ix+000h)		;9fb8
	cp 00ah		;9fbb
	jp z,06947h		;9fbd
	ld l,(ix+017h)		;9fc0
	ld h,(ix+018h)		;9fc3
	ld (0d418h),hl		;9fc6
	call 06947h		;9fc9
	push iy		;9fcc
	pop hl			;9fce
	ld a,056h		;9fcf
	call 040a4h		;9fd1
	ld b,004h		;9fd4
L_9FD6:
	ld a,(hl)			;9fd6
	inc a			;9fd7
	jr nz,L_9FDF		;9fd8
	dec hl			;9fda
	dec hl			;9fdb
	djnz L_9FD6		;9fdc
	ret			;9fde
L_9FDF:
	ld (hl),0ffh		;9fdf
	ld hl,(0d418h)		;9fe1
	ld (iy+017h),l		;9fe4
	ld (iy+018h),h		;9fe7
	ret			;9fea
L_9FEB:
	ld hl,09ff1h		;9feb
	jp L_9DEC		;9fee

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9ff1..0x9ff7  (6 bytes)
DATA_9FF1:
	defb 001h,001h,000h,00ah,000h,000h	; 9ff1

; ======================================================================
; CODIGO 0x9ff7..0xa000  (9 bytes)
; ======================================================================


L_9FF7:
	call 07119h		;9ff7
	ld hl,0a05ah		;9ffa
	call 07084h		;9ffd
