; ==========================================================================
; HINOTORI - Konami (1987) - MSX - MegaROM RC-747 de 128 KB (Konami4) - banco 03 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; Etiquetas que no caen en ninguna posicion emitida del listado
; (destinos fuera del binario o dentro de una instruccion).
; ----------------------------------------------------------------------
L_B125:	equ 0x0b125
L_B1B6:	equ 0x0b1b6
L_B270:	equ 0x0b270
L_B315:	equ 0x0b315
L_B325:	equ 0x0b325
L_B38A:	equ 0x0b38a
L_B39E:	equ 0x0b39e
L_BE06:	equ 0x0be06

; ----------------------------------------------------------------------
; Direcciones que solo aparecen como VALOR -en un `ld`, no en
; un salto-: son punteros que el codigo se pasa o numeros que
; casualmente coinciden con una direccion. No hay nada que
; trazar en ellas; el equ existe para que el listado ensamble.
; ----------------------------------------------------------------------
lb316h:	equ 0x0b316
lb390h:	equ 0x0b390
lb39dh:	equ 0x0b39d

; ======================================================================
; CODIGO 0xa000..0xa04f  (79 bytes)
; ======================================================================


L_A000:
	ld hl,0a04fh		;a000
	call 07073h		;a003
	push ix		;a006
	pop iy		;a008
	ld (ix+019h),010h		;a00a
	ld (ix+01ah),080h		;a00e
	push ix		;a012
	pop hl			;a014
	ld (0d417h),hl		;a015
	ld (0e810h),hl		;a018
	ld de,00050h		;a01b
	add hl,de			;a01e
	ld b,004h		;a01f
L_A021:
	push bc			;a021
	push hl			;a022
	ld e,(iy+003h)		;a023
	ld d,(iy+005h)		;a026
	ld c,00bh		;a029
	call 06d64h		;a02b
	pop hl			;a02e
	pop bc			;a02f
	ld a,(0d411h)		;a030
	and a			;a033
	jr z,L_A043		;a034
	push ix		;a036
	pop de			;a038
	ld (hl),e			;a039
	inc l			;a03a
	ld (hl),d			;a03b
	inc l			;a03c
	ld (0d417h),de		;a03d
	djnz L_A021		;a041
L_A043:
	ld (hl),0ffh		;a043
	ld hl,(0d417h)		;a045
	ld (iy+017h),l		;a048
	ld (iy+018h),h		;a04b
	ret			;a04e

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa04f..0xa05e  (15 bytes)
DATA_A04F:
	defb 000h,000h,080h,004h,001h,000h,000h,000h,000h,014h,040h,0edh,0f5h,018h,015h	; a04f  ..........@....

; ======================================================================
; CODIGO 0xa05e..0xa112  (180 bytes)
; ======================================================================


L_A05E:
	call L_A101		;a05e
	ld a,(ix+019h)		;a061
	sub (ix+003h)		;a064
	ld h,000h		;a067
	jr nc,L_A06C		;a069
	dec h			;a06b
L_A06C:
	ld l,a			;a06c
	add hl,hl			;a06d
	add hl,hl			;a06e
	add hl,hl			;a06f
	add hl,hl			;a070
	ld (ix+00ch),l		;a071
	ld (ix+00dh),h		;a074
	ld a,(ix+01ah)		;a077
	sub (ix+005h)		;a07a
	ld h,000h		;a07d
	jr nc,L_A082		;a07f
	dec h			;a081
L_A082:
	ld l,a			;a082
	ld (ix+00eh),l		;a083
	ld (ix+00fh),h		;a086
	ld a,(0c388h)		;a089
	and a			;a08c
	ret z			;a08d
	inc (ix+003h)		;a08e
	inc (ix+019h)		;a091
	ret			;a094
L_A095:
	ld hl,0a05ah		;a095
	call 07084h		;a098
	ld hl,(0d417h)		;a09b
	ld (ix+017h),l		;a09e
	ld (ix+018h),h		;a0a1
	xor a			;a0a4
	ld (ix+019h),a		;a0a5
	ld (ix+006h),a		;a0a8
	ld (ix+010h),014h		;a0ab
	ld (ix+011h),040h		;a0af
	ld hl,(0e810h)		;a0b3
	ld (ix+01ah),l		;a0b6
	ld (ix+01bh),h		;a0b9
	push ix		;a0bc
	pop hl			;a0be
	ld de,00040h		;a0bf
	add hl,de			;a0c2
	ld e,(ix+003h)		;a0c3
	ld d,(ix+005h)		;a0c6
	ld b,008h		;a0c9
L_A0CB:
	ld (hl),e			;a0cb
	inc l			;a0cc
	ld (hl),d			;a0cd
	inc l			;a0ce
	djnz L_A0CB		;a0cf
	ret			;a0d1
L_A0D2:
	call L_A101		;a0d2
	ld l,(ix+017h)		;a0d5
	ld h,(ix+018h)		;a0d8
	inc l			;a0db
	inc l			;a0dc
	inc l			;a0dd
	ld e,(hl)			;a0de
	inc l			;a0df
	inc l			;a0e0
	ld d,(hl)			;a0e1
	push ix		;a0e2
	pop hl			;a0e4
	ld bc,00040h		;a0e5
	add hl,bc			;a0e8
	ld a,(ix+019h)		;a0e9
	inc (ix+019h)		;a0ec
	and 007h		;a0ef
	add a,a			;a0f1
	call 040a4h		;a0f2
	ld a,(hl)			;a0f5
	ld (ix+003h),a		;a0f6
	ld (hl),e			;a0f9
	inc l			;a0fa
	ld a,(hl)			;a0fb
	ld (ix+005h),a		;a0fc
	ld (hl),d			;a0ff
	ret			;a100
L_A101:
	dec (ix+011h)		;a101
	ret nz			;a104
	ld (ix+011h),040h		;a105
	jp 07809h		;a109
L_A10C:
	ld hl,0a112h		;a10c
	jp 09dech		;a10f

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa112..0xa118  (6 bytes)
DATA_A112:
	defb 001h,001h,000h,00ch,000h,000h	; a112

; ======================================================================
; CODIGO 0xa118..0xa12b  (19 bytes)
; ======================================================================


L_A118:
	call 07119h		;a118
	ld hl,0a136h		;a11b
	call 07084h		;a11e
	ld (ix+006h),000h		;a121
	ld hl,0a12bh		;a125
	jp 07073h		;a128

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa12b..0xa13a  (15 bytes)
DATA_A12B:
	defb 000h,001h,000h,000h,000h,000h,000h,000h,000h,016h,010h,0edh,0f5h,018h,015h	; a12b  ...............

; ======================================================================
; CODIGO 0xa13a..0xa143  (9 bytes)
; ======================================================================


L_A13A:
	call 0710fh		;a13a
	ld a,(ix+001h)		;a13d
	call 040aeh		;a140

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa143..0xa151  (14 bytes)
DATA_A143:
	defb 072h,0a1h,07ah,0a1h,008h,0a2h,01eh,0a2h,05bh,0a2h,089h,0a2h,051h,0a1h	; a143  r.z.....[...Q.

; ======================================================================
; CODIGO 0xa151..0xa28e  (317 bytes)
; ======================================================================


L_A151:
	dec (ix+011h)		;a151
	jp m,L_A158		;a154
	ret nz			;a157
L_A158:
	ld a,(0c80bh)		;a158
	sub (ix+003h)		;a15b
	jr nc,L_A162		;a15e
	neg		;a160
L_A162:
	ld c,a			;a162
	ld a,(0c809h)		;a163
	sub (ix+005h)		;a166
	jr nc,L_A16D		;a169
	neg		;a16b
L_A16D:
	cp c			;a16d
	jr nc,L_A191		;a16e
	jr L_A1AF		;a170
L_A172:
	dec (ix+011h)		;a172
	ret nz			;a175
	inc (ix+001h)		;a176
	ret			;a179
L_A17A:
	ld a,(0c809h)		;a17a
	sub (ix+005h)		;a17d
	add a,010h		;a180
	cp 020h		;a182
	jr c,L_A1AF		;a184
	ld a,(0c80bh)		;a186
	sub (ix+003h)		;a189
	add a,010h		;a18c
	cp 020h		;a18e
	ret nc			;a190
L_A191:
	ld a,(0c809h)		;a191
	sub (ix+005h)		;a194
	jr c,L_A1A4		;a197
	ld hl,02000h		;a199
	call L_A1D9		;a19c
	ret c			;a19f
	ld c,005h		;a1a0
	jr L_A1CB		;a1a2
L_A1A4:
	ld hl,0e000h		;a1a4
	call L_A1D9		;a1a7
	ret c			;a1aa
	ld c,004h		;a1ab
	jr L_A1CB		;a1ad
L_A1AF:
	ld a,(0c80bh)		;a1af
	sub (ix+003h)		;a1b2
	jr c,L_A1C2		;a1b5
	ld hl,00020h		;a1b7
	call L_A1D9		;a1ba
	ret c			;a1bd
	ld c,003h		;a1be
	jr L_A1CB		;a1c0
L_A1C2:
	ld hl,000e0h		;a1c2
	call L_A1D9		;a1c5
	ret c			;a1c8
	ld c,002h		;a1c9
L_A1CB:
	ld (ix+001h),c		;a1cb
	xor a			;a1ce
	ld (ix+011h),a		;a1cf
	ld (ix+017h),a		;a1d2
	ld (ix+018h),a		;a1d5
	ret			;a1d8
L_A1D9:
	ld a,(ix+003h)		;a1d9
	add a,l			;a1dc
	ld e,a			;a1dd
	ld a,(ix+005h)		;a1de
	add a,h			;a1e1
	ld d,a			;a1e2
	call 04913h		;a1e3
	cp 000h		;a1e6
	ret z			;a1e8
	cp 020h		;a1e9
	ret z			;a1eb
	scf			;a1ec
	ret			;a1ed
L_A1EE:
	ld hl,0a30ah		;a1ee
	jr L_A1F6		;a1f1
L_A1F3:
	ld hl,0a302h		;a1f3
L_A1F6:
	ld c,001h		;a1f6
	ld a,(ix+017h)		;a1f8
	cp 008h		;a1fb
	jr z,L_A241		;a1fd
	jr L_A22E		;a1ff
L_A201:
	ld hl,0a2dah		;a201
	ld b,020h		;a204
	jr L_A20D		;a206
L_A208:
	ld hl,0a2c4h		;a208
	ld b,016h		;a20b
L_A20D:
	ld c,001h		;a20d
	ld a,(ix+017h)		;a20f
	cp b			;a212
	jr z,L_A241		;a213
	jr L_A22E		;a215
L_A217:
	ld hl,0a2dah		;a217
	ld b,020h		;a21a
	jr L_A223		;a21c
L_A21E:
	ld hl,0a2c4h		;a21e
	ld b,016h		;a221
L_A223:
	ld c,000h		;a223
	ld a,(ix+017h)		;a225
	cp b			;a228
	jr z,L_A241		;a229
	sub b			;a22b
	neg		;a22c
L_A22E:
	inc (ix+017h)		;a22e
	call 040a4h		;a231
	ld a,(hl)			;a234
	dec c			;a235
	jr z,L_A23A		;a236
	neg		;a238
L_A23A:
	add a,(ix+003h)		;a23a
	ld (ix+003h),a		;a23d
	ret			;a240
L_A241:
	ld (ix+001h),006h		;a241
	ld (ix+018h),001h		;a245
	ld (ix+011h),004h		;a249
	ret			;a24d
L_A24E:
	ld de,0fd00h		;a24e
L_A251:
	call 06939h		;a251
	ld c,020h		;a254
	ld hl,0a2a4h		;a256
	jr L_A266		;a259
L_A25B:
	ld de,0fd80h		;a25b
L_A25E:
	call 06939h		;a25e
	ld c,016h		;a261
	ld hl,0a28eh		;a263
L_A266:
	ld a,(ix+017h)		;a266
	inc (ix+017h)		;a269
	cp c			;a26c
	jr z,L_A241		;a26d
	call 040a4h		;a26f
	ld a,(hl)			;a272
	jr L_A23A		;a273
L_A275:
	dec (ix+005h)		;a275
L_A278:
	ld c,008h		;a278
	ld hl,0a2fah		;a27a
	jr L_A266		;a27d
L_A27F:
	inc (ix+005h)		;a27f
	jr L_A278		;a282
L_A284:
	ld de,00300h		;a284
	jr L_A251		;a287
L_A289:
	ld de,00280h		;a289
	jr L_A25E		;a28c

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa28e..0xa312  (132 bytes)
DATA_A28E:
	defb 0f7h,0fbh,0fch,0fch,0feh,0feh,0feh,0feh,0ffh,0ffh,000h,000h,001h,001h,002h,002h	; a28e  ................
	defb 002h,002h,004h,004h,005h,009h,0fah,0fch,0fdh,0fdh,0feh,0fdh,0feh,0feh,0feh,0ffh	; a29e  ................
	defb 0ffh,0ffh,0ffh,000h,0ffh,000h,000h,001h,000h,001h,001h,001h,001h,002h,002h,002h	; a2ae  ................
	defb 003h,002h,003h,003h,004h,006h,0f8h,0fah,0fbh,0fch,0feh,0feh,0feh,0feh,0feh,0feh	; a2be  ................
	defb 0feh,0feh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,001h,002h,002h,002h,0f8h,0f9h,0f9h,0fah	; a2ce  ................
	defb 0fah,0fah,0fbh,0fbh,0fbh,0fbh,0fbh,0fbh,0fch,0fch,0fch,0fch,0fch,0fdh,0fdh,0fdh	; a2de  ................
	defb 0fdh,0fdh,0fdh,0feh,0ffh,000h,001h,002h,002h,003h,003h,004h,0fch,0feh,0ffh,000h	; a2ee  ................
	defb 000h,001h,002h,004h,0fah,0fbh,0fbh,0fdh,0feh,000h,003h,003h,0fdh,0fdh,000h,002h	; a2fe  ................
	defb 003h,005h,005h,006h	; a30e

; ======================================================================
; CODIGO 0xa312..0xa318  (6 bytes)
; ======================================================================


L_A312:
	ld hl,0a318h		;a312
	jp 09dech		;a315

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa318..0xa31e  (6 bytes)
DATA_A318:
	defb 001h,001h,000h,00dh,020h,000h	; a318

; ======================================================================
; CODIGO 0xa31e..0xa33e  (32 bytes)
; ======================================================================


L_A31E:
	ld bc,02020h		;a31e
	call 07123h		;a321
	ld hl,0a33eh		;a324
	call 07084h		;a327
	ld (ix+010h),019h		;a32a
	ld (ix+011h),008h		;a32e
	ld de,00000h		;a332
	ld (ix+017h),d		;a335
	call 0792ch		;a338
	jp 07933h		;a33b

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa33e..0xa342  (4 bytes)
DATA_A33E:
	defb 0edh,0f5h,018h,015h	; a33e

; ======================================================================
; CODIGO 0xa342..0xa39f  (93 bytes)
; ======================================================================


L_A342:
	ld a,(ix+001h)		;a342
	dec a			;a345
	jr z,L_A36F		;a346
	ret p			;a348
	ld (ix+074h),003h		;a349
	call 0710fh		;a34d
	dec (ix+011h)		;a350
	ret nz			;a353
	bit 0,(ix+017h)		;a354
	jr nz,L_A362		;a358
	inc (ix+017h)		;a35a
	ld bc,01808h		;a35d
	jr L_A368		;a360
L_A362:
	inc (ix+001h)		;a362
	ld bc,01710h		;a365
L_A368:
	ld (ix+010h),b		;a368
	ld (ix+011h),c		;a36b
	ret			;a36e
L_A36F:
	ld (ix+074h),000h		;a36f
	call 0710fh		;a373
	dec (ix+011h)		;a376
	ret nz			;a379
	inc (ix+001h)		;a37a
	ld a,0a0h		;a37d
	jp 07189h		;a37f
L_A382:
	ld hl,0a3aah		;a382
	call 07084h		;a385
	bit 7,(ix+005h)		;a388
	ld a,000h		;a38c
	jr z,L_A391		;a38e
	inc a			;a390
L_A391:
	ld (ix+017h),a		;a391
	ld b,030h		;a394
	call 0713fh		;a396
	ld hl,0a39fh		;a399
	jp 07073h		;a39c

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa39f..0xa3ae  (15 bytes)
DATA_A39F:
	defb 000h,0fch,000h,000h,000h,000h,000h,000h,000h,01ah,020h,0edh,0f5h,018h,015h	; a39f  .......... ....

; ======================================================================
; CODIGO 0xa3ae..0xa451  (163 bytes)
; ======================================================================


L_A3AE:
	ld bc,01a08h		;a3ae
	call 070f1h		;a3b1
	ld b,030h		;a3b4
	call 07130h		;a3b6
	ld a,(ix+001h)		;a3b9
	dec a			;a3bc
	jr z,L_A3EA		;a3bd
	ret p			;a3bf
	dec (ix+011h)		;a3c0
	ret nz			;a3c3
	inc (ix+001h)		;a3c4
	ld (ix+006h),000h		;a3c7
	ld (ix+011h),030h		;a3cb
	ld (ix+018h),080h		;a3cf
	ld a,(ix+003h)		;a3d3
	ld (ix+01ah),a		;a3d6
	bit 0,(ix+017h)		;a3d9
	ld a,040h		;a3dd
	jr z,L_A3E3		;a3df
	ld a,0c0h		;a3e1
L_A3E3:
	add a,(ix+005h)		;a3e3
	ld (ix+01bh),a		;a3e6
	ret			;a3e9
L_A3EA:
	call L_A40A		;a3ea
	ld a,(0c4b0h)		;a3ed
	and 003h		;a3f0
	ret nz			;a3f2
	dec (ix+011h)		;a3f3
	ret nz			;a3f6
	inc (ix+001h)		;a3f7
	ld (ix+006h),001h		;a3fa
	ld de,00000h		;a3fe
	call 07933h		;a401
	ld de,0fc00h		;a404
	jp 0792ch		;a407
L_A40A:
	ld a,004h		;a40a
	add a,(ix+018h)		;a40c
	ld (ix+018h),a		;a40f
	call L_A432		;a412
	add a,(ix+01ah)		;a415
	ld (ix+003h),a		;a418
	bit 0,(ix+017h)		;a41b
	ld a,040h		;a41f
	jr z,L_A425		;a421
	ld a,0c0h		;a423
L_A425:
	add a,(ix+018h)		;a425
	call L_A432		;a428
	add a,(ix+01bh)		;a42b
	ld (ix+005h),a		;a42e
	ret			;a431
L_A432:
	ld c,a			;a432
	bit 6,a		;a433
	jr z,L_A438		;a435
	cpl			;a437
L_A438:
	and 03fh		;a438
	ld hl,07a51h		;a43a
	call 040a4h		;a43d
	ld a,(hl)			;a440
	srl a		;a441
	srl a		;a443
	bit 7,c		;a445
	ret z			;a447
	neg		;a448
	ret			;a44a
L_A44B:
	ld hl,0a451h		;a44b
	jp 09dech		;a44e

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa451..0xa457  (6 bytes)
DATA_A451:
	defb 001h,001h,000h,00fh,000h,000h	; a451

; ======================================================================
; CODIGO 0xa457..0xa476  (31 bytes)
; ======================================================================


L_A457:
	call 07119h		;a457
	ld hl,0a481h		;a45a
	call 07084h		;a45d
	call L_A469		;a460
	ld hl,0a476h		;a463
	jp 07073h		;a466
L_A469:
	ld a,(0c4aah)		;a469
	srl a		;a46c
	sub 017h		;a46e
	neg		;a470
	ld (ix+01fh),a		;a472
	ret			;a475

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa476..0xa485  (15 bytes)
DATA_A476:
	defb 000h,001h,000h,000h,000h,000h,000h,000h,000h,01ch,014h,0ddh,0f5h,028h,015h	; a476  .............(.

; ======================================================================
; CODIGO 0xa485..0xa49c  (23 bytes)
; ======================================================================


L_A485:
	call L_A4DB		;a485
	call L_A4CC		;a488
	call L_A4B0		;a48b
	ld hl,0a4edh		;a48e
	ld a,(ix+001h)		;a491
	cp 002h		;a494
	jr c,L_A499		;a496
	push hl			;a498
L_A499:
	call 040aeh		;a499

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa49c..0xa4b0  (20 bytes)
DATA_A49C:
	defb 072h,0a1h,0fbh,0a4h,001h,0a2h,017h,0a2h,04eh,0a2h,084h,0a2h,0f3h,0a1h,0eeh,0a1h	; a49c  r.......N.......
	defb 075h,0a2h,07fh,0a2h	; a4ac

; ======================================================================
; CODIGO 0xa4b0..0xa4ed  (61 bytes)
; ======================================================================


L_A4B0:
	ld a,(ix+001h)		;a4b0
	sub 002h		;a4b3
	cp 004h		;a4b5
	jr nc,L_A4C7		;a4b7
	ld a,(ix+017h)		;a4b9
	sub 004h		;a4bc
	cp 018h		;a4be
	jr nc,L_A4C7		;a4c0
	set 0,(ix+074h)		;a4c2
	ret			;a4c6
L_A4C7:
	xor a			;a4c7
	ld (ix+074h),a		;a4c8
	ret			;a4cb
L_A4CC:
	ld c,01ch		;a4cc
	ld a,(ix+001h)		;a4ce
	cp 002h		;a4d1
	jr c,L_A4D7		;a4d3
	ld c,01dh		;a4d5
L_A4D7:
	ld (ix+010h),c		;a4d7
	ret			;a4da
L_A4DB:
	ld a,(ix+001h)		;a4db
	ret z			;a4de
	dec (ix+01fh)		;a4df
	ret nz			;a4e2
	push ix		;a4e3
	call 07805h		;a4e5
	pop ix		;a4e8
	jp L_A469		;a4ea

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa4ed..0xa4fb  (14 bytes)
DATA_A4ED:
	defb 0ddh,07eh,018h,0a7h,0c8h,0ddh,036h,001h,000h,0ddh,036h,011h,004h,0c9h	; a4ed  .~....6...6...

; ======================================================================
; CODIGO 0xa4fb..0xa58d  (146 bytes)
; ======================================================================


L_A4FB:
	ld bc,00000h		;a4fb
	ld a,(0c80bh)		;a4fe
	sub (ix+003h)		;a501
	jr nc,L_A508		;a504
	neg		;a506
L_A508:
	ld e,a			;a508
	ld a,(0c809h)		;a509
	sub (ix+005h)		;a50c
	jr nc,L_A513		;a50f
	neg		;a511
L_A513:
	cp e			;a513
	jr c,L_A520		;a514
	call L_A52A		;a516
	ret nc			;a519
	call L_A546		;a51a
	ret nc			;a51d
	jr L_A566		;a51e
L_A520:
	call L_A546		;a520
	ret nc			;a523
	call L_A52A		;a524
	ret nc			;a527
	jr L_A566		;a528
L_A52A:
	ld a,(0c809h)		;a52a
	cp (ix+003h)		;a52d
	jr c,L_A53C		;a530
	ld a,003h		;a532
	call L_A59D		;a534
	ret c			;a537
	ld c,005h		;a538
	jr L_A55F		;a53a
L_A53C:
	ld a,002h		;a53c
	call L_A59D		;a53e
	ret c			;a541
	ld c,004h		;a542
	jr L_A55F		;a544
L_A546:
	ld a,(0c80bh)		;a546
	cp (ix+003h)		;a549
	jr c,L_A558		;a54c
	ld a,001h		;a54e
	call L_A59D		;a550
	ret c			;a553
	ld c,003h		;a554
	jr L_A55F		;a556
L_A558:
	xor a			;a558
	call L_A59D		;a559
	ret c			;a55c
	ld c,002h		;a55d
L_A55F:
	add a,c			;a55f
	ld c,a			;a560
	call L_A1CB		;a561
	xor a			;a564
	ret			;a565
L_A566:
	ld a,r		;a566
	and 00ch		;a568
	ld hl,0a58dh		;a56a
	call 040a4h		;a56d
	ld b,004h		;a570
L_A572:
	push hl			;a572
	push bc			;a573
	ld a,(hl)			;a574
	call L_A59D		;a575
	pop bc			;a578
	pop hl			;a579
	jr nc,L_A588		;a57a
	inc hl			;a57c
	djnz L_A572		;a57d
	ld (ix+001h),000h		;a57f
	ld (ix+011h),008h		;a583
	ret			;a587
L_A588:
	ld c,(hl)			;a588
	inc c			;a589
	inc c			;a58a
	jr L_A55F		;a58b

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa58d..0xa59d  (16 bytes)
DATA_A58D:
	defb 000h,001h,002h,003h,003h,001h,002h,000h,001h,003h,000h,002h,002h,000h,003h,001h	; a58d  ................

; ======================================================================
; CODIGO 0xa59d..0xa627  (138 bytes)
; ======================================================================


L_A59D:
	ld (0e800h),a		;a59d
	ld c,060h		;a5a0
	call L_A5B3		;a5a2
	ld a,000h		;a5a5
	ret nc			;a5a7
	ld a,(0e800h)		;a5a8
	ld c,010h		;a5ab
	call L_A5B3		;a5ad
	ld a,004h		;a5b0
	ret			;a5b2
L_A5B3:
	call L_A5BF		;a5b3
	ret c			;a5b6
	call 04913h		;a5b7
	cp 028h		;a5ba
	ret z			;a5bc
	scf			;a5bd
	ret			;a5be
L_A5BF:
	ld e,(ix+003h)		;a5bf
	ld d,(ix+005h)		;a5c2
	dec a			;a5c5
	jr z,L_A5D2		;a5c6
	dec a			;a5c8
	jr z,L_A5D9		;a5c9
	dec a			;a5cb
	jr z,L_A5DD		;a5cc
	ld a,e			;a5ce
	sub c			;a5cf
	ld e,a			;a5d0
	ret			;a5d1
L_A5D2:
	ld a,e			;a5d2
	add a,c			;a5d3
	ld e,a			;a5d4
	cp 0d0h		;a5d5
	ccf			;a5d7
	ret			;a5d8
L_A5D9:
	ld a,d			;a5d9
	sub c			;a5da
	ld d,a			;a5db
	ret			;a5dc
L_A5DD:
	ld a,d			;a5dd
	add a,c			;a5de
	ld d,a			;a5df
	ret			;a5e0
L_A5E1:
	ld a,(ix+006h)		;a5e1
	ld d,a			;a5e4
	ld e,000h		;a5e5
	ld b,004h		;a5e7
L_A5E9:
	push bc			;a5e9
	push de			;a5ea
	ld c,010h		;a5eb
	call 06d64h		;a5ed
	pop de			;a5f0
	ld a,d			;a5f1
	add a,010h		;a5f2
	ld d,a			;a5f4
	pop bc			;a5f5
	djnz L_A5E9		;a5f6
	ret			;a5f8
L_A5F9:
	ret			;a5f9
L_A5FA:
	ret			;a5fa
L_A5FB:
	ld hl,0a627h		;a5fb
	call 07080h		;a5fe
	ld (ix+006h),000h		;a601
	ld a,(ix+015h)		;a605
	ld (ix+015h),000h		;a608
L_A60C:
	xor a			;a60c
	ld (ix+010h),021h		;a60d
	ld (ix+014h),a		;a611
	ld (ix+017h),001h		;a614
	ld (ix+025h),a		;a618
	ld (ix+02ah),a		;a61b
	ld (ix+074h),003h		;a61e
	ld (ix+011h),01eh		;a622
	ret			;a626

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa627..0xa62b  (4 bytes)
DATA_A627:
	defb 0edh,0f5h,018h,015h	; a627

; ======================================================================
; CODIGO 0xa62b..0xa6a8  (125 bytes)
; ======================================================================


L_A62B:
	call 0710fh		;a62b
	ld a,(ix+001h)		;a62e
	dec a			;a631
	jr z,L_A64D		;a632
	dec a			;a634
	jr z,L_A665		;a635
	dec a			;a637
	jr z,L_A677		;a638
	jp p,L_A68A		;a63a
	dec (ix+011h)		;a63d
	ret nz			;a640
	ld (ix+014h),001h		;a641
	ld (ix+011h),004h		;a645
	inc (ix+001h)		;a649
	ret			;a64c
L_A64D:
	dec (ix+011h)		;a64d
	ret nz			;a650
	ld (ix+074h),000h		;a651
	call L_A696		;a655
	inc (ix+017h)		;a658
	ld a,(ix+017h)		;a65b
	cp 004h		;a65e
	ret c			;a660
	inc (ix+001h)		;a661
	ret			;a664
L_A665:
	dec (ix+011h)		;a665
	ret nz			;a668
	inc (ix+001h)		;a669
	ld (ix+011h),008h		;a66c
	ld (ix+017h),002h		;a670
	jp 07809h		;a674
L_A677:
	dec (ix+011h)		;a677
	ret nz			;a67a
	call L_A696		;a67b
	dec (ix+017h)		;a67e
	ret p			;a681
	ld (ix+074h),003h		;a682
	inc (ix+001h)		;a686
	ret			;a689
L_A68A:
	dec (ix+011h)		;a68a
	ret nz			;a68d
	call L_A60C		;a68e
	ld (ix+001h),000h		;a691
	ret			;a695
L_A696:
	ld hl,0a6a8h		;a696
	ld a,(ix+017h)		;a699
	call 040a4h		;a69c
	ld a,(hl)			;a69f
	ld (ix+010h),a		;a6a0
	ld (ix+011h),004h		;a6a3
	ret			;a6a7

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa6a8..0xa6ac  (4 bytes)
DATA_A6A8:
	defb 021h,020h,01fh,01eh	; a6a8

; ======================================================================
; CODIGO 0xa6ac..0xa6b2  (6 bytes)
; ======================================================================


L_A6AC:
	ld hl,0a6b2h		;a6ac
	jp 09dech		;a6af

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa6b2..0xa6b8  (6 bytes)
DATA_A6B2:
	defb 001h,001h,000h,011h,000h,000h	; a6b2

; ======================================================================
; CODIGO 0xa6b8..0xa6d0  (24 bytes)
; ======================================================================


L_A6B8:
	call 07119h		;a6b8
	ld hl,0a6dbh		;a6bb
	call 07084h		;a6be
	ld hl,0a6d0h		;a6c1
	call 07073h		;a6c4
	ld (ix+006h),001h		;a6c7
	ld b,020h		;a6cb
	jp 0713fh		;a6cd

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa6d0..0xa6df  (15 bytes)
DATA_A6D0:
	defb 080h,001h,000h,000h,000h,000h,000h,000h,000h,022h,010h,0edh,0f5h,018h,015h	; a6d0  .........".....

; ======================================================================
; CODIGO 0xa6df..0xa6fc  (29 bytes)
; ======================================================================


L_A6DF:
	ld bc,02208h		;a6df
	call 070f1h		;a6e2
	call L_A734		;a6e5
	xor a			;a6e8
	cp (ix+006h)		;a6e9
	jr z,L_A6F3		;a6ec
	cp (ix+008h)		;a6ee
	jr nz,L_A6F6		;a6f1
L_A6F3:
	call 0710fh		;a6f3
L_A6F6:
	ld a,(ix+001h)		;a6f6
	call 040aeh		;a6f9

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa6fc..0xa702  (6 bytes)
DATA_A6FC:
	defb 002h,0a7h,010h,0a7h,040h,0a7h	; a6fc

; ======================================================================
; CODIGO 0xa702..0xa725  (35 bytes)
; ======================================================================


L_A702:
	dec (ix+011h)		;a702
	ret nz			;a705
	ld (ix+011h),020h		;a706
	ld (ix+07bh),000h		;a70a
	jr L_A71D		;a70e
L_A710:
	ld (ix+006h),000h		;a710
	ld (ix+011h),020h		;a714
	call L_A74B		;a718
	jr L_A71D		;a71b
L_A71D:
	inc (ix+001h)		;a71d
	ret			;a720
L_A721:
	dec (ix+001h)		;a721
	ret			;a724

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa725..0xa72a  (5 bytes)
DATA_A725:
	defb 0afh,0ddh,077h,001h,0c9h	; a725

; ======================================================================
; CODIGO 0xa72a..0xa78a  (96 bytes)
; ======================================================================


L_A72A:
	ld a,(ix+07bh)		;a72a
	inc a			;a72d
	and 003h		;a72e
	ld (ix+07bh),a		;a730
	ret			;a733
L_A734:
	dec (ix+061h)		;a734
	ret nz			;a737
	ld b,030h		;a738
	call 0713fh		;a73a
	jp 07809h		;a73d
L_A740:
	call L_A7CB		;a740
	jr c,$-34		;a743
	dec (ix+011h)		;a745
	jr z,$-39		;a748
	ret			;a74a
L_A74B:
	call L_A72A		;a74b
	ld a,(ix+07bh)		;a74e
	or a			;a751
	jr nz,L_A782		;a752
	call L_A75E		;a754
	ret nz			;a757
	call L_A770		;a758
	ret nz			;a75b
	jr L_A75E		;a75c
L_A75E:
	call 070d6h		;a75e
	ret z			;a761
	jr nc,L_A76A		;a762
	call L_A7A9		;a764
	or 001h		;a767
	ret			;a769
L_A76A:
	call L_A7A4		;a76a
	or 001h		;a76d
	ret			;a76f
L_A770:
	call 070cfh		;a770
	ret z			;a773
	jr nc,L_A77C		;a774
	call L_A79A		;a776
	or 001h		;a779
	ret			;a77b
L_A77C:
	call L_A79F		;a77c
	or 001h		;a77f
	ret			;a781
L_A782:
	call 0987fh		;a782
	and 007h		;a785
	call 040aeh		;a787

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa78a..0xa79a  (16 bytes)
DATA_A78A:
	defb 0a4h,0a7h,0a4h,0a7h,0a9h,0a7h,0a9h,0a7h,09fh,0a7h,09ah,0a7h,070h,0a7h,05eh,0a7h	; a78a  ............p.^.

; ======================================================================
; CODIGO 0xa79a..0xa7bb  (33 bytes)
; ======================================================================


L_A79A:
	ld hl,0a7bbh		;a79a
	jr L_A7AC		;a79d
L_A79F:
	ld hl,0a7bfh		;a79f
	jr L_A7AC		;a7a2
L_A7A4:
	ld hl,0a7c3h		;a7a4
	jr L_A7AC		;a7a7
L_A7A9:
	ld hl,0a7c7h		;a7a9
L_A7AC:
	ld e,(hl)			;a7ac
	inc hl			;a7ad
	ld d,(hl)			;a7ae
	inc hl			;a7af
	push hl			;a7b0
	call 07933h		;a7b1
	pop hl			;a7b4
	ld e,(hl)			;a7b5
	inc hl			;a7b6
	ld d,(hl)			;a7b7
	jp 0792ch		;a7b8

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa7bb..0xa7cb  (16 bytes)
DATA_A7BB:
	defb 000h,000h,000h,0feh,000h,000h,000h,002h,000h,002h,000h,000h,000h,0feh,000h,000h	; a7bb  ................

; ======================================================================
; CODIGO 0xa7cb..0xa837  (108 bytes)
; ======================================================================


L_A7CB:
	ld (ix+006h),001h		;a7cb
	ld b,008h		;a7cf
	ld a,(ix+008h)		;a7d1
	add a,b			;a7d4
	ld l,a			;a7d5
	ld a,(ix+00ah)		;a7d6
	add a,b			;a7d9
	ld h,a			;a7da
	ld e,(ix+003h)		;a7db
	ld d,(ix+005h)		;a7de
	add hl,de			;a7e1
	push de			;a7e2
	ex de,hl			;a7e3
	call 048fbh		;a7e4
	pop de			;a7e7
	jr c,L_A7FC		;a7e8
	ld b,0f8h		;a7ea
	ld a,(ix+008h)		;a7ec
	add a,b			;a7ef
	ld l,a			;a7f0
	ld a,(ix+00ah)		;a7f1
	add a,b			;a7f4
	ld h,a			;a7f5
	add hl,de			;a7f6
	ex de,hl			;a7f7
	call 048fbh		;a7f8
	ret nc			;a7fb
L_A7FC:
	xor a			;a7fc
	ld (ix+006h),a		;a7fd
	scf			;a800
	ret			;a801
L_A802:
	call L_A8A9		;a802
	ld a,080h		;a805
	call 07189h		;a807
	ld (ix+00bh),000h		;a80a
	ld (ix+010h),024h		;a80e
	ret			;a812
L_A813:
	ld bc,02404h		;a813
	call 070f1h		;a816
	jp L_A87B		;a819
L_A81C:
	ld hl,0a837h		;a81c
	call L_A8A6		;a81f
	ld a,(ix+005h)		;a822
	sra a		;a825
	ld (ix+005h),a		;a827
	cp 080h		;a82a
	ld de,00220h		;a82c
	jr nc,L_A834		;a82f
	ld de,0fde0h		;a831
L_A834:
	jp 07933h		;a834

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa837..0xa842  (11 bytes)
DATA_A837:
	defb 080h,0feh,000h,000h,000h,000h,000h,000h,000h,028h,000h	; a837  .........(.

; ======================================================================
; CODIGO 0xa842..0xa8c8  (134 bytes)
; ======================================================================


L_A842:
	ld a,(0c012h)		;a842
	or a			;a845
	jr z,L_A852		;a846
	ld a,(0c072h)		;a848
	ld b,a			;a84b
	ld a,00fh		;a84c
	cp b			;a84e
	call nz,041ach		;a84f
L_A852:
	ld bc,02804h		;a852
	call 070f1h		;a855
	call L_A87B		;a858
	call L_A86B		;a85b
	ret nc			;a85e
	ld e,(ix+009h)		;a85f
	ld d,(ix+00ah)		;a862
	call 079ebh		;a865
	jp 07933h		;a868
L_A86B:
	ld a,(ix+005h)		;a86b
	bit 7,(ix+00ah)		;a86e
	jr z,L_A877		;a872
	cp 020h		;a874
	ret			;a876
L_A877:
	cp 0e0h		;a877
	ccf			;a879
	ret			;a87a
L_A87B:
	ld a,(0c4aah)		;a87b
	cp 00ch		;a87e
	ret c			;a880
	dec (ix+017h)		;a881
	ret nz			;a884
	call L_A88B		;a885
	jp 07805h		;a888
L_A88B:
	ld c,030h		;a88b
L_A88D:
	ld a,r		;a88d
	and 007h		;a88f
	add a,c			;a891
	ld c,a			;a892
	ld a,(0c4aah)		;a893
	add a,a			;a896
	sub c			;a897
	neg		;a898
	ld c,a			;a89a
	cp 006h		;a89b
	jp p,L_A8A2		;a89d
	ld c,006h		;a8a0
L_A8A2:
	ld (ix+017h),c		;a8a2
	ret			;a8a5
L_A8A6:
	call 07073h		;a8a6
L_A8A9:
	ld c,010h		;a8a9
	call L_A88D		;a8ab
	ld hl,0a8c8h		;a8ae
	call 07084h		;a8b1
L_A8B4:
	ld hl,0d438h		;a8b4
	inc (hl)			;a8b7
	ld a,(hl)			;a8b8
	and 003h		;a8b9
	ld hl,0a8cch		;a8bb
	call 040a4h		;a8be
	ld a,(hl)			;a8c1
	ld (ix+005h),a		;a8c2
	jp 07119h		;a8c5

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa8c8..0xa8d0  (8 bytes)
DATA_A8C8:
	defb 0edh,0f5h,018h,015h,030h,050h,0b0h,0d0h	; a8c8  ....0P..

; ======================================================================
; CODIGO 0xa8d0..0xa8f8  (40 bytes)
; ======================================================================


L_A8D0:
	call 07119h		;a8d0
	ld hl,0a904h		;a8d3
	call 07084h		;a8d6
	ld (ix+010h),026h		;a8d9
	ld hl,0d437h		;a8dd
	inc (hl)			;a8e0
	ld a,(hl)			;a8e1
	and 003h		;a8e2
	add a,a			;a8e4
	ld hl,0a8f8h		;a8e5
	call 040a4h		;a8e8
	ld a,(hl)			;a8eb
	ld (ix+011h),a		;a8ec
	inc hl			;a8ef
	ld c,(hl)			;a8f0
	inc hl			;a8f1
	ld b,(hl)			;a8f2
	ld a,090h		;a8f3
	jp 0716bh		;a8f5

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa8f8..0xa908  (16 bytes)
DATA_A8F8:
	defb 018h,050h,030h,028h,070h,0d0h,018h,050h,0d0h,028h,070h,030h,0edh,0f5h,018h,015h	; a8f8  .P0(p..P.(p0....

; ======================================================================
; CODIGO 0xa908..0xa91f  (23 bytes)
; ======================================================================


L_A908:
	ld a,(ix+001h)		;a908
	dec a			;a90b
	ret z			;a90c
	dec (ix+011h)		;a90d
	ret nz			;a910
	inc (ix+001h)		;a911
	ld a,090h		;a914
	jp 07189h		;a916
L_A919:
	ld hl,0a91fh		;a919
	jp 09dech		;a91c

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa91f..0xa925  (6 bytes)
DATA_A91F:
	defb 001h,001h,000h,015h,000h,000h	; a91f

; ======================================================================
; CODIGO 0xa925..0xa935  (16 bytes)
; ======================================================================


L_A925:
	ld hl,0a940h		;a925
	call 07084h		;a928
	ld (ix+006h),000h		;a92b
	ld hl,0a935h		;a92f
	jp 07073h		;a932

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa935..0xa944  (15 bytes)
DATA_A935:
	defb 000h,000h,000h,004h,000h,000h,000h,000h,000h,02ah,010h,0f1h,0f8h,010h,010h	; a935  .........*.....

; ======================================================================
; CODIGO 0xa944..0xa9a1  (93 bytes)
; ======================================================================


L_A944:
	call 071a4h		;a944
	call 0710fh		;a947
	ld a,(ix+001h)		;a94a
	dec a			;a94d
	jr z,L_A962		;a94e
	dec a			;a950
	jr z,L_A97E		;a951
	ret p			;a953
	call 070b3h		;a954
	cp 030h		;a957
	ret nc			;a959
	inc (ix+001h)		;a95a
	ld (ix+011h),010h		;a95d
	ret			;a961
L_A962:
	call L_A98F		;a962
	call 070b3h		;a965
	cp 010h		;a968
	ret nc			;a96a
	call 070bdh		;a96b
	cp 040h		;a96e
	ret nc			;a970
	inc (ix+001h)		;a971
	inc (ix+006h)		;a974
	call 070d6h		;a977
	ret nc			;a97a
	jp 07099h		;a97b
L_A97E:
	ld bc,02a04h		;a97e
	call 070f1h		;a981
	dec (ix+011h)		;a984
	ret nz			;a987
	inc (ix+001h)		;a988
	dec (ix+006h)		;a98b
	ret			;a98e
L_A98F:
	ld a,(0c4b0h)		;a98f
	and 002h		;a992
	ld a,001h		;a994
	jr z,L_A99A		;a996
	neg		;a998
L_A99A:
	add a,(ix+005h)		;a99a
	ld (ix+005h),a		;a99d
	ret			;a9a0

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa9a1..0xa9cb  (42 bytes)
DATA_A9A1:
	defb 001h,016h,003h,021h,0c5h,0a9h,0c5h,03ah,00bh,0c8h,086h,05fh,023h,03ah,009h,0c8h	; a9a1  ...!...:..._#:..
	defb 047h,0feh,080h,07eh,038h,002h,0edh,044h,080h,057h,0e5h,0cdh,064h,06dh,0e1h,023h	; a9b1  G..~8..D.W..dm.#
	defb 0c1h,010h,0e3h,0c9h,0b0h,010h,0b0h,050h,000h,060h	; a9c1  .......P.`

; ======================================================================
; CODIGO 0xa9cb..0xa9da  (15 bytes)
; ======================================================================


L_A9CB:
	ld hl,0a9dah		;a9cb
	call 07084h		;a9ce
	ld (ix+010h),02ch		;a9d1
	ld a,090h		;a9d5
	jp 07189h		;a9d7

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa9da..0xa9de  (4 bytes)
DATA_A9DA:
	defb 0edh,0f5h,018h,015h	; a9da

; ======================================================================
; CODIGO 0xa9de..0xaa07  (41 bytes)
; ======================================================================


L_A9DE:
	ld bc,02c04h		;a9de
	jp 070f1h		;a9e1
L_A9E4:
	call L_A10C		;a9e4
	ld (ix+003h),017h		;a9e7
	ret			;a9eb
L_A9EC:
	xor a			;a9ec
	ld (ix+014h),a		;a9ed
	ld (ix+01ah),a		;a9f0
	ld (ix+01dh),a		;a9f3
	call L_A118		;a9f6
	ld (ix+074h),003h		;a9f9
	ret			;a9fd
L_A9FE:
	call 0710fh		;a9fe
	ld a,(ix+001h)		;aa01
	call 040aeh		;aa04

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaa07..0xaa15  (14 bytes)
DATA_AA07:
	defb 072h,0a1h,015h,0aah,008h,0a2h,01eh,0a2h,05bh,0a2h,089h,0a2h,051h,0a1h	; aa07  r.......[...Q.

; ======================================================================
; CODIGO 0xaa15..0xaa76  (97 bytes)
; ======================================================================


L_AA15:
	ld a,(ix+01ah)		;aa15
	and a			;aa18
	jr nz,L_AA3E		;aa19
	call L_A17A		;aa1b
	ld a,(ix+001h)		;aa1e
	cp 001h		;aa21
	ret z			;aa23
	ld a,(ix+01dh)		;aa24
	and a			;aa27
	ret nz			;aa28
	ld a,(ix+001h)		;aa29
	ld (ix+01bh),a		;aa2c
	ld (ix+001h),001h		;aa2f
	inc (ix+01ah)		;aa33
	ld (ix+01ch),010h		;aa36
	inc (ix+01dh)		;aa3a
	ret			;aa3d
L_AA3E:
	ld a,(0c4b0h)		;aa3e
	and 001h		;aa41
	ld (ix+014h),a		;aa43
	dec (ix+01ch)		;aa46
	ret nz			;aa49
	ld (ix+014h),001h		;aa4a
	ld (ix+074h),000h		;aa4e
	ld a,(ix+01bh)		;aa52
	ld (ix+001h),a		;aa55
	ret			;aa58
L_AA59:
	call 09c20h		;aa59
	ld (ix+003h),018h		;aa5c
	ret			;aa60
L_AA61:
	ld hl,0aa76h		;aa61
	call 0706ah		;aa64
	ld a,(0c809h)		;aa67
	cp 080h		;aa6a
	ld b,040h		;aa6c
	jr nc,L_AA72		;aa6e
	ld b,0c0h		;aa70
L_AA72:
	ld (ix+005h),b		;aa72
	ret			;aa75

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaa76..0xaa7c  (6 bytes)
DATA_AA76:
	defb 001h,001h,000h,019h,000h,000h	; aa76

; ======================================================================
; CODIGO 0xaa7c..0xaa9f  (35 bytes)
; ======================================================================


L_AA7C:
	call L_AA61		;aa7c
	ld (ix+003h),01ah		;aa7f
	ret			;aa83
L_AA84:
	call 07119h		;aa84
	ld (ix+01ah),000h		;aa87
	ld hl,0aa9fh		;aa8b
	call L_AAB1		;aa8e
	ld a,(0c4aah)		;aa91
	ld b,a			;aa94
	ld a,015h		;aa95
	sub b			;aa97
	ld (ix+01bh),a		;aa98
	ld (ix+019h),a		;aa9b
	ret			;aa9e

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaa9f..0xaaaa  (11 bytes)
DATA_AA9F:
	defb 000h,000h,000h,000h,001h,040h,000h,000h,000h,056h,000h	; aa9f  .....@...V.

; ======================================================================
; CODIGO 0xaaaa..0xaad7  (45 bytes)
; ======================================================================


L_AAAA:
	ld (ix+01ah),001h		;aaaa
	ld hl,0aad7h		;aaae
L_AAB1:
	call 07073h		;aab1
	ld hl,0aae2h		;aab4
	call 07084h		;aab7
	ld a,(0c4aah)		;aaba
	ld b,a			;aabd
	ld a,01ah		;aabe
	sub b			;aac0
	ld (ix+01bh),a		;aac1
	ld (ix+019h),a		;aac4
	ld a,b			;aac7
	srl a		;aac8
	srl a		;aaca
	ld b,a			;aacc
	ld a,009h		;aacd
	sub b			;aacf
	ld (ix+018h),a		;aad0
	ld (ix+017h),a		;aad3
	ret			;aad6

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaad7..0xaae6  (15 bytes)
DATA_AAD7:
	defb 000h,000h,000h,000h,001h,040h,000h,000h,000h,058h,000h,0ddh,0f5h,028h,015h	; aad7  .....@...X...(.

; ======================================================================
; CODIGO 0xaae6..0xaaf8  (18 bytes)
; ======================================================================


L_AAE6:
	ld (ix+01ah),002h		;aae6
	ld hl,0aaf8h		;aaea
	call L_AAB1		;aaed
	bit 7,(ix+005h)		;aaf0
	ret z			;aaf4
	jp 07099h		;aaf5

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaaf8..0xab03  (11 bytes)
DATA_AAF8:
	defb 000h,003h,000h,004h,000h,000h,000h,000h,000h,05ah,000h	; aaf8  .........Z.

; ======================================================================
; CODIGO 0xab03..0xab0c  (9 bytes)
; ======================================================================


L_AB03:
	call L_AC0B		;ab03
	call L_ABCE		;ab06
	call 040aeh		;ab09

; ----------------------------------------------------------------------
; DATOS sin identificar  0xab0c..0xab12  (6 bytes)
DATA_AB0C:
	defb 012h,0abh,024h,0abh,03bh,0abh	; ab0c

; ======================================================================
; CODIGO 0xab12..0xab61  (79 bytes)
; ======================================================================


L_AB12:
	call L_ABBF		;ab12
	dec (ix+017h)		;ab15
	ret nz			;ab18
	call 0709dh		;ab19
	ld a,(ix+018h)		;ab1c
	ld (ix+017h),a		;ab1f
	jr $+95		;ab22
L_AB24:
	call L_ABBF		;ab24
	dec (ix+017h)		;ab27
	ret nz			;ab2a
	ld (ix+017h),030h		;ab2b
	xor a			;ab2f
	ld (ix+006h),a		;ab30
	ld (ix+00bh),a		;ab33
	call 0709dh		;ab36
	jr $+72		;ab39
L_AB3B:
	call L_ABD5		;ab3b
	dec (ix+017h)		;ab3e
	ret nz			;ab41
	ld a,001h		;ab42
	ld (ix+006h),a		;ab44
	ld (ix+00bh),a		;ab47
	ld a,(ix+018h)		;ab4a
	ld (ix+017h),a		;ab4d
	call L_ABF6		;ab50
	ld (ix+001h),000h		;ab53
	ret			;ab57
L_AB58:
	call L_AC0B		;ab58
	call L_ABCE		;ab5b
	call 040aeh		;ab5e

; ----------------------------------------------------------------------
; DATOS sin identificar  0xab61..0xab69  (8 bytes)
DATA_AB61:
	defb 069h,0abh,085h,0abh,095h,0abh,0b9h,0abh	; ab61  i.......

; ======================================================================
; CODIGO 0xab69..0xac60  (247 bytes)
; ======================================================================


L_AB69:
	ld bc,05a08h		;ab69
	call 070f1h		;ab6c
	call 070cfh		;ab6f
	ret c			;ab72
	call 070bdh		;ab73
	cp 008h		;ab76
	ret nc			;ab78
	ld (ix+006h),000h		;ab79
	ld (ix+017h),030h		;ab7d
L_AB81:
	inc (ix+001h)		;ab81
	ret			;ab84
L_AB85:
	call L_ABD5		;ab85
	dec (ix+017h)		;ab88
	ret nz			;ab8b
	call 07095h		;ab8c
	ld (ix+006h),001h		;ab8f
	jr L_AB81		;ab93
L_AB95:
	ld bc,05a08h		;ab95
	call 070f1h		;ab98
	call L_AC41		;ab9b
	ret nc			;ab9e
	call 070cfh		;ab9f
	jr nc,L_ABB2		;aba2
	ld de,00000h		;aba4
	call 07933h		;aba7
	ld de,00300h		;abaa
	call 0792ch		;abad
	jr L_AB81		;abb0
L_ABB2:
	ld a,080h		;abb2
	call 07189h		;abb4
	jr L_AB81		;abb7
L_ABB9:
	ld bc,05a08h		;abb9
	jp 070f1h		;abbc
L_ABBF:
	ld a,(ix+01ah)		;abbf
	and a			;abc2
	ld b,056h		;abc3
	jr z,L_ABC9		;abc5
	ld b,058h		;abc7
L_ABC9:
	ld c,008h		;abc9
	jp 070f1h		;abcb
L_ABCE:
	call 0710fh		;abce
	ld a,(ix+001h)		;abd1
	ret			;abd4
L_ABD5:
	dec (ix+019h)		;abd5
	ret nz			;abd8
	ld a,(ix+01bh)		;abd9
	ld (ix+019h),a		;abdc
	ld a,(ix+01ah)		;abdf
	and a			;abe2
	jp nz,07809h		;abe3
	ld d,(ix+005h)		;abe6
	ld e,(ix+003h)		;abe9
	ld c,030h		;abec
	push ix		;abee
	call 06d64h		;abf0
	pop ix		;abf3
	ret			;abf5
L_ABF6:
	ld a,(ix+01ah)		;abf6
	or a			;abf9
	ret z			;abfa
	call 070cfh		;abfb
	ret c			;abfe
	ld de,00400h		;abff
L_AC02:
	call 070d6h		;ac02
	call c,079ebh		;ac05
	jp 07933h		;ac08
L_AC0B:
	call L_AC2C		;ac0b
	call c,07099h		;ac0e
	ld a,(ix+01ah)		;ac11
	and a			;ac14
	ret nz			;ac15
	call 070bdh		;ac16
	and a			;ac19
	ld de,00000h		;ac1a
	jr z,L_AC02		;ac1d
	call L_AC2C		;ac1f
	ld de,00000h		;ac22
	jr c,L_AC02		;ac25
	ld de,00100h		;ac27
	jr L_AC02		;ac2a
L_AC2C:
	bit 7,(ix+00ah)		;ac2c
	ld a,008h		;ac30
	jr z,L_AC36		;ac32
	neg		;ac34
L_AC36:
	add a,(ix+005h)		;ac36
	ld d,a			;ac39
	ld e,(ix+003h)		;ac3a
	call 048fbh		;ac3d
	ret			;ac40
L_AC41:
	ld d,(ix+005h)		;ac41
	ld a,0f0h		;ac44
	add a,(ix+003h)		;ac46
	ld e,a			;ac49
	call 048fbh		;ac4a
	ret			;ac4d
L_AC4E:
	ld hl,0ac6bh		;ac4e
	call 07084h		;ac51
	ld hl,0ac60h		;ac54
	call 07073h		;ac57
	ld hl,0000ah		;ac5a
	jp 04818h		;ac5d

; ----------------------------------------------------------------------
; DATOS sin identificar  0xac60..0xac6f  (15 bytes)
DATA_AC60:
	defb 000h,0ffh,000h,000h,000h,000h,000h,000h,000h,051h,008h,000h,000h,000h,000h	; ac60  .........Q.....

; ======================================================================
; CODIGO 0xac6f..0xacc6  (87 bytes)
; ======================================================================


L_AC6F:
	ld a,(ix+001h)		;ac6f
	dec a			;ac72
	jr z,L_AC85		;ac73
	dec (ix+011h)		;ac75
	ret nz			;ac78
	inc (ix+001h)		;ac79
	ld (ix+006h),000h		;ac7c
	ld (ix+011h),018h		;ac80
	ret			;ac84
L_AC85:
	call 0710fh		;ac85
	dec (ix+011h)		;ac88
	ret nz			;ac8b
	jp 06a85h		;ac8c
L_AC8F:
	ld a,(0c4e3h)		;ac8f
	or a			;ac92
	jr z,L_AC99		;ac93
	ld (ix+000h),02dh		;ac95
L_AC99:
	ld hl,0acd1h		;ac99
	call 07084h		;ac9c
	ld (ix+017h),000h		;ac9f
	ld (ix+074h),001h		;aca3
	ld a,(ix+000h)		;aca7
	cp 02dh		;acaa
	ld hl,0000ah		;acac
	jr z,L_ACB4		;acaf
	ld hl,00001h		;acb1
L_ACB4:
	call 04818h		;acb4
	ld hl,0acc6h		;acb7
	call 07073h		;acba
	ld a,(ix+005h)		;acbd
	cp 080h		;acc0
	ret c			;acc2
	jp 07099h		;acc3

; ----------------------------------------------------------------------
; DATOS sin identificar  0xacc6..0xacd5  (15 bytes)
DATA_ACC6:
	defb 080h,000h,0ffh,005h,001h,000h,000h,040h,000h,04fh,001h,0f1h,0f8h,010h,010h	; acc6  .......@.O.....

; ======================================================================
; CODIGO 0xacd5..0xacf0  (27 bytes)
; ======================================================================


L_ACD5:
	ld a,(ix+000h)		;acd5
	cp 02dh		;acd8
	ld b,004h		;acda
	ld de,0acf0h		;acdc
	call z,070ffh		;acdf
	call L_ACF1		;ace2
	call L_AD38		;ace5
	ld a,(0c800h)		;ace8
	cp 002h		;aceb
	ret z			;aced
	jr $+13		;acee

; ----------------------------------------------------------------------
; DATOS sin identificar  0xacf0..0xacf1  (1 bytes)
DATA_ACF0:
	defb 00ch	; acf0

; ======================================================================
; CODIGO 0xacf1..0xad8a  (153 bytes)
; ======================================================================


L_ACF1:
	ld a,(0c106h)		;acf1
	and 010h		;acf4
	ret z			;acf6
	inc (ix+017h)		;acf7
	ret			;acfa
L_ACFB:
	ld a,(0c820h)		;acfb
	sub (ix+005h)		;acfe
	add a,00ch		;ad01
	cp 018h		;ad03
	ret nc			;ad05
	ld a,(0c821h)		;ad06
	add a,008h		;ad09
	sub (ix+003h)		;ad0b
	cp 020h		;ad0e
	ret nc			;ad10
	ld a,(ix+000h)		;ad11
	cp 02dh		;ad14
	ld a,001h		;ad16
	jr nz,L_AD1C		;ad18
	ld a,00ah		;ad1a
L_AD1C:
	ld hl,0c845h		;ad1c
	add a,(hl)			;ad1f
	ld d,0c8h		;ad20
	cp d			;ad22
	jr c,L_AD26		;ad23
	ld a,d			;ad25
L_AD26:
	ld (hl),a			;ad26
	ld a,(ix+000h)		;ad27
	cp 02dh		;ad2a
	ld a,020h		;ad2c
	jr z,L_AD32		;ad2e
	ld a,01fh		;ad30
L_AD32:
	call 041ach		;ad32
	jp 06a85h		;ad35
L_AD38:
	call L_AD5C		;ad38
	ld a,(ix+005h)		;ad3b
	ld (ix+078h),a		;ad3e
	ld c,(ix+009h)		;ad41
	ld b,(ix+00ah)		;ad44
	ld a,b			;ad47
	or a			;ad48
	jp p,L_AD53		;ad49
	ld a,c			;ad4c
	cpl			;ad4d
	ld c,a			;ad4e
	ld a,b			;ad4f
	cpl			;ad50
	ld b,a			;ad51
	inc bc			;ad52
L_AD53:
	ld hl,00600h		;ad53
	sbc hl,bc		;ad56
	ret nc			;ad58
	jp 070a1h		;ad59
L_AD5C:
	ld a,080h		;ad5c
	sub (ix+005h)		;ad5e
	ld l,a			;ad61
	rlca			;ad62
	sbc a,a			;ad63
	ld h,a			;ad64
	ld d,(ix+005h)		;ad65
	ld e,(ix+004h)		;ad68
	add hl,hl			;ad6b
	add hl,hl			;ad6c
	add hl,hl			;ad6d
	add hl,hl			;ad6e
	add hl,de			;ad6f
	ld (ix+005h),h		;ad70
	ld (ix+004h),l		;ad73
	ret			;ad76
L_AD77:
	ld hl,0ad8ah		;ad77
	call 07084h		;ad7a
	ld (ix+006h),000h		;ad7d
	ld (ix+010h),04dh		;ad81
	ld (ix+011h),008h		;ad85
	ret			;ad89

; ----------------------------------------------------------------------
; DATOS sin identificar  0xad8a..0xad8e  (4 bytes)
DATA_AD8A:
	defb 0f1h,0f8h,010h,010h	; ad8a

; ======================================================================
; CODIGO 0xad8e..0xadbd  (47 bytes)
; ======================================================================


L_AD8E:
	call L_AE55		;ad8e
	ld bc,04d01h		;ad91
	call 070f1h		;ad94
	ld a,(ix+001h)		;ad97
	dec a			;ad9a
	ret z			;ad9b
	call 0710fh		;ad9c
	dec (ix+011h)		;ad9f
	ret nz			;ada2
	inc (ix+001h)		;ada3
	inc (ix+006h)		;ada6
	ld a,060h		;ada9
	jp 07189h		;adab
L_ADAE:
	ld hl,0adbdh		;adae
	call 07084h		;adb1
	ld (ix+010h),03ch		;adb4
	ld a,058h		;adb8
	jp 07189h		;adba

; ----------------------------------------------------------------------
; DATOS sin identificar  0xadbd..0xadc1  (4 bytes)
DATA_ADBD:
	defb 0f6h,0fdh,007h,007h	; adbd

; ======================================================================
; CODIGO 0xadc1..0xadde  (29 bytes)
; ======================================================================


L_ADC1:
	jp L_AE55		;adc1
L_ADC4:
	ld bc,02810h		;adc4
	call 07123h		;adc7
	ld hl,0addeh		;adca
	call 07084h		;adcd
	ld a,(0c481h)		;add0
	cp 005h		;add3
	jr nz,L_ADDB		;add5
	ld (ix+025h),00fh		;add7
L_ADDB:
	jp 078edh		;addb

; ----------------------------------------------------------------------
; DATOS sin identificar  0xadde..0xade2  (4 bytes)
DATA_ADDE:
	defb 0f1h,0f8h,010h,010h	; adde

; ======================================================================
; CODIGO 0xade2..0xadf0  (14 bytes)
; ======================================================================


L_ADE2:
	jp L_AE55		;ade2
L_ADE5:
	call L_B02D		;ade5
	ld a,(0d400h)		;ade8
	dec a			;adeb
	ret m			;adec
	call 040aeh		;aded

; ----------------------------------------------------------------------
; DATOS sin identificar  0xadf0..0xadfc  (12 bytes)
DATA_ADF0:
	defb 07fh,0b0h,045h,0b4h,0adh,0b2h,090h,0b6h,0a8h,0b8h,02eh,0bbh	; adf0  ..E.........

; ======================================================================
; CODIGO 0xadfc..0xae49  (77 bytes)
; ======================================================================


L_ADFC:
	ld a,(ix+025h)		;adfc
	cp 08ch		;adff
	ld de,06fach		;ae01
	call z,06ef5h		;ae04
	ld a,(0c800h)		;ae07
	cp 002h		;ae0a
	jr nz,L_AE12		;ae0c
	ld (ix+013h),000h		;ae0e
L_AE12:
	ld a,(ix+013h)		;ae12
	and 00bh		;ae15
	ret z			;ae17
	ld a,(0c480h)		;ae18
	cp 017h		;ae1b
	ld a,030h		;ae1d
	jr nz,L_AE23		;ae1f
	ld a,031h		;ae21
L_AE23:
	call 041ach		;ae23
	ld de,0ae49h		;ae26
	call 06efbh		;ae29
	call 069f5h		;ae2c
	ret nc			;ae2f
	ld l,(ix+003h)		;ae30
	ld h,(ix+005h)		;ae33
	ld (0d405h),hl		;ae36
	xor a			;ae39
	ld (ix+068h),a		;ae3a
	inc a			;ae3d
	ld (0d402h),a		;ae3e
	ld a,(0c4abh)		;ae41
	inc a			;ae44
	ld (0c4abh),a		;ae45
	ret			;ae48

; ----------------------------------------------------------------------
; DATOS sin identificar  0xae49..0xae55  (12 bytes)
DATA_AE49:
	defb 00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch	; ae49  ............

; ======================================================================
; CODIGO 0xae55..0xae9f  (74 bytes)
; ======================================================================


L_AE55:
	ld a,(ix+013h)		;ae55
	and a			;ae58
	ret z			;ae59
	call 069f5h		;ae5a
	ret nc			;ae5d
	ld a,011h		;ae5e
	call 041ach		;ae60
	jp 06a85h		;ae63
L_AE66:
	ld hl,0d403h		;ae66
	dec (hl)			;ae69
	ret nz			;ae6a
	xor a			;ae6b
	ld (0d400h),a		;ae6c
	ld (0d40ah),a		;ae6f
	ld (0d40bh),a		;ae72
	ld hl,0c581h		;ae75
	res 0,(hl)		;ae78
	ld a,043h		;ae7a
	jp 041ach		;ae7c
L_AE7F:
	ld a,(0c481h)		;ae7f
	ld hl,0ae9eh		;ae82
	call 040a4h		;ae85
	ld a,(hl)			;ae88
	ld b,a			;ae89
	add a,a			;ae8a
	add a,a			;ae8b
	ld hl,0c8b8h		;ae8c
	call 040a4h		;ae8f
	ld a,(hl)			;ae92
	and a			;ae93
	ret nz			;ae94
	ld a,01bh		;ae95
	add a,b			;ae97
	ld de,(0d405h)		;ae98
	jp 073e3h		;ae9c

; ----------------------------------------------------------------------
; DATOS sin identificar  0xae9f..0xaea4  (5 bytes)
DATA_AE9F:
	defb 005h,001h,002h,003h,004h	; ae9f

; ======================================================================
; CODIGO 0xaea4..0xaf44  (160 bytes)
; ======================================================================


L_AEA4:
	ld (ix+006h),000h		;aea4
	dec (ix+011h)		;aea8
	jr z,L_AEC7		;aeab
	ld a,(ix+011h)		;aead
	cp 038h		;aeb0
	jr nc,L_AEC2		;aeb2
	ld a,(0c4b0h)		;aeb4
	and 002h		;aeb7
	ld c,000h		;aeb9
	jr z,L_AEBE		;aebb
	inc c			;aebd
L_AEBE:
	ld a,001h		;aebe
	jr L_AECD		;aec0
L_AEC2:
	ld a,001h		;aec2
	ld c,a			;aec4
	jr L_AECD		;aec5
L_AEC7:
	inc (ix+001h)		;aec7
	xor a			;aeca
	ld c,001h		;aecb
L_AECD:
	ld (ix+014h),c		;aecd
	ld (0d409h),a		;aed0
	xor 001h		;aed3
	ret			;aed5
L_AED6:
	ld a,(0d40ah)		;aed6
	and a			;aed9
	ret z			;aeda
	ld b,a			;aedb
	ld a,(0d40bh)		;aedc
	and a			;aedf
	jr nz,L_AEE5		;aee0
	ld a,(ix+012h)		;aee2
L_AEE5:
	add a,b			;aee5
	srl a		;aee6
	ld (ix+012h),a		;aee8
	ld a,b			;aeeb
	ld (0d40bh),a		;aeec
	ret			;aeef
L_AEF0:
	ld a,(ix+012h)		;aef0
	ld (0d40ah),a		;aef3
	ret			;aef6
L_AEF7:
	push hl			;aef7
	push bc			;aef8
	call L_AF7A		;aef9
	pop bc			;aefc
	pop hl			;aefd
	ld c,02ch		;aefe
L_AF00:
	ld a,(0d405h)		;af00
	ld e,(hl)			;af03
	inc hl			;af04
	add a,e			;af05
	ld e,a			;af06
	ld a,(0d406h)		;af07
	ld d,(hl)			;af0a
	inc hl			;af0b
	add a,d			;af0c
	ld d,a			;af0d
	push hl			;af0e
	push bc			;af0f
	call 06d64h		;af10
	pop bc			;af13
	pop hl			;af14
	djnz L_AF00		;af15
	ld a,03ch		;af17
	ld (0d403h),a		;af19
	ret			;af1c
L_AF1D:
	ld hl,0af48h		;af1d
	jr L_AF39		;af20
L_AF22:
	ld hl,0af4ch		;af22
	jr L_AF39		;af25
L_AF27:
	ld hl,0af50h		;af27
	jr L_AF39		;af2a
L_AF2C:
	ld hl,0af54h		;af2c
	jr L_AF39		;af2f
L_AF31:
	ld hl,0af58h		;af31
	jr L_AF39		;af34
L_AF36:
	ld hl,0af44h		;af36
L_AF39:
	ld (ix+006h),000h		;af39
	ld (ix+010h),037h		;af3d
	jp 07080h		;af41

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaf44..0xaf5c  (24 bytes)
DATA_AF44:
	defb 0e1h,0f0h,020h,020h,0e1h,0f7h,020h,013h,0e1h,0f4h,020h,018h,0d1h,0f4h,030h,01ch	; af44  ..  .. ... ...0.
	defb 0d1h,0f0h,030h,020h,0d1h,0f0h,030h,020h	; af54  ..0 ..0

; ======================================================================
; CODIGO 0xaf5c..0xafa2  (70 bytes)
; ======================================================================


L_AF5C:
	ld hl,0d700h		;af5c
	ld b,00ah		;af5f
L_AF61:
	ld a,(hl)			;af61
	and a			;af62
	jr z,L_AF73		;af63
	cp 01bh		;af65
	jr nc,L_AF73		;af67
	push bc			;af69
	push hl			;af6a
	push hl			;af6b
	pop ix		;af6c
	call 0699fh		;af6e
	pop hl			;af71
	pop bc			;af72
L_AF73:
	ld de,00080h		;af73
	add hl,de			;af76
	djnz L_AF61		;af77
	ret			;af79
L_AF7A:
	ld hl,0d700h		;af7a
	ld b,00ah		;af7d
L_AF7F:
	ld a,(hl)			;af7f
	and a			;af80
	jr z,L_AF8A		;af81
	push bc			;af83
	push hl			;af84
	call 06a88h		;af85
	pop hl			;af88
	pop bc			;af89
L_AF8A:
	ld de,00080h		;af8a
	add hl,de			;af8d
	djnz L_AF7F		;af8e
	ret			;af90
L_AF91:
	ld hl,0afa2h		;af91
	call L_AF9A		;af94
	ld hl,0afa5h		;af97
L_AF9A:
	ld c,(hl)			;af9a
	inc hl			;af9b
	ld d,(hl)			;af9c
	inc hl			;af9d
	ld e,(hl)			;af9e
	jp 06d64h		;af9f

; ----------------------------------------------------------------------
; DATOS sin identificar  0xafa2..0xafa8  (6 bytes)
DATA_AFA2:
	defb 021h,006h,05dh,021h,0fah,003h	; afa2

; ======================================================================
; CODIGO 0xafa8..0xafc4  (28 bytes)
; ======================================================================


L_AFA8:
	ld hl,0afc4h		;afa8
	call 07073h		;afab
	xor a			;afae
	ld (ix+016h),a		;afaf
	bit 7,(ix+005h)		;afb2
	ret z			;afb6
	ld (ix+016h),006h		;afb7
	call 07095h		;afbb
	call 07099h		;afbe
	jp 0709dh		;afc1

; ----------------------------------------------------------------------
; DATOS sin identificar  0xafc4..0xafcf  (11 bytes)
DATA_AFC4:
	defb 000h,0f0h,000h,0f0h,001h,0c8h,000h,000h,000h,04bh,007h	; afc4  .........K.

; ======================================================================
; CODIGO 0xafcf..0xb015  (70 bytes)
; ======================================================================


L_AFCF:
	ld bc,04b04h		;afcf
	call 070f1h		;afd2
	ld b,(ix+001h)		;afd5
	djnz L_B002		;afd8
	dec (ix+011h)		;afda
	jr nz,L_AFE2		;afdd
	jp 06a85h		;afdf
L_AFE2:
	ld a,(ix+016h)		;afe2
	add a,a			;afe5
	ld hl,0b015h		;afe6
	call 040a4h		;afe9
	ld a,(ix+016h)		;afec
	inc a			;afef
	cp 00ch		;aff0
	jr c,L_AFF5		;aff2
	xor a			;aff4
L_AFF5:
	ld (ix+016h),a		;aff5
	ld a,(hl)			;aff8
	ld (ix+003h),a		;aff9
	inc hl			;affc
	ld a,(hl)			;affd
	ld (ix+005h),a		;affe
	ret			;b001
L_B002:
	dec (ix+011h)		;b002
	ret nz			;b005
	xor a			;b006
	ld (ix+006h),a		;b007
	ld (ix+00bh),a		;b00a
	ld (ix+011h),038h		;b00d
	inc (ix+001h)		;b011
	ret			;b014

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb015..0xb02d  (24 bytes)
DATA_B015:
	defb 011h,077h,019h,069h,027h,061h,037h,061h,046h,069h,04eh,077h,04eh,088h,049h,097h	; b015  .w.i'a7aFiNwN.I.
	defb 037h,09fh,027h,09fh,019h,097h,011h,088h	; b025  7.'.....

; ======================================================================
; CODIGO 0xb02d..0xb0bf  (146 bytes)
; ======================================================================


L_B02D:
	ld a,(0d400h)		;b02d
	and a			;b030
	ret nz			;b031
	ld a,(0c480h)		;b032
	sub 012h		;b035
	ret c			;b037
	ld hl,00023h		;b038
	ld bc,(0c302h)		;b03b
	and a			;b03f
	sbc hl,bc		;b040
	ret nz			;b042
	ld a,(0d402h)		;b043
	and a			;b046
	ret nz			;b047
	ld a,(0c481h)		;b048
	cp 006h		;b04b
	jr nz,L_B060		;b04d
	ld hl,0c8dch		;b04f
	ld b,005h		;b052
	xor a			;b054
L_B055:
	cp (hl)			;b055
	jr z,L_B070		;b056
	ld de,00004h		;b058
	add hl,de			;b05b
	djnz L_B055		;b05c
	ld a,006h		;b05e
L_B060:
	ld hl,0c581h		;b060
	set 0,(hl)		;b063
	ld l,a			;b065
	ld h,000h		;b066
	ld (0d400h),hl		;b068
	xor a			;b06b
	ld (0d402h),a		;b06c
	ret			;b06f
L_B070:
	ld a,001h		;b070
	ld (0d402h),a		;b072
	ld a,028h		;b075
	ld (0c4bdh),a		;b077
	ld a,012h		;b07a
	jp 0432eh		;b07c
L_B07F:
	ld a,(0d401h)		;b07f
	dec a			;b082
	jr z,L_B09D		;b083
	jp p,L_AE66		;b085
	ld c,039h		;b088
	ld de,08030h		;b08a
	call 06d64h		;b08d
	ld c,01bh		;b090
	ld de,08030h		;b092
	call 06d64h		;b095
L_B098:
	ld hl,0d401h		;b098
	inc (hl)			;b09b
	ret			;b09c
L_B09D:
	ld a,(0d402h)		;b09d
	and a			;b0a0
	ret z			;b0a1
	call L_AE7F		;b0a2
	ld hl,0d407h		;b0a5
	set 0,(hl)		;b0a8
	ld hl,00064h		;b0aa
	call 04818h		;b0ad
	ld a,04fh		;b0b0
	call 041ach		;b0b2
	ld b,006h		;b0b5
	ld hl,0b0bfh		;b0b7
	call L_AEF7		;b0ba
	jr L_B098		;b0bd

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb0bf..0xb0cb  (12 bytes)
DATA_B0BF:
	defb 000h,000h,0f7h,0f5h,0f6h,001h,0f8h,00bh,0f0h,0fbh,0eeh,005h	; b0bf  ............

; ======================================================================
; CODIGO 0xb0cb..0xb0e8  (29 bytes)
; ======================================================================


L_B0CB:
	ld hl,0b0f3h		;b0cb
	call 07080h		;b0ce
	ld hl,0b0e8h		;b0d1
	call 07073h		;b0d4
	call L_AED6		;b0d7
	xor a			;b0da
	ld (ix+016h),a		;b0db
	ld (ix+019h),a		;b0de
	ld (ix+068h),001h		;b0e1
	jp L_AF91		;b0e5

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb0e8..0xb0f7  (15 bytes)
DATA_B0E8:
	defb 000h,000h,000h,008h,000h,000h,000h,000h,000h,02eh,040h,0e1h,0f6h,020h,019h	; b0e8  ..........@.. .

; ======================================================================
; CODIGO 0xb0f7..0xb108  (17 bytes)
; ======================================================================


L_B0F7:
	call L_ADFC		;b0f7
	ld a,(0d402h)		;b0fa
	and a			;b0fd
	ret nz			;b0fe
	call L_AEF0		;b0ff
	ld a,(ix+001h)		;b102
	call 040aeh		;b105

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb108..0xb112  (10 bytes)
DATA_B108:
	defb 012h,0b1h,023h,0b1h,091h,0b1h,0c0h,0b1h,059h,0b2h	; b108  ..#.....Y.

; ======================================================================
; CODIGO 0xb112..0xb24d  (315 bytes)
; ======================================================================


L_B112:
	call L_AEA4		;b112
	ret z			;b115
	ld (ix+006h),001h		;b116
	ld (ix+011h),009h		;b11a
	ld (ix+074h),000h		;b11e
	ret			;b122
L_B123:
	ld bc,02e08h		;b123
	call 070f1h		;b126
	ld a,(ix+00ah)		;b129
	and a			;b12c
	jr z,L_B14E		;b12d
	bit 0,(ix+019h)		;b12f
	jr nz,L_B14E		;b133
	ld a,(0c809h)		;b135
	sub (ix+005h)		;b138
	add a,004h		;b13b
	cp 008h		;b13d
	jr c,L_B187		;b13f
	ld a,(ix+005h)		;b141
	add a,034h		;b144
	cp 068h		;b146
	jr nc,L_B14E		;b148
	ld (ix+011h),001h		;b14a
L_B14E:
	dec (ix+011h)		;b14e
	ret nz			;b151
	ld a,(ix+003h)		;b152
	cp 048h		;b155
	ld c,001h		;b157
	jr c,L_B15D		;b159
	ld c,002h		;b15b
L_B15D:
	ld a,(ix+005h)		;b15d
	cp 060h		;b160
	jr c,L_B166		;b162
	set 3,c		;b164
L_B166:
	cp 0a0h		;b166
	jr nc,L_B16C		;b168
	set 2,c		;b16a
L_B16C:
	ld (ix+016h),c		;b16c
	call 0987fh		;b16f
	and 003h		;b172
L_B174:
	jp z,L_B1DC		;b174
	ld (ix+00ah),000h		;b177
	ld (ix+008h),000h		;b17b
L_B17F:
	ld (ix+018h),008h		;b17f
	inc (ix+001h)		;b183
	ret			;b186
L_B187:
	ld (ix+001h),003h		;b187
	ld (ix+006h),000h		;b18b
	jr L_B17F		;b18f
L_B191:
	dec (ix+018h)		;b191
	ld a,(ix+018h)		;b194
	cp 006h		;b197
	jr z,L_B1A6		;b199
	ret nc			;b19b
	and a			;b19c
	ret nz			;b19d
	ld (ix+011h),002h		;b19e
	inc (ix+001h)		;b1a2
	ret			;b1a5
L_B1A6:
	ld (ix+010h),030h		;b1a6
	ld a,(0c012h)		;b1aa
	or a			;b1ad
	jr z,L_B1B5		;b1ae
	ld a,029h		;b1b0
	call 041ach		;b1b2
L_B1B5:
	ld c,024h		;b1b5
	ld e,(ix+003h)		;b1b7
	ld d,(ix+005h)		;b1ba
L_B1BD:
	jp 06d64h		;b1bd
L_B1C0:
	ld bc,02e08h		;b1c0
	call 070f1h		;b1c3
	ld a,(ix+011h)		;b1c6
	cp 01ah		;b1c9
	jr nc,L_B1DC		;b1cb
	bit 2,a		;b1cd
	ld a,004h		;b1cf
	jr nz,L_B1D5		;b1d1
	neg		;b1d3
L_B1D5:
	ld (ix+00ah),a		;b1d5
	inc (ix+011h)		;b1d8
	ret			;b1db
L_B1DC:
	ld (ix+019h),000h		;b1dc
	call 0987fh		;b1e0
	and 001h		;b1e3
	jr z,L_B209		;b1e5
	call 0987fh		;b1e7
	ld c,003h		;b1ea
	and 001h		;b1ec
	jr z,L_B1F2		;b1ee
	ld c,00ch		;b1f0
L_B1F2:
	ld a,(ix+016h)		;b1f2
	and c			;b1f5
	cp 00ch		;b1f6
	jr c,L_B222		;b1f8
	push af			;b1fa
	call 0987fh		;b1fb
	and 001h		;b1fe
	ld c,008h		;b200
	jr z,L_B206		;b202
	ld c,004h		;b204
L_B206:
	pop af			;b206
	jr L_B219		;b207
L_B209:
	ld a,(0c809h)		;b209
	ld c,(ix+005h)		;b20c
	cp c			;b20f
	ld c,004h		;b210
	jr nc,L_B216		;b212
	ld c,008h		;b214
L_B216:
	ld a,(ix+016h)		;b216
L_B219:
	and c			;b219
	and a			;b21a
	jr nz,L_B222		;b21b
	ld a,(ix+016h)		;b21d
	and 003h		;b220
L_B222:
	bit 0,a		;b222
	ld hl,0b24dh		;b224
	jr nz,L_B23A		;b227
	bit 1,a		;b229
	ld hl,0b250h		;b22b
	jr nz,L_B23A		;b22e
	bit 2,a		;b230
	ld hl,0b253h		;b232
	jr nz,L_B23A		;b235
	ld hl,0b256h		;b237
L_B23A:
	ld a,(hl)			;b23a
	ld (ix+008h),a		;b23b
	inc hl			;b23e
	ld a,(hl)			;b23f
	ld (ix+00ah),a		;b240
	inc hl			;b243
	ld a,(hl)			;b244
	ld (ix+011h),a		;b245
	ld (ix+001h),001h		;b248
	ret			;b24c

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb24d..0xb259  (12 bytes)
DATA_B24D:
	defb 006h,000h,009h,0fah,000h,009h,000h,008h,009h,000h,0f8h,009h	; b24d  ............

; ======================================================================
; CODIGO 0xb259..0xb29b  (66 bytes)
; ======================================================================


L_B259:
	dec (ix+018h)		;b259
	ld a,(ix+018h)		;b25c
	cp 006h		;b25f
	jp z,L_B1A6		;b261
	ret nc			;b264
	and a			;b265
	ret nz			;b266
	inc (ix+019h)		;b267
	inc (ix+006h)		;b26a
	ld (ix+001h),001h		;b26d
	ret			;b271
L_B272:
	ld hl,0b2a6h		;b272
	call 07084h		;b275
	ld hl,0b29bh		;b278
	call 07073h		;b27b
	ld a,(0c809h)		;b27e
	ld c,(ix+005h)		;b281
	sub c			;b284
	ld b,000h		;b285
	jr nc,L_B28C		;b287
	neg		;b289
	inc b			;b28b
L_B28C:
	cp 020h		;b28c
	jr c,L_B292		;b28e
	ld a,020h		;b290
L_B292:
	ld (ix+00eh),a		;b292
	bit 0,b		;b295
	ret z			;b297
	jp 070a1h		;b298

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb29b..0xb2aa  (15 bytes)
DATA_B29B:
	defb 000h,005h,000h,000h,001h,000h,000h,000h,000h,03eh,000h,0e6h,0f8h,01ah,010h	; b29b  .........>.....

; ======================================================================
; CODIGO 0xb2aa..0xb2ec  (66 bytes)
; ======================================================================


L_B2AA:
	jp L_AE55		;b2aa
L_B2AD:
	ld a,(0d401h)		;b2ad
	dec a			;b2b0
	jr z,L_B2C9		;b2b1
	jp p,L_AE66		;b2b3
	ld c,034h		;b2b6
	ld de,08030h		;b2b8
	call 06d64h		;b2bb
	ld c,01ch		;b2be
	ld de,08030h		;b2c0
	call 06d64h		;b2c3
	jp L_B098		;b2c6
L_B2C9:
	ld a,(0d402h)		;b2c9
	and a			;b2cc
	ret z			;b2cd
	call L_AE7F		;b2ce
	ld hl,0d407h		;b2d1
	set 2,(hl)		;b2d4
	ld hl,00064h		;b2d6
	call 04818h		;b2d9
	ld a,04fh		;b2dc
	call 041ach		;b2de
	ld b,006h		;b2e1
	ld hl,0b2ech		;b2e3
	call L_AEF7		;b2e6
	jp L_B098		;b2e9

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb2ec..0xb2f8  (12 bytes)
DATA_B2EC:
	defb 001h,0fdh,0fdh,005h,0f9h,0fah,0f7h,000h,0f5h,006h,0efh,0ffh	; b2ec  ............

; ======================================================================
; CODIGO 0xb2f8..0xb407  (271 bytes)
; ======================================================================


L_B2F8:
	ld hl,0b321h		;b2f8
	call 07080h		;b2fb
	ld hl,lb316h		;b2fe
	call 07073h		;b301
	call L_AED6		;b304
	ld (ix+017h),000h		;b307
	ld (ix+016h),034h		;b30b
	ld (ix+068h),001h		;b30f
	jp L_AF91		;b313
L_B316:
	nop			;b316
	nop			;b317
	nop			;b318
	inc b			;b319
	nop			;b31a
	nop			;b31b
	nop			;b31c
	nop			;b31d
	nop			;b31e
	ld sp,0f840h		;b31f
	ret m			;b322
	rlca			;b323
	ld de,0fccdh		;b324
	xor l			;b327
	ld a,(0d402h)		;b328
	and a			;b32b
	ret nz			;b32c
	call L_AEF0		;b32d
	ld b,(ix+001h)		;b330
	djnz $+107		;b333
	dec (ix+016h)		;b335
	jr z,L_B384		;b338
	ld a,(ix+017h)		;b33a
	bit 0,a		;b33d
	ld a,(ix+011h)		;b33f
	ld e,a			;b342
	ld d,000h		;b343
	jr nz,L_B34D		;b345
	ld hl,lb390h		;b347
	add hl,de			;b34a
	jr L_B352		;b34b
L_B34D:
	ld hl,lb39dh		;b34d
	sbc hl,de		;b350
L_B352:
	ld a,(hl)			;b352
	add a,030h		;b353
	ld (ix+003h),a		;b355
	ld a,(ix+005h)		;b358
	add a,02bh		;b35b
	cp 056h		;b35d
	jr nc,L_B36F		;b35f
	ld a,(ix+018h)		;b361
	and a			;b364
	jr nz,L_B373		;b365
	inc (ix+018h)		;b367
	call 07099h		;b36a
	jr L_B373		;b36d
L_B36F:
	ld (ix+018h),000h		;b36f
L_B373:
	inc (ix+011h)		;b373
	ld a,(ix+011h)		;b376
	cp 00eh		;b379
	ret c			;b37b
	ld (ix+011h),000h		;b37c
	inc (ix+017h)		;b380
	ret			;b383
L_B384:
	xor a			;b384
	inc (ix+001h)		;b385
	ld (ix+006h),a		;b388
	ld (ix+010h),032h		;b38b
	ret			;b38f
L_B390:
	ld sp,hl			;b390
	ei			;b391
	cp 002h		;b392
	rlca			;b394
	dec c			;b395
	inc d			;b396
	dec de			;b397
	ld hl,02a26h		;b398
	dec l			;b39b
	cpl			;b39c
L_B39D:
	jr nc,L_B3AF		;b39d
L_B39F:
	dec l			;b39f
	ld a,(ix+016h)		;b3a0
	and 00fh		;b3a3
	ld d,(ix+005h)		;b3a5
	ld e,(ix+003h)		;b3a8
	ld c,029h		;b3ab
	push ix		;b3ad
L_B3AF:
	call z,06d64h		;b3af
	pop ix		;b3b2
	inc (ix+016h)		;b3b4
	ld a,(ix+016h)		;b3b7
	cp 040h		;b3ba
	ret c			;b3bc
	dec (ix+001h)		;b3bd
	ld (ix+006h),001h		;b3c0
	ld (ix+010h),031h		;b3c4
	ld (ix+016h),034h		;b3c8
	ret			;b3cc
L_B3CD:
	call L_AEA4		;b3cd
	ret z			;b3d0
	ld (ix+074h),000h		;b3d1
	ld (ix+006h),001h		;b3d5
	ret			;b3d9
L_B3DA:
	ld a,(0c012h)		;b3da
	or a			;b3dd
	jr z,L_B3E5		;b3de
	ld a,02ah		;b3e0
	call 041ach		;b3e2
L_B3E5:
	ld hl,0b412h		;b3e5
	call 07084h		;b3e8
	ld hl,0b407h		;b3eb
	call 07073h		;b3ee
	ld a,(0c809h)		;b3f1
	ld c,(ix+005h)		;b3f4
	cp c			;b3f7
	ld (ix+016h),000h		;b3f8
	ret c			;b3fc
	ld (ix+016h),001h		;b3fd
	call 07099h		;b401
	jp 070a1h		;b404

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb407..0xb416  (15 bytes)
DATA_B407:
	defb 000h,001h,000h,0fch,001h,000h,000h,050h,000h,041h,017h,0f1h,0f8h,010h,010h	; b407  .......P.A.....

; ======================================================================
; CODIGO 0xb416..0xb484  (110 bytes)
; ======================================================================


L_B416:
	call L_AE55		;b416
	dec (ix+011h)		;b419
	ret nz			;b41c
	ld a,(ix+016h)		;b41d
	and a			;b420
	ld a,(0c809h)		;b421
	ld c,(ix+005h)		;b424
	jr z,L_B435		;b427
	cp c			;b429
	ld a,015h		;b42a
	jr c,L_B430		;b42c
	ld a,019h		;b42e
L_B430:
	ld (ix+011h),a		;b430
	jr L_B43F		;b433
L_B435:
	cp c			;b435
	ld a,019h		;b436
	jr c,L_B43C		;b438
	ld a,015h		;b43a
L_B43C:
	ld (ix+011h),a		;b43c
L_B43F:
	call 068f9h		;b43f
	jp 070a1h		;b442
L_B445:
	ld a,(0d401h)		;b445
	dec a			;b448
	jr z,L_B461		;b449
	jp p,L_AE66		;b44b
	ld c,035h		;b44e
	ld de,08030h		;b450
	call 06d64h		;b453
	ld c,01dh		;b456
	ld de,08030h		;b458
	call 06d64h		;b45b
	jp L_B098		;b45e
L_B461:
	ld a,(0d402h)		;b461
	and a			;b464
	ret z			;b465
	call L_AE7F		;b466
	ld hl,0d407h		;b469
	set 1,(hl)		;b46c
	ld hl,00064h		;b46e
	call 04818h		;b471
	ld a,04fh		;b474
	call 041ach		;b476
	ld hl,0b484h		;b479
	ld b,006h		;b47c
	call L_AEF7		;b47e
	jp L_B098		;b481

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb484..0xb490  (12 bytes)
DATA_B484:
	defb 000h,0fah,0feh,006h,0f6h,0ffh,0f0h,0f5h,0f1h,00ah,0edh,002h	; b484  ............

; ======================================================================
; CODIGO 0xb490..0xb4bf  (47 bytes)
; ======================================================================


L_B490:
	ld hl,0b4bfh		;b490
	call 07080h		;b493
	call L_AED6		;b496
	ld (ix+011h),040h		;b499
	ld (ix+010h),034h		;b49d
	ld (ix+068h),001h		;b4a1
	ld a,(0c809h)		;b4a5
	sub (ix+005h)		;b4a8
	ld de,00300h		;b4ab
	jr nc,L_B4B3		;b4ae
	ld de,0fd00h		;b4b0
L_B4B3:
	call 07933h		;b4b3
	ld de,00000h		;b4b6
	call 0792ch		;b4b9
	jp L_AF91		;b4bc

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb4bf..0xb4c3  (4 bytes)
DATA_B4BF:
	defb 0ech,0f7h,00bh,012h	; b4bf

; ======================================================================
; CODIGO 0xb4c3..0xb5c2  (255 bytes)
; ======================================================================


L_B4C3:
	call L_ADFC		;b4c3
	ld a,(0d402h)		;b4c6
	and a			;b4c9
	ret nz			;b4ca
	call L_AEF0		;b4cb
	ld a,(ix+001h)		;b4ce
	dec a			;b4d1
	jr z,L_B4EF		;b4d2
	jp p,L_B515		;b4d4
	call L_AEA4		;b4d7
	ret z			;b4da
	ld (ix+006h),001h		;b4db
	ld (ix+011h),040h		;b4df
	xor a			;b4e3
	ld (ix+016h),a		;b4e4
	ld (ix+017h),020h		;b4e7
	ld (ix+074h),a		;b4eb
	ret			;b4ee
L_B4EF:
	ld bc,03308h		;b4ef
	call 070f1h		;b4f2
	call L_B534		;b4f5
	dec (ix+011h)		;b4f8
	jr nz,L_B50B		;b4fb
	call 07099h		;b4fd
	call 0987fh		;b500
	and 00fh		;b503
	add a,a			;b505
	add a,040h		;b506
	ld (ix+011h),a		;b508
L_B50B:
	ld bc,0da26h		;b50b
	ld de,00300h		;b50e
	call 07193h		;b511
	ret			;b514
L_B515:
	dec (ix+011h)		;b515
	ret nz			;b518
	dec (ix+001h)		;b519
	ld (ix+006h),001h		;b51c
	ld (ix+011h),040h		;b520
	ld (ix+016h),000h		;b524
	call 0987fh		;b528
	and 00fh		;b52b
	add a,a			;b52d
	add a,020h		;b52e
	ld (ix+017h),a		;b530
	ret			;b533
L_B534:
	ld a,(ix+016h)		;b534
	dec a			;b537
	jr z,L_B549		;b538
	jp p,L_B56C		;b53a
	dec (ix+017h)		;b53d
	ret nz			;b540
	ld (ix+017h),01fh		;b541
L_B545:
	inc (ix+016h)		;b545
	ret			;b548
L_B549:
	ld a,(ix+017h)		;b549
	and 007h		;b54c
	jr nz,L_B562		;b54e
	ld c,022h		;b550
	call L_B58E		;b552
	jr z,L_B562		;b555
	ld a,(0c012h)		;b557
	or a			;b55a
	jr z,L_B562		;b55b
	ld a,01ch		;b55d
	call 041ach		;b55f
L_B562:
	dec (ix+017h)		;b562
	ret nz			;b565
	ld (ix+017h),020h		;b566
	jr L_B545		;b56a
L_B56C:
	dec (ix+017h)		;b56c
	ret nz			;b56f
	inc (ix+001h)		;b570
	ld (ix+006h),000h		;b573
	ld (ix+011h),008h		;b577
	call L_B5A0		;b57b
	ld c,023h		;b57e
	call L_B58E		;b580
	ret z			;b583
	ld a,(0c012h)		;b584
	or a			;b587
	ret z			;b588
	ld a,01dh		;b589
	jp 041ach		;b58b
L_B58E:
	ld d,(ix+005h)		;b58e
	ld e,(ix+003h)		;b591
	push ix		;b594
	call 06d64h		;b596
	pop ix		;b599
	ld a,(0d411h)		;b59b
	and a			;b59e
	ret			;b59f
L_B5A0:
	call 070d6h		;b5a0
	ld b,035h		;b5a3
	jr nc,L_B5A8		;b5a5
	inc b			;b5a7
L_B5A8:
	ld (ix+010h),b		;b5a8
	ret			;b5ab
L_B5AC:
	ld hl,0b5c2h		;b5ac
	call 07084h		;b5af
	ld (ix+010h),03fh		;b5b2
	ld de,00500h		;b5b6
	call 0792ch		;b5b9
	ld de,00000h		;b5bc
	jp 07933h		;b5bf

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb5c2..0xb5c6  (4 bytes)
DATA_B5C2:
	defb 0f1h,0f8h,010h,010h	; b5c2

; ======================================================================
; CODIGO 0xb5c6..0xb5eb  (37 bytes)
; ======================================================================


L_B5C6:
	ld hl,0b5f6h		;b5c6
	call 07084h		;b5c9
	ld hl,0b5ebh		;b5cc
	call 07073h		;b5cf
	call 070d6h		;b5d2
	ld a,(ix+005h)		;b5d5
	ld b,010h		;b5d8
	jr nc,L_B5DE		;b5da
	ld b,0f0h		;b5dc
L_B5DE:
	add a,b			;b5de
	ld (ix+005h),a		;b5df
	bit 7,b		;b5e2
	ret z			;b5e4
	call 07099h		;b5e5
	jp 070a1h		;b5e8

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb5eb..0xb5fa  (15 bytes)
DATA_B5EB:
	defb 000h,002h,099h,001h,001h,000h,000h,0edh,0ffh,040h,028h,0f1h,0f8h,010h,010h	; b5eb  .........@(....

; ======================================================================
; CODIGO 0xb5fa..0xb670  (118 bytes)
; ======================================================================


L_B5FA:
	jp L_AE55		;b5fa
L_B5FD:
	ld a,(ix+013h)		;b5fd
	and a			;b600
	ld (ix+013h),000h		;b601
	jr nz,L_B625		;b605
	ld a,(ix+001h)		;b607
	dec a			;b60a
	jr z,L_B61D		;b60b
	dec (ix+011h)		;b60d
	ret nz			;b610
	inc (ix+001h)		;b611
	ld (ix+006h),000h		;b614
	ld (ix+011h),03ch		;b618
	ret			;b61c
L_B61D:
	dec (ix+011h)		;b61d
	ret nz			;b620
	ld (ix+011h),00ah		;b621
L_B625:
	ld hl,0dc00h		;b625
	ld de,00080h		;b628
	ld bc,00804h		;b62b
	xor a			;b62e
L_B62F:
	cp (hl)			;b62f
	jr nz,L_B635		;b630
	dec c			;b632
	jr z,L_B639		;b633
L_B635:
	add hl,de			;b635
	djnz L_B62F		;b636
	ret			;b638
L_B639:
	ld a,001h		;b639
	ld (0d41ah),a		;b63b
	call 06a85h		;b63e
	ld b,008h		;b641
	ld hl,0b670h		;b643
L_B646:
	push bc			;b646
	ld a,c			;b647
	ld e,(hl)			;b648
	inc hl			;b649
	ld d,(hl)			;b64a
	inc hl			;b64b
	ld c,(hl)			;b64c
	inc hl			;b64d
	ld b,(hl)			;b64e
	push hl			;b64f
	ld h,b			;b650
	ld l,c			;b651
	ld b,(ix+005h)		;b652
	ld c,(ix+003h)		;b655
	ld a,003h		;b658
	call 07819h		;b65a
	pop hl			;b65d
	pop bc			;b65e
	inc hl			;b65f
	djnz L_B646		;b660
	xor a			;b662
	ld (0d41ah),a		;b663
	ld a,(0c012h)		;b666
	or a			;b669
	ret z			;b66a
	ld a,01eh		;b66b
	jp 041ach		;b66d

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb670..0xb690  (32 bytes)
DATA_B670:
	defb 000h,000h,000h,005h,000h,000h,000h,0fbh,000h,005h,000h,000h,000h,0fbh,000h,000h	; b670  ................
	defb 08bh,003h,08bh,003h,08bh,003h,075h,0fch,075h,0fch,08bh,003h,075h,0fch,075h,0fch	; b680  ......u.u...u.u.

; ======================================================================
; CODIGO 0xb690..0xb6d7  (71 bytes)
; ======================================================================


L_B690:
	ld a,(0d401h)		;b690
	dec a			;b693
	jr z,L_B6AC		;b694
	jp p,L_AE66		;b696
	ld c,036h		;b699
	ld de,08046h		;b69b
	call 06d64h		;b69e
	ld c,01eh		;b6a1
	ld de,08046h		;b6a3
	call 06d64h		;b6a6
	jp L_B098		;b6a9
L_B6AC:
	ld a,(0d402h)		;b6ac
	and a			;b6af
	ret z			;b6b0
	call L_AE7F		;b6b1
	ld hl,0d407h		;b6b4
	set 3,(hl)		;b6b7
	ld hl,00064h		;b6b9
	call 04818h		;b6bc
	ld a,04fh		;b6bf
	call 041ach		;b6c1
	ld hl,0b6d7h		;b6c4
	ld b,008h		;b6c7
	call L_AEF7		;b6c9
	ld a,008h		;b6cc
	ld de,04404h		;b6ce
	call 04d03h		;b6d1
	jp L_B098		;b6d4

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb6d7..0xb6e7  (16 bytes)
DATA_B6D7:
	defb 002h,003h,0fbh,0f8h,0f5h,0ffh,0efh,009h,0e9h,0f7h,0ebh,001h,0e2h,004h,0deh,0f9h	; b6d7  ................

; ======================================================================
; CODIGO 0xb6e7..0xb70c  (37 bytes)
; ======================================================================


L_B6E7:
	ld hl,0b70ch		;b6e7
	call 07080h		;b6ea
	call L_AED6		;b6ed
	xor a			;b6f0
	ld (ix+006h),a		;b6f1
	ld (ix+010h),037h		;b6f4
	ld (ix+011h),040h		;b6f8
	ld (ix+016h),a		;b6fc
	inc a			;b6ff
	ld (ix+068h),a		;b700
	ld (0d409h),a		;b703
	call L_B7C1		;b706
	jp L_AF91		;b709

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb70c..0xb710  (4 bytes)
DATA_B70C:
	defb 0d3h,0f9h,00ch,012h	; b70c

; ======================================================================
; CODIGO 0xb710..0xb728  (24 bytes)
; ======================================================================


L_B710:
	call L_B833		;b710
	call L_ADFC		;b713
	ld a,(0d402h)		;b716
	and a			;b719
	jr z,L_B71F		;b71a
	call L_B7DB		;b71c
L_B71F:
	call L_AEF0		;b71f
	ld a,(ix+001h)		;b722
	call 040aeh		;b725

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb728..0xb732  (10 bytes)
DATA_B728:
	defb 032h,0b7h,052h,0b7h,060h,0b7h,076h,0b7h,0b0h,0b7h	; b728  2.R.`.v...

; ======================================================================
; CODIGO 0xb732..0xb79e  (108 bytes)
; ======================================================================


L_B732:
	dec (ix+011h)		;b732
	jr z,L_B741		;b735
	bit 1,(ix+011h)		;b737
	jp nz,L_B7DB		;b73b
	jp L_B7F5		;b73e
L_B741:
	inc (ix+001h)		;b741
	ld (ix+011h),018h		;b744
	xor a			;b748
	ld (ix+074h),a		;b749
	ld (0d409h),a		;b74c
	jp L_B7F5		;b74f
L_B752:
	dec (ix+011h)		;b752
	ret nz			;b755
	inc (ix+001h)		;b756
	ld (ix+011h),018h		;b759
	jp L_B80F		;b75d
L_B760:
	dec (ix+011h)		;b760
	ret nz			;b763
	inc (ix+001h)		;b764
	ld (ix+011h),030h		;b767
	ld (ix+074h),003h		;b76b
	ld a,001h		;b76f
	ld (0d409h),a		;b771
	jr $+103		;b774
L_B776:
	dec (ix+011h)		;b776
	ret nz			;b779
	inc (ix+001h)		;b77a
	inc (ix+016h)		;b77d
	ld a,(ix+016h)		;b780
	cp 009h		;b783
	jr c,L_B78B		;b785
	ld (ix+016h),000h		;b787
L_B78B:
	add a,a			;b78b
	ld hl,0b79ch		;b78c
	call 040a4h		;b78f
	ld a,(hl)			;b792
	ld (ix+005h),a		;b793
	inc hl			;b796
	ld a,(hl)			;b797
	ld (ix+003h),a		;b798
	jp L_B7C1		;b79b

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb79e..0xb7b0  (18 bytes)
DATA_B79E:
	defb 0c0h,042h,090h,059h,040h,04fh,060h,03ch,0b0h,050h,070h,038h,0a0h,045h,050h,05dh	; b79e  .B.Y@O`<.Pp8.EP]
	defb 080h,046h	; b7ae

; ======================================================================
; CODIGO 0xb7b0..0xb843  (147 bytes)
; ======================================================================


L_B7B0:
	ld (ix+001h),001h		;b7b0
	ld (ix+011h),018h		;b7b4
	xor a			;b7b8
	ld (ix+074h),a		;b7b9
	ld (0d409h),a		;b7bc
	jr L_B7F5		;b7bf
L_B7C1:
	ld a,(ix+005h)		;b7c1
	sub 010h		;b7c4
	ld h,a			;b7c6
	ld a,(0c385h)		;b7c7
	add a,(ix+003h)		;b7ca
	sub 02fh		;b7cd
	ld l,a			;b7cf
	ld de,0e040h		;b7d0
	ld bc,02030h		;b7d3
	ld a,004h		;b7d6
	jp 05252h		;b7d8
L_B7DB:
	ld a,(ix+005h)		;b7db
	sub 010h		;b7de
	ld d,a			;b7e0
	ld a,(0c385h)		;b7e1
	add a,(ix+003h)		;b7e4
	sub 02fh		;b7e7
	ld e,a			;b7e9
	ld hl,0e040h		;b7ea
	ld bc,02030h		;b7ed
	ld a,001h		;b7f0
	jp 05226h		;b7f2
L_B7F5:
	ld a,(ix+005h)		;b7f5
	sub 010h		;b7f8
	ld d,a			;b7fa
	ld a,(0c385h)		;b7fb
	add a,(ix+003h)		;b7fe
	sub 02fh		;b801
	ld e,a			;b803
	ld hl,0e0b0h		;b804
	ld bc,02030h		;b807
	ld a,048h		;b80a
	jp 051f2h		;b80c
L_B80F:
	ld bc,00725h		;b80f
	ld d,(ix+005h)		;b812
	ld e,(ix+003h)		;b815
L_B818:
	ld a,b			;b818
	ld (0d408h),a		;b819
	push bc			;b81c
	push de			;b81d
	push ix		;b81e
	call 06d64h		;b820
	pop ix		;b823
	pop de			;b825
	pop bc			;b826
	djnz L_B818		;b827
	ld a,(0c012h)		;b829
	or a			;b82c
	ret z			;b82d
	ld a,01dh		;b82e
	jp 041ach		;b830
L_B833:
	ld a,(ix+013h)		;b833
	and 00bh		;b836
	ld hl,0b843h		;b838
	jr z,L_B840		;b83b
	ld hl,0b850h		;b83d
L_B840:
	jp 04d3fh		;b840

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb843..0xb85d  (26 bytes)
DATA_B843:
	defb 006h,063h,005h,007h,031h,002h,008h,042h,002h,009h,042h,003h,0ffh,006h,077h,007h	; b843  .c..1..B..B...w.
	defb 007h,077h,007h,008h,077h,007h,009h,077h,007h,0ffh	; b853  .w..w..w..

; ======================================================================
; CODIGO 0xb85d..0xb885  (40 bytes)
; ======================================================================


L_B85D:
	ld hl,0b8a1h		;b85d
	call 07084h		;b860
	ld (ix+010h),042h		;b863
	ld hl,0b881h		;b867
	ld a,(0d408h)		;b86a
	add a,a			;b86d
	add a,a			;b86e
	call 040a4h		;b86f
	ld e,(hl)			;b872
	inc hl			;b873
	ld d,(hl)			;b874
	call 07933h		;b875
	inc hl			;b878
	ld e,(hl)			;b879
	inc hl			;b87a
	ld d,(hl)			;b87b
	call 070cfh		;b87c
	call c,079ebh		;b87f
	jp 0792ch		;b882

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb885..0xb8a5  (32 bytes)
DATA_B885:
	defb 000h,005h,000h,000h,053h,004h,080h,002h,080h,002h,053h,004h,000h,000h,000h,005h	; b885  ....S.....S.....
	defb 080h,0fdh,053h,004h,0adh,0fbh,080h,002h,000h,0fbh,000h,000h,0f1h,0f8h,010h,010h	; b895  ..S.............

; ======================================================================
; CODIGO 0xb8a5..0xb903  (94 bytes)
; ======================================================================


L_B8A5:
	jp L_AE55		;b8a5
L_B8A8:
	ld a,(0d401h)		;b8a8
	dec a			;b8ab
	jr z,L_B8C4		;b8ac
	jp p,L_AE66		;b8ae
	ld c,037h		;b8b1
	ld de,08046h		;b8b3
	call 06d64h		;b8b6
	ld c,01fh		;b8b9
	ld de,08046h		;b8bb
	call 06d64h		;b8be
	jp L_B098		;b8c1
L_B8C4:
	ld a,(0d402h)		;b8c4
	and a			;b8c7
	ret z			;b8c8
	call L_AE7F		;b8c9
	ld hl,0d407h		;b8cc
	set 4,(hl)		;b8cf
	ld hl,00064h		;b8d1
	call 04818h		;b8d4
	ld a,04fh		;b8d7
	call 041ach		;b8d9
	ld b,008h		;b8dc
	ld hl,0b6d7h		;b8de
	call L_AEF7		;b8e1
	jp L_B098		;b8e4
L_B8E7:
	ld hl,0b903h		;b8e7
	call 07080h		;b8ea
	call L_AED6		;b8ed
	ld (ix+010h),038h		;b8f0
	ld (ix+011h),040h		;b8f4
	ld (ix+018h),005h		;b8f8
	ld (ix+068h),001h		;b8fc
	jp L_AF91		;b900

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb903..0xb907  (4 bytes)
DATA_B903:
	defb 0d4h,0f7h,00fh,012h	; b903

; ======================================================================
; CODIGO 0xb907..0xb91e  (23 bytes)
; ======================================================================


L_B907:
	call L_ADFC		;b907
	ld a,(0d402h)		;b90a
	and a			;b90d
	ret nz			;b90e
	call L_AEF0		;b90f
	ld bc,03810h		;b912
	call 070f1h		;b915
	ld a,(ix+001h)		;b918
	call 040aeh		;b91b

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb91e..0xb92c  (14 bytes)
DATA_B91E:
	defb 02ch,0b9h,03fh,0b9h,070h,0b9h,091h,0b9h,0c6h,0b9h,0e4h,0b9h,01eh,0bah	; b91e  ,.?.p.........

; ======================================================================
; CODIGO 0xb92c..0xba6a  (318 bytes)
; ======================================================================


L_B92C:
	call L_AEA4		;b92c
	ret z			;b92f
	xor a			;b930
	ld (ix+074h),a		;b931
	inc a			;b934
	ld (ix+006h),a		;b935
	ld (ix+011h),a		;b938
	ld (ix+017h),a		;b93b
	ret			;b93e
L_B93F:
	dec (ix+011h)		;b93f
	ret nz			;b942
	ld a,(ix+018h)		;b943
	and a			;b946
	ld a,001h		;b947
	ld (ix+011h),004h		;b949
	jp z,L_BA14		;b94d
	call 070bdh		;b950
	cp 010h		;b953
	jr c,L_B965		;b955
	call 070b3h		;b957
	cp 050h		;b95a
	ld a,001h		;b95c
	ld (ix+011h),004h		;b95e
	jp nc,L_BA14		;b962
L_B965:
	call 070d6h		;b965
	ld a,002h		;b968
	jr c,L_B96D		;b96a
	inc a			;b96c
L_B96D:
	jp L_BA10		;b96d
L_B970:
	dec (ix+011h)		;b970
	ret nz			;b973
	ld a,(ix+018h)		;b974
	and a			;b977
	ld a,006h		;b978
	jp z,L_BA10		;b97a
	call 070b3h		;b97d
	cp 050h		;b980
	ld a,004h		;b982
	jp nc,L_BA10		;b984
	cp 030h		;b987
	ld a,005h		;b989
	jr c,L_B98E		;b98b
	inc a			;b98d
L_B98E:
	jp L_BA10		;b98e
L_B991:
	dec (ix+011h)		;b991
	ret nz			;b994
	ld a,(ix+018h)		;b995
	and a			;b998
	ld a,009h		;b999
	jp z,L_BA10		;b99b
	call 070bdh		;b99e
	cp 010h		;b9a1
	jr c,L_B9BC		;b9a3
	call 070b3h		;b9a5
	cp 050h		;b9a8
	ld a,007h		;b9aa
	ld (ix+011h),004h		;b9ac
	jr nc,L_BA14		;b9b0
	cp 030h		;b9b2
	ld a,008h		;b9b4
	ld (ix+011h),004h		;b9b6
	jr nc,L_BA14		;b9ba
L_B9BC:
	call 070d6h		;b9bc
	ld a,009h		;b9bf
	jr c,L_B9C4		;b9c1
	inc a			;b9c3
L_B9C4:
	jr L_BA10		;b9c4
L_B9C6:
	dec (ix+011h)		;b9c6
	ret nz			;b9c9
	ld a,(ix+018h)		;b9ca
	and a			;b9cd
	ld a,00dh		;b9ce
	jr z,L_BA10		;b9d0
	call 070b3h		;b9d2
	cp 050h		;b9d5
	ld a,00bh		;b9d7
	jr nc,L_BA10		;b9d9
	cp 030h		;b9db
	ld a,00ch		;b9dd
	jr c,L_B9E2		;b9df
	inc a			;b9e1
L_B9E2:
	jr L_BA10		;b9e2
L_B9E4:
	dec (ix+011h)		;b9e4
	ret nz			;b9e7
	ld a,(ix+018h)		;b9e8
	and a			;b9eb
	ld a,00eh		;b9ec
	ld (ix+011h),004h		;b9ee
	jr z,L_BA14		;b9f2
	call 070bdh		;b9f4
	cp 010h		;b9f7
	jr c,L_BA08		;b9f9
	call 070b3h		;b9fb
	cp 030h		;b9fe
	ld a,00eh		;ba00
	ld (ix+011h),004h		;ba02
	jr nc,L_BA14		;ba06
L_BA08:
	call 070d6h		;ba08
	ld a,00fh		;ba0b
	jr c,L_BA10		;ba0d
	inc a			;ba0f
L_BA10:
	ld (ix+011h),00ch		;ba10
L_BA14:
	ld (ix+001h),006h		;ba14
	ld (ix+006h),001h		;ba18
	jr L_BA48		;ba1c
L_BA1E:
	dec (ix+011h)		;ba1e
	ret nz			;ba21
	ld a,(ix+018h)		;ba22
	and a			;ba25
	jr nz,L_BA2C		;ba26
	ld (ix+018h),006h		;ba28
L_BA2C:
	dec (ix+018h)		;ba2c
	ld (ix+006h),000h		;ba2f
	ld (ix+011h),00ah		;ba33
	ld a,(ix+016h)		;ba37
	ld (ix+001h),a		;ba3a
	dec (ix+017h)		;ba3d
	ret nz			;ba40
	ld (ix+017h),005h		;ba41
	jp L_BAAA		;ba45
L_BA48:
	add a,a			;ba48
	ld hl,0ba68h		;ba49
	call 040a4h		;ba4c
	ld a,(hl)			;ba4f
	ld (ix+016h),a		;ba50
	inc hl			;ba53
	ld a,(hl)			;ba54
	add a,a			;ba55
	add a,a			;ba56
	ld hl,0ba8ah		;ba57
	call 040a4h		;ba5a
	ld e,(hl)			;ba5d
	inc hl			;ba5e
	ld d,(hl)			;ba5f
	call 07933h		;ba60
	inc hl			;ba63
	ld e,(hl)			;ba64
	inc hl			;ba65
	ld d,(hl)			;ba66
	jp 0792ch		;ba67

; ----------------------------------------------------------------------
; DATOS sin identificar  0xba6a..0xbaaa  (64 bytes)
DATA_BA6A:
	defb 003h,004h,002h,005h,004h,003h,005h,003h,001h,001h,003h,002h,005h,004h,001h,000h	; ba6a  ................
	defb 002h,006h,004h,002h,005h,005h,001h,007h,003h,006h,003h,000h,002h,007h,004h,001h	; ba7a  ................
	defb 000h,000h,000h,0fah,000h,006h,000h,0feh,000h,006h,000h,000h,000h,006h,000h,002h	; ba8a  ................
	defb 000h,000h,000h,006h,000h,0fah,000h,002h,000h,0fah,000h,000h,000h,0fah,000h,0feh	; ba9a  ................

; ======================================================================
; CODIGO 0xbaaa..0xbae6  (60 bytes)
; ======================================================================


L_BAAA:
	ld bc,00526h		;baaa
	ld d,(ix+005h)		;baad
	ld e,(ix+003h)		;bab0
L_BAB3:
	ld a,b			;bab3
	ld (0d408h),a		;bab4
	push bc			;bab7
	push de			;bab8
	call 06d64h		;bab9
	pop de			;babc
	pop bc			;babd
	djnz L_BAB3		;babe
	ld a,(0c012h)		;bac0
	or a			;bac3
	ret z			;bac4
	ld a,01dh		;bac5
	jp 041ach		;bac7
L_BACA:
	ld hl,0bae6h		;baca
	call 07084h		;bacd
	ld (ix+010h),043h		;bad0
	ld a,(0d408h)		;bad4
	ld de,0bae8h		;bad7
	call 0486fh		;bada
	call 07933h		;badd
	ld de,00400h		;bae0
	jp 0792ch		;bae3

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbae6..0xbaf4  (14 bytes)
DATA_BAE6:
	defb 0f1h,0f8h,010h,010h,0b6h,001h,04ah,0feh,094h,0fch,000h,000h,06ch,003h	; bae6  ......J.....l.

; ======================================================================
; CODIGO 0xbaf4..0xbb65  (113 bytes)
; ======================================================================


L_BAF4:
	call L_AE55		;baf4
	ld bc,04304h		;baf7
	call 070f1h		;bafa
	ld a,(ix+060h)		;bafd
	and 003h		;bb00
	jr nz,L_BB14		;bb02
	ld a,(0c012h)		;bb04
	or a			;bb07
	jr z,L_BB14		;bb08
	ld a,(0c072h)		;bb0a
	ld b,a			;bb0d
	ld a,02bh		;bb0e
	cp b			;bb10
	call nz,041ach		;bb11
L_BB14:
	ld a,(ix+001h)		;bb14
	dec a			;bb17
	ret z			;bb18
	ld a,(ix+003h)		;bb19
	cp 0cfh		;bb1c
	ret c			;bb1e
	inc (ix+001h)		;bb1f
	ld de,00000h		;bb22
	call 07933h		;bb25
	ld de,0fc00h		;bb28
	jp 0792ch		;bb2b
L_BB2E:
	ld a,(0d401h)		;bb2e
	dec a			;bb31
	jr z,L_BB4A		;bb32
	jp p,L_BB79		;bb34
	ld c,038h		;bb37
	ld de,08046h		;bb39
	call 06d64h		;bb3c
	ld c,020h		;bb3f
	ld de,08046h		;bb41
	call 06d64h		;bb44
	jp L_B098		;bb47
L_BB4A:
	ld a,(0d402h)		;bb4a
	and a			;bb4d
	ret z			;bb4e
	ld hl,00064h		;bb4f
	call 04818h		;bb52
	ld a,052h		;bb55
	call 041ach		;bb57
	ld hl,0bb65h		;bb5a
	ld b,00ah		;bb5d
	call L_AEF7		;bb5f
	jp L_B098		;bb62

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbb65..0xbb79  (20 bytes)
DATA_BB65:
	defb 001h,0f8h,0ffh,00ah,0fch,002h,0f6h,0fbh,0f1h,008h,0edh,0f9h,0ech,002h,0e3h,000h	; bb65  ................
	defb 0e1h,009h,0dfh,0f7h	; bb75

; ======================================================================
; CODIGO 0xbb79..0xbba5  (44 bytes)
; ======================================================================


L_BB79:
	ld hl,0d403h		;bb79
	dec (hl)			;bb7c
	ret nz			;bb7d
	xor a			;bb7e
	ld (0d400h),a		;bb7f
	ld a,00ch		;bb82
	jp 0432eh		;bb84
L_BB87:
	ld hl,0bbb0h		;bb87
	call 07080h		;bb8a
	ld hl,0bba5h		;bb8d
	call 07073h		;bb90
	call L_AED6		;bb93
	ld (ix+016h),050h		;bb96
	ld (ix+017h),020h		;bb9a
	ld (ix+068h),001h		;bb9e
	jp L_AF91		;bba2

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbba5..0xbbb4  (15 bytes)
DATA_BBA5:
	defb 000h,000h,000h,003h,000h,000h,000h,000h,000h,03ah,040h,0d5h,0fah,00eh,00bh	; bba5  .........:@....

; ======================================================================
; CODIGO 0xbbb4..0xbca2  (238 bytes)
; ======================================================================


L_BBB4:
	call L_ADFC		;bbb4
	ld a,(0d402h)		;bbb7
	and a			;bbba
	ret nz			;bbbb
	call L_AEF0		;bbbc
	ld a,(ix+001h)		;bbbf
	dec a			;bbc2
	jr z,L_BBDD		;bbc3
	dec a			;bbc5
	jp z,L_BC18		;bbc6
	jp p,L_BC32		;bbc9
	call L_AEA4		;bbcc
	ret z			;bbcf
	ld (ix+006h),001h		;bbd0
	ld (ix+011h),070h		;bbd4
	ld (ix+074h),000h		;bbd8
	ret			;bbdc
L_BBDD:
	ld bc,03a08h		;bbdd
	call 070f1h		;bbe0
	ld bc,0d030h		;bbe3
	ld de,00300h		;bbe6
	call 07193h		;bbe9
	call L_BC5D		;bbec
	ld a,(0c4b0h)		;bbef
	and 001h		;bbf2
	ret nz			;bbf4
	dec (ix+016h)		;bbf5
	jr nz,L_BC01		;bbf8
	ld (ix+016h),050h		;bbfa
	jp 07099h		;bbfe
L_BC01:
	dec (ix+011h)		;bc01
	ret nz			;bc04
	inc (ix+001h)		;bc05
	ld (ix+011h),028h		;bc08
	ld de,00000h		;bc0c
	call 07933h		;bc0f
	ld de,00300h		;bc12
	jp 0792ch		;bc15
L_BC18:
	ld bc,03a08h		;bc18
	call 070f1h		;bc1b
	call L_BC5D		;bc1e
	dec (ix+011h)		;bc21
	ret nz			;bc24
	inc (ix+001h)		;bc25
	ld (ix+011h),028h		;bc28
	ld de,0fd00h		;bc2c
	jp 0792ch		;bc2f
L_BC32:
	ld bc,03a08h		;bc32
	call 070f1h		;bc35
	call L_BC5D		;bc38
	dec (ix+011h)		;bc3b
	ret nz			;bc3e
	ld (ix+001h),001h		;bc3f
	call 0987fh		;bc43
	and 01fh		;bc46
	add a,070h		;bc48
	ld (ix+011h),a		;bc4a
	ld (ix+016h),050h		;bc4d
	ld de,00300h		;bc51
	call 07933h		;bc54
	ld de,00000h		;bc57
	jp 0792ch		;bc5a
L_BC5D:
	dec (ix+017h)		;bc5d
	ret nz			;bc60
	ld (ix+017h),020h		;bc61
	ld d,(ix+005h)		;bc65
	ld e,(ix+003h)		;bc68
	ld c,027h		;bc6b
	push de			;bc6d
	call 06d64h		;bc6e
	pop de			;bc71
	ld bc,00228h		;bc72
L_BC75:
	push de			;bc75
	push bc			;bc76
	call 06d66h		;bc77
	pop bc			;bc7a
	pop de			;bc7b
	djnz L_BC75		;bc7c
	ld hl,0d408h		;bc7e
	inc (hl)			;bc81
	ld a,(0c012h)		;bc82
	or a			;bc85
	ret z			;bc86
	ld a,019h		;bc87
	jp 041ach		;bc89
L_BC8C:
	ld hl,0bca2h		;bc8c
	call 07084h		;bc8f
	ld (ix+010h),045h		;bc92
	ld de,00000h		;bc96
	call 07933h		;bc99
	ld de,00400h		;bc9c
	jp 0792ch		;bc9f

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbca2..0xbca6  (4 bytes)
DATA_BCA2:
	defb 0f1h,0f8h,010h,010h	; bca2

; ======================================================================
; CODIGO 0xbca6..0xbcde  (56 bytes)
; ======================================================================


L_BCA6:
	call L_AE55		;bca6
	ld bc,04504h		;bca9
	jp 070f1h		;bcac
L_BCAF:
	ld hl,0bca2h		;bcaf
	call 07084h		;bcb2
	ld (ix+010h),045h		;bcb5
	ld hl,0bcdeh		;bcb9
	ld a,(0d408h)		;bcbc
	and 003h		;bcbf
	add a,a			;bcc1
	add a,a			;bcc2
	call 040a4h		;bcc3
	ld a,(hl)			;bcc6
	ld (ix+011h),a		;bcc7
	inc hl			;bcca
	ld c,(hl)			;bccb
	bit 0,(ix+015h)		;bccc
	ld (ix+015h),000h		;bcd0
	inc hl			;bcd4
	jr z,L_BCD8		;bcd5
	inc hl			;bcd7
L_BCD8:
	ld b,(hl)			;bcd8
	ld a,0b0h		;bcd9
	jp 0716bh		;bcdb

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbcde..0xbcee  (16 bytes)
DATA_BCDE:
	defb 010h,050h,030h,0d0h,010h,070h,030h,0d0h,020h,0c0h,030h,0d0h,020h,0b0h,030h,0d0h	; bcde  .P0..p0. .0. .0.

; ======================================================================
; CODIGO 0xbcee..0xbe36  (328 bytes)
; ======================================================================


L_BCEE:
	call L_AE55		;bcee
	ld bc,04504h		;bcf1
	call 070f1h		;bcf4
	ld a,(ix+001h)		;bcf7
	dec a			;bcfa
	ret z			;bcfb
	dec (ix+011h)		;bcfc
	ret nz			;bcff
	inc (ix+001h)		;bd00
	ld a,0b0h		;bd03
	jp 07189h		;bd05
L_BD08:
	call 0623eh		;bd08
	ld a,(ix+001h)		;bd0b
	dec a			;bd0e
	jr z,L_BD40		;bd0f
	jp p,L_BD78		;bd11
	ld de,00101h		;bd14
	ld hl,00001h		;bd17
	ld a,(ix+055h)		;bd1a
	call 062e2h		;bd1d
	neg		;bd20
	add a,(ix+043h)		;bd22
	ld (ix+043h),a		;bd25
	ret nc			;bd28
	ld (ix+046h),0a0h		;bd29
	ld (ix+001h),001h		;bd2d
	ld (ix+056h),001h		;bd31
	ld a,013h		;bd35
	call 041ach		;bd37
	ld hl,0000ah		;bd3a
	jp 04818h		;bd3d
L_BD40:
	ld a,(ix+029h)		;bd40
	or a			;bd43
	ld a,(ix+003h)		;bd44
	jr z,L_BD59		;bd47
	jp p,L_BD53		;bd49
	sub 040h		;bd4c
	cp 098h		;bd4e
	ret nc			;bd50
	jr L_BD5C		;bd51
L_BD53:
	dec a			;bd53
	cp 0d8h		;bd54
	ret nc			;bd56
	jr L_BD5C		;bd57
L_BD59:
	cp 0d8h		;bd59
	ret nc			;bd5b
L_BD5C:
	ld a,(ix+003h)		;bd5c
	add a,(ix+029h)		;bd5f
	add a,018h		;bd62
	cp 0c0h		;bd64
	ret nc			;bd66
	set 7,(ix+028h)		;bd67
	set 7,(ix+038h)		;bd6b
	ld (ix+001h),002h		;bd6f
	set 0,(ix+05eh)		;bd73
	ret			;bd77
L_BD78:
	ld a,(ix+055h)		;bd78
	and 004h		;bd7b
	ret z			;bd7d
	ld a,(0c800h)		;bd7e
	cp 001h		;bd81
	ret z			;bd83
	cp 002h		;bd84
	ret z			;bd86
	ld a,(ix+003h)		;bd87
	add a,(ix+029h)		;bd8a
	ld c,a			;bd8d
	sub 020h		;bd8e
	cp 0a0h		;bd90
	ret nc			;bd92
	ld a,(ix+005h)		;bd93
	add a,(ix+02ah)		;bd96
	add a,008h		;bd99
	ld (0c809h),a		;bd9b
	ld a,c			;bd9e
	add a,008h		;bd9f
	ld (0c80bh),a		;bda1
	ld (ix+055h),000h		;bda4
	ld a,002h		;bda8
	ld (0c860h),a		;bdaa
	ld a,027h		;bdad
	call 041ach		;bdaf
	jp 075ceh		;bdb2
L_BDB5:
	call 06136h		;bdb5
	ld (ix+043h),001h		;bdb8
	ld de,0be36h		;bdbc
	call 06162h		;bdbf
	ld de,0be36h		;bdc2
	call 061a5h		;bdc5
	ld de,0be36h		;bdc8
	call 061a5h		;bdcb
	ld de,0be36h		;bdce
	call 061a5h		;bdd1
	ld (ix+036h),060h		;bdd4
	ld (ix+035h),090h		;bdd8
	ld (ix+03eh),070h		;bddc
	ld (ix+03dh),090h		;bde0
	call 061cfh		;bde4
	ld de,0be3dh		;bde7
	call 06186h		;bdea
	call 061cfh		;bded
	ld a,(0cb06h)		;bdf0
	ld c,a			;bdf3
	and 0f8h		;bdf4
	ld (ix+005h),a		;bdf6
	xor c			;bdf9
	and 003h		;bdfa
	xor 001h		;bdfc
	ld c,a			;bdfe
	ld a,040h		;bdff
	rr c		;be01
	jr c,$+3		;be03
	neg		;be05
	rr c		;be07
	jr c,L_BE13		;be09
	add a,(ix+029h)		;be0b
	ld (ix+029h),a		;be0e
	jr L_BE19		;be11
L_BE13:
	add a,(ix+02ah)		;be13
	ld (ix+02ah),a		;be16
L_BE19:
	ld a,(ix+02ah)		;be19
	ld (ix+03ah),a		;be1c
	ld a,(ix+029h)		;be1f
	ld (ix+039h),a		;be22
	ld (ix+036h),060h		;be25
	ld (ix+035h),090h		;be29
	ld (ix+03eh),070h		;be2d
	ld (ix+03dh),090h		;be31
	ret			;be35

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbe36..0xc000  (458 bytes)
DATA_BE36:
	defb 004h,000h,000h,010h,010h,0b0h,070h,080h,000h,000h,010h,010h,000h,0ffh,0ffh,0ffh	; be36  ......p.........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be46  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be56  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be66  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be76  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be86  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be96  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bea6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; beb6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bec6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bed6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bee6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bef6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf06  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf16  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf26  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf36  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf46  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf56  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf66  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf76  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf86  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf96  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfa6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfb6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfc6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfd6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfe6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff6  ..........
