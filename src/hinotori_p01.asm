; ==========================================================================
; HINOTORI - Konami (1987) - MSX - MegaROM RC-747 de 128 KB (Konami4) - banco 01 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ======================================================================
; CODIGO 0x6000..0x6041  (65 bytes)
; ======================================================================


L_6000:
	rra			;6000
	ret nc			;6001
	ld a,(0c117h)		;6002
	ld (0c160h),a		;6005
	ret			;6008
L_6009:
	rra			;6009
	ld a,001h		;600a
	jr nc,L_6010		;600c
	ld a,0ffh		;600e
L_6010:
	ld b,a			;6010
	ld hl,0c11bh		;6011
	add a,(hl)			;6014
	and 003h		;6015
	cp 003h		;6017
	jr nz,L_6022		;6019
	ld a,b			;601b
	add a,a			;601c
	ld a,002h		;601d
	jr c,L_6022		;601f
	xor a			;6021
L_6022:
	push af			;6022
	push hl			;6023
	ld a,(hl)			;6024
	call L_602E		;6025
	pop hl			;6028
	pop af			;6029
	ld (hl),a			;602a
	jp L_6032		;602b
L_602E:
	ld b,000h		;602e
	jr L_6034		;6030
L_6032:
	ld b,03eh		;6032
L_6034:
	ld hl,06041h		;6034
	call 040a4h		;6037
	ld e,(hl)			;603a
	ld d,028h		;603b
	ld a,b			;603d
	jp 04fa3h		;603e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6041..0x6079  (56 bytes)
DATA_6041:
	defb 0b0h,0b8h,0c0h,021h,098h,0c4h,011h,085h,0c4h,001h,007h,000h,0edh,0b0h,0c9h,03ah	; 6041  ...!...........:
	defb 089h,0c3h,0b7h,0c8h,021h,0dch,0c8h,011h,004h,000h,001h,000h,005h,07eh,0b7h,019h	; 6051  ....!........~..
	defb 028h,001h,00ch,010h,0f8h,03ah,045h,0c8h,0feh,01fh,038h,002h,03eh,01fh,00fh,00fh	; 6061  (....:E...8.>...
	defb 00fh,0e6h,003h,081h,032h,0aah,0c4h,0c9h	; 6071  ....2...

; ======================================================================
; CODIGO 0x6079..0x60a8  (47 bytes)
; ======================================================================


L_6079:
	ld a,(ix+014h)		;6079
L_607C:
	push af			;607c
	ld a,009h		;607d
	call 05434h		;607f
	pop af			;6082
	ld de,0a269h		;6083
	ld l,a			;6086
	ld h,000h		;6087
	add hl,hl			;6089
	ld b,h			;608a
	ld c,l			;608b
	add hl,hl			;608c
	add hl,bc			;608d
	add hl,de			;608e
	ld de,0c485h		;608f
	ex de,hl			;6092
	set 7,(hl)		;6093
	ex de,hl			;6095
	inc de			;6096
	ldi		;6097
	ldi		;6099
	ldi		;609b
	ldi		;609d
	ldi		;609f
	ldi		;60a1
	ld a,003h		;60a3
	jp 05434h		;60a5

; ----------------------------------------------------------------------
; DATOS sin identificar  0x60a8..0x60b0  (8 bytes)
DATA_60A8:
	defb 0ddh,07eh,003h,0bah,03fh,0d0h,0bbh,0c9h	; 60a8  .~..?...

; ======================================================================
; CODIGO 0x60b0..0x60c8  (24 bytes)
; ======================================================================


L_60B0:
	ld a,(0c102h)		;60b0
	bit 0,a		;60b3
	ld a,037h		;60b5
	jp nz,041ach		;60b7
	ld a,(0c482h)		;60ba
	ld hl,060c8h		;60bd
	ld e,a			;60c0
	ld d,000h		;60c1
	add hl,de			;60c3
	ld a,(hl)			;60c4
	jp 041ach		;60c5

; ----------------------------------------------------------------------
; DATOS sin identificar  0x60c8..0x60d1  (9 bytes)
DATA_60C8:
	defb 037h,037h,037h,037h,037h,03ah,03dh,040h,03ah	; 60c8  77777:=@:

; ======================================================================
; CODIGO 0x60d1..0x6101  (48 bytes)
; ======================================================================


L_60D1:
	ret			;60d1
L_60D2:
	ld a,(0c4d1h)		;60d2
	or a			;60d5
	ret z			;60d6
	ld hl,(0c302h)		;60d7
	call 04893h		;60da
	ld hl,0e800h		;60dd
	ld (hl),e			;60e0
	inc hl			;60e1
	ld (hl),d			;60e2
	ld b,002h		;60e3
	ld de,030b0h		;60e5
	call 04853h		;60e8
	ld hl,(0d412h)		;60eb
	ld h,000h		;60ee
	call 04893h		;60f0
	ld hl,0e800h		;60f3
	ld (hl),e			;60f6
	inc hl			;60f7
	ld (hl),d			;60f8
	ld b,002h		;60f9
	ld de,0a0b0h		;60fb
	jp 04853h		;60fe

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6101..0x610e  (13 bytes)
DATA_6101:
	defb 02ah,028h,0c8h,022h,008h,0c8h,02ah,026h,0c8h,022h,00ah,0c8h,0c9h	; 6101  *(."..*&."...

; ======================================================================
; CODIGO 0x610e..0x6124  (22 bytes)
; ======================================================================


L_610E:
	ld a,(0c820h)		;610e
	sub (ix+005h)		;6111
	sub d			;6114
	cp (ix+016h)		;6115
	ret nc			;6118
	ld a,(0c821h)		;6119
	sub (ix+003h)		;611c
	sub e			;611f
	cp (ix+015h)		;6120
	ret			;6123

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6124..0x6136  (18 bytes)
DATA_6124:
	defb 0ddh,035h,006h,0c0h,0ddh,05eh,007h,0cdh,0cbh,049h,0ddh,073h,007h,0ddh,077h,006h	; 6124  .5...^...I.s..w.
	defb 0afh,0c9h	; 6134

; ======================================================================
; CODIGO 0x6136..0x6158  (34 bytes)
; ======================================================================


L_6136:
	push ix		;6136
	pop hl			;6138
	ld a,(0cb04h)		;6139
	ld (hl),a			;613c
	xor a			;613d
	inc l			;613e
	ld (hl),a			;613f
	inc l			;6140
	ld (hl),a			;6141
	inc l			;6142
	ld (hl),0f8h		;6143
	ld b,01fh		;6145
L_6147:
	inc l			;6147
	ld (hl),a			;6148
	inc l			;6149
	ld (hl),a			;614a
	inc l			;614b
	ld (hl),a			;614c
	inc l			;614d
	ld (hl),a			;614e
	djnz L_6147		;614f
	ret			;6151
L_6152:
	xor a			;6152
L_6153:
	ld (hl),a			;6153
	add hl,de			;6154
	djnz L_6153		;6155
	ret			;6157

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6158..0x6162  (10 bytes)
DATA_6158:
	defb 0ddh,07eh,006h,0b7h,0c8h,03dh,0ddh,077h,006h,0c9h	; 6158  .~...=.w..

; ======================================================================
; CODIGO 0x6162..0x617c  (26 bytes)
; ======================================================================


L_6162:
	push ix		;6162
	pop hl			;6164
	set 5,l		;6165
	ex de,hl			;6167
	ldi		;6168
	ldi		;616a
	ldi		;616c
	ldi		;616e
	ldi		;6170
	ldi		;6172
	ldi		;6174
	xor a			;6176
	ld (de),a			;6177
	inc hl			;6178
	inc e			;6179
	ex de,hl			;617a
	ret			;617b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x617c..0x6186  (10 bytes)
DATA_617C:
	defb 0ddh,0e5h,0e1h,0cbh,0f5h,0cbh,0e5h,036h,000h,0c9h	; 617c  .......6..

; ======================================================================
; CODIGO 0x6186..0x61b8  (50 bytes)
; ======================================================================


L_6186:
	push ix		;6186
	pop hl			;6188
	set 6,l		;6189
	set 4,l		;618b
	ex de,hl			;618d
	ldi		;618e
	ldi		;6190
	ldi		;6192
	ldi		;6194
	ldi		;6196
	inc de			;6198
	ldi		;6199
	xor a			;619b
	ld (de),a			;619c
	inc e			;619d
	ld (de),a			;619e
	inc e			;619f
	inc hl			;61a0
	inc hl			;61a1
	inc hl			;61a2
	ex de,hl			;61a3
	ret			;61a4
L_61A5:
	ex de,hl			;61a5
	ldi		;61a6
	ldi		;61a8
	ldi		;61aa
	ldi		;61ac
	ldi		;61ae
	ldi		;61b0
	ldi		;61b2
	ldi		;61b4
	ex de,hl			;61b6
	ret			;61b7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x61b8..0x61cf  (23 bytes)
DATA_61B8:
	defb 0ebh,0edh,0a0h,0edh,0a0h,0edh,0a0h,0edh,0a0h,0edh,0a0h,0afh,012h,01ch,012h,01ch	; 61b8  ................
	defb 012h,01ch,023h,023h,023h,0ebh,0c9h	; 61c8

; ======================================================================
; CODIGO 0x61cf..0x61d2  (3 bytes)
; ======================================================================


L_61CF:
	xor a			;61cf
	ld (hl),a			;61d0
	ret			;61d1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x61d2..0x623e  (108 bytes)
DATA_61D2:
	defb 0ddh,04eh,042h,079h,0b7h,0c8h,0cbh,079h,0c4h,0eeh,061h,0cbh,071h,0c4h,002h,062h	; 61d2  .NBy...y..a.q..b
	defb 0cbh,069h,0c4h,016h,062h,0cbh,061h,0c4h,02ah,062h,037h,0c9h,0ddh,07eh,003h,0ddh	; 61e2  .i..b.a.*b7..~..
	defb 086h,021h,0ddh,086h,023h,03ch,0c0h,0ddh,0cbh,020h,0feh,0ddh,0cbh,042h,0beh,0c9h	; 61f2  .!..#<... ...B..
	defb 0ddh,07eh,003h,0ddh,086h,029h,0ddh,086h,02bh,03ch,0c0h,0ddh,0cbh,028h,0feh,0ddh	; 6202  .~...)..+<...(..
	defb 0cbh,042h,0b6h,0c9h,0ddh,07eh,003h,0ddh,086h,031h,0ddh,086h,033h,03ch,0c0h,0ddh	; 6212  .B...~...1..3<..
	defb 0cbh,030h,0feh,0ddh,0cbh,042h,0aeh,0c9h,0ddh,07eh,003h,0ddh,086h,039h,0ddh,086h	; 6222  .0...B...~...9..
	defb 03bh,03ch,0c0h,0ddh,0cbh,038h,0feh,0ddh,0cbh,042h,0a6h,0c9h	; 6232  ;<...8...B..

; ======================================================================
; CODIGO 0x623e..0x6314  (214 bytes)
; ======================================================================


L_623E:
	ld c,(ix+046h)		;623e
	ld a,c			;6241
	or a			;6242
	ret z			;6243
	bit 7,c		;6244
	call nz,L_625A		;6246
	bit 6,c		;6249
	call nz,L_6279		;624b
	bit 5,c		;624e
	call nz,L_6298		;6250
	bit 4,c		;6253
	call nz,L_62B7		;6255
	scf			;6258
	ret			;6259
L_625A:
	ld a,(ix+003h)		;625a
	add a,(ix+021h)		;625d
	add a,(ix+023h)		;6260
	cp 0d0h		;6263
	ccf			;6265
	ret c			;6266
	sub (ix+023h)		;6267
	add a,020h		;626a
	cp 0e8h		;626c
	ccf			;626e
	ret c			;626f
	set 7,(ix+020h)		;6270
	res 7,(ix+046h)		;6274
	ret			;6278
L_6279:
	ld a,(ix+003h)		;6279
	add a,(ix+029h)		;627c
	add a,(ix+02bh)		;627f
	cp 0d0h		;6282
	ccf			;6284
	ret c			;6285
	sub (ix+02bh)		;6286
	add a,020h		;6289
	cp 0e8h		;628b
	ccf			;628d
	ret c			;628e
	set 7,(ix+028h)		;628f
	res 6,(ix+046h)		;6293
	ret			;6297
L_6298:
	ld a,(ix+003h)		;6298
	add a,(ix+031h)		;629b
	add a,(ix+033h)		;629e
	cp 0d0h		;62a1
	ccf			;62a3
	ret c			;62a4
	sub (ix+033h)		;62a5
	add a,020h		;62a8
	cp 0e8h		;62aa
	ccf			;62ac
	ret c			;62ad
	set 7,(ix+030h)		;62ae
	res 5,(ix+046h)		;62b2
	ret			;62b6
L_62B7:
	ld a,(ix+003h)		;62b7
	add a,(ix+039h)		;62ba
	add a,(ix+03bh)		;62bd
	cp 0d0h		;62c0
	ccf			;62c2
	ret c			;62c3
	sub (ix+03bh)		;62c4
	add a,020h		;62c7
	cp 0e8h		;62c9
	ccf			;62cb
	ret c			;62cc
	set 7,(ix+038h)		;62cd
	res 4,(ix+046h)		;62d1
	ret			;62d5
L_62D6:
	ld l,a			;62d6
	call L_62E2		;62d7
	bit 2,l		;62da
	ret z			;62dc
	ld hl,0c834h		;62dd
	dec (hl)			;62e0
	ret			;62e1
L_62E2:
	or a			;62e2
	ret z			;62e3
	ld (ix+055h),000h		;62e4
	ld (ix+05dh),000h		;62e8
	ld (ix+065h),000h		;62ec
	ld (ix+06dh),000h		;62f0
	ld (ix+075h),000h		;62f4
	rrca			;62f8
	jr c,L_6305		;62f9
	rrca			;62fb
	jr c,L_6307		;62fc
	rrca			;62fe
	jr c,L_6309		;62ff
	rrca			;6301
	jr c,L_630B		;6302
	ret			;6304
L_6305:
	ld a,d			;6305
	ret			;6306
L_6307:
	ld a,e			;6307
	ret			;6308
L_6309:
	ld a,h			;6309
	ret			;630a
L_630B:
	ld a,l			;630b
	ret			;630c
L_630D:
	ex af,af'			;630d
	call 048bfh		;630e
	ex af,af'			;6311
	ld (hl),a			;6312
	ret			;6313

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6314..0x631c  (8 bytes)
DATA_6314:
	defb 008h,07ch,082h,057h,07dh,083h,05fh,008h	; 6314  .|.W}._.

; ======================================================================
; CODIGO 0x631c..0x63b0  (148 bytes)
; ======================================================================


L_631C:
	ex af,af'			;631c
	call 048bfh		;631d
	ld a,b			;6320
	ex af,af'			;6321
L_6322:
	ex af,af'			;6322
	ld b,a			;6323
	ex af,af'			;6324
	push hl			;6325
L_6326:
	ld (hl),a			;6326
	inc hl			;6327
	djnz L_6326		;6328
	pop hl			;632a
	ld de,00020h		;632b
	add hl,de			;632e
	res 2,h		;632f
	dec c			;6331
	jr nz,L_6322		;6332
	ret			;6334
L_6335:
	ld hl,0c102h		;6335
	set 0,(hl)		;6338
	xor a			;633a
	ld (0c13ch),a		;633b
	call 047b6h		;633e
	ld hl,0c10bh		;6341
	ld a,(hl)			;6344
	inc (hl)			;6345
	cp 002h		;6346
	jr c,L_634C		;6348
	ld (hl),000h		;634a
L_634C:
	ld b,a			;634c
	add a,a			;634d
	add a,a			;634e
	add a,b			;634f
	ld hl,063b0h		;6350
	call 040a4h		;6353
	ld a,(hl)			;6356
	ld (0c486h),a		;6357
	ld (0c480h),a		;635a
	push hl			;635d
	call L_65BF		;635e
	call L_65B0		;6361
	pop hl			;6364
	inc hl			;6365
	ld e,(hl)			;6366
	ld d,000h		;6367
	ld (0c487h),de		;6369
	inc hl			;636d
	ld a,(hl)			;636e
	ld (0c840h),a		;636f
	ld a,(0c10bh)		;6372
	and a			;6375
	jr z,L_6384		;6376
	inc hl			;6378
	ld a,(hl)			;6379
	ld (0c850h),a		;637a
	inc hl			;637d
	ld a,(hl)			;637e
	ld (0c874h),a		;637f
	jr L_6391		;6382
L_6384:
	ld hl,0c850h		;6384
	ld de,0c851h		;6387
	ld (hl),001h		;638a
	ld bc,0009fh		;638c
	ldir		;638f
L_6391:
	call L_63BD		;6391
	call 05d20h		;6394
	ld hl,00100h		;6397
	ld (0c10dh),hl		;639a
	xor a			;639d
	ld (0c4dbh),a		;639e
	ld hl,00000h		;63a1
	ld (0c4c0h),hl		;63a4
	xor a			;63a7
	ld (0c4bfh),a		;63a8
	inc a			;63ab
	ld (0c163h),a		;63ac
	ret			;63af

; ----------------------------------------------------------------------
; DATOS sin identificar  0x63b0..0x63bd  (13 bytes)
DATA_63B0:
	defb 001h,01fh,000h,000h,000h,007h,01fh,003h,001h,001h,010h,060h,002h	; 63b0  ...........`.

; ======================================================================
; CODIGO 0x63bd..0x642e  (113 bytes)
; ======================================================================


L_63BD:
	ld a,028h		;63bd
	ld (0c845h),a		;63bf
	ld a,003h		;63c2
	ld (0c85ch),a		;63c4
	ld (0c4e1h),a		;63c7
	jp L_7FAB		;63ca
L_63CD:
	ld a,(0c13bh)		;63cd
	or a			;63d0
	ret nz			;63d1
	ld a,07fh		;63d2
	ld (0c834h),a		;63d4
	call 05c38h		;63d7
	ret			;63da
L_63DB:
	ld hl,0c13bh		;63db
	ld a,(hl)			;63de
	or a			;63df
	jr z,L_63ED		;63e0
	dec (hl)			;63e2
	jr z,L_6424		;63e3
	xor a			;63e5
	ld (0c108h),a		;63e6
	ld (0c124h),a		;63e9
	ret			;63ec
L_63ED:
	ld a,00eh		;63ed
	call 0543dh		;63ef
	call L_63F8		;63f2
	jp 053e9h		;63f5
L_63F8:
	xor a			;63f8
	ld (0c108h),a		;63f9
	ld (0c124h),a		;63fc
	ld hl,0c10eh		;63ff
	dec (hl)			;6402
	jr nz,L_640C		;6403
	dec hl			;6405
	inc (hl)			;6406
	call L_6434		;6407
	inc hl			;640a
	ld (hl),d			;640b
L_640C:
	dec hl			;640c
	call L_6434		;640d
	ld a,e			;6410
	bit 7,a		;6411
	jp z,0533bh		;6413
	cp 0feh		;6416
	jr c,$+45		;6418
	cp 0ffh		;641a
	jr nz,$+58		;641c
	ld a,00fh		;641e
	ld (0c13bh),a		;6420
	ret			;6423
L_6424:
	xor a			;6424
	ld (0c163h),a		;6425
	ld hl,0c102h		;6428
	res 0,(hl)		;642b
	ret			;642d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x642e..0x6434  (6 bytes)
DATA_642E:
	defb 0e7h,090h,0cdh,08dh,01ah,08fh	; 642e

; ======================================================================
; CODIGO 0x6434..0x6594  (352 bytes)
; ======================================================================


L_6434:
	ld b,(hl)			;6434
	push hl			;6435
	ld a,(0c10bh)		;6436
	ld de,0642eh		;6439
	call 0486fh		;643c
	ld a,b			;643f
	call 0486fh		;6440
	pop hl			;6443
	ret			;6444
L_6445:
	res 7,a		;6445
	ld b,a			;6447
	and 01ch		;6448
	rrca			;644a
	rrca			;644b
	ld (0c108h),a		;644c
	ld a,b			;644f
	and 003h		;6450
	ld (0c124h),a		;6452
	ret			;6455
L_6456:
	ld a,02eh		;6456
	call 041c1h		;6458
	ld a,(0c10bh)		;645b
	ld de,08db2h		;645e
	call 0486fh		;6461
	ld hl,0c4dbh		;6464
	ld a,(hl)			;6467
	inc (hl)			;6468
	ld b,a			;6469
	add a,a			;646a
	add a,b			;646b
	call 040a9h		;646c
	ex de,hl			;646f
	ld a,(hl)			;6470
	inc hl			;6471
	ld d,(hl)			;6472
	inc hl			;6473
	ld e,(hl)			;6474
	call L_647B		;6475
	jp 05473h		;6478
L_647B:
	ex de,hl			;647b
	push af			;647c
	ld a,(0c385h)		;647d
	add a,l			;6480
	ld l,a			;6481
	ld de,01000h		;6482
	ld bc,08040h		;6485
	ld a,004h		;6488
	push de			;648a
	push hl			;648b
	call 05252h		;648c
	pop de			;648f
	pop hl			;6490
	pop af			;6491
	push hl			;6492
	push de			;6493
	call L_64A1		;6494
	pop de			;6497
	pop hl			;6498
	ld bc,08040h		;6499
	ld a,001h		;649c
	jp 05226h		;649e
L_64A1:
	ld hl,08d4bh		;64a1
	call 04878h		;64a4
	ld a,(0c385h)		;64a7
	neg		;64aa
	add a,e			;64ac
	ld e,a			;64ad
	ld c,0ffh		;64ae
	call 04fc8h		;64b0
	ld hl,09000h		;64b3
L_64B6:
	ld a,008h		;64b6
	call 00141h		;64b8   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	bit 0,a		;64bb
	ld a,001h		;64bd
	ld (0c13ch),a		;64bf
	ret z			;64c2
	dec hl			;64c3
	ld a,h			;64c4
	or l			;64c5
	jr nz,L_64B6		;64c6
	xor a			;64c8
	ld (0c13ch),a		;64c9
	ret			;64cc
L_64CD:
	ld hl,0c485h		;64cd
	res 7,(hl)		;64d0
	ld a,(0c486h)		;64d2
	ld (0c480h),a		;64d5
	call L_65BF		;64d8
	ex af,af'			;64db
	ld a,(0c481h)		;64dc
	cp d			;64df
	jr nz,L_64F6		;64e0
	ld a,(0c482h)		;64e2
	cp e			;64e5
	jr nz,L_64EF		;64e6
	ex af,af'			;64e8
	call L_65B0		;64e9
	jp 05d05h		;64ec
L_64EF:
	ex af,af'			;64ef
	call L_65B0		;64f0
	jp 05d0eh		;64f3
L_64F6:
	ex af,af'			;64f6
	call L_65B0		;64f7
	ld hl,0c172h		;64fa
	ld a,(hl)			;64fd
	cp 00ah		;64fe
	jr nc,L_6503		;6500
	inc (hl)			;6502
L_6503:
	ld a,008h		;6503
	jp 0432eh		;6505
L_6508:
	ld a,(0c4c9h)		;6508
	or a			;650b
	call nz,L_658A		;650c
	ld a,(0c800h)		;650f
	cp 002h		;6512
	ret z			;6514
	ld a,(0c84bh)		;6515
	or a			;6518
	ret nz			;6519
	ld hl,0c4c8h		;651a
	ld a,(hl)			;651d
	or a			;651e
	jr z,L_6522		;651f
	inc (hl)			;6521
L_6522:
	ld a,(0c809h)		;6522
	cp 0f5h		;6525
	jr nc,L_6534		;6527
	cp 00ch		;6529
	ret nc			;652b
	ld d,0f2h		;652c
	ld a,(0c483h)		;652e
	dec a			;6531
	jr L_653A		;6532
L_6534:
	ld d,00eh		;6534
	ld a,(0c483h)		;6536
	inc a			;6539
L_653A:
	cp 003h		;653a
	jr c,L_6540		;653c
	ld a,002h		;653e
L_6540:
	jr nz,L_6543		;6540
	xor a			;6542
L_6543:
	ld (0c483h),a		;6543
	call L_65F5		;6546
	ld (0c486h),a		;6549
	ld hl,(0c302h)		;654c
	ld (0c487h),hl		;654f
	ld a,d			;6552
	ld (0c48ah),a		;6553
	ld a,080h		;6556
	ld (0c485h),a		;6558
	ld hl,0c4c9h		;655b
	ld (hl),001h		;655e
	ld a,(0c80dh)		;6560
	ld (0c48bh),a		;6563
	ld a,(0c385h)		;6566
	and 007h		;6569
	ld c,a			;656b
	ld a,(0c80bh)		;656c
	add a,c			;656f
	inc a			;6570
	ld (0c489h),a		;6571
	ld a,(0c80bh)		;6574
	cp 0c0h		;6577
	ret c			;6579
	ld a,(0c489h)		;657a
	sub 008h		;657d
	ld (0c489h),a		;657f
	ld hl,(0c302h)		;6582
	dec hl			;6585
	ld (0c487h),hl		;6586
	ret			;6589
L_658A:
	call L_6593		;658a
	ld hl,0c4c9h		;658d
	ld (hl),000h		;6590
	ret			;6592
L_6593:
	ret			;6593

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6594..0x65b0  (28 bytes)
DATA_6594:
	defb 021h,0c8h,0c4h,07eh,03dh,0feh,00fh,0d0h,03ah,016h,0cfh,0b7h,0c8h,0c3h,0a1h,0a9h	; 6594  !..~=...:.......
	defb 03ah,086h,0c4h,032h,080h,0c4h,0cdh,0bfh,065h,0c3h,0b0h,065h	; 65a4  :..2....e..e

; ======================================================================
; CODIGO 0x65b0..0x660b  (91 bytes)
; ======================================================================


L_65B0:
	ld (0c483h),a		;65b0
	ld a,d			;65b3
	ld (0c481h),a		;65b4
	ld (0c161h),a		;65b7
	ld a,e			;65ba
	ld (0c482h),a		;65bb
	ret			;65be
L_65BF:
	ld de,0660bh		;65bf
	ld l,a			;65c2
	add a,a			;65c3
	add a,l			;65c4
	ld l,a			;65c5
	ld h,000h		;65c6
	add hl,de			;65c8
	ld d,(hl)			;65c9
	inc hl			;65ca
	ld e,(hl)			;65cb
	inc hl			;65cc
	ld a,(hl)			;65cd
	ret			;65ce
L_65CF:
	ld (0c481h),a		;65cf
	ld a,001h		;65d2
	ld (0c483h),a		;65d4
	call L_65F5		;65d7
	ld (0c486h),a		;65da
	ld a,080h		;65dd
	ld (0c48ah),a		;65df
	ld (0c485h),a		;65e2
	ld a,090h		;65e5
	ld (0c489h),a		;65e7
	xor a			;65ea
	ld (0c48bh),a		;65eb
	ld hl,0001fh		;65ee
	ld (0c487h),hl		;65f1
	ret			;65f4
L_65F5:
	ld a,(0c483h)		;65f5
	cp 003h		;65f8
	jr c,L_65FE		;65fa
	ld a,002h		;65fc
L_65FE:
	jr nz,L_6601		;65fe
	xor a			;6600
L_6601:
	ld c,a			;6601
	ld a,(0c481h)		;6602
	dec a			;6605
	ld b,a			;6606
	add a,a			;6607
	add a,b			;6608
	add a,c			;6609
	ret			;660a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x660b..0x6656  (75 bytes)
DATA_660B:
	defb 001h,000h,000h,001h,000h,001h,001h,000h,002h,002h,001h,000h,002h,001h,001h,002h	; 660b  ................
	defb 001h,002h,003h,002h,000h,003h,002h,001h,003h,002h,002h,004h,003h,000h,004h,003h	; 661b  ................
	defb 001h,004h,003h,002h,005h,004h,000h,005h,004h,001h,005h,004h,002h,006h,005h,000h	; 662b  ................
	defb 006h,005h,001h,006h,005h,002h,001h,006h,003h,002h,006h,003h,003h,006h,003h,004h	; 663b  ................
	defb 006h,003h,005h,006h,003h,006h,007h,003h,000h,000h,000h	; 664b  ...........

; ======================================================================
; CODIGO 0x6656..0x66e0  (138 bytes)
; ======================================================================


L_6656:
	ld hl,0c4d0h		;6656
	ld a,(hl)			;6659
	or a			;665a
	call nz,L_666C		;665b
	xor a			;665e
	ld (0c857h),a		;665f
	ld (0c204h),a		;6662
	call L_6670		;6665
	call L_6681		;6668
	ret			;666b
L_666C:
	cp 001h		;666c
	dec (hl)			;666e
	ret			;666f
L_6670:
	ld a,(0c580h)		;6670
	or a			;6673
	ret z			;6674
	ld (0c857h),a		;6675
	xor a			;6678
	ld (0c580h),a		;6679
	ld a,021h		;667c
	jp 041ach		;667e
L_6681:
	ld a,(0c581h)		;6681
	or a			;6684
	ret z			;6685
	ld (0c204h),a		;6686
	xor a			;6689
	ld (0c388h),a		;668a
	ret			;668d
L_668E:
	call 04ca3h		;668e
	call 04cedh		;6691
	call 04ccah		;6694
	call 04d2dh		;6697
	ld hl,066e0h		;669a
	call 04d3fh		;669d
	ld bc,00007h		;66a0
	call 00047h		;66a3   ; BIOS WRTVDP - Writes data in the VDP-register
	ld b,00fh		;66a6
	ld c,007h		;66a8
	call 00047h		;66aa   ; BIOS WRTVDP - Writes data in the VDP-register
	ld hl,02840h		;66ad
	ld bc,0a848h		;66b0
	ld a,0ffh		;66b3
	ld d,001h		;66b5
	call 04e0bh		;66b7
	xor a			;66ba
	ld h,a			;66bb
	ld l,a			;66bc
	ld d,a			;66bd
	ld b,a			;66be
	ld c,a			;66bf
	dec a			;66c0
	call 04e0bh		;66c1
	ld a,009h		;66c4
	call 05434h		;66c6
	call L_6730		;66c9
	ld a,003h		;66cc
	call 05434h		;66ce
	call 04c96h		;66d1
	ld hl,0c200h		;66d4
	ld (hl),03ch		;66d7
	inc hl			;66d9
	ld (hl),031h		;66da
	inc hl			;66dc
	ld (hl),000h		;66dd
	ret			;66df

; ----------------------------------------------------------------------
; DATOS sin identificar  0x66e0..0x66f0  (16 bytes)
DATA_66E0:
	defb 000h,077h,007h,001h,070h,003h,002h,060h,001h,003h,044h,004h,00fh,077h,007h,0ffh	; 66e0  .w..p..`..D..w..

; ======================================================================
; CODIGO 0x66f0..0x675e  (110 bytes)
; ======================================================================


L_66F0:
	ld hl,0c200h		;66f0
	dec (hl)			;66f3
	ld a,(hl)			;66f4
	inc hl			;66f5
	dec (hl)			;66f6
	jr nz,L_66FF		;66f7
	ld a,001h		;66f9
	ld (0c202h),a		;66fb
	ret			;66fe
L_66FF:
	ld a,031h		;66ff
	sub (hl)			;6701
	ld c,a			;6702
	ld b,0a8h		;6703
	ld hl,02840h		;6705
	ld de,02840h		;6708
	ld a,001h		;670b
	jp 04e47h		;670d
L_6710:
	push de			;6710
L_6711:
	ld a,(hl)			;6711
	inc hl			;6712
	ld c,a			;6713
	inc a			;6714
	jr z,L_672E		;6715
	inc a			;6717
	jr nz,L_6725		;6718
	pop de			;671a
	ld a,(hl)			;671b
	inc hl			;671c
	add a,d			;671d
	ld d,a			;671e
	ld a,008h		;671f
	add a,e			;6721
	ld e,a			;6722
	jr L_6710		;6723
L_6725:
	ld a,c			;6725
	call 05049h		;6726
	call 05095h		;6729
	jr L_6711		;672c
L_672E:
	pop de			;672e
	ret			;672f
L_6730:
	ld hl,0ab3ch		;6730
	ld de,00800h		;6733
	ld bc,00d01h		;6736
	call 04ed7h		;6739
	ld hl,0aba4h		;673c
	ld de,07000h		;673f
	ld bc,00d02h		;6742
	call 04ed7h		;6745
	ld hl,0ac0ch		;6748
	ld de,0d800h		;674b
	ld bc,01a03h		;674e
	call 04ed7h		;6751
	ld de,04040h		;6754
	ld hl,0675eh		;6757
	call L_6710		;675a
	ret			;675d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x675e..0x679f  (65 bytes)
DATA_675E:
	defb 001h,002h,003h,0feh,0f8h,004h,005h,006h,007h,0feh,0f0h,008h,009h,00ah,00bh,00eh	; 675e  ................
	defb 00fh,010h,011h,01bh,01ch,01dh,01eh,01fh,020h,021h,022h,023h,024h,025h,026h,0feh	; 676e  ........ !"#$%&.
	defb 000h,00ch,002h,00dh,012h,013h,014h,015h,027h,028h,029h,02ah,02bh,02ch,02dh,02eh	; 677e  ........'()*+,-.
	defb 02fh,030h,031h,032h,033h,034h,0feh,010h,016h,019h,017h,0feh,0f8h,018h,019h,01ah	; 678e  /01234..........
	defb 0ffh	; 679e

; ======================================================================
; CODIGO 0x679f..0x67a0  (1 bytes)
; ======================================================================


L_679F:
	ret			;679f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x67a0..0x681b  (123 bytes)
DATA_67A0:
	defb 03ah,082h,0c4h,011h,0f8h,067h,0cdh,06fh,048h,0ebh,07eh,0feh,0ffh,0c8h,023h,04eh	; 67a0  :....g.oH.~...#N
	defb 023h,006h,0c9h,002h,0feh,000h,028h,028h,0feh,005h,028h,02ah,0feh,061h,028h,014h	; 67b0  #.....((..(*.a(.
	defb 0feh,060h,028h,016h,0feh,040h,028h,024h,0feh,000h,028h,026h,018h,0dch,079h,032h	; 67c0  .`(..@($..(&..y2
	defb 040h,0c4h,018h,0d6h,079h,032h,045h,0c4h,018h,0d0h,079h,032h,041h,0c4h,018h,0cah	; 67d0  @...y2E...y2A...
	defb 079h,032h,042h,0c4h,018h,0c4h,079h,032h,043h,0c4h,018h,0beh,079h,032h,044h,0c4h	; 67e0  y2B...y2C...y2D.
	defb 018h,0b8h,079h,032h,046h,0c4h,018h,0b2h,008h,068h,008h,068h,008h,068h,008h,068h	; 67f0  ..y2F....h.h.h.h
	defb 008h,068h,008h,068h,008h,068h,008h,068h,0ffh,000h,001h,005h,070h,060h,02eh,061h	; 6800  .h.h.h.h....p`.a
	defb 02fh,040h,000h,000h,0c9h,0ffh,005h,002h,000h,05ah,0ffh	; 6810  /@.......Z.

; ======================================================================
; CODIGO 0x681b..0x6878  (93 bytes)
; ======================================================================


L_681B:
	call L_6C81		;681b
L_681E:
	ld ix,0d700h		;681e
	ld b,00ah		;6822
L_6824:
	ld a,(ix+000h)		;6824
	and a			;6827
	jr z,L_685C		;6828
	push bc			;682a
	ld a,(0c857h)		;682b
	and a			;682e
	call nz,L_6AC3		;682f
	push ix		;6832
	call L_6871		;6834
	pop ix		;6837
	bit 0,(ix+00bh)		;6839
	call nz,L_68F9		;683d
	bit 0,(ix+006h)		;6840
	call nz,L_6920		;6844
	call L_6AA1		;6847
	bit 0,(ix+068h)		;684a
	call nz,L_6864		;684e
	ld a,(ix+013h)		;6851
	and a			;6854
	call nz,L_6947		;6855
	call L_6A74		;6858
	pop bc			;685b
L_685C:
	ld de,00080h		;685c
	add ix,de		;685f
	djnz L_6824		;6861
	ret			;6863
L_6864:
	ld a,(ix+003h)		;6864
	ld (ix-07dh),a		;6867
	ld a,(ix+005h)		;686a
	ld (ix-07bh),a		;686d
	ret			;6870
L_6871:
	ld a,(ix+000h)		;6871
	dec a			;6874
	call 040aeh		;6875

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6878..0x68ec  (116 bytes)
DATA_6878:
	defb 0f2h,099h,017h,09bh,0d2h,09bh,055h,09ch,025h,09dh,06eh,09dh,03bh,09eh,0fah,0a5h	; 6878  ......U.%.n.;...
	defb 01fh,09fh,05eh,0a0h,0d2h,0a0h,03ah,0a1h,042h,0a3h,0aeh,0a3h,085h,0a4h,02bh,0a6h	; 6888  ..^...:.B.....+.
	defb 0dfh,0a6h,013h,0a8h,008h,0a9h,042h,0a8h,044h,0a9h,0deh,0a9h,0feh,0a9h,003h,0abh	; 6898  ......B.D.......
	defb 003h,0abh,058h,0abh,0f7h,0b0h,025h,0b3h,0c3h,0b4h,010h,0b7h,007h,0b9h,0b4h,0bbh	; 68a8  ..X...%.........
	defb 0cfh,0afh,0fah,0b5h,0fdh,0b5h,0aah,0b2h,0a5h,0b8h,0f4h,0bah,0a6h,0bch,0eeh,0bch	; 68b8  ................
	defb 016h,0b4h,08eh,0adh,0c1h,0adh,050h,06ah,0d5h,0ach,0d5h,0ach,06fh,0ach,0e2h,0adh	; 68c8  ......Pj....o...
	defb 025h,0b1h,074h,0b1h,09fh,0b3h,0ech,068h,0ech,068h,0ech,068h,0ech,068h,0ech,068h	; 68d8  %.t....h.h.h.h.h
	defb 0ech,068h,00fh,06bh	; 68e8

; ======================================================================
; CODIGO 0x68ec..0x6a1a  (302 bytes)
; ======================================================================


L_68EC:
	ld a,(0d409h)		;68ec
	and a			;68ef
	ld b,002h		;68f0
	jr z,L_68F5		;68f2
	inc b			;68f4
L_68F5:
	ld (ix+074h),b		;68f5
	ret			;68f8
L_68F9:
	ld e,(ix+00ch)		;68f9
	ld d,(ix+00dh)		;68fc
	ld l,(ix+007h)		;68ff
	ld h,(ix+008h)		;6902
	add hl,de			;6905
	ld (ix+007h),l		;6906
	ld (ix+008h),h		;6909
	ld e,(ix+00eh)		;690c
	ld d,(ix+00fh)		;690f
	ld l,(ix+009h)		;6912
	ld h,(ix+00ah)		;6915
	add hl,de			;6918
	ld (ix+009h),l		;6919
	ld (ix+00ah),h		;691c
	ret			;691f
L_6920:
	ld e,(ix+007h)		;6920
	ld d,(ix+008h)		;6923
	ld l,(ix+002h)		;6926
	ld h,(ix+003h)		;6929
	add hl,de			;692c
	ld (ix+002h),l		;692d
	ld (ix+003h),h		;6930
	ld e,(ix+009h)		;6933
	ld d,(ix+00ah)		;6936
L_6939:
	ld l,(ix+004h)		;6939
	ld h,(ix+005h)		;693c
	add hl,de			;693f
	ld (ix+004h),l		;6940
	ld (ix+005h),h		;6943
	ret			;6946
L_6947:
	call L_69F5		;6947
	ret nc			;694a
	ld a,(ix+000h)		;694b
	cp 01bh		;694e
	jr nc,L_6960		;6950
	add a,a			;6952
	ld hl,06a1ah		;6953
	call 040a4h		;6956
	ld e,(hl)			;6959
	inc hl			;695a
	ld d,(hl)			;695b
	ex de,hl			;695c
	call 04818h		;695d
L_6960:
	ld a,(ix+000h)		;6960
	cp 001h		;6963
	ld b,001h		;6965
	jr z,L_6980		;6967
	cp 00eh		;6969
	ld b,004h		;696b
	jr z,L_6980		;696d
	cp 01ah		;696f
	jr nz,L_698F		;6971
	ld hl,0d454h		;6973
	inc (hl)			;6976
	ld a,(hl)			;6977
	and 003h		;6978
	jr nz,L_699F		;697a
	ld a,001h		;697c
	jr L_6996		;697e
L_6980:
	ld hl,0d450h		;6980
	ld a,(ix+015h)		;6983
	and a			;6986
	jr nz,L_699F		;6987
	dec (hl)			;6989
	jr nz,L_699F		;698a
	ld a,b			;698c
	jr L_6996		;698d
L_698F:
	ld a,(ix+015h)		;698f
	and 00fh		;6992
	jr z,L_699F		;6994
L_6996:
	ld d,(ix+005h)		;6996
	ld e,(ix+003h)		;6999
	call L_73E3		;699c
L_699F:
	call L_6A85		;699f
	ld (ix+000h),02ch		;69a2
	ld (ix+001h),000h		;69a6
	ld (ix+020h),002h		;69aa
	ld (ix+025h),00ah		;69ae
	ld (ix+02ah),04ch		;69b2
	push ix		;69b6
	pop hl			;69b8
	ld a,l			;69b9
	add a,021h		;69ba
	ld l,a			;69bc
	ld b,002h		;69bd
L_69BF:
	ld a,(hl)			;69bf
	ld de,0e628h		;69c0
	add a,e			;69c3
	ld e,a			;69c4
	ld a,0e1h		;69c5
	ld (de),a			;69c7
	ld a,l			;69c8
	add a,005h		;69c9
	ld l,a			;69cb
	djnz L_69BF		;69cc
L_69CE:
	ld (ix+006h),000h		;69ce
	ld (ix+010h),047h		;69d2
	ld (ix+011h),003h		;69d6
	ld (ix+074h),003h		;69da
	ld a,(ix+062h)		;69de
	and a			;69e1
	ld b,012h		;69e2
	jr z,L_69EC		;69e4
	ld b,022h		;69e6
	ld (ix+062h),000h		;69e8
L_69EC:
	ld a,(0d400h)		;69ec
	and a			;69ef
	ld a,b			;69f0
	call z,041c1h		;69f1
	ret			;69f4
L_69F5:
	ld a,(ix+013h)		;69f5
	ld (ix+013h),000h		;69f8
	ld b,(ix+012h)		;69fc
	bit 0,a		;69ff
	jr z,L_6A04		;6a01
	dec b			;6a03
L_6A04:
	bit 1,a		;6a04
	jr z,L_6A0A		;6a06
	dec b			;6a08
	dec b			;6a09
L_6A0A:
	bit 3,a		;6a0a
	jr z,L_6A11		;6a0c
	dec b			;6a0e
	dec b			;6a0f
	dec b			;6a10
L_6A11:
	ld (ix+012h),b		;6a11
	ld a,b			;6a14
	inc a			;6a15
	inc a			;6a16
	cp 003h		;6a17
	ret			;6a19

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6a1a..0x6a50  (54 bytes)
DATA_6A1A:
	defb 000h,000h,001h,000h,001h,000h,002h,000h,00ah,000h,002h,000h,002h,000h,001h,000h	; 6a1a  ................
	defb 000h,000h,001h,000h,002h,000h,002h,000h,001h,000h,001h,000h,001h,000h,00ah,000h	; 6a2a  ................
	defb 002h,000h,002h,000h,001h,000h,001h,000h,003h,000h,000h,000h,002h,000h,002h,000h	; 6a3a  ................
	defb 005h,000h,00ah,000h,00fh,000h	; 6a4a

; ======================================================================
; CODIGO 0x6a50..0x6ab7  (103 bytes)
; ======================================================================


L_6A50:
	dec (ix+011h)		;6a50
	ret nz			;6a53
	ld a,(ix+001h)		;6a54
	cp 003h		;6a57
	jp nc,L_6A85		;6a59
	res 7,(ix+010h)		;6a5c
	inc (ix+010h)		;6a60
	ld a,(0d400h)		;6a63
	and a			;6a66
	ld a,003h		;6a67
	jr z,L_6A6D		;6a69
	ld a,00ch		;6a6b
L_6A6D:
	ld (ix+011h),a		;6a6d
	inc (ix+001h)		;6a70
	ret			;6a73
L_6A74:
	ld a,(ix+003h)		;6a74
	cp 0e3h		;6a77
	jr nc,L_6A85		;6a79
	ld a,(ix+005h)		;6a7b
	cp 0f8h		;6a7e
	jr nc,L_6A85		;6a80
	cp 007h		;6a82
	ret nc			;6a84
L_6A85:
	push ix		;6a85
	pop hl			;6a87
L_6A88:
	ld (hl),000h		;6a88
	set 5,l		;6a8a
	ld a,(hl)			;6a8c
	and a			;6a8d
	ret z			;6a8e
	ld b,a			;6a8f
	inc l			;6a90
L_6A91:
	ld a,(hl)			;6a91
	ld de,0e628h		;6a92
	add a,e			;6a95
	ld e,a			;6a96
	ld a,0e0h		;6a97
	ld (de),a			;6a99
	ld a,l			;6a9a
	add a,005h		;6a9b
	ld l,a			;6a9d
	djnz L_6A91		;6a9e
	ret			;6aa0
L_6AA1:
	ld a,(ix+014h)		;6aa1
	and a			;6aa4
	ld de,06ab7h		;6aa5
	jp z,L_6EFB		;6aa8
	ld a,(ix+025h)		;6aab
	and 07fh		;6aae
	ret nz			;6ab0
	ld de,06fach		;6ab1
	jp L_6EF5		;6ab4

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6ab7..0x6ac3  (12 bytes)
DATA_6AB7:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6ab7  ............

; ======================================================================
; CODIGO 0x6ac3..0x6b9f  (220 bytes)
; ======================================================================


L_6AC3:
	ld a,(0d400h)		;6ac3
	and a			;6ac6
	ret nz			;6ac7
	ld a,(ix+000h)		;6ac8
	cp 01bh		;6acb
	ret nc			;6acd
	ld a,(ix+014h)		;6ace
	and a			;6ad1
	ret z			;6ad2
	push ix		;6ad3
	pop hl			;6ad5
	ld a,l			;6ad6
	add a,024h		;6ad7
	ld l,a			;6ad9
	ld e,(ix+000h)		;6ada
	ld d,0cfh		;6add
	ld a,(de)			;6adf
	ld b,(ix+020h)		;6ae0
L_6AE3:
	push af			;6ae3
	add a,(hl)			;6ae4
	ld (hl),a			;6ae5
	pop af			;6ae6
	ld de,00005h		;6ae7
	add hl,de			;6aea
	djnz L_6AE3		;6aeb
	ld (ix+000h),03ah		;6aed
	ld (ix+006h),001h		;6af1
	ld (ix+00bh),000h		;6af5
	ld (ix+011h),00ah		;6af9
	ld a,0f0h		;6afd
	call L_794A		;6aff
	call L_79EB		;6b02
	call L_7933		;6b05
	ex de,hl			;6b08
	call L_79EB		;6b09
	jp L_792C		;6b0c
L_6B0F:
	dec (ix+011h)		;6b0f
	ret nz			;6b12
	ld (ix+062h),001h		;6b13
	jp L_699F		;6b17
L_6B1A:
	ld hl,0dc00h		;6b1a
	ld b,008h		;6b1d
	jr L_6B26		;6b1f
L_6B21:
	ld hl,0d700h		;6b21
	ld b,00ah		;6b24
L_6B26:
	push bc			;6b26
	push hl			;6b27
	ld a,(hl)			;6b28
	and a			;6b29
	call nz,L_6B36		;6b2a
	pop hl			;6b2d
	pop bc			;6b2e
	ld de,00080h		;6b2f
	add hl,de			;6b32
	djnz L_6B26		;6b33
	ret			;6b35
L_6B36:
	ld a,l			;6b36
	add a,010h		;6b37
	ld l,a			;6b39
	ld a,(hl)			;6b3a
	bit 7,a		;6b3b
	ret nz			;6b3d
	set 7,(hl)		;6b3e
	ld de,09407h		;6b40
	push hl			;6b43
	call 0486fh		;6b44
	pop hl			;6b47
	ld a,l			;6b48
	add a,010h		;6b49
	ld l,a			;6b4b
	ld b,(hl)			;6b4c
	ld a,b			;6b4d
	and a			;6b4e
	ret z			;6b4f
	inc l			;6b50
	inc l			;6b51
	ld a,(de)			;6b52
	cp 080h		;6b53
	jr z,L_6B85		;6b55
	cp 081h		;6b57
	jr z,L_6B7F		;6b59
	cp 082h		;6b5b
	jr z,L_6B79		;6b5d
	cp 083h		;6b5f
	jr z,L_6B73		;6b61
	ld c,0ffh		;6b63
	inc de			;6b65
L_6B66:
	ex de,hl			;6b66
	ldi		;6b67
	ldi		;6b69
	ldi		;6b6b
	ex de,hl			;6b6d
	inc l			;6b6e
	inc l			;6b6f
	djnz L_6B66		;6b70
	ret			;6b72
L_6B73:
	exx			;6b73
	ld hl,06bbbh		;6b74
	jr L_6B89		;6b77
L_6B79:
	exx			;6b79
	ld hl,06babh		;6b7a
	jr L_6B89		;6b7d
L_6B7F:
	exx			;6b7f
	ld hl,06ba7h		;6b80
	jr L_6B89		;6b83
L_6B85:
	exx			;6b85
	ld hl,06b9fh		;6b86
L_6B89:
	exx			;6b89
L_6B8A:
	exx			;6b8a
	ld a,(hl)			;6b8b
	inc hl			;6b8c
	exx			;6b8d
	ld (hl),a			;6b8e
	inc l			;6b8f
	exx			;6b90
	ld a,(hl)			;6b91
	inc hl			;6b92
	exx			;6b93
	ld (hl),a			;6b94
	inc l			;6b95
	inc de			;6b96
	ld a,(de)			;6b97
	ld (hl),a			;6b98
	inc l			;6b99
	inc l			;6b9a
	inc l			;6b9b
	djnz L_6B8A		;6b9c
	ret			;6b9e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6b9f..0x6bd3  (52 bytes)
DATA_6B9F:
	defb 0e1h,0f8h,0e1h,0f8h,0f1h,0f8h,0f1h,0f8h,0f1h,0f8h,0f1h,0f8h,0e1h,0f0h,0e1h,0f0h	; 6b9f  ................
	defb 0f1h,0f0h,0f1h,0f0h,0e1h,000h,0e1h,000h,0f1h,000h,0f1h,000h,0d1h,0f0h,0d1h,0f0h	; 6baf  ................
	defb 0e1h,0f0h,0e1h,0f0h,0f1h,0f0h,0f1h,0f0h,0d1h,000h,0d1h,000h,0e1h,000h,0e1h,000h	; 6bbf  ................
	defb 0f1h,000h,0f1h,000h	; 6bcf

; ======================================================================
; CODIGO 0x6bd3..0x6d28  (341 bytes)
; ======================================================================


L_6BD3:
	ld hl,0dc00h		;6bd3
	ld b,008h		;6bd6
	ld c,000h		;6bd8
	jr L_6BE3		;6bda
L_6BDC:
	ld hl,0d700h		;6bdc
	ld b,00ah		;6bdf
	ld c,001h		;6be1
L_6BE3:
	push bc			;6be3
	push hl			;6be4
	ld a,(hl)			;6be5
	and a			;6be6
	call nz,L_6BF3		;6be7
	pop hl			;6bea
	pop bc			;6beb
	ld de,00080h		;6bec
	add hl,de			;6bef
	djnz L_6BE3		;6bf0
	ret			;6bf2
L_6BF3:
	ld a,c			;6bf3
	and a			;6bf4
	jr z,L_6BFF		;6bf5
	ld a,(hl)			;6bf7
	ld de,0cf00h		;6bf8
	call 040a9h		;6bfb
	ld a,(de)			;6bfe
L_6BFF:
	ld (0e800h),a		;6bff
	push hl			;6c02
	exx			;6c03
	pop hl			;6c04
	inc l			;6c05
	inc l			;6c06
	inc l			;6c07
	exx			;6c08
	set 5,l		;6c09
	ld b,(hl)			;6c0b
	ld a,b			;6c0c
	and a			;6c0d
	ret z			;6c0e
	inc l			;6c0f
L_6C10:
	push bc			;6c10
	ld a,(hl)			;6c11
	ld b,a			;6c12
	inc l			;6c13
	ld de,0e628h		;6c14
	add a,e			;6c17
	ld e,a			;6c18
	ld c,0ffh		;6c19
	exx			;6c1b
	ld a,(hl)			;6c1c
	exx			;6c1d
	add a,(hl)			;6c1e
	ld (de),a			;6c1f
	inc l			;6c20
	inc de			;6c21
	exx			;6c22
	inc l			;6c23
	inc l			;6c24
	ld a,(hl)			;6c25
	dec l			;6c26
	dec l			;6c27
	exx			;6c28
	add a,(hl)			;6c29
	ld (de),a			;6c2a
	inc l			;6c2b
	inc de			;6c2c
	ld a,(0e800h)		;6c2d
	add a,(hl)			;6c30
	ld (de),a			;6c31
	inc l			;6c32
	inc de			;6c33
	ld a,(hl)			;6c34
	and a			;6c35
	jr nz,L_6C41		;6c36
	dec e			;6c38
	dec e			;6c39
	dec e			;6c3a
	ld a,0e1h		;6c3b
	ld (de),a			;6c3d
	inc e			;6c3e
	inc e			;6c3f
	inc e			;6c40
L_6C41:
	ld a,(0c4beh)		;6c41
	and a			;6c44
	jr z,L_6C49		;6c45
	res 7,(hl)		;6c47
L_6C49:
	bit 7,(hl)		;6c49
	jr nz,L_6C62		;6c4b
	ex de,hl			;6c4d
	ld hl,07250h		;6c4e
	ld a,b			;6c51
	add a,a			;6c52
	ld c,a			;6c53
	ld b,000h		;6c54
	add hl,bc			;6c56
	add hl,hl			;6c57
	ex de,hl			;6c58
	ld a,(hl)			;6c59
	set 7,(hl)		;6c5a
	ld b,010h		;6c5c
L_6C5E:
	ld (de),a			;6c5e
	inc e			;6c5f
	djnz L_6C5E		;6c60
L_6C62:
	pop bc			;6c62
	inc l			;6c63
	djnz L_6C10		;6c64
	ret			;6c66
L_6C67:
	ld a,(0c4c2h)		;6c67
	or a			;6c6a
	ret z			;6c6b
	ld c,a			;6c6c
	ld de,(0c4c3h)		;6c6d
	ld a,(0c4c5h)		;6c71
	ld b,a			;6c74
	ld hl,00000h		;6c75
	ld (0c4c2h),hl		;6c78
	ld (0c4c4h),hl		;6c7b
	jp L_6D66		;6c7e
L_6C81:
	call L_6C67		;6c81
	call L_71AF		;6c84
	call L_6CA2		;6c87
	ld a,(0d410h)		;6c8a
	and a			;6c8d
	ret nz			;6c8e
	ld hl,0d500h		;6c8f
	ld b,00ah		;6c92
L_6C94:
	push bc			;6c94
	push hl			;6c95
	call L_6D48		;6c96
	pop hl			;6c99
	pop bc			;6c9a
	ld de,00010h		;6c9b
	add hl,de			;6c9e
	djnz L_6C94		;6c9f
	ret			;6ca1
L_6CA2:
	ld a,(0c389h)		;6ca2
	dec a			;6ca5
	ret nz			;6ca6
	ld a,(0c480h)		;6ca7
	cp 012h		;6caa
	ret nc			;6cac
	ex af,af'			;6cad
	ld a,009h		;6cae
	call 05434h		;6cb0
	ex af,af'			;6cb3
	ld de,0a162h		;6cb4
	call 0486fh		;6cb7
	ld a,003h		;6cba
	call 05434h		;6cbc
	ld a,(0d412h)		;6cbf
	ld c,a			;6cc2
	add a,a			;6cc3
	add a,c			;6cc4
	call 040a9h		;6cc5
L_6CC8:
	ld a,009h		;6cc8
	call 05434h		;6cca
	call L_6CFC		;6ccd
	exx			;6cd0
	ld a,003h		;6cd1
	call 05434h		;6cd3
	exx			;6cd6
	ret z			;6cd7
	ld bc,(0c302h)		;6cd8
	sbc hl,bc		;6cdc
	jr c,L_6CF5		;6cde
	ret nz			;6ce0
	push de			;6ce1
	call L_6D12		;6ce2
	pop de			;6ce5
	ret nz			;6ce6
	push hl			;6ce7
	pop ix		;6ce8
	ld a,(0e801h)		;6cea
	ld (ix+006h),a		;6ced
	push de			;6cf0
	call L_6D21		;6cf1
	pop de			;6cf4
L_6CF5:
	ld hl,0d412h		;6cf5
	inc (hl)			;6cf8
	inc de			;6cf9
	jr L_6CC8		;6cfa
L_6CFC:
	ld a,(de)			;6cfc
	ld l,a			;6cfd
	inc de			;6cfe
	ld a,(de)			;6cff
	srl a		;6d00
	ret z			;6d02
	ld (0e800h),a		;6d03
	ld a,(de)			;6d06
	and 001h		;6d07
	ld h,a			;6d09
	inc de			;6d0a
	ld a,(de)			;6d0b
	ld (0e801h),a		;6d0c
	scf			;6d0f
	sbc a,a			;6d10
	ret			;6d11
L_6D12:
	ld hl,0d500h		;6d12
	ld de,00010h		;6d15
	ld b,00ah		;6d18
	xor a			;6d1a
L_6D1B:
	cp (hl)			;6d1b
	ret z			;6d1c
	add hl,de			;6d1d
	djnz L_6D1B		;6d1e
	ret			;6d20
L_6D21:
	ld a,(0e800h)		;6d21
	dec a			;6d24
	call 040aeh		;6d25

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6d28..0x6d48  (32 bytes)
DATA_6D28:
	defb 0b7h,09ah,073h,09bh,020h,09ch,044h,09dh,0e9h,09dh,0ebh,09fh,00ch,0a1h,012h,0a3h	; 6d28  ..s. .D.........
	defb 04bh,0a4h,0e1h,0a5h,0ach,0a6h,019h,0a9h,0e4h,0a9h,059h,0aah,061h,0aah,07ch,0aah	; 6d38  K.........Y.a.|.

; ======================================================================
; CODIGO 0x6d48..0x6e83  (315 bytes)
; ======================================================================


L_6D48:
	ld a,(hl)			;6d48
	and a			;6d49
	ret z			;6d4a
	inc l			;6d4b
	dec (hl)			;6d4c
	ret nz			;6d4d
	dec l			;6d4e
	dec (hl)			;6d4f
	inc l			;6d50
	inc l			;6d51
	ld a,(hl)			;6d52
	dec l			;6d53
	ld (hl),a			;6d54
	inc l			;6d55
	inc l			;6d56
	ld c,(hl)			;6d57
	inc l			;6d58
	ld e,(hl)			;6d59
	inc l			;6d5a
	ld d,(hl)			;6d5b
	inc l			;6d5c
	ld b,(hl)			;6d5d
	ld a,b			;6d5e
	and a			;6d5f
	jr z,L_6D64		;6d60
	jr L_6D66		;6d62
L_6D64:
	xor a			;6d64
	ld b,a			;6d65
L_6D66:
	ld a,b			;6d66
	ld (0e805h),a		;6d67
	xor a			;6d6a
	ld (0d411h),a		;6d6b
	ld a,c			;6d6e
	ld (0e800h),a		;6d6f
	ld (0e801h),de		;6d72
	ld hl,0d700h		;6d76
	ld de,00080h		;6d79
	ld b,00ah		;6d7c
	xor a			;6d7e
L_6D7F:
	cp (hl)			;6d7f
	jr z,L_6D86		;6d80
	add hl,de			;6d82
	djnz L_6D7F		;6d83
	ret			;6d85
L_6D86:
	push hl			;6d86
	pop ix		;6d87
	ld (0e803h),hl		;6d89
	ld a,(0e800h)		;6d8c
	ld hl,06f21h		;6d8f
	call 040a4h		;6d92
	ld a,(hl)			;6d95
	ld (ix+020h),a		;6d96
	ld c,a			;6d99
	and a			;6d9a
	jp z,L_6E27		;6d9b
	dec a			;6d9e
	jr z,L_6E08		;6d9f
	ld de,00000h		;6da1
	ld hl,0e628h		;6da4
	ld a,(0c4a8h)		;6da7
	ld b,a			;6daa
L_6DAB:
	ld a,(hl)			;6dab
	cp 0e0h		;6dac
	jr nz,L_6DDE		;6dae
	ld (hl),0e1h		;6db0
	call L_6F12		;6db2
	dec c			;6db5
	jr z,L_6E27		;6db6
	inc c			;6db8
	push hl			;6db9
	inc l			;6dba
	inc l			;6dbb
	inc l			;6dbc
	inc l			;6dbd
	ld a,(hl)			;6dbe
	cp 0e0h		;6dbf
	pop hl			;6dc1
	jr nz,L_6DDE		;6dc2
	push bc			;6dc4
	ld b,002h		;6dc5
L_6DC7:
	ld (hl),0e1h		;6dc7
	call L_6F12		;6dc9
	inc e			;6dcc
	inc d			;6dcd
	inc d			;6dce
	inc d			;6dcf
	inc d			;6dd0
	inc l			;6dd1
	inc l			;6dd2
	inc l			;6dd3
	inc l			;6dd4
	djnz L_6DC7		;6dd5
	pop bc			;6dd7
	dec c			;6dd8
	dec c			;6dd9
	jr z,L_6E27		;6dda
	jr L_6DE6		;6ddc
L_6DDE:
	ld a,008h		;6dde
	add a,l			;6de0
	ld l,a			;6de1
	ld a,008h		;6de2
	add a,d			;6de4
	ld d,a			;6de5
L_6DE6:
	dec b			;6de6
	djnz L_6DAB		;6de7
	ld a,(ix+020h)		;6de9
	sub c			;6dec
	ret z			;6ded
	ld b,a			;6dee
	ld de,(0e803h)		;6def
	ld a,e			;6df3
	add a,021h		;6df4
	ld e,a			;6df6
L_6DF7:
	ld hl,0e628h		;6df7
	ld a,(de)			;6dfa
	call 040a4h		;6dfb
	ld (hl),0e0h		;6dfe
	inc e			;6e00
	inc e			;6e01
	inc e			;6e02
	inc e			;6e03
	inc e			;6e04
	djnz L_6DF7		;6e05
	ret			;6e07
L_6E08:
	ld de,00000h		;6e08
	ld hl,0e628h		;6e0b
	ld a,(0c4a8h)		;6e0e
	ld b,a			;6e11
L_6E12:
	ld a,(hl)			;6e12
	cp 0e0h		;6e13
	jr z,L_6E22		;6e15
	inc d			;6e17
	inc d			;6e18
	inc d			;6e19
	inc d			;6e1a
	inc l			;6e1b
	inc l			;6e1c
	inc l			;6e1d
	inc l			;6e1e
	djnz L_6E12		;6e1f
	ret			;6e21
L_6E22:
	ld (hl),0e1h		;6e22
	call L_6F12		;6e24
L_6E27:
	ld a,001h		;6e27
	ld (0d411h),a		;6e29
	ld hl,(0e803h)		;6e2c
	ld a,(0e800h)		;6e2f
	ld (hl),a			;6e32
	xor a			;6e33
	inc l			;6e34
	ld (hl),a			;6e35
	ld de,(0e801h)		;6e36
	inc l			;6e3a
	ld (hl),a			;6e3b
	inc l			;6e3c
	ld (hl),e			;6e3d
	inc l			;6e3e
	ld (hl),a			;6e3f
	inc l			;6e40
	ld (hl),d			;6e41
	inc l			;6e42
	ld (hl),001h		;6e43
	ld (ix+00bh),a		;6e45
	ld a,(0e800h)		;6e48
	ld hl,06f5ah		;6e4b
	call 040a4h		;6e4e
	ld a,(hl)			;6e51
	ld (ix+012h),a		;6e52
	ld (ix+013h),000h		;6e55
	ld (ix+014h),001h		;6e59
	ld a,(0e805h)		;6e5d
	ld (ix+015h),a		;6e60
	ld a,(0e800h)		;6e63
	ld b,000h		;6e66
	cp 01bh		;6e68
	jr nc,L_6E73		;6e6a
	ld hl,06f93h		;6e6c
	call 040a4h		;6e6f
	ld b,(hl)			;6e72
L_6E73:
	ld (ix+016h),b		;6e73
	ld de,06fach		;6e76
	call L_6EF5		;6e79
	ld a,(ix+000h)		;6e7c
	dec a			;6e7f
	call 040aeh		;6e80

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6e83..0x6ef5  (114 bytes)
DATA_6E83:
	defb 09bh,099h,0f6h,09ah,09ch,09bh,033h,09ch,00ah,09dh,050h,09dh,007h,09eh,0f9h,0a5h	; 6e83  ......3...P.....
	defb 0fbh,09eh,0f7h,09fh,095h,0a0h,018h,0a1h,01eh,0a3h,082h,0a3h,057h,0a4h,0fbh,0a5h	; 6e93  ............W...
	defb 0b8h,0a6h,002h,0a8h,0d0h,0a8h,01ch,0a8h,025h,0a9h,0cbh,0a9h,0ech,0a9h,084h,0aah	; 6ea3  ........%.......
	defb 0aah,0aah,0e6h,0aah,0cbh,0b0h,0f8h,0b2h,090h,0b4h,0e7h,0b6h,0e7h,0b8h,087h,0bbh	; 6eb3  ................
	defb 0a8h,0afh,0ach,0b5h,0c6h,0b5h,072h,0b2h,05dh,0b8h,0cah,0bah,08ch,0bch,0afh,0bch	; 6ec3  ......r.].......
	defb 0dah,0b3h,077h,0adh,0aeh,0adh,0ceh,069h,08fh,0ach,08fh,0ach,04eh,0ach,0c4h,0adh	; 6ed3  ..w....i....N...
	defb 0bdh,0b1h,0b6h,0b1h,08ah,0b3h,01dh,0afh,022h,0afh,027h,0afh,02ch,0afh,031h,0afh	; 6ee3  ........".'.,.1.
	defb 036h,0afh	; 6ef3

; ======================================================================
; CODIGO 0x6ef5..0x6f22  (45 bytes)
; ======================================================================


L_6EF5:
	ld a,(ix+000h)		;6ef5
	call 0486fh		;6ef8
L_6EFB:
	ld b,(ix+020h)		;6efb
	ld a,b			;6efe
	and a			;6eff
	ret z			;6f00
	push ix		;6f01
	pop hl			;6f03
	ld a,l			;6f04
	add a,025h		;6f05
	ld l,a			;6f07
L_6F08:
	ld a,(de)			;6f08
	ld (hl),a			;6f09
	inc de			;6f0a
	ld a,l			;6f0b
	add a,005h		;6f0c
	ld l,a			;6f0e
	djnz L_6F08		;6f0f
	ret			;6f11
L_6F12:
	push hl			;6f12
	ld hl,(0e803h)		;6f13
	ld a,e			;6f16
	add a,a			;6f17
	add a,a			;6f18
	add a,e			;6f19
	add a,021h		;6f1a
	call 040a4h		;6f1c
	ld (hl),d			;6f1f
	pop hl			;6f20
	ret			;6f21

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6f22..0x7049  (295 bytes)
DATA_6F22:
	defb 002h,002h,002h,004h,002h,002h,002h,000h,002h,002h,002h,002h,002h,002h,004h,002h	; 6f22  ................
	defb 002h,002h,002h,002h,002h,002h,002h,004h,004h,004h,008h,008h,008h,000h,00ch,00ch	; 6f32  ................
	defb 002h,002h,002h,004h,002h,001h,001h,001h,002h,001h,001h,002h,002h,002h,001h,001h	; 6f42  ................
	defb 004h,002h,001h,000h,000h,000h,000h,000h,000h,001h,001h,001h,00ah,008h,001h,002h	; 6f52  ................
	defb 080h,001h,001h,001h,001h,001h,001h,003h,003h,003h,001h,001h,001h,003h,001h,001h	; 6f62  ................
	defb 003h,007h,007h,020h,01eh,01eh,014h,028h,03ch,080h,008h,001h,006h,004h,010h,003h	; 6f72  ... ...(<.......
	defb 003h,006h,001h,002h,080h,080h,080h,080h,003h,080h,080h,080h,080h,080h,080h,080h	; 6f82  ................
	defb 080h,080h,000h,002h,000h,000h,000h,002h,001h,000h,001h,002h,002h,001h,002h,000h	; 6f92  ................
	defb 001h,001h,001h,000h,001h,001h,001h,001h,001h,001h,001h,001h,02ah,070h,02ah,070h	; 6fa2  ............*p*p
	defb 02ah,070h,020h,070h,020h,070h,02ah,070h,02ah,070h,02ah,070h,02ah,070h,024h,070h	; 6fb2  *p p p*p*p*p*p$p
	defb 024h,070h,02ah,070h,02ah,070h,02ah,070h,02ah,070h,02ah,070h,02ah,070h,024h,070h	; 6fc2  $p*p*p*p*p*p*p$p
	defb 02ah,070h,02ah,070h,026h,070h,02ah,070h,028h,070h,020h,070h,02ah,070h,02ah,070h	; 6fd2  *p*p&p*p(p p*p*p
	defb 02ah,070h,036h,070h,02ah,070h,048h,070h,02ah,070h,02ah,070h,03fh,070h,024h,070h	; 6fe2  *p6p*pHp*p*p?p$p
	defb 02ah,070h,041h,070h,024h,070h,026h,070h,028h,070h,028h,070h,041h,070h,045h,070h	; 6ff2  *pAp$p&p(p(pApEp
	defb 045h,070h,03fh,070h,03fh,070h,03fh,070h,045h,070h,045h,070h,020h,070h,046h,070h	; 7002  Ep?p?p?pEpEp pFp
	defb 020h,070h,048h,070h,048h,070h,048h,070h,048h,070h,048h,070h,048h,070h,00dh,04eh	; 7012   pHpHpHpHpHpHp.N
	defb 00dh,04eh,00bh,04ch,008h,04fh,007h,04ch,007h,04bh,007h,04bh,007h,04bh,007h,04bh	; 7022  .N.L.O.L.K.K.K.K
	defb 007h,04bh,007h,04bh,007h,04bh,007h,04bh,007h,04bh,007h,04bh,00fh,00ah,04ch,00ah	; 7032  .K.K.K.K.K.K..L.
	defb 04eh,00ah,04eh,00ch,008h,005h,000h	; 7042

; ======================================================================
; CODIGO 0x7049..0x7062  (25 bytes)
; ======================================================================


L_7049:
	ld a,(0c172h)		;7049
	ld c,a			;704c
	ld a,(0c840h)		;704d
	ld hl,07062h		;7050
	call 040a4h		;7053
	ld a,(hl)			;7056
	add a,c			;7057
	cp 00fh		;7058
	jr c,L_705E		;705a
	ld a,00fh		;705c
L_705E:
	ld (0c4aah),a		;705e
	ret			;7061

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7062..0x706a  (8 bytes)
DATA_7062:
	defb 000h,002h,003h,003h,004h,004h,004h,004h	; 7062  ........

; ======================================================================
; CODIGO 0x706a..0x70c7  (93 bytes)
; ======================================================================


L_706A:
	ld bc,00006h		;706a
	push ix		;706d
	pop de			;706f
	ldir		;7070
	ret			;7072
L_7073:
	ld bc,0000bh		;7073
	push ix		;7076
	pop de			;7078
	ld a,e			;7079
	add a,007h		;707a
	ld e,a			;707c
	ldir		;707d
	ret			;707f
L_7080:
	ld a,003h		;7080
	jr L_7085		;7082
L_7084:
	xor a			;7084
L_7085:
	ex af,af'			;7085
	push ix		;7086
	pop de			;7088
	ld a,070h		;7089
	add a,e			;708b
	ld e,a			;708c
	ld bc,00004h		;708d
	ldir		;7090
	ex af,af'			;7092
	ld (de),a			;7093
	ret			;7094
L_7095:
	ld a,008h		;7095
	jr L_70A3		;7097
L_7099:
	ld a,00ah		;7099
	jr L_70A3		;709b
L_709D:
	ld a,00dh		;709d
	jr L_70A3		;709f
L_70A1:
	ld a,00fh		;70a1
L_70A3:
	push ix		;70a3
	pop hl			;70a5
	call 040a4h		;70a6
	ld d,(hl)			;70a9
	dec hl			;70aa
	ld e,(hl)			;70ab
	call L_79EB		;70ac
	ld (hl),e			;70af
	inc hl			;70b0
	ld (hl),d			;70b1
	ret			;70b2
L_70B3:
	ld a,(0c80bh)		;70b3
	sub (ix+003h)		;70b6
	ret nc			;70b9
	neg		;70ba
	ret			;70bc
L_70BD:
	ld a,(0c809h)		;70bd
	sub (ix+005h)		;70c0
	ret nc			;70c3
	neg		;70c4
	ret			;70c6

; ----------------------------------------------------------------------
; DATOS sin identificar  0x70c7..0x70cf  (8 bytes)
DATA_70C7:
	defb 07ch,02fh,067h,07dh,02fh,06fh,023h,0c9h	; 70c7  |/g}/o#.

; ======================================================================
; CODIGO 0x70cf..0x70dd  (14 bytes)
; ======================================================================


L_70CF:
	ld a,(0c80bh)		;70cf
	cp (ix+003h)		;70d2
	ret			;70d5
L_70D6:
	ld a,(0c809h)		;70d6
	cp (ix+005h)		;70d9
	ret			;70dc

; ----------------------------------------------------------------------
; DATOS sin identificar  0x70dd..0x70f1  (20 bytes)
DATA_70DD:
	defb 0cdh,07fh,098h,0e6h,08fh,0cbh,07fh,028h,004h,0cbh,0bfh,0edh,044h,0ddh,086h,005h	; 70dd  .......(....D...
	defb 0ddh,077h,005h,0c9h	; 70ed

; ======================================================================
; CODIGO 0x70f1..0x72bf  (462 bytes)
; ======================================================================


L_70F1:
	inc (ix+060h)		;70f1
	ld a,(ix+060h)		;70f4
	and c			;70f7
	jr z,L_70FB		;70f8
	inc b			;70fa
L_70FB:
	ld (ix+010h),b		;70fb
	ret			;70fe
L_70FF:
	inc (ix+060h)		;70ff
	ld a,(ix+060h)		;7102
	and b			;7105
	jp z,L_6EFB		;7106
	ld de,06fach		;7109
	jp L_6EF5		;710c
L_710F:
	ld a,(0c388h)		;710f
	add a,(ix+003h)		;7112
	ld (ix+003h),a		;7115
	ret			;7118
L_7119:
	ld a,(0c4c8h)		;7119
	dec a			;711c
	cp 020h		;711d
	ret nc			;711f
	ld bc,04020h		;7120
L_7123:
	call L_70B3		;7123
	cp b			;7126
	ret nc			;7127
	call L_70BD		;7128
	cp c			;712b
	ret nc			;712c
	jp L_6A85		;712d
L_7130:
	ld a,(0c4aah)		;7130
	and a			;7133
	ret z			;7134
	dec (ix+061h)		;7135
	ret nz			;7138
	call L_713F		;7139
	jp L_7809		;713c
L_713F:
	ld a,(0c4aah)		;713f
	add a,a			;7142
	ld d,a			;7143
	call 0987fh		;7144
	and 00fh		;7147
	add a,b			;7149
	sub d			;714a
	cp 006h		;714b
	jr nc,L_7151		;714d
	ld a,006h		;714f
L_7151:
	ld (ix+061h),a		;7151
	ret			;7154
L_7155:
	ld a,(0c4b0h)		;7155
	and 002h		;7158
	ld b,000h		;715a
	jr z,L_715F		;715c
	inc b			;715e
L_715F:
	ld (ix+014h),b		;715f
	dec (ix+011h)		;7162
	ret nz			;7165
	ld (ix+014h),001h		;7166
	ret			;716a
L_716B:
	ld (0e800h),a		;716b
	ld a,b			;716e
	ld (0e80bh),a		;716f
	ld a,c			;7172
	ld (0e80ah),a		;7173
	ld d,(ix+005h)		;7176
	ld e,(ix+003h)		;7179
	call L_79A3		;717c
	call L_795E		;717f
	call L_7933		;7182
	ex de,hl			;7185
	jp L_792C		;7186
L_7189:
	call L_794A		;7189
	call L_7933		;718c
	ex de,hl			;718f
	jp L_792C		;7190
L_7193:
	ld a,(ix+005h)		;7193
	cp b			;7196
	jr nc,L_719E		;7197
	cp c			;7199
	ret nc			;719a
	jp L_7933		;719b
L_719E:
	call L_79EB		;719e
	jp L_7933		;71a1
L_71A4:
	ld a,(ix+013h)		;71a4
	and 00bh		;71a7
	ld a,010h		;71a9
	jp nz,041ach		;71ab
	ret			;71ae
L_71AF:
	ld hl,0d43bh		;71af
	ld a,(hl)			;71b2
	and a			;71b3
	jr z,L_71B8		;71b4
	dec (hl)			;71b6
	ret			;71b7
L_71B8:
	ld hl,0d43ch		;71b8
	ld a,(hl)			;71bb
	and a			;71bc
	jr z,L_71C0		;71bd
	dec (hl)			;71bf
L_71C0:
	ld a,(0c480h)		;71c0
	cp 012h		;71c3
	ret nc			;71c5
	call L_72A9		;71c6
	ld a,009h		;71c9
	call 05434h		;71cb
	ld a,(0c480h)		;71ce
	ld de,0a186h		;71d1
	call 0486fh		;71d4
	ld a,(0c302h)		;71d7
	rlca			;71da
	rlca			;71db
	rlca			;71dc
	and 007h		;71dd
	call 040a9h		;71df
	ld a,(de)			;71e2
	ld c,a			;71e3
	ld a,003h		;71e4
	call 05434h		;71e6
	ld a,c			;71e9
	rra			;71ea
	push af			;71eb
	call c,L_720C		;71ec
	pop af			;71ef
	rra			;71f0
	push af			;71f1
	call c,L_723E		;71f2
	pop af			;71f5
	rra			;71f6
	push af			;71f7
	call c,L_725A		;71f8
	pop af			;71fb
	rra			;71fc
	push af			;71fd
	call c,L_7262		;71fe
	pop af			;7201
	rra			;7202
	push af			;7203
	call c,L_726C		;7204
	pop af			;7207
	rra			;7208
	jr c,L_727E		;7209
	ret			;720b
L_720C:
	ld hl,0d430h		;720c
	ld de,072bfh		;720f
L_7212:
	ld (0e800h),de		;7212
	ld c,064h		;7216
	call L_728F		;7218
	ret nz			;721b
	ld a,(0c809h)		;721c
	cp 080h		;721f
	ld a,030h		;7221
	jr nc,L_7227		;7223
	ld a,0d0h		;7225
L_7227:
	ld (de),a			;7227
	ld hl,0d439h		;7228
	ld a,(hl)			;722b
	inc (hl)			;722c
	and 003h		;722d
	inc de			;722f
	ld (de),a			;7230
	ld hl,0d450h		;7231
	call 040a4h		;7234
	ld de,(0e800h)		;7237
	ld a,(de)			;723b
	ld (hl),a			;723c
	ret			;723d
L_723E:
	ld hl,0d431h		;723e
	ld de,072c6h		;7241
	ld c,0f0h		;7244
	call L_728F		;7246
	ret nz			;7249
	ld hl,0d436h		;724a
L_724D:
	inc (hl)			;724d
	ld a,(hl)			;724e
	and 003h		;724f
	ld hl,072e9h		;7251
	call 040a4h		;7254
	ld a,(hl)			;7257
	ld (de),a			;7258
	ret			;7259
L_725A:
	ld hl,0d432h		;725a
	ld de,072cdh		;725d
	jr L_7212		;7260
L_7262:
	ld hl,0d433h		;7262
	ld de,072d4h		;7265
	ld c,040h		;7268
	jr L_728F		;726a
L_726C:
	ld hl,0d434h		;726c
	ld de,072dbh		;726f
	ld c,040h		;7272
	call L_728F		;7274
	ret nz			;7277
	ld hl,0d437h		;7278
	jp L_724D		;727b
L_727E:
	ld hl,0d435h		;727e
	ld de,072e2h		;7281
	ld c,040h		;7284
	call L_728F		;7286
	ret nz			;7289
	ld a,019h		;728a
	jp 041ach		;728c
L_728F:
	dec (hl)			;728f
	ret nz			;7290
	ld a,(0c4aah)		;7291
	add a,a			;7294
	sub c			;7295
	neg		;7296
	ld (hl),a			;7298
	push de			;7299
	call L_6D12		;729a
	pop de			;729d
	ret nz			;729e
	ex de,hl			;729f
	ld bc,00007h		;72a0
	ldir		;72a3
	dec de			;72a5
	dec de			;72a6
	xor a			;72a7
	ret			;72a8
L_72A9:
	ld a,(0c389h)		;72a9
	dec a			;72ac
	ret nz			;72ad
	ld a,(0c302h)		;72ae
	and 01fh		;72b1
	ret nz			;72b3
L_72B4:
	ld hl,0d430h		;72b4
	ld b,006h		;72b7
L_72B9:
	ld (hl),020h		;72b9
	inc hl			;72bb
	djnz L_72B9		;72bc
	ret			;72be

; ----------------------------------------------------------------------
; DATOS sin identificar  0x72bf..0x72ed  (46 bytes)
DATA_72BF:
	defb 004h,001h,00ah,001h,000h,000h,000h,004h,001h,008h,009h,000h,000h,000h,004h,001h	; 72bf  ................
	defb 006h,00eh,0dbh,000h,000h,005h,001h,004h,012h,000h,000h,000h,005h,001h,004h,013h	; 72cf  ................
	defb 000h,000h,000h,004h,015h,004h,014h,0dbh,000h,000h,030h,0d0h,050h,0b0h	; 72df  ..........0.P.

; ======================================================================
; CODIGO 0x72ed..0x7380  (147 bytes)
; ======================================================================


L_72ED:
	ld a,(0cb40h)		;72ed
	or a			;72f0
	jr z,L_7308		;72f1
	ld (0cb04h),a		;72f3
	ld a,(0cb41h)		;72f6
	ld (0cb06h),a		;72f9
	ld hl,00000h		;72fc
	ld (0cb40h),hl		;72ff
	ld a,(0cb04h)		;7302
	jp L_7361		;7305
L_7308:
	ld a,(0c389h)		;7308
	or a			;730b
	ret z			;730c
	call L_60D2		;730d
	ld bc,(0c302h)		;7310
	ld a,(0cb00h)		;7314
	ld l,a			;7317
	ld h,000h		;7318
	ld e,a			;731a
	ld d,h			;731b
	add hl,hl			;731c
	add hl,de			;731d
	ld de,(0cb02h)		;731e
	add hl,de			;7322
L_7323:
	ld a,009h		;7323
	call 05434h		;7325
	ld e,(hl)			;7328
	inc hl			;7329
	ld d,(hl)			;732a
	inc hl			;732b
	ld a,(hl)			;732c
	ld (0cb06h),a		;732d
	inc hl			;7330
	ld a,003h		;7331
	call 05434h		;7333
	call L_7531		;7336
	jr c,L_7343		;7339
	ret nz			;733b
	push bc			;733c
	push hl			;733d
	call L_7352		;733e
	pop hl			;7341
	pop bc			;7342
L_7343:
	exx			;7343
	ld hl,0cb00h		;7344
	inc (hl)			;7347
	exx			;7348
	jr L_7323		;7349
L_734B:
	ld a,c			;734b
	ld a,b			;734c
	ld (0cb04h),a		;734d
	jr L_7361		;7350
L_7352:
	ld a,(0cb00h)		;7352
	ld (0cb4ch),a		;7355
	dec hl			;7358
	ld a,d			;7359
	rrca			;735a
	rrca			;735b
	and 03fh		;735c
	ld (0cb04h),a		;735e
L_7361:
	cp 020h		;7361
	jp nc,L_73BF		;7363
	cp 006h		;7366
	jp c,L_7452		;7368
	call L_74B5		;736b
	ret nz			;736e
	push hl			;736f
	pop ix		;7370
	ld (ix+040h),b		;7372
L_7375:
	set 5,l		;7375
	xor a			;7377
	ld (hl),a			;7378
	ld a,(0cb04h)		;7379
	dec a			;737c
	call 040aeh		;737d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7380..0x73be  (62 bytes)
DATA_7380:
	defb 031h,082h,047h,082h,047h,082h,0e8h,081h,0aah,081h,0b5h,0bdh,0beh,073h,0d4h,098h	; 7380  1.G.G........s..
	defb 015h,0b3h,067h,099h,077h,099h,031h,097h,031h,097h,031h,097h,0cah,095h,057h,099h	; 7390  ..g.w.1.1.1...W.
	defb 0beh,073h,0beh,073h,0beh,073h,0beh,073h,0beh,073h,0beh,073h,0beh,073h,0beh,073h	; 73a0  .s.s.s.s.s.s.s.s
	defb 0beh,073h,0beh,073h,0beh,073h,0beh,073h,0beh,073h,0beh,073h,0beh,073h	; 73b0  .s.s.s.s.s.s.s

; ======================================================================
; CODIGO 0x73be..0x73c5  (7 bytes)
; ======================================================================


L_73BE:
	ret			;73be
L_73BF:
	call L_74B5		;73bf
	jp L_6136		;73c2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x73c5..0x73e3  (30 bytes)
DATA_73C5:
	defb 0cdh,09fh,074h,0c0h,036h,001h,02ch,03ah,004h,0cbh,0e6h,00fh,077h,02ch,03ah,085h	; 73c5  ..t.6.,:....w,:.
	defb 0c3h,0e6h,00fh,0d6h,018h,077h,02ch,03ah,006h,0cbh,0e6h,0f0h,077h,0c9h	; 73d5  .....w,:....w.

; ======================================================================
; CODIGO 0x73e3..0x745f  (124 bytes)
; ======================================================================


L_73E3:
	ld c,a			;73e3
	push de			;73e4
	push bc			;73e5
	call L_7F64		;73e6
	pop bc			;73e9
	pop de			;73ea
	ld a,c			;73eb
	jr nc,L_73F6		;73ec
	push ix		;73ee
	call L_7400		;73f0
	pop ix		;73f3
	ret			;73f5
L_73F6:
	ld c,02fh		;73f6
	push ix		;73f8
	call L_6D64		;73fa
	pop ix		;73fd
	ret			;73ff
L_7400:
	cp 006h		;7400
	jr nz,L_7409		;7402
	ld c,02dh		;7404
	jp L_6D64		;7406
L_7409:
	cp 008h		;7409
	ld c,02eh		;740b
	jp z,L_6D64		;740d
	push de			;7410
	push af			;7411
	call L_7436		;7412
	pop bc			;7415
	pop de			;7416
	ret z			;7417
	push bc			;7418
	push de			;7419
	call L_749F		;741a
	pop de			;741d
	pop bc			;741e
	ret nz			;741f
	ld (hl),001h		;7420
	inc l			;7422
	ld (hl),b			;7423
	inc l			;7424
	ld a,(0c385h)		;7425
	and 00fh		;7428
	ld c,a			;742a
	add a,e			;742b
	and 0f8h		;742c
	sub c			;742e
	ld (hl),a			;742f
	inc l			;7430
	ld a,d			;7431
	and 0f8h		;7432
	ld (hl),a			;7434
	ret			;7435
L_7436:
	push ix		;7436
	pop af			;7438
	sub 0d0h		;7439
	cp 004h		;743b
	ret c			;743d
	call 048bfh		;743e
	xor a			;7441
	cp (hl)			;7442
	ret z			;7443
	inc hl			;7444
	cp (hl)			;7445
	ret z			;7446
	ld de,00020h		;7447
	add hl,de			;744a
	res 2,h		;744b
	cp (hl)			;744d
	ret z			;744e
	dec hl			;744f
	cp (hl)			;7450
	ret			;7451
L_7452:
	call L_74AE		;7452
	ret nz			;7455
	push hl			;7456
	pop ix		;7457
	ld (ix+040h),b		;7459
	jp L_7375		;745c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x745f..0x7470  (17 bytes)
DATA_745F:
	defb 0f5h,0d5h,0cdh,061h,073h,0d1h,0f1h,0ddh,072h,005h,0ddh,073h,003h,0ddh,077h,014h	; 745f  ...as...r..s..w.
	defb 0c9h	; 746f

; ======================================================================
; CODIGO 0x7470..0x750c  (156 bytes)
; ======================================================================


L_7470:
	ld bc,(0c302h)		;7470
	ld hl,0ffdfh		;7474
	add hl,bc			;7477
	call 08884h		;7478
	ld b,h			;747b
	ld c,l			;747c
	ld a,022h		;747d
L_747F:
	or a			;747f
	ld hl,000bfh		;7480
	sbc hl,bc		;7483
	jr nc,L_748D		;7485
	ld hl,0ff40h		;7487
	add hl,bc			;748a
	ld b,h			;748b
	ld c,l			;748c
L_748D:
	push bc			;748d
	push af			;748e
	ld hl,(0cb02h)		;748f
	call L_7323		;7492
	call L_75A9		;7495
	pop af			;7498
	pop bc			;7499
	inc bc			;749a
	dec a			;749b
	jr nz,L_747F		;749c
	ret			;749e
L_749F:
	ld hl,0cc00h		;749f
	ld de,00010h		;74a2
	ld b,010h		;74a5
	xor a			;74a7
L_74A8:
	cp (hl)			;74a8
	ret z			;74a9
	add hl,de			;74aa
	djnz L_74A8		;74ab
	ret			;74ad
L_74AE:
	ld hl,0d300h		;74ae
	ld b,002h		;74b1
	jr L_74BA		;74b3
L_74B5:
	ld b,006h		;74b5
	ld hl,0d000h		;74b7
L_74BA:
	ld de,00080h		;74ba
	xor a			;74bd
L_74BE:
	cp (hl)			;74be
	ret z			;74bf
	add hl,de			;74c0
	djnz L_74BE		;74c1
	ret			;74c3
L_74C4:
	call L_74D3		;74c4
	call L_74E9		;74c7
	call L_7470		;74ca
	ld hl,0cb00h		;74cd
	ld (hl),000h		;74d0
	ret			;74d2
L_74D3:
	ld a,009h		;74d3
	call 05434h		;74d5
	ld hl,0a130h		;74d8
	ld a,(0c480h)		;74db
	call 04878h		;74de
	ld (0cb02h),hl		;74e1
	ld a,003h		;74e4
	jp 05434h		;74e6
L_74E9:
	xor a			;74e9
	ld (0cb00h),a		;74ea
	ld hl,0d000h		;74ed
	ld de,00080h		;74f0
	ld b,008h		;74f3
	call L_6152		;74f5
	ld hl,0cc00h		;74f8
	ld de,00010h		;74fb
	ld b,010h		;74fe
	call L_6152		;7500
	ld hl,0cb80h		;7503
	ld bc,00017h		;7506
	jp 05de9h		;7509

; ----------------------------------------------------------------------
; DATOS sin identificar  0x750c..0x7531  (37 bytes)
DATA_750C:
	defb 021h,08ch,0c4h,0cdh,01eh,075h,0cdh,01eh,075h,021h,08ch,0c4h,001h,005h,000h,0c3h	; 750c  !....u..u!......
	defb 0e9h,05dh,03eh,002h,032h,004h,0cbh,07eh,0b7h,0c8h,023h,05eh,023h,056h,023h,0e5h	; 751c  .]>.2..~..#^#V#.
	defb 0cdh,05fh,074h,0e1h,0c9h	; 752c

; ======================================================================
; CODIGO 0x7531..0x756a  (57 bytes)
; ======================================================================


L_7531:
	ld a,d			;7531
	and 001h		;7532
	cp b			;7534
	ret nz			;7535
	ld a,e			;7536
	cp c			;7537
	ret			;7538
L_7539:
	ld hl,0d000h		;7539
	ld b,008h		;753c
L_753E:
	ld a,(hl)			;753e
	or a			;753f
	jr z,L_7549		;7540
	push bc			;7542
	push hl			;7543
	call L_7550		;7544
	pop hl			;7547
	pop bc			;7548
L_7549:
	ld de,00080h		;7549
	add hl,de			;754c
	djnz L_753E		;754d
	ret			;754f
L_7550:
	push hl			;7550
	pop ix		;7551
	ld (ix+040h),b		;7553
	ex af,af'			;7556
	ld a,(0c388h)		;7557
	inc l			;755a
	inc l			;755b
	inc l			;755c
	add a,(hl)			;755d
	ld (hl),a			;755e
	sub 0f0h		;755f
	cp 004h		;7561
	jr c,$+112		;7563
	ex af,af'			;7565
	dec a			;7566
	call 040aeh		;7567

; ----------------------------------------------------------------------
; DATOS sin identificar  0x756a..0x75a8  (62 bytes)
DATA_756A:
	defb 01dh,080h,039h,080h,027h,080h,0a9h,080h,0f3h,080h,008h,0bdh,0a8h,075h,0aah,097h	; 756a  ..9.'........u..
	defb 070h,0b2h,025h,099h,034h,099h,0fdh,095h,0fdh,095h,0fdh,095h,077h,095h,025h,099h	; 757a  p.%.4.......w.%.
	defb 0a8h,075h,0a8h,075h,0a8h,075h,0a8h,075h,0a8h,075h,0a8h,075h,0a8h,075h,0a8h,075h	; 758a  .u.u.u.u.u.u.u.u
	defb 0a8h,075h,0a8h,075h,0a8h,075h,0a8h,075h,0a8h,075h,0a8h,075h,0a8h,075h	; 759a  .u.u.u.u.u.u.u

; ======================================================================
; CODIGO 0x75a8..0x75f3  (75 bytes)
; ======================================================================


L_75A8:
	ret			;75a8
L_75A9:
	ld hl,0d000h		;75a9
	ld b,008h		;75ac
L_75AE:
	ld a,(hl)			;75ae
	or a			;75af
	jr z,L_75B9		;75b0
	push hl			;75b2
	push bc			;75b3
	call L_75C0		;75b4
	pop bc			;75b7
	pop hl			;75b8
L_75B9:
	ld de,00080h		;75b9
	add hl,de			;75bc
	djnz L_75AE		;75bd
	ret			;75bf
L_75C0:
	ld a,008h		;75c0
	inc l			;75c2
	inc l			;75c3
	inc l			;75c4
	add a,(hl)			;75c5
	ld (hl),a			;75c6
	sub 0f0h		;75c7
	cp 009h		;75c9
	jr c,L_75D3		;75cb
	ret			;75cd
L_75CE:
	push ix		;75ce
	pop hl			;75d0
	jr L_75D6		;75d1
L_75D3:
	dec l			;75d3
	dec l			;75d4
	dec l			;75d5
L_75D6:
	ld (hl),000h		;75d6
	set 5,l		;75d8
	ld de,00008h		;75da
	ld b,004h		;75dd
L_75DF:
	ld a,(hl)			;75df
	ret z			;75e0
	and 040h		;75e1
	jr z,L_75EF		;75e3
	push bc			;75e5
	push hl			;75e6
	call L_75FB		;75e7
	pop hl			;75ea
	pop bc			;75eb
	ld de,00004h		;75ec
L_75EF:
	add hl,de			;75ef
	djnz L_75DF		;75f0
	ret			;75f2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x75f3..0x75fb  (8 bytes)
DATA_75F3:
	defb 03ah,044h,0cbh,03dh,032h,044h,0cbh,0c9h	; 75f3  :D.=2D..

; ======================================================================
; CODIGO 0x75fb..0x764b  (80 bytes)
; ======================================================================


L_75FB:
	xor 047h		;75fb
	and 00fh		;75fd
	ret nz			;75ff
	jp L_76C7		;7600
L_7603:
	ld hl,0d000h		;7603
	ld b,008h		;7606
L_7608:
	ld a,(hl)			;7608
	or a			;7609
	jr z,L_7613		;760a
	push hl			;760c
	push bc			;760d
	call L_761A		;760e
	pop bc			;7611
	pop hl			;7612
L_7613:
	ld de,00080h		;7613
	add hl,de			;7616
	djnz L_7608		;7617
	ret			;7619
L_761A:
	push hl			;761a
	pop ix		;761b
	inc l			;761d
	inc l			;761e
	inc l			;761f
	ld e,(hl)			;7620
	inc l			;7621
	inc l			;7622
	ld d,(hl)			;7623
	ld (0e900h),de		;7624
	ld de,0001bh		;7628
	ld b,004h		;762b
L_762D:
	add hl,de			;762d
	ld a,(hl)			;762e
	or a			;762f
	ret z			;7630
	jp p,L_763B		;7631
	push hl			;7634
	push bc			;7635
	call L_7641		;7636
	pop bc			;7639
	pop hl			;763a
L_763B:
	ld de,00008h		;763b
	djnz L_762D		;763e
	ret			;7640
L_7641:
	and 00fh		;7641
	ret z			;7643
	ld (hl),a			;7644
	inc hl			;7645
	dec a			;7646
	exx			;7647
	call 040aeh		;7648

; ----------------------------------------------------------------------
; DATOS sin identificar  0x764b..0x7663  (24 bytes)
DATA_764B:
	defb 063h,076h,064h,076h,092h,076h,09bh,076h,0a4h,076h,0a4h,076h,0a6h,076h,092h,076h	; 764b  cvdv.v.v.v.v.v.v
	defb 0c6h,076h,0c7h,076h,0d2h,076h,0ddh,076h	; 765b  .v.v.v.v

; ======================================================================
; CODIGO 0x7663..0x76c8  (101 bytes)
; ======================================================================


L_7663:
	ret			;7663
L_7664:
	exx			;7664
	push hl			;7665
	exx			;7666
	call L_7709		;7667
	exx			;766a
	pop hl			;766b
	push hl			;766c
	exx			;766d
	push hl			;766e
	push de			;766f
	exx			;7670
	call L_773B		;7671
	ld a,004h		;7674
	ex de,hl			;7676
	pop de			;7677
	push de			;7678
	push hl			;7679
	call 05252h		;767a
	pop bc			;767d
	pop de			;767e
	pop hl			;767f
	ld a,l			;7680
	pop hl			;7681
	dec l			;7682
	ld (hl),047h		;7683
	inc l			;7685
	ld (hl),c			;7686
	inc l			;7687
	ld (hl),b			;7688
	inc l			;7689
	inc l			;768a
	inc l			;768b
	ld (hl),e			;768c
	inc l			;768d
	ld (hl),d			;768e
	inc l			;768f
	ld (hl),a			;7690
	ret			;7691
L_7692:
	exx			;7692
	call L_773B		;7693
	ld a,001h		;7696
	jp 05226h		;7698
L_769B:
	exx			;769b
	call L_773B		;769c
	ld a,048h		;769f
	jp 051f2h		;76a1
L_76A4:
	jr $+86		;76a4
L_76A6:
	exx			;76a6
	ld e,(hl)			;76a7
	inc l			;76a8
	ld d,(hl)			;76a9
	inc l			;76aa
	ld c,(hl)			;76ab
	inc l			;76ac
	ld b,(hl)			;76ad
	inc l			;76ae
	push de			;76af
	ld e,(hl)			;76b0
	inc l			;76b1
	ld d,(hl)			;76b2
	inc l			;76b3
	ld a,(hl)			;76b4
	ex de,hl			;76b5
	pop de			;76b6
	push af			;76b7
	ld a,001h		;76b8
	call 05226h		;76ba
	pop af			;76bd
	or 080h		;76be
	ld l,a			;76c0
	ld h,0cbh		;76c1
	ld (hl),000h		;76c3
	ret			;76c5
L_76C6:
	ret			;76c6
L_76C7:
	ret			;76c7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x76c8..0x76d2  (10 bytes)
DATA_76C8:
	defb 07dh,0c6h,007h,06fh,06eh,026h,0cbh,036h,000h,0c9h	; 76c8  }..on&.6..

; ======================================================================
; CODIGO 0x76d2..0x772e  (92 bytes)
; ======================================================================


L_76D2:
	exx			;76d2
	call L_773B		;76d3
	ex de,hl			;76d6
	ld a,d			;76d7
	ld d,000h		;76d8
	jp 0527eh		;76da
L_76DD:
	exx			;76dd
	call L_773B		;76de
	ld a,(0c385h)		;76e1
	neg		;76e4
	add a,e			;76e6
	ld e,a			;76e7
	ld a,b			;76e8
	rrca			;76e9
	rrca			;76ea
	rrca			;76eb
	and 01fh		;76ec
	ld b,a			;76ee
	ld a,c			;76ef
	rrca			;76f0
	rrca			;76f1
	rrca			;76f2
	and 01fh		;76f3
	ld c,a			;76f5
	ld a,l			;76f6
	jp L_631C		;76f7
L_76FA:
	ld de,00004h		;76fa
L_76FD:
	cp (hl)			;76fd
	ret nc			;76fe
	add hl,de			;76ff
	djnz L_76FD		;7700
	ret			;7702
L_7703:
	call L_771E		;7703
	ret nz			;7706
	jr L_770D		;7707
L_7709:
	ld a,(ix+040h)		;7709
	ld l,a			;770c
L_770D:
	ld a,l			;770d
	add a,a			;770e
	add a,a			;770f
	add a,a			;7710
	ld c,a			;7711
	and 0f0h		;7712
	ld d,a			;7714
	ld a,c			;7715
	and 008h		;7716
	add a,a			;7718
	add a,0c0h		;7719
	ld e,a			;771b
	xor a			;771c
	ret			;771d
L_771E:
	ld hl,0cb97h		;771e
	ld b,018h		;7721
	xor a			;7723
L_7724:
	cp (hl)			;7724
	jr z,L_772B		;7725
	dec hl			;7727
	djnz L_7724		;7728
	ret			;772a
L_772B:
	ld (hl),001h		;772b
	ret			;772d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x772e..0x773b  (13 bytes)
DATA_772E:
	defb 006h,020h,071h,023h,010h,0fch,0c9h,0beh,0d8h,019h,010h,0fbh,0c9h	; 772e  . q#.........

; ======================================================================
; CODIGO 0x773b..0x78cf  (404 bytes)
; ======================================================================


L_773B:
	ld a,(0e900h)		;773b
	add a,(hl)			;773e
	ld e,a			;773f
	ld a,(0c385h)		;7740
	add a,e			;7743
	ld e,a			;7744
	inc l			;7745
	ld a,(0e901h)		;7746
	add a,(hl)			;7749
	ld d,a			;774a
	inc l			;774b
	ld c,(hl)			;774c
	inc l			;774d
	ld b,(hl)			;774e
	inc l			;774f
	push de			;7750
	ld e,(hl)			;7751
	inc l			;7752
	ld d,(hl)			;7753
	ex de,hl			;7754
	pop de			;7755
	ret			;7756
L_7757:
	ld ix,0dc00h		;7757
	ld b,008h		;775b
L_775D:
	ld a,(ix+000h)		;775d
	and a			;7760
	jp z,L_77FB		;7761
	push bc			;7764
	bit 0,(ix+00bh)		;7765
	jr z,L_7791		;7769
	ld e,(ix+00ch)		;776b
	ld d,(ix+00dh)		;776e
	ld l,(ix+007h)		;7771
	ld h,(ix+008h)		;7774
	add hl,de			;7777
	ld (ix+007h),l		;7778
	ld (ix+008h),h		;777b
	ld e,(ix+00eh)		;777e
	ld d,(ix+00fh)		;7781
	ld l,(ix+009h)		;7784
	ld h,(ix+00ah)		;7787
	add hl,de			;778a
	ld (ix+009h),l		;778b
	ld (ix+00ah),h		;778e
L_7791:
	bit 0,(ix+006h)		;7791
	jr z,L_77BD		;7795
	ld e,(ix+007h)		;7797
	ld d,(ix+008h)		;779a
	ld l,(ix+002h)		;779d
	ld h,(ix+003h)		;77a0
	add hl,de			;77a3
	ld (ix+002h),l		;77a4
	ld (ix+003h),h		;77a7
	ld e,(ix+009h)		;77aa
	ld d,(ix+00ah)		;77ad
	ld l,(ix+004h)		;77b0
	ld h,(ix+005h)		;77b3
	add hl,de			;77b6
	ld (ix+004h),l		;77b7
	ld (ix+005h),h		;77ba
L_77BD:
	bit 0,(ix+011h)		;77bd
	jr nz,L_77CE		;77c1
	ld e,(ix+003h)		;77c3
	ld d,(ix+005h)		;77c6
	call 04906h		;77c9
	jr c,L_77E0		;77cc
L_77CE:
	ld a,(ix+003h)		;77ce
	cp 0dfh		;77d1
	jr nc,L_77E0		;77d3
	ld a,(ix+005h)		;77d5
	cp 0f8h		;77d8
	jr nc,L_77E0		;77da
	cp 007h		;77dc
	jr nc,L_77FA		;77de
L_77E0:
	xor a			;77e0
	ld (ix+000h),a		;77e1
	push ix		;77e4
	pop hl			;77e6
	set 5,l		;77e7
	ld b,(hl)			;77e9
	inc l			;77ea
L_77EB:
	ld a,(hl)			;77eb
	ld de,0e628h		;77ec
	add a,e			;77ef
	ld e,a			;77f0
	ld a,0e0h		;77f1
	ld (de),a			;77f3
	ld a,l			;77f4
	add a,005h		;77f5
	ld l,a			;77f7
	djnz L_77EB		;77f8
L_77FA:
	pop bc			;77fa
L_77FB:
	ld de,00080h		;77fb
	add ix,de		;77fe
	dec b			;7800
	jp nz,L_775D		;7801
	ret			;7804
L_7805:
	xor a			;7805
	ld (0d41ah),a		;7806
L_7809:
	ld c,(ix+003h)		;7809
	ld b,(ix+005h)		;780c
	ld a,(ix+000h)		;780f
	ld (0e80fh),a		;7812
	push af			;7815
	xor a			;7816
	jr L_781A		;7817
L_7819:
	push af			;7819
L_781A:
	ld (0e800h),a		;781a
	pop af			;781d
	ld (0e801h),bc		;781e
	ld (0e805h),hl		;7822
	ld (0e807h),de		;7825
	ld h,a			;7829
	ld a,(0d41ah)		;782a
	and a			;782d
	jr nz,L_783F		;782e
	ld d,b			;7830
	ld e,c			;7831
	call 09893h		;7832
	ld a,d			;7835
	cp 030h		;7836
	jp nc,L_783F		;7838
	ld a,e			;783b
	cp 030h		;783c
	ret c			;783e
L_783F:
	push ix		;783f
	call L_7847		;7841
	pop ix		;7844
	ret			;7846
L_7847:
	ld a,(0e800h)		;7847
	and a			;784a
	jr nz,L_7858		;784b
	ld a,h			;784d
	ld hl,07911h		;784e
	call 040a4h		;7851
	ld a,(hl)			;7854
	ld (0e800h),a		;7855
L_7858:
	ld hl,0dc00h		;7858
	ld de,00080h		;785b
	ld b,008h		;785e
	xor a			;7860
L_7861:
	cp (hl)			;7861
	jr z,L_7868		;7862
	add hl,de			;7864
	djnz L_7861		;7865
	ret			;7867
L_7868:
	push hl			;7868
	pop ix		;7869
	ld (0e803h),hl		;786b
	ld de,05000h		;786e
	ld hl,0e678h		;7871
	ld a,(0c4a9h)		;7874
	ld b,a			;7877
L_7878:
	ld a,(hl)			;7878
	cp 0e0h		;7879
	jr z,L_7888		;787b
	dec d			;787d
	dec d			;787e
	dec d			;787f
	dec d			;7880
	dec l			;7881
	dec l			;7882
	dec l			;7883
	dec l			;7884
	djnz L_7878		;7885
	ret			;7887
L_7888:
	ld (hl),0e1h		;7888
	call L_6F12		;788a
	ld hl,(0e803h)		;788d
	ld a,(0e800h)		;7890
	ld (hl),a			;7893
	xor a			;7894
	inc l			;7895
	ld (hl),a			;7896
	ld de,(0e801h)		;7897
	inc l			;789b
	ld (hl),a			;789c
	inc l			;789d
	ld (hl),e			;789e
	inc l			;789f
	ld (hl),a			;78a0
	inc l			;78a1
	ld (hl),d			;78a2
	inc l			;78a3
	ld (hl),001h		;78a4
	inc l			;78a6
	ld de,(0e805h)		;78a7
	ld (hl),e			;78ab
	inc l			;78ac
	ld (hl),d			;78ad
	ld de,(0e807h)		;78ae
	inc l			;78b2
	ld (hl),e			;78b3
	inc l			;78b4
	ld (hl),d			;78b5
	ld (ix+00bh),a		;78b6
	ld (ix+010h),03ch		;78b9
	ld (ix+011h),a		;78bd
	ld (ix+020h),001h		;78c0
	ld (ix+025h),00ah		;78c4
	ld a,(ix+000h)		;78c8
	dec a			;78cb
	call 040aeh		;78cc

; ----------------------------------------------------------------------
; DATOS sin identificar  0x78cf..0x78d7  (8 bytes)
DATA_78CF:
	defb 0d7h,078h,0d8h,078h,0e2h,078h,0edh,078h	; 78cf  .x.x.x.x

; ======================================================================
; CODIGO 0x78d7..0x7907  (48 bytes)
; ======================================================================


L_78D7:
	ret			;78d7
L_78D8:
	call L_7948		;78d8
	call L_7933		;78db
	ex de,hl			;78de
	jp L_792C		;78df
L_78E2:
	ld a,(0c480h)		;78e2
	cp 013h		;78e5
	ret nz			;78e7
	ld (ix+011h),001h		;78e8
	ret			;78ec
L_78ED:
	ld hl,07907h		;78ed
	call L_7073		;78f0
	call L_70D6		;78f3
	jr nc,L_78FF		;78f6
	neg		;78f8
	ex af,af'			;78fa
	call L_70A1		;78fb
	ex af,af'			;78fe
L_78FF:
	cp 010h		;78ff
	ret nc			;7901
	ld (ix+00bh),000h		;7902
	ret			;7906

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7907..0x792c  (37 bytes)
DATA_7907:
	defb 000h,005h,000h,000h,001h,000h,000h,010h,000h,03dh,000h,002h,002h,002h,002h,002h	; 7907  .........=......
	defb 001h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h	; 7917  ................
	defb 002h,002h,004h,004h,004h	; 7927

; ======================================================================
; CODIGO 0x792c..0x793a  (14 bytes)
; ======================================================================


L_792C:
	ld (ix+007h),e		;792c
	ld (ix+008h),d		;792f
	ret			;7932
L_7933:
	ld (ix+009h),e		;7933
	ld (ix+00ah),d		;7936
	ret			;7939

; ----------------------------------------------------------------------
; DATOS sin identificar  0x793a..0x7948  (14 bytes)
DATA_793A:
	defb 0ddh,073h,00ch,0ddh,072h,00dh,0c9h,0ddh,073h,00eh,0ddh,072h,00fh,0c9h	; 793a  .s..r...s..r..

; ======================================================================
; CODIGO 0x7948..0x7a11  (201 bytes)
; ======================================================================


L_7948:
	ld a,058h		;7948
L_794A:
	ld e,(ix+003h)		;794a
	ld d,(ix+005h)		;794d
	cp 0f0h		;7950
	jr nc,L_7958		;7952
	ld hl,0c4aah		;7954
	add a,(hl)			;7957
L_7958:
	ld (0e800h),a		;7958
	call L_7997		;795b
L_795E:
	ld a,(0e808h)		;795e
	ld e,a			;7961
	ld d,000h		;7962
	ld a,e			;7964
	sub 03fh		;7965
	neg		;7967
	ld hl,07a51h		;7969
	push hl			;796c
	add hl,de			;796d
	ld c,(hl)			;796e
	pop hl			;796f
	ld e,a			;7970
	add hl,de			;7971
	ld a,(hl)			;7972
	ld (0e807h),a		;7973
	ld e,c			;7976
	call L_79F3		;7977
	ld a,(0e801h)		;797a
	and a			;797d
	call nz,L_79EB		;797e
	ld (0e803h),de		;7981
	ld a,(0e807h)		;7985
	ld e,a			;7988
	call L_79F3		;7989
	ld a,(0e802h)		;798c
	and a			;798f
	call nz,L_79EB		;7990
	ld hl,(0e803h)		;7993
	ret			;7996
L_7997:
	ld a,(0c80bh)		;7997
	ld (0e80ah),a		;799a
	ld a,(0c809h)		;799d
	ld (0e80bh),a		;79a0
L_79A3:
	ld hl,0e801h		;79a3
	ld (hl),000h		;79a6
	ld a,(0e80ah)		;79a8
	sub e			;79ab
	jr nc,L_79B1		;79ac
	neg		;79ae
	inc (hl)			;79b0
L_79B1:
	inc hl			;79b1
	ld (hl),000h		;79b2
	rra			;79b4
	rra			;79b5
	and 038h		;79b6
	ld e,a			;79b8
	ld a,(0e80bh)		;79b9
	sub d			;79bc
	jr nc,L_79C2		;79bd
	neg		;79bf
	inc (hl)			;79c1
L_79C2:
	rra			;79c2
	rra			;79c3
	rra			;79c4
	rra			;79c5
	rra			;79c6
	and 007h		;79c7
	add a,e			;79c9
	ld hl,07a11h		;79ca
	call 040a4h		;79cd
	ld a,(hl)			;79d0
	ld (0e808h),a		;79d1
	ld c,a			;79d4
	ld hl,(0e801h)		;79d5
	ld a,h			;79d8
	ld b,000h		;79d9
	and a			;79db
	jr z,L_79E0		;79dc
	ld b,080h		;79de
L_79E0:
	cp l			;79e0
	ld a,c			;79e1
	jr z,L_79E6		;79e2
	neg		;79e4
L_79E6:
	add a,b			;79e6
	ld (0e809h),a		;79e7
	ret			;79ea
L_79EB:
	ld a,d			;79eb
	cpl			;79ec
	ld d,a			;79ed
	ld a,e			;79ee
	cpl			;79ef
	ld e,a			;79f0
	inc de			;79f1
	ret			;79f2
L_79F3:
	ld a,(0e800h)		;79f3
	ld h,a			;79f6
	call L_7A05		;79f7
	xor a			;79fa
	add hl,hl			;79fb
	adc a,a			;79fc
	add hl,hl			;79fd
	adc a,a			;79fe
	add hl,hl			;79ff
	adc a,a			;7a00
	ld l,h			;7a01
	ld h,a			;7a02
	ex de,hl			;7a03
	ret			;7a04
L_7A05:
	ld b,008h		;7a05
	ld l,000h		;7a07
	ld d,l			;7a09
L_7A0A:
	add hl,hl			;7a0a
	jr nc,L_7A0E		;7a0b
	add hl,de			;7a0d
L_7A0E:
	djnz L_7A0A		;7a0e
	ret			;7a10

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7a11..0x7a91  (128 bytes)
DATA_7A11:
	defb 020h,008h,004h,003h,002h,002h,001h,001h,038h,020h,015h,00fh,00ch,009h,008h,007h	; 7a11   .......8 ......
	defb 03bh,02bh,020h,019h,014h,010h,00eh,00ch,03dh,031h,027h,020h,01ah,016h,013h,011h	; 7a21  ;+ .....=1' ....
	defb 03dh,034h,02ch,025h,020h,01ch,018h,015h,03eh,036h,02fh,029h,024h,020h,01ch,019h	; 7a31  =4,% ...>6/)$ ..
	defb 03eh,038h,032h,02ch,028h,023h,020h,01dh,03eh,039h,034h,02fh,02ah,026h,023h,020h	; 7a41  >82,(# .>94/*&#
	defb 000h,006h,00ch,012h,019h,01fh,026h,02ch,032h,038h,03eh,044h,04ah,050h,056h,05ch	; 7a51  ......&,28>DJPV\
	defb 062h,068h,06dh,073h,079h,07eh,084h,089h,08eh,093h,099h,09eh,0a2h,0a7h,0ach,0b1h	; 7a61  bhmsy~..........
	defb 0b5h,0b9h,0beh,0c2h,0c6h,0cah,0ceh,0d1h,0d5h,0d8h,0dch,0dfh,0e2h,0e5h,0e7h,0eah	; 7a71  ................
	defb 0edh,0efh,0f1h,0f3h,0f5h,0f7h,0f8h,0fah,0fbh,0fch,0fdh,0feh,0feh,0ffh,0ffh,0ffh	; 7a81  ................

; ======================================================================
; CODIGO 0x7a91..0x7aa5  (20 bytes)
; ======================================================================


L_7A91:
	ld a,(0c480h)		;7a91
	add a,a			;7a94
	ld hl,07aa5h		;7a95
	call 040a4h		;7a98
	ld a,(hl)			;7a9b
	ld (0c4a8h),a		;7a9c
	inc hl			;7a9f
	ld a,(hl)			;7aa0
	ld (0c4a9h),a		;7aa1
	ret			;7aa4

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7aa5..0x7ad5  (48 bytes)
DATA_7AA5:
	defb 010h,008h,010h,008h,010h,008h,010h,008h,010h,008h,010h,008h,010h,008h,010h,008h	; 7aa5  ................
	defb 010h,008h,010h,008h,010h,008h,010h,008h,010h,008h,010h,008h,010h,008h,010h,008h	; 7ab5  ................
	defb 010h,008h,010h,008h,014h,001h,00eh,008h,014h,001h,014h,001h,014h,001h,014h,001h	; 7ac5  ................

; ======================================================================
; CODIGO 0x7ad5..0x7b99  (196 bytes)
; ======================================================================


L_7AD5:
	xor a			;7ad5
	ld (0d412h),a		;7ad6
	ld (0d400h),a		;7ad9
	ld (0d402h),a		;7adc
	ld (0d454h),a		;7adf
	call L_7AFA		;7ae2
	call L_7B03		;7ae5
	call L_7B0C		;7ae8
	jr $-90		;7aeb
L_7AED:
	ld a,008h		;7aed
	ld hl,0d413h		;7aef
	ld (hl),a			;7af2
	inc hl			;7af3
	ld (hl),a			;7af4
	xor a			;7af5
	ld (0d439h),a		;7af6
	ret			;7af9
L_7AFA:
	ld hl,0d500h		;7afa
	ld bc,0009fh		;7afd
	jp 05de9h		;7b00
L_7B03:
	ld hl,0d700h		;7b03
	ld bc,004ffh		;7b06
	jp 05de9h		;7b09
L_7B0C:
	ld hl,0dc00h		;7b0c
	ld bc,003ffh		;7b0f
	jp 05de9h		;7b12
L_7B15:
	ld hl,0cc00h		;7b15
	ld de,00010h		;7b18
	ld b,010h		;7b1b
L_7B1D:
	ld a,(hl)			;7b1d
	or a			;7b1e
	jr z,L_7B2F		;7b1f
	ld c,a			;7b21
	push hl			;7b22
	push bc			;7b23
	call L_7BDE		;7b24
	call c,L_7B33		;7b27
	pop bc			;7b2a
	pop hl			;7b2b
	ld de,00010h		;7b2c
L_7B2F:
	add hl,de			;7b2f
	djnz L_7B1D		;7b30
	ret			;7b32
L_7B33:
	ld a,c			;7b33
	dec a			;7b34
	dec a			;7b35
	jr z,L_7B60		;7b36
	dec a			;7b38
	jp z,L_7BB3		;7b39
	jp p,L_7BB4		;7b3c
	push hl			;7b3f
	call L_7703		;7b40
	jp nz,L_7BDC		;7b43
	ld a,l			;7b46
	pop hl			;7b47
	ld (hl),002h		;7b48
	push de			;7b4a
	set 2,l		;7b4b
	ld (hl),a			;7b4d
	dec l			;7b4e
	ld d,(hl)			;7b4f
	dec l			;7b50
	ld a,(0c385h)		;7b51
	add a,(hl)			;7b54
	ld e,a			;7b55
	ex de,hl			;7b56
	pop de			;7b57
	ld a,004h		;7b58
	ld bc,01010h		;7b5a
	jp 05252h		;7b5d
L_7B60:
	ld (hl),003h		;7b60
	inc l			;7b62
	ld a,(hl)			;7b63
	cp 010h		;7b64
	jr nc,L_7B7F		;7b66
L_7B68:
	add a,01fh		;7b68
L_7B6A:
	call 0819bh		;7b6a
	push de			;7b6d
	inc l			;7b6e
	ld a,(0c385h)		;7b6f
	add a,(hl)			;7b72
	inc l			;7b73
	ld d,(hl)			;7b74
	ld e,a			;7b75
	pop hl			;7b76
	ld bc,01010h		;7b77
	ld a,048h		;7b7a
	jp 051f2h		;7b7c
L_7B7F:
	push hl			;7b7f
	push af			;7b80
	cp 024h		;7b81
	ld a,00ch		;7b83
	jr nc,L_7B89		;7b85
	ld a,006h		;7b87
L_7B89:
	call L_7B68		;7b89
	pop af			;7b8c
	pop hl			;7b8d
	sub 010h		;7b8e
	ld de,07b99h		;7b90
	call 040a9h		;7b93
	ld a,(de)			;7b96
	jr L_7B6A		;7b97

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7b99..0x7bb3  (26 bytes)
DATA_7B99:
	defb 008h,009h,00ah,00bh,00ch,00dh,010h,011h,012h,013h,014h,015h,016h,017h,018h,019h	; 7b99  ................
	defb 01ah,01bh,000h,000h,016h,017h,018h,019h,01ah,000h	; 7ba9  ..........

; ======================================================================
; CODIGO 0x7bb3..0x7d70  (445 bytes)
; ======================================================================


L_7BB3:
	ret			;7bb3
L_7BB4:
	ld (hl),000h		;7bb4
	inc l			;7bb6
	inc l			;7bb7
	ld a,(0c385h)		;7bb8
	add a,(hl)			;7bbb
	ld e,a			;7bbc
	inc l			;7bbd
	ld d,(hl)			;7bbe
	inc l			;7bbf
	ld l,(hl)			;7bc0
	ld h,0cbh		;7bc1
	ld (hl),000h		;7bc3
	ld a,l			;7bc5
	add a,a			;7bc6
	add a,a			;7bc7
	add a,a			;7bc8
	ld c,a			;7bc9
	and 0f0h		;7bca
	ld h,a			;7bcc
	ld a,c			;7bcd
	and 008h		;7bce
	add a,a			;7bd0
	add a,0c0h		;7bd1
	ld l,a			;7bd3
	ld a,001h		;7bd4
	ld bc,01010h		;7bd6
	jp 05226h		;7bd9
L_7BDC:
	pop hl			;7bdc
	ret			;7bdd
L_7BDE:
	ld a,(0c388h)		;7bde
	or a			;7be1
	scf			;7be2
	ret z			;7be3
	inc l			;7be4
	inc l			;7be5
	ld a,(hl)			;7be6
	inc a			;7be7
	ld (hl),a			;7be8
	sub 0d0h		;7be9
	cp 008h		;7beb
	dec l			;7bed
	dec l			;7bee
	ccf			;7bef
	ret c			;7bf0
	ld (hl),000h		;7bf1
	set 2,l		;7bf3
	ld e,(hl)			;7bf5
	ld d,0cbh		;7bf6
	xor a			;7bf8
	ld (de),a			;7bf9
	ret			;7bfa
L_7BFB:
	ld a,003h		;7bfb
	ret			;7bfd
L_7BFE:
	ld hl,0ea00h		;7bfe
	ld de,0ea01h		;7c01
	ld bc,0001bh		;7c04
	ldir		;7c07
	ld a,(0c809h)		;7c09
	ld d,a			;7c0c
	ld a,(0c80bh)		;7c0d
	ld e,a			;7c10
	ld hl,0ea00h		;7c11
	ld (hl),000h		;7c14
	inc l			;7c16
	add a,0fch		;7c17
	ld (hl),a			;7c19
	inc l			;7c1a
	ld (hl),d			;7c1b
	inc l			;7c1c
	ld a,0f9h		;7c1d
	add a,e			;7c1f
	ld e,a			;7c20
	ld a,002h		;7c21
	add a,d			;7c23
	ld (hl),000h		;7c24
	inc l			;7c26
	ld (hl),e			;7c27
	inc l			;7c28
	ld (hl),a			;7c29
	inc l			;7c2a
	ld a,0feh		;7c2b
	add a,d			;7c2d
	ld (hl),000h		;7c2e
	inc l			;7c30
	ld (hl),e			;7c31
	inc l			;7c32
	ld (hl),a			;7c33
	ret			;7c34
L_7C35:
	ld hl,0ea09h		;7c35
	exx			;7c38
	ld hl,0ca00h		;7c39
	ld b,006h		;7c3c
L_7C3E:
	ld a,(hl)			;7c3e
	or a			;7c3f
	jr z,L_7C54		;7c40
	push hl			;7c42
	pop ix		;7c43
	exx			;7c45
	ld (hl),000h		;7c46
	inc l			;7c48
	ld a,(ix+003h)		;7c49
	ld (hl),a			;7c4c
	inc l			;7c4d
	ld a,(ix+005h)		;7c4e
	ld (hl),a			;7c51
	inc l			;7c52
	exx			;7c53
L_7C54:
	ld de,00020h		;7c54
	add hl,de			;7c57
	djnz L_7C3E		;7c58
	exx			;7c5a
	ld (hl),0ffh		;7c5b
	exx			;7c5d
	ret			;7c5e
L_7C5F:
	ld hl,0d000h		;7c5f
	ld b,008h		;7c62
L_7C64:
	ld a,(hl)			;7c64
	or a			;7c65
	jr z,L_7C6F		;7c66
	push hl			;7c68
	push bc			;7c69
	call L_7C76		;7c6a
	pop bc			;7c6d
	pop hl			;7c6e
L_7C6F:
	ld de,00080h		;7c6f
	add hl,de			;7c72
	djnz L_7C64		;7c73
	ret			;7c75
L_7C76:
	inc l			;7c76
	inc l			;7c77
	inc l			;7c78
	ld a,(hl)			;7c79
	ld e,a			;7c7a
	cp 0f0h		;7c7b
	ret nc			;7c7d
	inc l			;7c7e
	inc l			;7c7f
	ld d,(hl)			;7c80
	push de			;7c81
	pop iy		;7c82
	ld de,0004bh		;7c84
	add hl,de			;7c87
	ld a,(hl)			;7c88
	or a			;7c89
	ret z			;7c8a
	rlca			;7c8b
	jp c,L_7CC3		;7c8c
	rlca			;7c8f
	jp c,L_7CBF		;7c90
	push hl			;7c93
	call L_7CD0		;7c94
	exx			;7c97
	ld a,c			;7c98
	exx			;7c99
	or a			;7c9a
	pop hl			;7c9b
	ret z			;7c9c
	push hl			;7c9d
	call L_7D66		;7c9e
	pop hl			;7ca1
	ld de,00008h		;7ca2
	ld b,004h		;7ca5
L_7CA7:
	add hl,de			;7ca7
L_7CA8:
	ld a,(hl)			;7ca8
	or a			;7ca9
	ret z			;7caa
	push hl			;7cab
	push bc			;7cac
	call L_7CD0		;7cad
	exx			;7cb0
	ld a,c			;7cb1
	exx			;7cb2
	or a			;7cb3
	pop bc			;7cb4
	pop hl			;7cb5
	call nz,L_7D66		;7cb6
	ld de,00008h		;7cb9
	djnz L_7CA7		;7cbc
	ret			;7cbe
L_7CBF:
	ld b,005h		;7cbf
	jr L_7CA8		;7cc1
L_7CC3:
	push hl			;7cc3
	call L_7CD0		;7cc4
	pop hl			;7cc7
	exx			;7cc8
	ld a,c			;7cc9
	exx			;7cca
	or a			;7ccb
	ret z			;7ccc
	jp L_7D66		;7ccd
L_7CD0:
	exx			;7cd0
	ld c,000h		;7cd1
	exx			;7cd3
	push iy		;7cd4
	pop de			;7cd6
	inc l			;7cd7
	ld a,(hl)			;7cd8
	add a,e			;7cd9
	ld e,a			;7cda
	inc l			;7cdb
	ld a,(hl)			;7cdc
	add a,d			;7cdd
	ld d,a			;7cde
	inc l			;7cdf
	ld c,(hl)			;7ce0
	inc l			;7ce1
	ld b,(hl)			;7ce2
	inc l			;7ce3
	inc l			;7ce4
	ld a,(hl)			;7ce5
	rrca			;7ce6
	jr c,L_7D15		;7ce7
	rrca			;7ce9
	jr c,L_7D10		;7cea
	ld hl,0eaffh		;7cec
	call L_7D23		;7cef
	call L_7D23		;7cf2
	call L_7D23		;7cf5
L_7CF8:
	call L_7D23		;7cf8
	ret c			;7cfb
	call L_7D23		;7cfc
	ret c			;7cff
	call L_7D23		;7d00
	ret c			;7d03
	call L_7D23		;7d04
	ret c			;7d07
	call L_7D23		;7d08
	ret c			;7d0b
	call L_7D23		;7d0c
	ret			;7d0f
L_7D10:
	ld hl,0ea08h		;7d10
	jr L_7CF8		;7d13
L_7D15:
	rrca			;7d15
	ret c			;7d16
	ld hl,0eaffh		;7d17
	call L_7D23		;7d1a
	call L_7D23		;7d1d
	jp L_7D23		;7d20
L_7D23:
	inc l			;7d23
	ld a,(hl)			;7d24
	rlca			;7d25
	ret c			;7d26
	inc l			;7d27
	ld a,e			;7d28
	sub (hl)			;7d29
	add a,c			;7d2a
	inc l			;7d2b
	ret nc			;7d2c
	ld a,d			;7d2d
	sub (hl)			;7d2e
	add a,b			;7d2f
	ret nc			;7d30
	dec l			;7d31
	dec l			;7d32
	ld (hl),001h		;7d33
	inc l			;7d35
	inc l			;7d36
	ld a,l			;7d37
	cp 00ah		;7d38
	jr c,L_7D4C		;7d3a
	exx			;7d3c
	ld a,(0c840h)		;7d3d
	ld e,a			;7d40
	ld d,000h		;7d41
	ld hl,07d70h		;7d43
	add hl,de			;7d46
	ld a,(hl)			;7d47
	or c			;7d48
	ld c,a			;7d49
	exx			;7d4a
	ret			;7d4b
L_7D4C:
	ld a,(0c80dh)		;7d4c
	cp 002h		;7d4f
	ret nc			;7d51
	ld a,(0c858h)		;7d52
	or a			;7d55
	ret nz			;7d56
	exx			;7d57
	ld a,004h		;7d58
	or c			;7d5a
	ld c,a			;7d5b
	exx			;7d5c
	scf			;7d5d
	ret			;7d5e
L_7D5F:
	exx			;7d5f
	ld hl,0c834h		;7d60
	dec (hl)			;7d63
	exx			;7d64
	ret			;7d65
L_7D66:
	set 2,l		;7d66
	inc l			;7d68
	cp 004h		;7d69
	exx			;7d6b
	ld a,c			;7d6c
	exx			;7d6d
	ld (hl),a			;7d6e
	ret			;7d6f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7d70..0x7d77  (7 bytes)
DATA_7D70:
	defb 001h,002h,002h,002h,002h,008h,002h	; 7d70

; ======================================================================
; CODIGO 0x7d77..0x7ed7  (352 bytes)
; ======================================================================


L_7D77:
	ld hl,0ea09h		;7d77
	exx			;7d7a
	ld hl,0ca00h		;7d7b
	ld b,006h		;7d7e
L_7D80:
	ld a,(hl)			;7d80
	or a			;7d81
	jr z,L_7D8F		;7d82
	exx			;7d84
	ld a,(hl)			;7d85
	inc l			;7d86
	inc l			;7d87
	inc l			;7d88
	dec a			;7d89
	exx			;7d8a
	jr nz,L_7D8F		;7d8b
	ld (hl),0ffh		;7d8d
L_7D8F:
	ld de,00020h		;7d8f
	add hl,de			;7d92
	djnz L_7D80		;7d93
	ret			;7d95
L_7D96:
	ld hl,0d700h		;7d96
	ld b,00ah		;7d99
L_7D9B:
	ld a,(hl)			;7d9b
	or a			;7d9c
	jr z,L_7DAC		;7d9d
	push hl			;7d9f
	push bc			;7da0
	call L_7DB3		;7da1
	exx			;7da4
	ld a,c			;7da5
	or a			;7da6
	call nz,L_7E22		;7da7
	pop bc			;7daa
	pop hl			;7dab
L_7DAC:
	ld de,00080h		;7dac
	add hl,de			;7daf
	djnz L_7D9B		;7db0
	ret			;7db2
L_7DB3:
	exx			;7db3
	ld c,000h		;7db4
	exx			;7db6
	push hl			;7db7
	pop ix		;7db8
	inc l			;7dba
	inc l			;7dbb
	inc l			;7dbc
	ld e,(hl)			;7dbd
	inc l			;7dbe
	inc l			;7dbf
	ld d,(hl)			;7dc0
	ld a,l			;7dc1
	add a,06bh		;7dc2
	ld l,a			;7dc4
	ld a,(hl)			;7dc5
	add a,e			;7dc6
	ld e,a			;7dc7
	inc l			;7dc8
	ld a,(hl)			;7dc9
	add a,d			;7dca
	ld d,a			;7dcb
	inc l			;7dcc
	ld c,(hl)			;7dcd
	inc l			;7dce
	ld b,(hl)			;7dcf
	inc l			;7dd0
	ld a,(hl)			;7dd1
	dec a			;7dd2
	jr z,L_7E07		;7dd3
	dec a			;7dd5
	jr z,L_7E0C		;7dd6
	dec a			;7dd8
	ret z			;7dd9
	ld hl,0eaffh		;7dda
	call L_7D23		;7ddd
	call c,L_7D5F		;7de0
	call L_7D23		;7de3
	call c,L_7D5F		;7de6
	call L_7D23		;7de9
	call c,L_7D5F		;7dec
L_7DEF:
	call L_7D23		;7def
	ret c			;7df2
	call L_7D23		;7df3
	ret c			;7df6
	call L_7D23		;7df7
	ret c			;7dfa
	call L_7D23		;7dfb
	ret c			;7dfe
	call L_7D23		;7dff
	ret c			;7e02
	call L_7D23		;7e03
	ret			;7e06
L_7E07:
	ld hl,0ea08h		;7e07
	jr L_7DEF		;7e0a
L_7E0C:
	ld hl,0eaffh		;7e0c
	call L_7D23		;7e0f
	call c,L_7D5F		;7e12
	call L_7D23		;7e15
	call c,L_7D5F		;7e18
	call L_7D23		;7e1b
	call c,L_7D5F		;7e1e
	ret			;7e21
L_7E22:
	ld a,(ix+000h)		;7e22
	ld (0c4c7h),a		;7e25
	cp 00ah		;7e28
	jp z,L_7E49		;7e2a
	cp 00bh		;7e2d
	jp z,L_7E5B		;7e2f
	ld a,(0c860h)		;7e32
	or a			;7e35
	jr z,L_7E3C		;7e36
	bit 2,c		;7e38
	jr nz,L_7E40		;7e3a
L_7E3C:
	ld (ix+013h),c		;7e3c
	ret			;7e3f
L_7E40:
	ld (ix+012h),001h		;7e40
	ld (ix+013h),002h		;7e44
	ret			;7e48
L_7E49:
	ld a,(0c860h)		;7e49
	or a			;7e4c
	jr z,L_7E54		;7e4d
	bit 2,c		;7e4f
	jp nz,09f9fh		;7e51
L_7E54:
	ld a,c			;7e54
	and 00bh		;7e55
	ret z			;7e57
	jp 09f9fh		;7e58
L_7E5B:
	ld a,(0c860h)		;7e5b
	or a			;7e5e
	ret z			;7e5f
	push ix		;7e60
	ld l,(ix+01ah)		;7e62
	ld h,(ix+01bh)		;7e65
	push hl			;7e68
	pop ix		;7e69
	call 09f9fh		;7e6b
	pop ix		;7e6e
	ret			;7e70
L_7E71:
	ld a,(0c800h)		;7e71
	cp 002h		;7e74
	ret z			;7e76
	ld a,(0c821h)		;7e77
	sub 002h		;7e7a
	ld e,a			;7e7c
	ld a,(0c820h)		;7e7d
	sub 002h		;7e80
	ld d,a			;7e82
	exx			;7e83
	ld hl,0cc00h		;7e84
	ld b,010h		;7e87
L_7E89:
	ld a,(hl)			;7e89
	cp 003h		;7e8a
	jr nz,L_7E96		;7e8c
	push hl			;7e8e
	push bc			;7e8f
	call L_7E9D		;7e90
	exx			;7e93
	pop bc			;7e94
	pop hl			;7e95
L_7E96:
	ld de,00010h		;7e96
	add hl,de			;7e99
	djnz L_7E89		;7e9a
	ret			;7e9c
L_7E9D:
	inc l			;7e9d
	inc l			;7e9e
	ld a,(hl)			;7e9f
	ex af,af'			;7ea0
	inc l			;7ea1
	ld a,(hl)			;7ea2
	exx			;7ea3
	sub d			;7ea4
	add a,014h		;7ea5
	ret nc			;7ea7
	ex af,af'			;7ea8
	sub e			;7ea9
	add a,014h		;7eaa
	ret nc			;7eac
	exx			;7ead
	push af			;7eae
	push hl			;7eaf
	push de			;7eb0
	push bc			;7eb1
	call L_7EC0		;7eb2
	ld hl,00001h		;7eb5
	call 04818h		;7eb8
	pop bc			;7ebb
	pop de			;7ebc
	pop hl			;7ebd
	pop af			;7ebe
	ret			;7ebf
L_7EC0:
	dec l			;7ec0
	dec l			;7ec1
	ld a,(hl)			;7ec2
	ld c,a			;7ec3
	dec l			;7ec4
	ld (hl),004h		;7ec5
	cp 00fh		;7ec7
	jr nc,$+42		;7ec9
	push af			;7ecb
	ld hl,00005h		;7ecc
	call 04818h		;7ecf
	pop af			;7ed2
	dec a			;7ed3
	call 040aeh		;7ed4

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7ed7..0x7ef3  (28 bytes)
DATA_7ED7:
	defb 02fh,07fh,006h,07fh,01bh,07fh,0a3h,07fh,021h,07fh,055h,07fh,025h,07fh,055h,07fh	; 7ed7  /.......!.U.%.U.
	defb 055h,07fh,03ah,07fh,03ah,07fh,02fh,07fh,00ch,07fh,04dh,07fh	; 7ee7  U.:.:./...M.

; ======================================================================
; CODIGO 0x7ef3..0x7f7b  (136 bytes)
; ======================================================================


L_7EF3:
	cp 02ah		;7ef3
	jp nc,L_7BFB		;7ef5
	call L_7F5D		;7ef8
	ld a,028h		;7efb
	call 041ach		;7efd
	ld hl,0000ah		;7f00
	jp 04818h		;7f03
L_7F06:
	ld a,001h		;7f06
	ld (0c580h),a		;7f08
	ret			;7f0b
L_7F0C:
	call L_7F5D		;7f0c
	ld (hl),05ah		;7f0f
	ld a,(0c0f2h)		;7f11
	or a			;7f14
	ret nz			;7f15
	ld a,04ch		;7f16
	jp 041ach		;7f18
L_7F1B:
	xor a			;7f1b
	ld (0c860h),a		;7f1c
	jr L_7F25		;7f1f
L_7F21:
	xor a			;7f21
	ld (0c858h),a		;7f22
L_7F25:
	call L_7F5D		;7f25
	ld (hl),00dh		;7f28
	ld a,018h		;7f2a
	jp 041ach		;7f2c
L_7F2F:
	call L_7F5D		;7f2f
	call c,L_7F7A		;7f32
	ld a,018h		;7f35
	jp 041ach		;7f37
L_7F3A:
	call L_7F5D		;7f3a
	ret nc			;7f3d
	inc hl			;7f3e
	ld a,(0c481h)		;7f3f
	ld b,a			;7f42
	call L_7FCC		;7f43
	or (hl)			;7f46
	ld (hl),a			;7f47
	ld a,018h		;7f48
	jp 041ach		;7f4a
L_7F4D:
	call L_7F5D		;7f4d
	ld a,018h		;7f50
	jp 041ach		;7f52
L_7F55:
	call L_7F5D		;7f55
	ld a,018h		;7f58
	jp 041ach		;7f5a
L_7F5D:
	call L_7F64		;7f5d
	ret nc			;7f60
	inc (hl)			;7f61
	scf			;7f62
	ret			;7f63
L_7F64:
	ld a,c			;7f64
	dec a			;7f65
	add a,a			;7f66
	add a,a			;7f67
	ld l,a			;7f68
	ld h,000h		;7f69
	ld de,0c850h		;7f6b
	add hl,de			;7f6e
	ld a,(hl)			;7f6f
	ex de,hl			;7f70
	ld b,000h		;7f71
	ld hl,07f7bh		;7f73
	add hl,bc			;7f76
	cp (hl)			;7f77
	ex de,hl			;7f78
	ret			;7f79
L_7F7A:
	ret			;7f7a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7f7b..0x7fa3  (40 bytes)
DATA_7F7B:
	defb 001h,003h,0ffh,0ffh,003h,0ffh,0c8h,003h,0c8h,005h,006h,006h,001h,0ffh,001h,001h	; 7f7b  ................
	defb 001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h	; 7f8b  ................
	defb 001h,001h,001h,001h,001h,001h,001h,001h	; 7f9b  ........

; ======================================================================
; CODIGO 0x7fa3..0x7fbd  (26 bytes)
; ======================================================================


L_7FA3:
	call L_7F5D		;7fa3
	ld a,018h		;7fa6
	call 041ach		;7fa8
L_7FAB:
	ld a,(0c85ch)		;7fab
	ld de,07fbdh		;7fae
	call 0486fh		;7fb1
	ld a,e			;7fb4
	ld (0c84ah),a		;7fb5
	ld a,d			;7fb8
	ld (0c842h),a		;7fb9
	ret			;7fbc

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7fbd..0x7fcc  (15 bytes)
DATA_7FBD:
	defb 001h,012h,003h,014h,006h,016h,006h,000h,0b7h,0c8h,004h,00fh,030h,0fch,0c9h	; 7fbd  ............0..

; ======================================================================
; CODIGO 0x7fcc..0x7fff  (51 bytes)
; ======================================================================


L_7FCC:
	ld a,080h		;7fcc
L_7FCE:
	rlca			;7fce
	djnz L_7FCE		;7fcf
	ret			;7fd1
L_7FD2:
	ld a,(0c80dh)		;7fd2
	cp 003h		;7fd5
	ret nc			;7fd7
	ld a,(0c858h)		;7fd8
	or a			;7fdb
	ret nz			;7fdc
	ld a,(0c80bh)		;7fdd
	sub 010h		;7fe0
	ld e,a			;7fe2
	ld a,(0c809h)		;7fe3
	sub 006h		;7fe6
	ld d,a			;7fe8
	exx			;7fe9
	ld ix,0dc00h		;7fea
	ld b,008h		;7fee
	ld a,(ix+000h)		;7ff0
	or a			;7ff3
	jr z,L_7FFC		;7ff4
	push bc			;7ff6
	call 08004h		;7ff7
	exx			;7ffa
	pop bc			;7ffb
L_7FFC:
	ld de,00080h		;7ffc

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7fff..0x8000  (1 bytes)
DATA_7FFF:
	defb 0ddh	; 7fff
