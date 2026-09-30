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
	ld a,(0c117h)		;6002   ; 0xC117: las vidas con que empieza la partida (MENU)
	ld (0c160h),a		;6005   ; 0xC160: las VIDAS, en BCD (p00:4417; GAOOOOOOOOOOH suma 10)
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
	call con_hl_mas_a		;6025
	pop hl			;6028
	pop af			;6029
	ld (hl),a			;602a
	jp L_6032		;602b
con_hl_mas_a:
	ld b,000h		;602e
	jr L_6034		;6030
L_6032:
	ld b,03eh		;6032
L_6034:
	ld hl,06041h		;6034   ; p01:6041 tabla_6041: tabla que lee p01:6034, p06:AD68, p06:AE74 (56 bytes)
	call 040a4h		;6037   ; p00:40A4 hl_mas_a
	ld e,(hl)			;603a
	ld d,028h		;603b
	ld a,b			;603d
	jp 04fa3h		;603e

; ----------------------------------------------------------------------
; DATOS tabla_6041: tabla que lee p01:6034, p06:AD68, p06:AE74 (56 bytes)
;   0x6041..0x6079  (56 bytes)
DATA_tabla_6041:
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
	ld a,009h		;607d   ; el banco 9 en 0xA000
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
	ld de,0c485h		;608f   ; 0xC485: bit 7: hay que cambiar de area (p01:64CD)
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
	ld a,003h		;60a3   ; el banco 3 en 0xA000
	jp 05434h		;60a5

; ----------------------------------------------------------------------
; DATOS sin_lector_60A8: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (8 bytes)
;   0x60a8..0x60b0  (8 bytes)
DATA_sin_lector_60A8:
	defb 0ddh,07eh,003h,0bah,03fh,0d0h,0bbh,0c9h	; 60a8  .~..?...

; ======================================================================
; CODIGO 0x60b0..0x60c8  (24 bytes)
; ======================================================================


L_60B0:
	ld a,(0c102h)		;60b0   ; 0xC102: bit 0: es la demostracion; bit 6: hay partida (p00:46A5)
	bit 0,a		;60b3
	ld a,037h		;60b5
	jp nz,041ach		;60b7
	ld a,(0c482h)		;60ba   ; 0xC482: el juego de dibujos, 0-7 (p01:65BB)
	ld hl,060c8h		;60bd   ; p01:60C8 tabla_60C8: tabla que lee p01:60BD (9 bytes)
	ld e,a			;60c0
	ld d,000h		;60c1
	add hl,de			;60c3
	ld a,(hl)			;60c4
	jp 041ach		;60c5

; ----------------------------------------------------------------------
; DATOS tabla_60C8: tabla que lee p01:60BD (9 bytes)
;   0x60c8..0x60d1  (9 bytes)
DATA_tabla_60C8:
	defb 037h,037h,037h,037h,037h,03ah,03dh,040h,03ah	; 60c8  77777:=@:

; ======================================================================
; CODIGO 0x60d1..0x6101  (48 bytes)
; ======================================================================


L_60D1:
	ret			;60d1
mira_truco_aaaaa:
	ld a,(0c4d1h)		;60d2   ; 0xC4D1: lo pone la contrasena 'aaaaa', que no se puede teclear (p06:B9AC)
	or a			;60d5
	ret z			;60d6
	ld hl,(0c302h)		;60d7   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	call 04893h		;60da
	ld hl,0e800h		;60dd   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	ld (hl),e			;60e0
	inc hl			;60e1
	ld (hl),d			;60e2
	ld b,002h		;60e3
	ld de,030b0h		;60e5
	call 04853h		;60e8
	ld hl,(0d412h)		;60eb   ; 0xD412: lo que controla la salida de bichos
	ld h,000h		;60ee
	call 04893h		;60f0
	ld hl,0e800h		;60f3   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	ld (hl),e			;60f6
	inc hl			;60f7
	ld (hl),d			;60f8
	ld b,002h		;60f9
	ld de,0a0b0h		;60fb
	jp 04853h		;60fe

; ----------------------------------------------------------------------
; DATOS sin_lector_6101: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (13 bytes)
;   0x6101..0x610e  (13 bytes)
DATA_sin_lector_6101:
	defb 02ah,028h,0c8h,022h,008h,0c8h,02ah,026h,0c8h,022h,00ah,0c8h,0c9h	; 6101  *(."..*&."...

; ======================================================================
; CODIGO 0x610e..0x6124  (22 bytes)
; ======================================================================


L_610E:
	ld a,(0c820h)		;610e   ; 0xC820: la ficha de Gao
	sub (ix+005h)		;6111   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
	sub d			;6114
	cp (ix+016h)		;6115
	ret nc			;6118
	ld a,(0c821h)		;6119   ; 0xC821: la ficha de Gao
	sub (ix+003h)		;611c   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	sub e			;611f
	cp (ix+015h)		;6120
	ret			;6123

; ----------------------------------------------------------------------
; DATOS sin_llamar_6124: codigo que no llama nadie (ninguna palabra del
;   cartucho vale 0x6124): dec (ix+006h) / ret nz / ld e,(ix+007h) / call
;   049cbh ... (18 bytes)
;   0x6124..0x6136  (18 bytes)
DATA_sin_llamar_6124:
	defb 0ddh,035h,006h,0c0h,0ddh,05eh,007h,0cdh,0cbh,049h,0ddh,073h,007h,0ddh,077h,006h	; 6124  .5...^...I.s..w.
	defb 0afh,0c9h	; 6134

; ======================================================================
; CODIGO 0x6136..0x6158  (34 bytes)
; ======================================================================


L_6136:
	push ix		;6136   ; HL = la ficha
	pop hl			;6138
	ld a,(0cb04h)		;6139   ; 0xCB04: las cosas del camino que se van poniendo (p01:72ED)
	ld (hl),a			;613c
	xor a			;613d
	inc l			;613e
	ld (hl),a			;613f
	inc l			;6140
	ld (hl),a			;6141
	inc l			;6142
	ld (hl),0f8h		;6143
	ld b,01fh		;6145   ; 31 vueltas
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
bucle:
	xor a			;6152
L_6153:
	ld (hl),a			;6153
	add hl,de			;6154
	djnz L_6153		;6155
	ret			;6157

; ----------------------------------------------------------------------
; DATOS sin_lector_6158: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (10 bytes)
;   0x6158..0x6162  (10 bytes)
DATA_sin_lector_6158:
	defb 0ddh,07eh,006h,0b7h,0c8h,03dh,0ddh,077h,006h,0c9h	; 6158  .~...=.w..

; ======================================================================
; CODIGO 0x6162..0x617c  (26 bytes)
; ======================================================================


L_6162:
	push ix		;6162   ; HL = la ficha
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
; DATOS sin_llamar_617C: codigo que no llama nadie (ninguna palabra del
;   cartucho vale 0x617C): push ix / pop hl / set 6,l / set 4,l ... (10 bytes)
;   0x617c..0x6186  (10 bytes)
DATA_sin_llamar_617C:
	defb 0ddh,0e5h,0e1h,0cbh,0f5h,0cbh,0e5h,036h,000h,0c9h	; 617c  .......6..

; ======================================================================
; CODIGO 0x6186..0x61b8  (50 bytes)
; ======================================================================


L_6186:
	push ix		;6186   ; HL = la ficha
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
; DATOS sin_lector_61B8: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (23 bytes)
;   0x61b8..0x61cf  (23 bytes)
DATA_sin_lector_61B8:
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
; DATOS tabla_61D2: tabla que lee p00:54A2 (108 bytes)
;   0x61d2..0x623e  (108 bytes)
DATA_tabla_61D2:
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
	call nz,ficha_y		;6246
	bit 6,c		;6249
	call nz,ficha_y_2		;624b
	bit 5,c		;624e
	call nz,ficha_y_3		;6250
	bit 4,c		;6253
	call nz,ficha_y_4		;6255
	scf			;6258
	ret			;6259
ficha_y:
	ld a,(ix+003h)		;625a   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
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
ficha_y_2:
	ld a,(ix+003h)		;6279   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
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
ficha_y_3:
	ld a,(ix+003h)		;6298   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
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
ficha_y_4:
	ld a,(ix+003h)		;62b7   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
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
	call rutina		;62d7
	bit 2,l		;62da
	ret z			;62dc
	ld hl,0c834h		;62dd   ; 0xC834: cuadros de invulnerabilidad de Gao (p02:860C)
	dec (hl)			;62e0
	ret			;62e1
rutina:
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
; DATOS sin_lector_6314: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (8 bytes)
;   0x6314..0x631c  (8 bytes)
DATA_sin_lector_6314:
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
	ld hl,0c102h		;6335   ; 0xC102: bit 0: es la demostracion; bit 6: hay partida (p00:46A5)
	set 0,(hl)		;6338
	xor a			;633a
	ld (0c13ch),a		;633b   ; 0xC13C: variables del juego
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
	ld hl,063b0h		;6350   ; p01:63B0 tabla_63B0: tabla que lee p01:6350 (13 bytes)
	call 040a4h		;6353   ; p00:40A4 hl_mas_a
	ld a,(hl)			;6356
	ld (0c486h),a		;6357   ; 0xC486: el area a la que se va (p01:6549)
	ld (0c480h),a		;635a   ; 0xC480: el AREA (0-23): 3*(fase-1) + columna, o 18 + fase - 1 (p01:64D5)
	push hl			;635d
	call rutina_3		;635e
	call pon_columna_2		;6361
	pop hl			;6364
	inc hl			;6365
	ld e,(hl)			;6366
	ld d,000h		;6367
	ld (0c487h),de		;6369   ; 0xC487: la fila del mapa con que se entra (p00:5924)
	inc hl			;636d
	ld a,(hl)			;636e
	ld (0c840h),a		;636f   ; 0xC840: elige los 32 bytes de p07:70AE que van a los patrones de 0xF8A0 (p00:5671) y el sumando de la dificultad (p01:704D); 6 es especial (p02:8F4F)
	ld a,(0c10bh)		;6372
	and a			;6375
	jr z,L_6384		;6376
	inc hl			;6378
	ld a,(hl)			;6379
	ld (0c850h),a		;637a   ; 0xC850: el OBJETO 1 (byte 0 de 4; p06:BAC2)
	inc hl			;637d
	ld a,(hl)			;637e
	ld (0c874h),a		;637f   ; 0xC874: el OBJETO 10 (byte 0 de 4; p06:BAC2)
	jr L_6391		;6382
L_6384:
	ld hl,0c850h		;6384   ; 0xC850: el OBJETO 1 (byte 0 de 4; p06:BAC2)
	ld de,0c851h		;6387   ; 0xC851: el OBJETO 1 (byte 1 de 4; p06:BAC2)
	ld (hl),001h		;638a
	ld bc,0009fh		;638c
	ldir		;638f
L_6391:
	call pon_vida		;6391
	call 05d20h		;6394
	ld hl,00100h		;6397
	ld (0c10dh),hl		;639a
	xor a			;639d
	ld (0c4dbh),a		;639e   ; 0xC4DB: variables de la partida
	ld hl,00000h		;63a1
	ld (0c4c0h),hl		;63a4   ; 0xC4C0: variables de la partida
	xor a			;63a7
	ld (0c4bfh),a		;63a8   ; 0xC4BF: variables de la partida
	inc a			;63ab
	ld (0c163h),a		;63ac   ; 0xC163: hay una partida en marcha (p00:4388)
	ret			;63af

; ----------------------------------------------------------------------
; DATOS tabla_63B0: tabla que lee p01:6350 (13 bytes)
;   0x63b0..0x63bd  (13 bytes)
DATA_tabla_63B0:
	defb 001h,01fh,000h,000h,000h,007h,01fh,003h,001h,001h,010h,060h,002h	; 63b0  ...........`.

; ======================================================================
; CODIGO 0x63bd..0x642e  (113 bytes)
; ======================================================================


pon_vida:
	ld a,028h		;63bd
	ld (0c845h),a		;63bf   ; 0xC845: la VIDA de Gao, hasta 200 (p03:AD1C; METALSLAVE la llena)
	ld a,003h		;63c2
	ld (0c85ch),a		;63c4   ; 0xC85C: el ARMA de Gao: su cuenta es la del objeto 4 (p01:7FAB)
	ld (0c4e1h),a		;63c7   ; 0xC4E1: AUTOSHOT: el arma 4 en cada cuadro (p02:8F56)
	jp L_7FAB		;63ca
L_63CD:
	ld a,(0c13bh)		;63cd   ; 0xC13B: la demostracion se esta acabando (p01:63DB)
	or a			;63d0
	ret nz			;63d1
	ld a,07fh		;63d2
	ld (0c834h),a		;63d4   ; 0xC834: cuadros de invulnerabilidad de Gao (p02:860C)
	call 05c38h		;63d7
	ret			;63da
L_63DB:
	ld hl,0c13bh		;63db   ; 0xC13B: la demostracion se esta acabando (p01:63DB)
	ld a,(hl)			;63de
	or a			;63df
	jr z,L_63ED		;63e0
	dec (hl)			;63e2
	jr z,L_6424		;63e3
	xor a			;63e5
	ld (0c108h),a		;63e6   ; 0xC108: F1, F2 y F3 pulsadas en este cuadro, bits 0-2 (p00:5318)
	ld (0c124h),a		;63e9   ; 0xC124: F4 y F5 pulsadas en este cuadro (p00:5330)
	ret			;63ec
L_63ED:
	ld a,00eh		;63ed   ; el banco 14 en 0x8000
	call 0543dh		;63ef
	call pon_f1_f3_nuevas		;63f2
	jp 053e9h		;63f5
pon_f1_f3_nuevas:
	xor a			;63f8
	ld (0c108h),a		;63f9   ; 0xC108: F1, F2 y F3 pulsadas en este cuadro, bits 0-2 (p00:5318)
	ld (0c124h),a		;63fc   ; 0xC124: F4 y F5 pulsadas en este cuadro (p00:5330)
	ld hl,0c10eh		;63ff   ; 0xC10E: cuadros que quedan de la tecla de la demostracion (p01:63FF)
	dec (hl)			;6402
	jr nz,L_640C		;6403
	dec hl			;6405
	inc (hl)			;6406
	call rutina_2		;6407
	inc hl			;640a
	ld (hl),d			;640b
L_640C:
	dec hl			;640c
	call rutina_2		;640d
	ld a,e			;6410
	bit 7,a		;6411
	jp z,0533bh		;6413
	cp 0feh		;6416
	jr c,$+45		;6418
	cp 0ffh		;641a
	jr nz,$+58		;641c
	ld a,00fh		;641e
	ld (0c13bh),a		;6420   ; 0xC13B: la demostracion se esta acabando (p01:63DB)
	ret			;6423
L_6424:
	xor a			;6424
	ld (0c163h),a		;6425   ; 0xC163: hay una partida en marcha (p00:4388)
	ld hl,0c102h		;6428   ; 0xC102: bit 0: es la demostracion; bit 6: hay partida (p00:46A5)
	res 0,(hl)		;642b
	ret			;642d

; ----------------------------------------------------------------------
; DATOS tabla_642E: tabla que lee p00:5495, p01:6439 (6 bytes)
;   0x642e..0x6434  (6 bytes)
DATA_tabla_642E:
	defb 0e7h,090h,0cdh,08dh,01ah,08fh	; 642e

; ======================================================================
; CODIGO 0x6434..0x6594  (352 bytes)
; ======================================================================


rutina_2:
	ld b,(hl)			;6434
	push hl			;6435
	ld a,(0c10bh)		;6436
	ld de,0642eh		;6439   ; p01:642E tabla_642E: tabla que lee p00:5495, p01:6439 (6 bytes)
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
	ld (0c108h),a		;644c   ; 0xC108: F1, F2 y F3 pulsadas en este cuadro, bits 0-2 (p00:5318)
	ld a,b			;644f
	and 003h		;6450
	ld (0c124h),a		;6452   ; 0xC124: F4 y F5 pulsadas en este cuadro (p00:5330)
	ret			;6455
L_6456:
	ld a,02eh		;6456   ; el sonido 0x2E (p14:9C47 + 2*0x2E)
	call 041c1h		;6458
	ld a,(0c10bh)		;645b
	ld de,08db2h		;645e
	call 0486fh		;6461
	ld hl,0c4dbh		;6464   ; 0xC4DB: variables de la partida
	ld a,(hl)			;6467
	inc (hl)			;6468
	ld b,a			;6469
	add a,a			;646a
	add a,b			;646b
	call 040a9h		;646c   ; p00:40A9 de_mas_a
	ex de,hl			;646f
	ld a,(hl)			;6470
	inc hl			;6471
	ld d,(hl)			;6472
	inc hl			;6473
	ld e,(hl)			;6474
	call mira_scroll		;6475
	jp 05473h		;6478
mira_scroll:
	ex de,hl			;647b
	push af			;647c
	ld a,(0c385h)		;647d   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
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
	call mira_scroll_2		;6494
	pop de			;6497
	pop hl			;6498
	ld bc,08040h		;6499
	ld a,001h		;649c
	jp 05226h		;649e
mira_scroll_2:
	ld hl,08d4bh		;64a1   ; p14:8D4B tabla_8D4B: tabla que lee p01:645E, p01:64A1, p01:64B3 (1717 bytes)
	call 04878h		;64a4
	ld a,(0c385h)		;64a7   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
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
	ld (0c13ch),a		;64bf   ; 0xC13C: variables del juego
	ret z			;64c2
	dec hl			;64c3
	ld a,h			;64c4
	or l			;64c5
	jr nz,L_64B6		;64c6
	xor a			;64c8
	ld (0c13ch),a		;64c9   ; 0xC13C: variables del juego
	ret			;64cc
L_64CD:
	ld hl,0c485h		;64cd   ; 0xC485: bit 7: hay que cambiar de area (p01:64CD)
	res 7,(hl)		;64d0
	ld a,(0c486h)		;64d2   ; 0xC486: el area a la que se va (p01:6549)
	ld (0c480h),a		;64d5   ; 0xC480: el AREA (0-23): 3*(fase-1) + columna, o 18 + fase - 1 (p01:64D5)
	call rutina_3		;64d8
	ex af,af'			;64db
	ld a,(0c481h)		;64dc   ; 0xC481: la FASE, 1-6 (p01:65B4)
	cp d			;64df
	jr nz,L_64F6		;64e0
	ld a,(0c482h)		;64e2   ; 0xC482: el juego de dibujos, 0-7 (p01:65BB)
	cp e			;64e5
	jr nz,L_64EF		;64e6
	ex af,af'			;64e8
	call pon_columna_2		;64e9
	jp 05d05h		;64ec
L_64EF:
	ex af,af'			;64ef
	call pon_columna_2		;64f0
	jp 05d0eh		;64f3
L_64F6:
	ex af,af'			;64f6
	call pon_columna_2		;64f7
	ld hl,0c172h		;64fa   ; 0xC172: sube al cambiar de fase, hasta 10 (p01:64FA); entra en la dificultad (p01:7049)
	ld a,(hl)			;64fd
	cp 00ah		;64fe
	jr nc,L_6503		;6500
	inc (hl)			;6502
L_6503:
	ld a,008h		;6503
	jp 0432eh		;6505
L_6508:
	ld a,(0c4c9h)		;6508   ; 0xC4C9: variables de la partida
	or a			;650b
	call nz,mira_partida		;650c
	ld a,(0c800h)		;650f   ; 0xC800: lo que hace Gao (p00:5C68)
	cp 002h		;6512
	ret z			;6514
	ld a,(0c84bh)		;6515   ; 0xC84B: la ficha de Gao
	or a			;6518
	ret nz			;6519
	ld hl,0c4c8h		;651a   ; 0xC4C8: variables de la partida
	ld a,(hl)			;651d
	or a			;651e
	jr z,L_6522		;651f
	inc (hl)			;6521
L_6522:
	ld a,(0c809h)		;6522   ; 0xC809: la X de Gao (p01:70BD)
	cp 0f5h		;6525
	jr nc,L_6534		;6527
	cp 00ch		;6529
	ret nc			;652b
	ld d,0f2h		;652c
	ld a,(0c483h)		;652e   ; 0xC483: la COLUMNA: 0-2 el camino, 3 la sala (p01:6543)
	dec a			;6531
	jr L_653A		;6532
L_6534:
	ld d,00eh		;6534
	ld a,(0c483h)		;6536   ; 0xC483: la COLUMNA: 0-2 el camino, 3 la sala (p01:6543)
	inc a			;6539
L_653A:
	cp 003h		;653a
	jr c,L_6540		;653c
	ld a,002h		;653e
L_6540:
	jr nz,L_6543		;6540
	xor a			;6542
L_6543:
	ld (0c483h),a		;6543   ; 0xC483: la COLUMNA: 0-2 el camino, 3 la sala (p01:6543)
	call mira_columna		;6546
	ld (0c486h),a		;6549   ; 0xC486: el area a la que se va (p01:6549)
	ld hl,(0c302h)		;654c   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	ld (0c487h),hl		;654f   ; 0xC487: la fila del mapa con que se entra (p00:5924)
	ld a,d			;6552
	ld (0c48ah),a		;6553   ; 0xC48A: la x de Gao al entrar (p01:6553)
	ld a,080h		;6556
	ld (0c485h),a		;6558   ; 0xC485: bit 7: hay que cambiar de area (p01:64CD)
	ld hl,0c4c9h		;655b   ; 0xC4C9: variables de la partida
	ld (hl),001h		;655e
	ld a,(0c80dh)		;6560   ; 0xC80D: la ficha de Gao
	ld (0c48bh),a		;6563
	ld a,(0c385h)		;6566   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
	and 007h		;6569
	ld c,a			;656b
	ld a,(0c80bh)		;656c   ; 0xC80B: la Y de Gao (p01:70B3)
	add a,c			;656f
	inc a			;6570
	ld (0c489h),a		;6571   ; 0xC489: la y de Gao al entrar (p01:6571)
	ld a,(0c80bh)		;6574   ; 0xC80B: la Y de Gao (p01:70B3)
	cp 0c0h		;6577
	ret c			;6579
	ld a,(0c489h)		;657a   ; 0xC489: la y de Gao al entrar (p01:6571)
	sub 008h		;657d
	ld (0c489h),a		;657f   ; 0xC489: la y de Gao al entrar (p01:6571)
	ld hl,(0c302h)		;6582   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	dec hl			;6585
	ld (0c487h),hl		;6586   ; 0xC487: la fila del mapa con que se entra (p00:5924)
	ret			;6589
mira_partida:
	call pon_columna		;658a
	ld hl,0c4c9h		;658d   ; 0xC4C9: variables de la partida
	ld (hl),000h		;6590
	ret			;6592
pon_columna:
	ret			;6593

; ----------------------------------------------------------------------
; DATOS sin_llamar_6594: codigo que no llama nadie (ninguna palabra del
;   cartucho vale 0x6594): ld hl,0c4c8h / ld a,(hl) / dec a / cp 00fh ... (28
;   bytes)
;   0x6594..0x65b0  (28 bytes)
DATA_sin_llamar_6594:
	defb 021h,0c8h,0c4h,07eh,03dh,0feh,00fh,0d0h,03ah,016h,0cfh,0b7h,0c8h,0c3h,0a1h,0a9h	; 6594  !..~=...:.......
	defb 03ah,086h,0c4h,032h,080h,0c4h,0cdh,0bfh,065h,0c3h,0b0h,065h	; 65a4  :..2....e..e

; ======================================================================
; CODIGO 0x65b0..0x660b  (91 bytes)
; ======================================================================


pon_columna_2:
	ld (0c483h),a		;65b0   ; 0xC483: la COLUMNA: 0-2 el camino, 3 la sala (p01:6543)
	ld a,d			;65b3
	ld (0c481h),a		;65b4   ; 0xC481: la FASE, 1-6 (p01:65B4)
	ld (0c161h),a		;65b7   ; 0xC161: la fase que se ensena (p01:65B7)
	ld a,e			;65ba
	ld (0c482h),a		;65bb   ; 0xC482: el juego de dibujos, 0-7 (p01:65BB)
	ret			;65be
rutina_3:
	ld de,0660bh		;65bf   ; p01:660B fase_juego_columna: por area (0xC480): la fase (0xC481), el juego de dibujos (0xC482) y la columna (0xC483)
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
	ld (0c481h),a		;65cf   ; 0xC481: la FASE, 1-6 (p01:65B4)
	ld a,001h		;65d2
	ld (0c483h),a		;65d4   ; 0xC483: la COLUMNA: 0-2 el camino, 3 la sala (p01:6543)
	call mira_columna		;65d7
	ld (0c486h),a		;65da   ; 0xC486: el area a la que se va (p01:6549)
	ld a,080h		;65dd
	ld (0c48ah),a		;65df   ; 0xC48A: la x de Gao al entrar (p01:6553)
	ld (0c485h),a		;65e2   ; 0xC485: bit 7: hay que cambiar de area (p01:64CD)
	ld a,090h		;65e5
	ld (0c489h),a		;65e7   ; 0xC489: la y de Gao al entrar (p01:6571)
	xor a			;65ea
	ld (0c48bh),a		;65eb
	ld hl,0001fh		;65ee
	ld (0c487h),hl		;65f1   ; 0xC487: la fila del mapa con que se entra (p00:5924)
	ret			;65f4
mira_columna:
	ld a,(0c483h)		;65f5   ; 0xC483: la COLUMNA: 0-2 el camino, 3 la sala (p01:6543)
	cp 003h		;65f8
	jr c,L_65FE		;65fa
	ld a,002h		;65fc
L_65FE:
	jr nz,L_6601		;65fe
	xor a			;6600
L_6601:
	ld c,a			;6601
	ld a,(0c481h)		;6602   ; 0xC481: la FASE, 1-6 (p01:65B4)
	dec a			;6605
	ld b,a			;6606
	add a,a			;6607
	add a,b			;6608
	add a,c			;6609
	ret			;660a

; ----------------------------------------------------------------------
; DATOS fase_juego_columna: por area (0xC480): la fase (0xC481), el juego de
;   dibujos (0xC482) y la columna (0xC483); lo leen p01:65BF (72 bytes)
;   0x660b..0x6653  (72 bytes)
DATA_fase_juego_columna:
	defb 001h,000h,000h	; 660b
	defb 001h,000h,001h	; 660e
	defb 001h,000h,002h	; 6611
	defb 002h,001h,000h	; 6614
	defb 002h,001h,001h	; 6617
	defb 002h,001h,002h	; 661a
	defb 003h,002h,000h	; 661d
	defb 003h,002h,001h	; 6620
	defb 003h,002h,002h	; 6623
	defb 004h,003h,000h	; 6626
	defb 004h,003h,001h	; 6629
	defb 004h,003h,002h	; 662c
	defb 005h,004h,000h	; 662f
	defb 005h,004h,001h	; 6632
	defb 005h,004h,002h	; 6635
	defb 006h,005h,000h	; 6638
	defb 006h,005h,001h	; 663b
	defb 006h,005h,002h	; 663e
	defb 001h,006h,003h	; 6641
	defb 002h,006h,003h	; 6644
	defb 003h,006h,003h	; 6647
	defb 004h,006h,003h	; 664a
	defb 005h,006h,003h	; 664d
	defb 006h,007h,003h	; 6650

; ----------------------------------------------------------------------
; DATOS relleno_6653: relleno de 0x00: nadie lo lee (3 bytes)
;   0x6653..0x6656  (3 bytes)
DATA_relleno_6653:
	defb 000h,000h,000h	; 6653

; ======================================================================
; CODIGO 0x6656..0x66e0  (138 bytes)
; ======================================================================


L_6656:
	ld hl,0c4d0h		;6656   ; 0xC4D0: variables de la partida
	ld a,(hl)			;6659
	or a			;665a
	call nz,rutina_4		;665b
	xor a			;665e
	ld (0c857h),a		;665f   ; 0xC857: el OBJETO 2 (byte 3 de 4; p06:BAC2)
	ld (0c204h),a		;6662   ; 0xC204: el logotipo y el titulo (p01:66D4)
	call pon_objeto_2		;6665
	call pon_avance_del_cuadro		;6668
	ret			;666b
rutina_4:
	cp 001h		;666c
	dec (hl)			;666e
	ret			;666f
pon_objeto_2:
	ld a,(0c580h)		;6670   ; 0xC580: variables del avance del mapa
	or a			;6673
	ret z			;6674
	ld (0c857h),a		;6675   ; 0xC857: el OBJETO 2 (byte 3 de 4; p06:BAC2)
	xor a			;6678
	ld (0c580h),a		;6679   ; 0xC580: variables del avance del mapa
	ld a,021h		;667c   ; el sonido 0x21 (p14:9C47 + 2*0x21)
	jp 041ach		;667e
pon_avance_del_cuadro:
	ld a,(0c581h)		;6681   ; 0xC581: variables del avance del mapa
	or a			;6684
	ret z			;6685
	ld (0c204h),a		;6686   ; 0xC204: el logotipo y el titulo (p01:66D4)
	xor a			;6689
	ld (0c388h),a		;668a   ; 0xC388: lo que se ha movido el mapa este cuadro (p00:56E8)
	ret			;668d
L_668E:
	call 04ca3h		;668e
	call 04cedh		;6691   ; p00:4CED apaga_los_sprites
	call 04ccah		;6694
	call 04d2dh		;6697   ; p00:4D2D paleta_inicial
	ld hl,066e0h		;669a   ; p01:66E0 tabla_66E0: tabla que lee p01:669A (16 bytes)
	call 04d3fh		;669d   ; p00:4D3F pon_paleta
	ld bc,00007h		;66a0
	call 00047h		;66a3   ; BIOS WRTVDP - Writes data in the VDP-register
	ld b,00fh		;66a6
	ld c,007h		;66a8
	call 00047h		;66aa   ; BIOS WRTVDP - Writes data in the VDP-register
	ld hl,02840h		;66ad
	ld bc,0a848h		;66b0
	ld a,0ffh		;66b3
	ld d,001h		;66b5
	call 04e0bh		;66b7   ; p00:4E0B hmmv
	xor a			;66ba
	ld h,a			;66bb
	ld l,a			;66bc
	ld d,a			;66bd
	ld b,a			;66be
	ld c,a			;66bf
	dec a			;66c0
	call 04e0bh		;66c1   ; p00:4E0B hmmv
	ld a,009h		;66c4   ; el banco 9 en 0xA000
	call 05434h		;66c6
	call mira_fichas		;66c9
	ld a,003h		;66cc   ; el banco 3 en 0xA000
	call 05434h		;66ce
	call 04c96h		;66d1
	ld hl,0c200h		;66d4   ; 0xC200: el logotipo y el titulo (p01:66D4)
	ld (hl),03ch		;66d7
	inc hl			;66d9
	ld (hl),031h		;66da
	inc hl			;66dc
	ld (hl),000h		;66dd
	ret			;66df

; ----------------------------------------------------------------------
; DATOS tabla_66E0: tabla que lee p01:669A (16 bytes)
;   0x66e0..0x66f0  (16 bytes)
DATA_tabla_66E0:
	defb 000h,077h,007h,001h,070h,003h,002h,060h,001h,003h,044h,004h,00fh,077h,007h,0ffh	; 66e0  .w..p..`..D..w..

; ======================================================================
; CODIGO 0x66f0..0x675e  (110 bytes)
; ======================================================================


L_66F0:
	ld hl,0c200h		;66f0   ; 0xC200: el logotipo y el titulo (p01:66D4)
	dec (hl)			;66f3
	ld a,(hl)			;66f4
	inc hl			;66f5
	dec (hl)			;66f6
	jr nz,L_66FF		;66f7
	ld a,001h		;66f9
	ld (0c202h),a		;66fb   ; 0xC202: el logotipo y el titulo (p01:66D4)
	ret			;66fe
L_66FF:
	ld a,031h		;66ff
	sub (hl)			;6701
	ld c,a			;6702
	ld b,0a8h		;6703
	ld hl,02840h		;6705
	ld de,02840h		;6708
	ld a,001h		;670b
	jp 04e47h		;670d   ; p00:4E47 hmmm
con_copia_dibujo_en_la_hoja:
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
	jr con_copia_dibujo_en_la_hoja		;6723
L_6725:
	ld a,c			;6725
	call 05049h		;6726   ; p00:5049 copia_dibujo_en_la_hoja
	call 05095h		;6729
	jr L_6711		;672c
L_672E:
	pop de			;672e
	ret			;672f
mira_fichas:
	ld hl,0ab3ch		;6730   ; p09:AB3C letras_AB3C: 13 letras de 8x8 a 1 bit (8 bytes cada una) que p01:6739 sube a la hoja (p00:4ED7)
	ld de,00800h		;6733
	ld bc,00d01h		;6736
	call 04ed7h		;6739   ; p00:4ED7 sube_letras
	ld hl,0aba4h		;673c   ; p09:ABA4 letras_ABA4: 13 letras de 8x8 a 1 bit (8 bytes cada una) que p01:6745 sube a la hoja (p00:4ED7)
	ld de,07000h		;673f
	ld bc,00d02h		;6742
	call 04ed7h		;6745   ; p00:4ED7 sube_letras
	ld hl,0ac0ch		;6748   ; p09:AC0C letras_AC0C: 26 letras de 8x8 a 1 bit (8 bytes cada una) que p01:6751 sube a la hoja (p00:4ED7)
	ld de,0d800h		;674b   ; 0xD800: fichas de lo que se mueve
	ld bc,01a03h		;674e
	call 04ed7h		;6751   ; p00:4ED7 sube_letras
	ld de,04040h		;6754
	ld hl,0675eh		;6757   ; p01:675E tabla_675E: tabla que lee p01:6757 (65 bytes)
	call con_copia_dibujo_en_la_hoja		;675a
	ret			;675d

; ----------------------------------------------------------------------
; DATOS tabla_675E: tabla que lee p01:6757 (65 bytes)
;   0x675e..0x679f  (65 bytes)
DATA_tabla_675E:
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
; DATOS tabla_67A0: tabla que lee p06:BA79 (123 bytes)
;   0x67a0..0x681b  (123 bytes)
DATA_tabla_67A0:
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
	call mira_control_de_bichos		;681b
L_681E:
	ld ix,0d700h		;681e   ; 0xD700: fichas de lo que se mueve
	ld b,00ah		;6822
L_6824:
	ld a,(ix+000h)		;6824   ; ix+0x00: el TIPO de la ficha (0 = libre; p01:6D12)
	and a			;6827
	jr z,L_685C		;6828
	push bc			;682a
	ld a,(0c857h)		;682b   ; 0xC857: el OBJETO 2 (byte 3 de 4; p06:BAC2)
	and a			;682e
	call nz,ficha_tipo_3		;682f
	push ix		;6832
	call ficha_tipo		;6834
	pop ix		;6837
	bit 0,(ix+00bh)		;6839
	call nz,ficha_campo_07		;683d
	bit 0,(ix+006h)		;6840   ; ix+0x06: cuenta atras (p01:6124)
	call nz,ficha_campo_07_2		;6844
	call rutina_6		;6847
	bit 0,(ix+068h)		;684a
	call nz,ficha_y_5		;684e
	ld a,(ix+013h)		;6851
	and a			;6854
	call nz,ficha_tipo_2		;6855
	call ficha_y_6		;6858
	pop bc			;685b
L_685C:
	ld de,00080h		;685c
	add ix,de		;685f
	djnz L_6824		;6861
	ret			;6863
ficha_y_5:
	ld a,(ix+003h)		;6864   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	ld (ix-07dh),a		;6867
	ld a,(ix+005h)		;686a   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
	ld (ix-07bh),a		;686d
	ret			;6870
ficha_tipo:
	ld a,(ix+000h)		;6871   ; ix+0x00: el TIPO de la ficha (0 = libre; p01:6D12)
	dec a			;6874
	call 040aeh		;6875   ; p00:40AE despacha

; ----------------------------------------------------------------------
; DATOS tabla_6878: 58 destinos del despachador de 0x40AE (call en p01:6875):
;   0x99F2, 0x9B17, 0x9BD2, 0x9C55, 0x9D25, 0x9D6E, 0x9E3B, 0xA5FA ...; lo
;   leen p01:6875 (116 bytes)
;   0x6878..0x68ec  (116 bytes)
DATA_tabla_6878:
	defb 0f2h,099h	; 6878
	defb 017h,09bh	; 687a
	defb 0d2h,09bh	; 687c
	defb 055h,09ch	; 687e
	defb 025h,09dh	; 6880
	defb 06eh,09dh	; 6882
	defb 03bh,09eh	; 6884
	defb 0fah,0a5h	; 6886
	defb 01fh,09fh	; 6888
	defb 05eh,0a0h	; 688a
	defb 0d2h,0a0h	; 688c
	defb 03ah,0a1h	; 688e
	defb 042h,0a3h	; 6890
	defb 0aeh,0a3h	; 6892
	defb 085h,0a4h	; 6894
	defb 02bh,0a6h	; 6896
	defb 0dfh,0a6h	; 6898
	defb 013h,0a8h	; 689a
	defb 008h,0a9h	; 689c
	defb 042h,0a8h	; 689e
	defb 044h,0a9h	; 68a0
	defb 0deh,0a9h	; 68a2
	defb 0feh,0a9h	; 68a4
	defb 003h,0abh	; 68a6
	defb 003h,0abh	; 68a8
	defb 058h,0abh	; 68aa
	defb 0f7h,0b0h	; 68ac
	defb 025h,0b3h	; 68ae
	defb 0c3h,0b4h	; 68b0
	defb 010h,0b7h	; 68b2
	defb 007h,0b9h	; 68b4
	defb 0b4h,0bbh	; 68b6
	defb 0cfh,0afh	; 68b8
	defb 0fah,0b5h	; 68ba
	defb 0fdh,0b5h	; 68bc
	defb 0aah,0b2h	; 68be
	defb 0a5h,0b8h	; 68c0
	defb 0f4h,0bah	; 68c2
	defb 0a6h,0bch	; 68c4
	defb 0eeh,0bch	; 68c6
	defb 016h,0b4h	; 68c8
	defb 08eh,0adh	; 68ca
	defb 0c1h,0adh	; 68cc
	defb 050h,06ah	; 68ce
	defb 0d5h,0ach	; 68d0
	defb 0d5h,0ach	; 68d2
	defb 06fh,0ach	; 68d4
	defb 0e2h,0adh	; 68d6
	defb 025h,0b1h	; 68d8
	defb 074h,0b1h	; 68da
	defb 09fh,0b3h	; 68dc
	defb 0ech,068h	; 68de
	defb 0ech,068h	; 68e0
	defb 0ech,068h	; 68e2
	defb 0ech,068h	; 68e4
	defb 0ech,068h	; 68e6
	defb 0ech,068h	; 68e8
	defb 00fh,06bh	; 68ea

; ======================================================================
; CODIGO 0x68ec..0x6a1a  (302 bytes)
; ======================================================================


tipo_51:
	ld a,(0d409h)		;68ec   ; 0xD409: lo que controla la salida de bichos
	and a			;68ef
	ld b,002h		;68f0
	jr z,L_68F5		;68f2
	inc b			;68f4
L_68F5:
	ld (ix+074h),b		;68f5   ; ix+0x74: el tipo de choque (p01:7093)
	ret			;68f8
ficha_campo_07:
	ld e,(ix+00ch)		;68f9
	ld d,(ix+00dh)		;68fc
	ld l,(ix+007h)		;68ff   ; ix+0x07: el paso de la animacion (p01:6124)
	ld h,(ix+008h)		;6902
	add hl,de			;6905
	ld (ix+007h),l		;6906   ; ix+0x07: el paso de la animacion (p01:6124)
	ld (ix+008h),h		;6909
	ld e,(ix+00eh)		;690c
	ld d,(ix+00fh)		;690f
	ld l,(ix+009h)		;6912
	ld h,(ix+00ah)		;6915
	add hl,de			;6918
	ld (ix+009h),l		;6919
	ld (ix+00ah),h		;691c
	ret			;691f
ficha_campo_07_2:
	ld e,(ix+007h)		;6920   ; ix+0x07: el paso de la animacion (p01:6124)
	ld d,(ix+008h)		;6923
	ld l,(ix+002h)		;6926
	ld h,(ix+003h)		;6929   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	add hl,de			;692c
	ld (ix+002h),l		;692d
	ld (ix+003h),h		;6930   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	ld e,(ix+009h)		;6933
	ld d,(ix+00ah)		;6936
L_6939:
	ld l,(ix+004h)		;6939
	ld h,(ix+005h)		;693c   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
	add hl,de			;693f
	ld (ix+004h),l		;6940
	ld (ix+005h),h		;6943   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
	ret			;6946
ficha_tipo_2:
	call rutina_5		;6947
	ret nc			;694a
	ld a,(ix+000h)		;694b   ; ix+0x00: el TIPO de la ficha (0 = libre; p01:6D12)
	cp 01bh		;694e
	jr nc,L_6960		;6950
	add a,a			;6952
	ld hl,06a1ah		;6953   ; p01:6A1A tabla_6A1A: tabla que lee p01:6953 (54 bytes)
	call 040a4h		;6956   ; p00:40A4 hl_mas_a
	ld e,(hl)			;6959
	inc hl			;695a
	ld d,(hl)			;695b
	ex de,hl			;695c
	call 04818h		;695d
L_6960:
	ld a,(ix+000h)		;6960   ; ix+0x00: el TIPO de la ficha (0 = libre; p01:6D12)
	cp 001h		;6963
	ld b,001h		;6965
	jr z,L_6980		;6967
	cp 00eh		;6969
	ld b,004h		;696b
	jr z,L_6980		;696d
	cp 01ah		;696f
	jr nz,L_698F		;6971
	ld hl,0d454h		;6973   ; 0xD454: lo que controla la salida de bichos
	inc (hl)			;6976
	ld a,(hl)			;6977
	and 003h		;6978
	jr nz,L_699F		;697a
	ld a,001h		;697c
	jr L_6996		;697e
L_6980:
	ld hl,0d450h		;6980   ; 0xD450: lo que controla la salida de bichos
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
	ld d,(ix+005h)		;6996   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
	ld e,(ix+003h)		;6999   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	call rutina_7		;699c
L_699F:
	call mira_atributos_de_sprites		;699f
	ld (ix+000h),02ch		;69a2   ; ix+0x00: el TIPO de la ficha (0 = libre; p01:6D12)
	ld (ix+001h),000h		;69a6   ; la ficha pasa al paso 0
	ld (ix+020h),002h		;69aa
	ld (ix+025h),00ah		;69ae
	ld (ix+02ah),04ch		;69b2
	push ix		;69b6   ; HL = la ficha
	pop hl			;69b8
	ld a,l			;69b9
	add a,021h		;69ba
	ld l,a			;69bc
	ld b,002h		;69bd   ; 2 vueltas
L_69BF:
	ld a,(hl)			;69bf
	ld de,0e628h		;69c0   ; 0xE628: y, x, patron y color de los 32 sprites (p00:4B7A)
	add a,e			;69c3
	ld e,a			;69c4
	ld a,0e1h		;69c5
	ld (de),a			;69c7
	ld a,l			;69c8
	add a,005h		;69c9
	ld l,a			;69cb
	djnz L_69BF		;69cc
nace_tipo_43:
	ld (ix+006h),000h		;69ce   ; ix+0x06: cuenta atras (p01:6124)
	ld (ix+010h),047h		;69d2   ; ix+0x10: el PATRON del sprite (p01:70FB)
	ld (ix+011h),003h		;69d6   ; ix+0x11: cuenta atras de lo que hace
	ld (ix+074h),003h		;69da   ; ix+0x74: el tipo de choque (p01:7093)
	ld a,(ix+062h)		;69de
	and a			;69e1
	ld b,012h		;69e2
	jr z,L_69EC		;69e4
	ld b,022h		;69e6
	ld (ix+062h),000h		;69e8
L_69EC:
	ld a,(0d400h)		;69ec   ; 0xD400: lo que controla la salida de bichos
	and a			;69ef
	ld a,b			;69f0
	call z,041c1h		;69f1
	ret			;69f4
rutina_5:
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
; DATOS tabla_6A1A: tabla que lee p01:6953 (54 bytes)
;   0x6a1a..0x6a50  (54 bytes)
DATA_tabla_6A1A:
	defb 000h,000h,001h,000h,001h,000h,002h,000h,00ah,000h,002h,000h,002h,000h,001h,000h	; 6a1a  ................
	defb 000h,000h,001h,000h,002h,000h,002h,000h,001h,000h,001h,000h,001h,000h,00ah,000h	; 6a2a  ................
	defb 002h,000h,002h,000h,001h,000h,001h,000h,003h,000h,000h,000h,002h,000h,002h,000h	; 6a3a  ................
	defb 005h,000h,00ah,000h,00fh,000h	; 6a4a

; ======================================================================
; CODIGO 0x6a50..0x6ab7  (103 bytes)
; ======================================================================


tipo_43:
	dec (ix+011h)		;6a50   ; cuenta atras en ix+0x11: hasta que llegue a 0, nada mas
	ret nz			;6a53
	ld a,(ix+001h)		;6a54   ; ix+0x01: el PASO: la entrada de la tabla del tipo (dd7e01 + p00:40AE)
	cp 003h		;6a57
	jp nc,mira_atributos_de_sprites		;6a59
	res 7,(ix+010h)		;6a5c   ; ix+0x10: el PATRON del sprite (p01:70FB)
	inc (ix+010h)		;6a60   ; ix+0x10: el PATRON del sprite (p01:70FB)
	ld a,(0d400h)		;6a63   ; 0xD400: lo que controla la salida de bichos
	and a			;6a66
	ld a,003h		;6a67
	jr z,L_6A6D		;6a69
	ld a,00ch		;6a6b
L_6A6D:
	ld (ix+011h),a		;6a6d   ; ix+0x11: cuenta atras de lo que hace
	inc (ix+001h)		;6a70   ; la ficha pasa al paso siguiente
	ret			;6a73
ficha_y_6:
	ld a,(ix+003h)		;6a74   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	cp 0e3h		;6a77
	jr nc,mira_atributos_de_sprites		;6a79
	ld a,(ix+005h)		;6a7b   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
	cp 0f8h		;6a7e
	jr nc,mira_atributos_de_sprites		;6a80
	cp 007h		;6a82
	ret nc			;6a84
mira_atributos_de_sprites:
	push ix		;6a85   ; HL = la ficha
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
	ld de,0e628h		;6a92   ; 0xE628: y, x, patron y color de los 32 sprites (p00:4B7A)
	add a,e			;6a95
	ld e,a			;6a96
	ld a,0e0h		;6a97
	ld (de),a			;6a99
	ld a,l			;6a9a
	add a,005h		;6a9b
	ld l,a			;6a9d
	djnz L_6A91		;6a9e
	ret			;6aa0
rutina_6:
	ld a,(ix+014h)		;6aa1
	and a			;6aa4
	ld de,06ab7h		;6aa5   ; p01:6AB7 tabla_6AB7: tabla que lee p01:6AA5 (12 bytes)
	jp z,L_6EFB		;6aa8
	ld a,(ix+025h)		;6aab
	and 07fh		;6aae
	ret nz			;6ab0
	ld de,06fach		;6ab1
	jp ficha_tipo_4		;6ab4

; ----------------------------------------------------------------------
; DATOS tabla_6AB7: tabla que lee p01:6AA5 (12 bytes)
;   0x6ab7..0x6ac3  (12 bytes)
DATA_tabla_6AB7:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6ab7  ............

; ======================================================================
; CODIGO 0x6ac3..0x6b9f  (220 bytes)
; ======================================================================


ficha_tipo_3:
	ld a,(0d400h)		;6ac3   ; 0xD400: lo que controla la salida de bichos
	and a			;6ac6
	ret nz			;6ac7
	ld a,(ix+000h)		;6ac8   ; ix+0x00: el TIPO de la ficha (0 = libre; p01:6D12)
	cp 01bh		;6acb
	ret nc			;6acd
	ld a,(ix+014h)		;6ace
	and a			;6ad1
	ret z			;6ad2
	push ix		;6ad3   ; HL = la ficha
	pop hl			;6ad5
	ld a,l			;6ad6
	add a,024h		;6ad7
	ld l,a			;6ad9
	ld e,(ix+000h)		;6ada   ; ix+0x00: el TIPO de la ficha (0 = libre; p01:6D12)
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
	ld (ix+000h),03ah		;6aed   ; ix+0x00: el TIPO de la ficha (0 = libre; p01:6D12)
	ld (ix+006h),001h		;6af1   ; ix+0x06: cuenta atras (p01:6124)
	ld (ix+00bh),000h		;6af5
	ld (ix+011h),00ah		;6af9   ; ix+0x11: cuenta atras de lo que hace
	ld a,0f0h		;6afd
	call pon_buffer_9		;6aff
	call cambia_de_signo		;6b02
	call rutina_13		;6b05
	ex de,hl			;6b08
	call cambia_de_signo		;6b09
	jp L_792C		;6b0c
tipo_57:
	dec (ix+011h)		;6b0f   ; cuenta atras en ix+0x11: hasta que llegue a 0, nada mas
	ret nz			;6b12
	ld (ix+062h),001h		;6b13
	jp L_699F		;6b17
L_6B1A:
	ld hl,0dc00h		;6b1a   ; 0xDC00: fichas de lo que se mueve
	ld b,008h		;6b1d
	jr L_6B26		;6b1f
L_6B21:
	ld hl,0d700h		;6b21   ; 0xD700: fichas de lo que se mueve
	ld b,00ah		;6b24   ; 10 vueltas
L_6B26:
	push bc			;6b26
	push hl			;6b27
	ld a,(hl)			;6b28
	and a			;6b29
	call nz,copia_bytes		;6b2a
	pop hl			;6b2d
	pop bc			;6b2e
	ld de,00080h		;6b2f
	add hl,de			;6b32
	djnz L_6B26		;6b33
	ret			;6b35
copia_bytes:
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
	ld hl,06b9fh		;6b86   ; p01:6B9F tabla_6B9F: tabla que lee p01:6B74, p01:6B7A, p01:6B80, p01:6B86 (52 bytes)
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
; DATOS tabla_6B9F: tabla que lee p01:6B74, p01:6B7A, p01:6B80, p01:6B86 (52
;   bytes)
;   0x6b9f..0x6bd3  (52 bytes)
DATA_tabla_6B9F:
	defb 0e1h,0f8h,0e1h,0f8h,0f1h,0f8h,0f1h,0f8h,0f1h,0f8h,0f1h,0f8h,0e1h,0f0h,0e1h,0f0h	; 6b9f  ................
	defb 0f1h,0f0h,0f1h,0f0h,0e1h,000h,0e1h,000h,0f1h,000h,0f1h,000h,0d1h,0f0h,0d1h,0f0h	; 6baf  ................
	defb 0e1h,0f0h,0e1h,0f0h,0f1h,0f0h,0f1h,0f0h,0d1h,000h,0d1h,000h,0e1h,000h,0e1h,000h	; 6bbf  ................
	defb 0f1h,000h,0f1h,000h	; 6bcf

; ======================================================================
; CODIGO 0x6bd3..0x6d28  (341 bytes)
; ======================================================================


L_6BD3:
	ld hl,0dc00h		;6bd3   ; 0xDC00: fichas de lo que se mueve
	ld b,008h		;6bd6
	ld c,000h		;6bd8
	jr L_6BE3		;6bda
L_6BDC:
	ld hl,0d700h		;6bdc   ; 0xD700: fichas de lo que se mueve
	ld b,00ah		;6bdf   ; 10 vueltas
	ld c,001h		;6be1
L_6BE3:
	push bc			;6be3
	push hl			;6be4
	ld a,(hl)			;6be5
	and a			;6be6
	call nz,pon_buffer		;6be7
	pop hl			;6bea
	pop bc			;6beb
	ld de,00080h		;6bec
	add hl,de			;6bef
	djnz L_6BE3		;6bf0
	ret			;6bf2
pon_buffer:
	ld a,c			;6bf3
	and a			;6bf4
	jr z,L_6BFF		;6bf5
	ld a,(hl)			;6bf7
	ld de,0cf00h		;6bf8   ; 0xCF00: que cosa hay en cada sitio de los patrones (p00:56A2)
	call 040a9h		;6bfb   ; p00:40A9 de_mas_a
	ld a,(de)			;6bfe
L_6BFF:
	ld (0e800h),a		;6bff   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
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
	ld de,0e628h		;6c14   ; 0xE628: y, x, patron y color de los 32 sprites (p00:4B7A)
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
	ld a,(0e800h)		;6c2d   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
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
	ld a,(0c4beh)		;6c41   ; 0xC4BE: variables de la partida
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
	ld b,000h		;6c54   ; 0 vueltas
	add hl,bc			;6c56
	add hl,hl			;6c57
	ex de,hl			;6c58
	ld a,(hl)			;6c59
	set 7,(hl)		;6c5a
	ld b,010h		;6c5c   ; 16 vueltas
L_6C5E:
	ld (de),a			;6c5e
	inc e			;6c5f
	djnz L_6C5E		;6c60
L_6C62:
	pop bc			;6c62
	inc l			;6c63
	djnz L_6C10		;6c64
	ret			;6c66
pon_partida:
	ld a,(0c4c2h)		;6c67   ; 0xC4C2: variables de la partida
	or a			;6c6a
	ret z			;6c6b
	ld c,a			;6c6c
	ld de,(0c4c3h)		;6c6d   ; 0xC4C3: variables de la partida
	ld a,(0c4c5h)		;6c71   ; 0xC4C5: variables de la partida
	ld b,a			;6c74
	ld hl,00000h		;6c75
	ld (0c4c2h),hl		;6c78   ; 0xC4C2: variables de la partida
	ld (0c4c4h),hl		;6c7b   ; 0xC4C4: variables de la partida
	jp L_6D66		;6c7e
mira_control_de_bichos:
	call pon_partida		;6c81
	call mira_control_de_bichos_2		;6c84
	call mira_avanza		;6c87
	ld a,(0d410h)		;6c8a   ; 0xD410: lo que controla la salida de bichos
	and a			;6c8d
	ret nz			;6c8e
	ld hl,0d500h		;6c8f   ; 0xD500: 10 fichas de 0x10: los bichos que pone la lista del area (p01:6D12)
	ld b,00ah		;6c92   ; 10 vueltas
L_6C94:
	push bc			;6c94
	push hl			;6c95
	call pon_buffer_4		;6c96
	pop hl			;6c99
	pop bc			;6c9a
	ld de,00010h		;6c9b
	add hl,de			;6c9e
	djnz L_6C94		;6c9f
	ret			;6ca1
mira_avanza:
	ld a,(0c389h)		;6ca2   ; 0xC389: 1: el mapa avanza (p01:6CA2); p00:57CE lo pone a 0 con la orden 0xFC
	dec a			;6ca5
	ret nz			;6ca6
	ld a,(0c480h)		;6ca7   ; 0xC480: el AREA (0-23): 3*(fase-1) + columna, o 18 + fase - 1 (p01:64D5)
	cp 012h		;6caa
	ret nc			;6cac
	ex af,af'			;6cad
	ld a,009h		;6cae   ; el banco 9 en 0xA000
	call 05434h		;6cb0
	ex af,af'			;6cb3
	ld de,0a162h		;6cb4
	call 0486fh		;6cb7
	ld a,003h		;6cba   ; el banco 3 en 0xA000
	call 05434h		;6cbc
	ld a,(0d412h)		;6cbf   ; 0xD412: lo que controla la salida de bichos
	ld c,a			;6cc2
	add a,a			;6cc3
	add a,c			;6cc4
	call 040a9h		;6cc5   ; p00:40A9 de_mas_a
L_6CC8:
	ld a,009h		;6cc8   ; el banco 9 en 0xA000
	call 05434h		;6cca
	call pon_buffer_2		;6ccd
	exx			;6cd0
	ld a,003h		;6cd1   ; el banco 3 en 0xA000
	call 05434h		;6cd3
	exx			;6cd6
	ret z			;6cd7
	ld bc,(0c302h)		;6cd8   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	sbc hl,bc		;6cdc
	jr c,L_6CF5		;6cde
	ret nz			;6ce0
	push de			;6ce1
	call mira_bichos_del_mapa		;6ce2
	pop de			;6ce5
	ret nz			;6ce6
	push hl			;6ce7   ; la ficha es la de HL
	pop ix		;6ce8
	ld a,(0e801h)		;6cea   ; 0xE801: buffer de trabajo
	ld (ix+006h),a		;6ced   ; ix+0x06: cuenta atras (p01:6124)
	push de			;6cf0
	call pon_buffer_3		;6cf1
	pop de			;6cf4
L_6CF5:
	ld hl,0d412h		;6cf5   ; 0xD412: lo que controla la salida de bichos
	inc (hl)			;6cf8
	inc de			;6cf9
	jr L_6CC8		;6cfa
pon_buffer_2:
	ld a,(de)			;6cfc
	ld l,a			;6cfd
	inc de			;6cfe
	ld a,(de)			;6cff
	srl a		;6d00
	ret z			;6d02
	ld (0e800h),a		;6d03   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	ld a,(de)			;6d06
	and 001h		;6d07
	ld h,a			;6d09
	inc de			;6d0a
	ld a,(de)			;6d0b
	ld (0e801h),a		;6d0c   ; 0xE801: buffer de trabajo
	scf			;6d0f
	sbc a,a			;6d10
	ret			;6d11
mira_bichos_del_mapa:
	ld hl,0d500h		;6d12   ; 0xD500: 10 fichas de 0x10: los bichos que pone la lista del area (p01:6D12)
	ld de,00010h		;6d15
	ld b,00ah		;6d18   ; 10 vueltas
	xor a			;6d1a
L_6D1B:
	cp (hl)			;6d1b
	ret z			;6d1c
	add hl,de			;6d1d
	djnz L_6D1B		;6d1e
	ret			;6d20
pon_buffer_3:
	ld a,(0e800h)		;6d21   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	dec a			;6d24
	call 040aeh		;6d25   ; p00:40AE despacha

; ----------------------------------------------------------------------
; DATOS tabla_6D28: 16 destinos del despachador de 0x40AE (call en p01:6D25):
;   0x9AB7, 0x9B73, 0x9C20, 0x9D44, 0x9DE9, 0x9FEB, 0xA10C, 0xA312 ...; lo
;   leen p01:6D25 (32 bytes)
;   0x6d28..0x6d48  (32 bytes)
DATA_tabla_6D28:
	defb 0b7h,09ah	; 6d28
	defb 073h,09bh	; 6d2a
	defb 020h,09ch	; 6d2c
	defb 044h,09dh	; 6d2e
	defb 0e9h,09dh	; 6d30
	defb 0ebh,09fh	; 6d32
	defb 00ch,0a1h	; 6d34
	defb 012h,0a3h	; 6d36
	defb 04bh,0a4h	; 6d38
	defb 0e1h,0a5h	; 6d3a
	defb 0ach,0a6h	; 6d3c
	defb 019h,0a9h	; 6d3e
	defb 0e4h,0a9h	; 6d40
	defb 059h,0aah	; 6d42
	defb 061h,0aah	; 6d44
	defb 07ch,0aah	; 6d46

; ======================================================================
; CODIGO 0x6d48..0x6e83  (315 bytes)
; ======================================================================


pon_buffer_4:
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
	jr z,pon_buffer_5		;6d60
	jr L_6D66		;6d62
pon_buffer_5:
	xor a			;6d64
	ld b,a			;6d65
L_6D66:
	ld a,b			;6d66
	ld (0e805h),a		;6d67   ; 0xE805: buffer de trabajo
	xor a			;6d6a
	ld (0d411h),a		;6d6b   ; 0xD411: lo que controla la salida de bichos
	ld a,c			;6d6e
	ld (0e800h),a		;6d6f   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	ld (0e801h),de		;6d72   ; 0xE801: buffer de trabajo
	ld hl,0d700h		;6d76   ; 0xD700: fichas de lo que se mueve
	ld de,00080h		;6d79
	ld b,00ah		;6d7c   ; 10 vueltas
	xor a			;6d7e
L_6D7F:
	cp (hl)			;6d7f
	jr z,L_6D86		;6d80
	add hl,de			;6d82
	djnz L_6D7F		;6d83
	ret			;6d85
L_6D86:
	push hl			;6d86   ; la ficha es la de HL
	pop ix		;6d87
	ld (0e803h),hl		;6d89   ; 0xE803: buffer de trabajo
	ld a,(0e800h)		;6d8c   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	ld hl,06f21h		;6d8f
	call 040a4h		;6d92   ; p00:40A4 hl_mas_a
	ld a,(hl)			;6d95
	ld (ix+020h),a		;6d96
	ld c,a			;6d99
	and a			;6d9a
	jp z,L_6E27		;6d9b
	dec a			;6d9e
	jr z,L_6E08		;6d9f
	ld de,00000h		;6da1
	ld hl,0e628h		;6da4   ; 0xE628: y, x, patron y color de los 32 sprites (p00:4B7A)
	ld a,(0c4a8h)		;6da7   ; 0xC4A8: variables de la partida
	ld b,a			;6daa
L_6DAB:
	ld a,(hl)			;6dab
	cp 0e0h		;6dac
	jr nz,L_6DDE		;6dae
	ld (hl),0e1h		;6db0
	call mira_buffer		;6db2
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
	call mira_buffer		;6dc9
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
	ld de,(0e803h)		;6def   ; 0xE803: buffer de trabajo
	ld a,e			;6df3
	add a,021h		;6df4
	ld e,a			;6df6
L_6DF7:
	ld hl,0e628h		;6df7   ; 0xE628: y, x, patron y color de los 32 sprites (p00:4B7A)
	ld a,(de)			;6dfa
	call 040a4h		;6dfb   ; p00:40A4 hl_mas_a
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
	ld hl,0e628h		;6e0b   ; 0xE628: y, x, patron y color de los 32 sprites (p00:4B7A)
	ld a,(0c4a8h)		;6e0e   ; 0xC4A8: variables de la partida
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
	call mira_buffer		;6e24
L_6E27:
	ld a,001h		;6e27
	ld (0d411h),a		;6e29   ; 0xD411: lo que controla la salida de bichos
	ld hl,(0e803h)		;6e2c   ; 0xE803: buffer de trabajo
	ld a,(0e800h)		;6e2f   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	ld (hl),a			;6e32
	xor a			;6e33
	inc l			;6e34
	ld (hl),a			;6e35
	ld de,(0e801h)		;6e36   ; 0xE801: buffer de trabajo
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
	ld a,(0e800h)		;6e48   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	ld hl,06f5ah		;6e4b
	call 040a4h		;6e4e   ; p00:40A4 hl_mas_a
	ld a,(hl)			;6e51
	ld (ix+012h),a		;6e52
	ld (ix+013h),000h		;6e55
	ld (ix+014h),001h		;6e59
	ld a,(0e805h)		;6e5d   ; 0xE805: buffer de trabajo
	ld (ix+015h),a		;6e60
	ld a,(0e800h)		;6e63   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	ld b,000h		;6e66
	cp 01bh		;6e68
	jr nc,L_6E73		;6e6a
	ld hl,06f93h		;6e6c
	call 040a4h		;6e6f   ; p00:40A4 hl_mas_a
	ld b,(hl)			;6e72
L_6E73:
	ld (ix+016h),b		;6e73
	ld de,06fach		;6e76
	call ficha_tipo_4		;6e79
	ld a,(ix+000h)		;6e7c   ; ix+0x00: el TIPO de la ficha (0 = libre; p01:6D12)
	dec a			;6e7f
	call 040aeh		;6e80   ; p00:40AE despacha

; ----------------------------------------------------------------------
; DATOS tabla_6E83: 57 destinos del despachador de 0x40AE (call en p01:6E80):
;   0x999B, 0x9AF6, 0x9B9C, 0x9C33, 0x9D0A, 0x9D50, 0x9E07, 0xA5F9 ...; lo
;   leen p01:6E80 (114 bytes)
;   0x6e83..0x6ef5  (114 bytes)
DATA_tabla_6E83:
	defb 09bh,099h	; 6e83
	defb 0f6h,09ah	; 6e85
	defb 09ch,09bh	; 6e87
	defb 033h,09ch	; 6e89
	defb 00ah,09dh	; 6e8b
	defb 050h,09dh	; 6e8d
	defb 007h,09eh	; 6e8f
	defb 0f9h,0a5h	; 6e91
	defb 0fbh,09eh	; 6e93
	defb 0f7h,09fh	; 6e95
	defb 095h,0a0h	; 6e97
	defb 018h,0a1h	; 6e99
	defb 01eh,0a3h	; 6e9b
	defb 082h,0a3h	; 6e9d
	defb 057h,0a4h	; 6e9f
	defb 0fbh,0a5h	; 6ea1
	defb 0b8h,0a6h	; 6ea3
	defb 002h,0a8h	; 6ea5
	defb 0d0h,0a8h	; 6ea7
	defb 01ch,0a8h	; 6ea9
	defb 025h,0a9h	; 6eab
	defb 0cbh,0a9h	; 6ead
	defb 0ech,0a9h	; 6eaf
	defb 084h,0aah	; 6eb1
	defb 0aah,0aah	; 6eb3
	defb 0e6h,0aah	; 6eb5
	defb 0cbh,0b0h	; 6eb7
	defb 0f8h,0b2h	; 6eb9
	defb 090h,0b4h	; 6ebb
	defb 0e7h,0b6h	; 6ebd
	defb 0e7h,0b8h	; 6ebf
	defb 087h,0bbh	; 6ec1
	defb 0a8h,0afh	; 6ec3
	defb 0ach,0b5h	; 6ec5
	defb 0c6h,0b5h	; 6ec7
	defb 072h,0b2h	; 6ec9
	defb 05dh,0b8h	; 6ecb
	defb 0cah,0bah	; 6ecd
	defb 08ch,0bch	; 6ecf
	defb 0afh,0bch	; 6ed1
	defb 0dah,0b3h	; 6ed3
	defb 077h,0adh	; 6ed5
	defb 0aeh,0adh	; 6ed7
	defb 0ceh,069h	; 6ed9
	defb 08fh,0ach	; 6edb
	defb 08fh,0ach	; 6edd
	defb 04eh,0ach	; 6edf
	defb 0c4h,0adh	; 6ee1
	defb 0bdh,0b1h	; 6ee3
	defb 0b6h,0b1h	; 6ee5
	defb 08ah,0b3h	; 6ee7
	defb 01dh,0afh	; 6ee9
	defb 022h,0afh	; 6eeb
	defb 027h,0afh	; 6eed
	defb 02ch,0afh	; 6eef
	defb 031h,0afh	; 6ef1
	defb 036h,0afh	; 6ef3

; ======================================================================
; CODIGO 0x6ef5..0x6f22  (45 bytes)
; ======================================================================


ficha_tipo_4:
	ld a,(ix+000h)		;6ef5   ; ix+0x00: el TIPO de la ficha (0 = libre; p01:6D12)
	call 0486fh		;6ef8
L_6EFB:
	ld b,(ix+020h)		;6efb
	ld a,b			;6efe
	and a			;6eff
	ret z			;6f00
	push ix		;6f01   ; HL = la ficha
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
mira_buffer:
	push hl			;6f12
	ld hl,(0e803h)		;6f13   ; 0xE803: buffer de trabajo
	ld a,e			;6f16
	add a,a			;6f17
	add a,a			;6f18
	add a,e			;6f19
	add a,021h		;6f1a
	call 040a4h		;6f1c   ; p00:40A4 hl_mas_a
	ld (hl),d			;6f1f
	pop hl			;6f20
	ret			;6f21

; ----------------------------------------------------------------------
; DATOS tabla_6F22: tabla que lee p01:673F, p01:6AB1, p01:6E4B, p01:6E6C,
;   p01:6E76, p01:7109 (295 bytes)
;   0x6f22..0x7049  (295 bytes)
DATA_tabla_6F22:
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
	ld a,(0c172h)		;7049   ; 0xC172: sube al cambiar de fase, hasta 10 (p01:64FA); entra en la dificultad (p01:7049)
	ld c,a			;704c
	ld a,(0c840h)		;704d   ; 0xC840: elige los 32 bytes de p07:70AE que van a los patrones de 0xF8A0 (p00:5671) y el sumando de la dificultad (p01:704D); 6 es especial (p02:8F4F)
	ld hl,07062h		;7050   ; p01:7062 tabla_7062: tabla que lee p01:7050 (8 bytes)
	call 040a4h		;7053   ; p00:40A4 hl_mas_a
	ld a,(hl)			;7056
	add a,c			;7057
	cp 00fh		;7058
	jr c,L_705E		;705a
	ld a,00fh		;705c
L_705E:
	ld (0c4aah),a		;705e   ; 0xC4AA: la dificultad: 0xC172 + lo de la tabla p01:7062 segun 0xC840, hasta 15 (p01:7049)
	ret			;7061

; ----------------------------------------------------------------------
; DATOS tabla_7062: tabla que lee p01:7050 (8 bytes)
;   0x7062..0x706a  (8 bytes)
DATA_tabla_7062:
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
copia_bytes_2:
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
con_hl_mas_a_2:
	ld a,00fh		;70a1
L_70A3:
	push ix		;70a3   ; HL = la ficha
	pop hl			;70a5
	call 040a4h		;70a6   ; p00:40A4 hl_mas_a
	ld d,(hl)			;70a9
	dec hl			;70aa
	ld e,(hl)			;70ab
	call cambia_de_signo		;70ac
	ld (hl),e			;70af
	inc hl			;70b0
	ld (hl),d			;70b1
	ret			;70b2
mira_y_de_gao:
	ld a,(0c80bh)		;70b3   ; 0xC80B: la Y de Gao (p01:70B3)
	sub (ix+003h)		;70b6   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	ret nc			;70b9
	neg		;70ba
	ret			;70bc
mira_x_de_gao:
	ld a,(0c809h)		;70bd   ; 0xC809: la X de Gao (p01:70BD)
	sub (ix+005h)		;70c0   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
	ret nc			;70c3
	neg		;70c4
	ret			;70c6

; ----------------------------------------------------------------------
; DATOS sin_llamar_70C7: codigo que no llama nadie (ninguna palabra del
;   cartucho vale 0x70C7): ld a,h / cpl / ld h,a / ld a,l ... (8 bytes)
;   0x70c7..0x70cf  (8 bytes)
DATA_sin_llamar_70C7:
	defb 07ch,02fh,067h,07dh,02fh,06fh,023h,0c9h	; 70c7  |/g}/o#.

; ======================================================================
; CODIGO 0x70cf..0x70dd  (14 bytes)
; ======================================================================


L_70CF:
	ld a,(0c80bh)		;70cf   ; 0xC80B: la Y de Gao (p01:70B3)
	cp (ix+003h)		;70d2   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	ret			;70d5
mira_x_de_gao_2:
	ld a,(0c809h)		;70d6   ; 0xC809: la X de Gao (p01:70BD)
	cp (ix+005h)		;70d9   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
	ret			;70dc

; ----------------------------------------------------------------------
; DATOS sin_lector_70DD: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (20 bytes)
;   0x70dd..0x70f1  (20 bytes)
DATA_sin_lector_70DD:
	defb 0cdh,07fh,098h,0e6h,08fh,0cbh,07fh,028h,004h,0cbh,0bfh,0edh,044h,0ddh,086h,005h	; 70dd  .......(....D...
	defb 0ddh,077h,005h,0c9h	; 70ed

; ======================================================================
; CODIGO 0x70f1..0x72bf  (462 bytes)
; ======================================================================


L_70F1:
	inc (ix+060h)		;70f1   ; ix+0x60: cuenta de cuadros (p01:70F1)
	ld a,(ix+060h)		;70f4   ; ix+0x60: cuenta de cuadros (p01:70F1)
	and c			;70f7
	jr z,L_70FB		;70f8
	inc b			;70fa
L_70FB:
	ld (ix+010h),b		;70fb   ; ix+0x10: el PATRON del sprite (p01:70FB)
	ret			;70fe
L_70FF:
	inc (ix+060h)		;70ff   ; ix+0x60: cuenta de cuadros (p01:70F1)
	ld a,(ix+060h)		;7102   ; ix+0x60: cuenta de cuadros (p01:70F1)
	and b			;7105
	jp z,L_6EFB		;7106
	ld de,06fach		;7109
	jp ficha_tipo_4		;710c
L_710F:
	ld a,(0c388h)		;710f   ; 0xC388: lo que se ha movido el mapa este cuadro (p00:56E8)
	add a,(ix+003h)		;7112   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	ld (ix+003h),a		;7115   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	ret			;7118
L_7119:
	ld a,(0c4c8h)		;7119   ; 0xC4C8: variables de la partida
	dec a			;711c
	cp 020h		;711d
	ret nc			;711f
	ld bc,04020h		;7120
L_7123:
	call mira_y_de_gao		;7123
	cp b			;7126
	ret nc			;7127
	call mira_x_de_gao		;7128
	cp c			;712b
	ret nc			;712c
	jp mira_atributos_de_sprites		;712d
L_7130:
	ld a,(0c4aah)		;7130   ; 0xC4AA: la dificultad: 0xC172 + lo de la tabla p01:7062 segun 0xC840, hasta 15 (p01:7049)
	and a			;7133
	ret z			;7134
	dec (ix+061h)		;7135   ; cuenta atras en ix+0x61: hasta que llegue a 0, nada mas
	ret nz			;7138
	call mira_dificultad		;7139
	jp L_7809		;713c
mira_dificultad:
	ld a,(0c4aah)		;713f   ; 0xC4AA: la dificultad: 0xC172 + lo de la tabla p01:7062 segun 0xC840, hasta 15 (p01:7049)
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
	ld (ix+061h),a		;7151   ; ix+0x61: cuenta atras de la dificultad (p01:7135)
	ret			;7154
L_7155:
	ld a,(0c4b0h)		;7155   ; 0xC4B0: cuenta los cuadros; el bit 0 alterna los colores de los sprites (p02:93AA)
	and 002h		;7158
	ld b,000h		;715a
	jr z,L_715F		;715c
	inc b			;715e
L_715F:
	ld (ix+014h),b		;715f
	dec (ix+011h)		;7162   ; cuenta atras en ix+0x11: hasta que llegue a 0, nada mas
	ret nz			;7165
	ld (ix+014h),001h		;7166
	ret			;716a
L_716B:
	ld (0e800h),a		;716b   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	ld a,b			;716e
	ld (0e80bh),a		;716f   ; 0xE80B: buffer de trabajo
	ld a,c			;7172
	ld (0e80ah),a		;7173   ; 0xE80A: buffer de trabajo
	ld d,(ix+005h)		;7176   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
	ld e,(ix+003h)		;7179   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	call pon_buffer_11		;717c
	call pon_buffer_10		;717f
	call rutina_13		;7182
	ex de,hl			;7185
	jp L_792C		;7186
L_7189:
	call pon_buffer_9		;7189
	call rutina_13		;718c
	ex de,hl			;718f
	jp L_792C		;7190
L_7193:
	ld a,(ix+005h)		;7193   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
	cp b			;7196
	jr nc,L_719E		;7197
	cp c			;7199
	ret nc			;719a
	jp rutina_13		;719b
L_719E:
	call cambia_de_signo		;719e
	jp rutina_13		;71a1
L_71A4:
	ld a,(ix+013h)		;71a4
	and 00bh		;71a7
	ld a,010h		;71a9
	jp nz,041ach		;71ab
	ret			;71ae
mira_control_de_bichos_2:
	ld hl,0d43bh		;71af   ; 0xD43B: lo que controla la salida de bichos
	ld a,(hl)			;71b2
	and a			;71b3
	jr z,L_71B8		;71b4
	dec (hl)			;71b6
	ret			;71b7
L_71B8:
	ld hl,0d43ch		;71b8   ; 0xD43C: lo que controla la salida de bichos
	ld a,(hl)			;71bb
	and a			;71bc
	jr z,L_71C0		;71bd
	dec (hl)			;71bf
L_71C0:
	ld a,(0c480h)		;71c0   ; 0xC480: el AREA (0-23): 3*(fase-1) + columna, o 18 + fase - 1 (p01:64D5)
	cp 012h		;71c3
	ret nc			;71c5
	call mira_avanza_2		;71c6
	ld a,009h		;71c9   ; el banco 9 en 0xA000
	call 05434h		;71cb
	ld a,(0c480h)		;71ce   ; 0xC480: el AREA (0-23): 3*(fase-1) + columna, o 18 + fase - 1 (p01:64D5)
	ld de,0a186h		;71d1
	call 0486fh		;71d4
	ld a,(0c302h)		;71d7   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	rlca			;71da
	rlca			;71db
	rlca			;71dc
	and 007h		;71dd
	call 040a9h		;71df   ; p00:40A9 de_mas_a
	ld a,(de)			;71e2
	ld c,a			;71e3
	ld a,003h		;71e4   ; el banco 3 en 0xA000
	call 05434h		;71e6
	ld a,c			;71e9
	rra			;71ea
	push af			;71eb
	call c,pon_buffer_6		;71ec
	pop af			;71ef
	rra			;71f0
	push af			;71f1
	call c,mira_control_de_bichos_3		;71f2
	pop af			;71f5
	rra			;71f6
	push af			;71f7
	call c,mira_control_de_bichos_4		;71f8
	pop af			;71fb
	rra			;71fc
	push af			;71fd
	call c,mira_control_de_bichos_5		;71fe
	pop af			;7201
	rra			;7202
	push af			;7203
	call c,mira_control_de_bichos_6		;7204
	pop af			;7207
	rra			;7208
	jr c,L_727E		;7209
	ret			;720b
pon_buffer_6:
	ld hl,0d430h		;720c   ; 0xD430: lo que controla la salida de bichos
	ld de,072bfh		;720f   ; p01:72BF tabla_72BF: tabla que lee p01:720F, p01:7241, p01:7251, p01:725D, p01:7265, p01:726F (46 bytes)
L_7212:
	ld (0e800h),de		;7212   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	ld c,064h		;7216
	call mira_dificultad_2		;7218
	ret nz			;721b
	ld a,(0c809h)		;721c   ; 0xC809: la X de Gao (p01:70BD)
	cp 080h		;721f
	ld a,030h		;7221
	jr nc,L_7227		;7223
	ld a,0d0h		;7225
L_7227:
	ld (de),a			;7227
	ld hl,0d439h		;7228   ; 0xD439: lo que controla la salida de bichos
	ld a,(hl)			;722b
	inc (hl)			;722c
	and 003h		;722d
	inc de			;722f
	ld (de),a			;7230
	ld hl,0d450h		;7231   ; 0xD450: lo que controla la salida de bichos
	call 040a4h		;7234   ; p00:40A4 hl_mas_a
	ld de,(0e800h)		;7237   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	ld a,(de)			;723b
	ld (hl),a			;723c
	ret			;723d
mira_control_de_bichos_3:
	ld hl,0d431h		;723e   ; 0xD431: lo que controla la salida de bichos
	ld de,072c6h		;7241
	ld c,0f0h		;7244
	call mira_dificultad_2		;7246
	ret nz			;7249
	ld hl,0d436h		;724a   ; 0xD436: lo que controla la salida de bichos
L_724D:
	inc (hl)			;724d
	ld a,(hl)			;724e
	and 003h		;724f
	ld hl,072e9h		;7251
	call 040a4h		;7254   ; p00:40A4 hl_mas_a
	ld a,(hl)			;7257
	ld (de),a			;7258
	ret			;7259
mira_control_de_bichos_4:
	ld hl,0d432h		;725a   ; 0xD432: lo que controla la salida de bichos
	ld de,072cdh		;725d
	jr L_7212		;7260
mira_control_de_bichos_5:
	ld hl,0d433h		;7262   ; 0xD433: lo que controla la salida de bichos
	ld de,072d4h		;7265
	ld c,040h		;7268
	jr mira_dificultad_2		;726a
mira_control_de_bichos_6:
	ld hl,0d434h		;726c   ; 0xD434: lo que controla la salida de bichos
	ld de,072dbh		;726f
	ld c,040h		;7272
	call mira_dificultad_2		;7274
	ret nz			;7277
	ld hl,0d437h		;7278   ; 0xD437: lo que controla la salida de bichos
	jp L_724D		;727b
L_727E:
	ld hl,0d435h		;727e   ; 0xD435: lo que controla la salida de bichos
	ld de,072e2h		;7281
	ld c,040h		;7284
	call mira_dificultad_2		;7286
	ret nz			;7289
	ld a,019h		;728a   ; el sonido 0x19 (p14:9C47 + 2*0x19)
	jp 041ach		;728c
mira_dificultad_2:
	dec (hl)			;728f
	ret nz			;7290
	ld a,(0c4aah)		;7291   ; 0xC4AA: la dificultad: 0xC172 + lo de la tabla p01:7062 segun 0xC840, hasta 15 (p01:7049)
	add a,a			;7294
	sub c			;7295
	neg		;7296
	ld (hl),a			;7298
	push de			;7299
	call mira_bichos_del_mapa		;729a
	pop de			;729d
	ret nz			;729e
	ex de,hl			;729f
	ld bc,00007h		;72a0
	ldir		;72a3
	dec de			;72a5
	dec de			;72a6
	xor a			;72a7
	ret			;72a8
mira_avanza_2:
	ld a,(0c389h)		;72a9   ; 0xC389: 1: el mapa avanza (p01:6CA2); p00:57CE lo pone a 0 con la orden 0xFC
	dec a			;72ac
	ret nz			;72ad
	ld a,(0c302h)		;72ae   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	and 01fh		;72b1
	ret nz			;72b3
L_72B4:
	ld hl,0d430h		;72b4   ; 0xD430: lo que controla la salida de bichos
	ld b,006h		;72b7   ; 6 vueltas
L_72B9:
	ld (hl),020h		;72b9
	inc hl			;72bb
	djnz L_72B9		;72bc
	ret			;72be

; ----------------------------------------------------------------------
; DATOS tabla_72BF: tabla que lee p01:720F, p01:7241, p01:7251, p01:725D,
;   p01:7265, p01:726F (46 bytes)
;   0x72bf..0x72ed  (46 bytes)
DATA_tabla_72BF:
	defb 004h,001h,00ah,001h,000h,000h,000h,004h,001h,008h,009h,000h,000h,000h,004h,001h	; 72bf  ................
	defb 006h,00eh,0dbh,000h,000h,005h,001h,004h,012h,000h,000h,000h,005h,001h,004h,013h	; 72cf  ................
	defb 000h,000h,000h,004h,015h,004h,014h,0dbh,000h,000h,030h,0d0h,050h,0b0h	; 72df  ..........0.P.

; ======================================================================
; CODIGO 0x72ed..0x7380  (147 bytes)
; ======================================================================


L_72ED:
	ld a,(0cb40h)		;72ed   ; 0xCB40: las cosas del camino que se van poniendo (p01:72ED)
	or a			;72f0
	jr z,L_7308		;72f1
	ld (0cb04h),a		;72f3   ; 0xCB04: las cosas del camino que se van poniendo (p01:72ED)
	ld a,(0cb41h)		;72f6   ; 0xCB41: las cosas del camino que se van poniendo (p01:72ED)
	ld (0cb06h),a		;72f9   ; 0xCB06: las cosas del camino que se van poniendo (p01:72ED)
	ld hl,00000h		;72fc
	ld (0cb40h),hl		;72ff   ; 0xCB40: las cosas del camino que se van poniendo (p01:72ED)
	ld a,(0cb04h)		;7302   ; 0xCB04: las cosas del camino que se van poniendo (p01:72ED)
	jp L_7361		;7305
L_7308:
	ld a,(0c389h)		;7308   ; 0xC389: 1: el mapa avanza (p01:6CA2); p00:57CE lo pone a 0 con la orden 0xFC
	or a			;730b
	ret z			;730c
	call mira_truco_aaaaa		;730d
	ld bc,(0c302h)		;7310   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	ld a,(0cb00h)		;7314   ; 0xCB00: las cosas del camino que se van poniendo (p01:72ED)
	ld l,a			;7317
	ld h,000h		;7318
	ld e,a			;731a
	ld d,h			;731b
	add hl,hl			;731c
	add hl,de			;731d
	ld de,(0cb02h)		;731e   ; 0xCB02: las cosas del camino que se van poniendo (p01:72ED)
	add hl,de			;7322
pon_cosas:
	ld a,009h		;7323   ; el banco 9 en 0xA000
	call 05434h		;7325
	ld e,(hl)			;7328
	inc hl			;7329
	ld d,(hl)			;732a
	inc hl			;732b
	ld a,(hl)			;732c
	ld (0cb06h),a		;732d   ; 0xCB06: las cosas del camino que se van poniendo (p01:72ED)
	inc hl			;7330
	ld a,003h		;7331   ; el banco 3 en 0xA000
	call 05434h		;7333
	call rutina_10		;7336
	jr c,L_7343		;7339
	ret nz			;733b
	push bc			;733c
	push hl			;733d
	call ficha_campo_40		;733e
	pop hl			;7341
	pop bc			;7342
L_7343:
	exx			;7343
	ld hl,0cb00h		;7344   ; 0xCB00: las cosas del camino que se van poniendo (p01:72ED)
	inc (hl)			;7347
	exx			;7348
	jr pon_cosas		;7349
L_734B:
	ld a,c			;734b
	ld a,b			;734c
	ld (0cb04h),a		;734d   ; 0xCB04: las cosas del camino que se van poniendo (p01:72ED)
	jr L_7361		;7350
ficha_campo_40:
	ld a,(0cb00h)		;7352   ; 0xCB00: las cosas del camino que se van poniendo (p01:72ED)
	ld (0cb4ch),a		;7355   ; 0xCB4C: las cosas del camino que se van poniendo (p01:72ED)
	dec hl			;7358
	ld a,d			;7359
	rrca			;735a
	rrca			;735b
	and 03fh		;735c
	ld (0cb04h),a		;735e   ; 0xCB04: las cosas del camino que se van poniendo (p01:72ED)
L_7361:
	cp 020h		;7361
	jp nc,L_73BF		;7363
	cp 006h		;7366
	jp c,L_7452		;7368
	call mira_bicho_0		;736b
	ret nz			;736e
	push hl			;736f   ; la ficha es la de HL
	pop ix		;7370
	ld (ix+040h),b		;7372   ; ix+0x40: dato del tipo (p01:7372)
L_7375:
	set 5,l		;7375
	xor a			;7377
	ld (hl),a			;7378
	ld a,(0cb04h)		;7379   ; 0xCB04: las cosas del camino que se van poniendo (p01:72ED)
	dec a			;737c
	call 040aeh		;737d   ; p00:40AE despacha

; ----------------------------------------------------------------------
; DATOS tabla_7380: 31 destinos del despachador de 0x40AE (call en p01:737D):
;   0x8231, 0x8247, 0x8247, 0x81E8, 0x81AA, 0xBDB5, 0x73BE, 0x98D4 ...; lo
;   leen p01:737D (62 bytes)
;   0x7380..0x73be  (62 bytes)
DATA_tabla_7380:
	defb 031h,082h	; 7380
	defb 047h,082h	; 7382
	defb 047h,082h	; 7384
	defb 0e8h,081h	; 7386
	defb 0aah,081h	; 7388
	defb 0b5h,0bdh	; 738a
	defb 0beh,073h	; 738c
	defb 0d4h,098h	; 738e
	defb 015h,0b3h	; 7390
	defb 067h,099h	; 7392
	defb 077h,099h	; 7394
	defb 031h,097h	; 7396
	defb 031h,097h	; 7398
	defb 031h,097h	; 739a
	defb 0cah,095h	; 739c
	defb 057h,099h	; 739e
	defb 0beh,073h	; 73a0
	defb 0beh,073h	; 73a2
	defb 0beh,073h	; 73a4
	defb 0beh,073h	; 73a6
	defb 0beh,073h	; 73a8
	defb 0beh,073h	; 73aa
	defb 0beh,073h	; 73ac
	defb 0beh,073h	; 73ae
	defb 0beh,073h	; 73b0
	defb 0beh,073h	; 73b2
	defb 0beh,073h	; 73b4
	defb 0beh,073h	; 73b6
	defb 0beh,073h	; 73b8
	defb 0beh,073h	; 73ba
	defb 0beh,073h	; 73bc

; ======================================================================
; CODIGO 0x73be..0x73c5  (7 bytes)
; ======================================================================


cosa_06:
	ret			;73be
L_73BF:
	call mira_bicho_0		;73bf
	jp L_6136		;73c2

; ----------------------------------------------------------------------
; DATOS sin_llamar_73C5: codigo que no llama nadie (ninguna palabra del
;   cartucho vale 0x73C5): call 0749fh / ret nz / ld (hl),001h / inc l ... (30
;   bytes)
;   0x73c5..0x73e3  (30 bytes)
DATA_sin_llamar_73C5:
	defb 0cdh,09fh,074h,0c0h,036h,001h,02ch,03ah,004h,0cbh,0e6h,00fh,077h,02ch,03ah,085h	; 73c5  ..t.6.,:....w,:.
	defb 0c3h,0e6h,00fh,0d6h,018h,077h,02ch,03ah,006h,0cbh,0e6h,0f0h,077h,0c9h	; 73d5  .....w,:....w.

; ======================================================================
; CODIGO 0x73e3..0x745f  (124 bytes)
; ======================================================================


rutina_7:
	ld c,a			;73e3
	push de			;73e4
	push bc			;73e5
	call mira_objeto_1		;73e6
	pop bc			;73e9
	pop de			;73ea
	ld a,c			;73eb
	jr nc,L_73F6		;73ec
	push ix		;73ee
	call rutina_8		;73f0
	pop ix		;73f3
	ret			;73f5
L_73F6:
	ld c,02fh		;73f6
	push ix		;73f8
	call pon_buffer_5		;73fa
	pop ix		;73fd
	ret			;73ff
rutina_8:
	cp 006h		;7400
	jr nz,L_7409		;7402
	ld c,02dh		;7404
	jp pon_buffer_5		;7406
L_7409:
	cp 008h		;7409
	ld c,02eh		;740b
	jp z,pon_buffer_5		;740d
	push de			;7410
	push af			;7411
	call rutina_9		;7412
	pop bc			;7415
	pop de			;7416
	ret z			;7417
	push bc			;7418
	push de			;7419
	call mira_disparos		;741a
	pop de			;741d
	pop bc			;741e
	ret nz			;741f
	ld (hl),001h		;7420
	inc l			;7422
	ld (hl),b			;7423
	inc l			;7424
	ld a,(0c385h)		;7425   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
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
rutina_9:
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
	call mira_bichos_grandes		;7452
	ret nz			;7455
	push hl			;7456   ; la ficha es la de HL
	pop ix		;7457
	ld (ix+040h),b		;7459   ; ix+0x40: dato del tipo (p01:7372)
	jp L_7375		;745c

; ----------------------------------------------------------------------
; DATOS sin_lector_745F: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (17 bytes)
;   0x745f..0x7470  (17 bytes)
DATA_sin_lector_745F:
	defb 0f5h,0d5h,0cdh,061h,073h,0d1h,0f1h,0ddh,072h,005h,0ddh,073h,003h,0ddh,077h,014h	; 745f  ...as...r..s..w.
	defb 0c9h	; 746f

; ======================================================================
; CODIGO 0x7470..0x750c  (156 bytes)
; ======================================================================


mira_fila:
	ld bc,(0c302h)		;7470   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
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
	ld hl,(0cb02h)		;748f   ; 0xCB02: las cosas del camino que se van poniendo (p01:72ED)
	call pon_cosas		;7492
	call mira_bicho_0_2		;7495
	pop af			;7498
	pop bc			;7499
	inc bc			;749a
	dec a			;749b
	jr nz,L_747F		;749c
	ret			;749e
mira_disparos:
	ld hl,0cc00h		;749f   ; 0xCC00: 16 fichas de 0x10 (p01:749F)
	ld de,00010h		;74a2
	ld b,010h		;74a5   ; 16 vueltas
	xor a			;74a7
L_74A8:
	cp (hl)			;74a8
	ret z			;74a9
	add hl,de			;74aa
	djnz L_74A8		;74ab
	ret			;74ad
mira_bichos_grandes:
	ld hl,0d300h		;74ae   ; 0xD300: dos fichas de 0x80 (p01:74AE)
	ld b,002h		;74b1   ; 2 vueltas
	jr L_74BA		;74b3
mira_bicho_0:
	ld b,006h		;74b5   ; 6 vueltas
	ld hl,0d000h		;74b7   ; 0xD000: la ficha del bicho 0, byte 0x00 (p01:74B7)
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
	call mira_area		;74c4
	call pon_cosas_2		;74c7
	call mira_fila		;74ca
	ld hl,0cb00h		;74cd   ; 0xCB00: las cosas del camino que se van poniendo (p01:72ED)
	ld (hl),000h		;74d0
	ret			;74d2
mira_area:
	ld a,009h		;74d3   ; el banco 9 en 0xA000
	call 05434h		;74d5
	ld hl,0a130h		;74d8
	ld a,(0c480h)		;74db   ; 0xC480: el AREA (0-23): 3*(fase-1) + columna, o 18 + fase - 1 (p01:64D5)
	call 04878h		;74de
	ld (0cb02h),hl		;74e1   ; 0xCB02: las cosas del camino que se van poniendo (p01:72ED)
	ld a,003h		;74e4   ; el banco 3 en 0xA000
	jp 05434h		;74e6
pon_cosas_2:
	xor a			;74e9
	ld (0cb00h),a		;74ea   ; 0xCB00: las cosas del camino que se van poniendo (p01:72ED)
	ld hl,0d000h		;74ed   ; 0xD000: la ficha del bicho 0, byte 0x00 (p01:74B7)
	ld de,00080h		;74f0
	ld b,008h		;74f3
	call bucle		;74f5
	ld hl,0cc00h		;74f8   ; 0xCC00: 16 fichas de 0x10 (p01:749F)
	ld de,00010h		;74fb
	ld b,010h		;74fe
	call bucle		;7500
	ld hl,0cb80h		;7503
	ld bc,00017h		;7506
	jp 05de9h		;7509

; ----------------------------------------------------------------------
; DATOS sin_llamar_750C: codigo que no llama nadie (ninguna palabra del
;   cartucho vale 0x750C): ld hl,0c48ch / call 0751eh / call 0751eh / ld
;   hl,0c48ch ... (37 bytes)
;   0x750c..0x7531  (37 bytes)
DATA_sin_llamar_750C:
	defb 021h,08ch,0c4h,0cdh,01eh,075h,0cdh,01eh,075h,021h,08ch,0c4h,001h,005h,000h,0c3h	; 750c  !....u..u!......
	defb 0e9h,05dh,03eh,002h,032h,004h,0cbh,07eh,0b7h,0c8h,023h,05eh,023h,056h,023h,0e5h	; 751c  .]>.2..~..#^#V#.
	defb 0cdh,05fh,074h,0e1h,0c9h	; 752c

; ======================================================================
; CODIGO 0x7531..0x756a  (57 bytes)
; ======================================================================


rutina_10:
	ld a,d			;7531
	and 001h		;7532
	cp b			;7534
	ret nz			;7535
	ld a,e			;7536
	cp c			;7537
	ret			;7538
L_7539:
	ld hl,0d000h		;7539   ; 0xD000: la ficha del bicho 0, byte 0x00 (p01:74B7)
	ld b,008h		;753c   ; 8 vueltas
L_753E:
	ld a,(hl)			;753e
	or a			;753f
	jr z,L_7549		;7540
	push bc			;7542
	push hl			;7543
	call mira_avance_del_cuadro		;7544
	pop hl			;7547
	pop bc			;7548
L_7549:
	ld de,00080h		;7549
	add hl,de			;754c
	djnz L_753E		;754d
	ret			;754f
mira_avance_del_cuadro:
	push hl			;7550   ; la ficha es la de HL
	pop ix		;7551
	ld (ix+040h),b		;7553   ; ix+0x40: dato del tipo (p01:7372)
	ex af,af'			;7556
	ld a,(0c388h)		;7557   ; 0xC388: lo que se ha movido el mapa este cuadro (p00:56E8)
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
	call 040aeh		;7567   ; p00:40AE despacha

; ----------------------------------------------------------------------
; DATOS tabla_756A: 31 destinos del despachador de 0x40AE (call en p01:7567):
;   0x801D, 0x8039, 0x8027, 0x80A9, 0x80F3, 0xBD08, 0x75A8, 0x97AA ...; lo
;   leen p01:7567 (62 bytes)
;   0x756a..0x75a8  (62 bytes)
DATA_tabla_756A:
	defb 01dh,080h	; 756a
	defb 039h,080h	; 756c
	defb 027h,080h	; 756e
	defb 0a9h,080h	; 7570
	defb 0f3h,080h	; 7572
	defb 008h,0bdh	; 7574
	defb 0a8h,075h	; 7576
	defb 0aah,097h	; 7578
	defb 070h,0b2h	; 757a
	defb 025h,099h	; 757c
	defb 034h,099h	; 757e
	defb 0fdh,095h	; 7580
	defb 0fdh,095h	; 7582
	defb 0fdh,095h	; 7584
	defb 077h,095h	; 7586
	defb 025h,099h	; 7588
	defb 0a8h,075h	; 758a
	defb 0a8h,075h	; 758c
	defb 0a8h,075h	; 758e
	defb 0a8h,075h	; 7590
	defb 0a8h,075h	; 7592
	defb 0a8h,075h	; 7594
	defb 0a8h,075h	; 7596
	defb 0a8h,075h	; 7598
	defb 0a8h,075h	; 759a
	defb 0a8h,075h	; 759c
	defb 0a8h,075h	; 759e
	defb 0a8h,075h	; 75a0
	defb 0a8h,075h	; 75a2
	defb 0a8h,075h	; 75a4
	defb 0a8h,075h	; 75a6

; ======================================================================
; CODIGO 0x75a8..0x75f3  (75 bytes)
; ======================================================================


L_75A8:
	ret			;75a8
mira_bicho_0_2:
	ld hl,0d000h		;75a9   ; 0xD000: la ficha del bicho 0, byte 0x00 (p01:74B7)
	ld b,008h		;75ac   ; 8 vueltas
L_75AE:
	ld a,(hl)			;75ae
	or a			;75af
	jr z,L_75B9		;75b0
	push hl			;75b2
	push bc			;75b3
	call rutina_11		;75b4
	pop bc			;75b7
	pop hl			;75b8
L_75B9:
	ld de,00080h		;75b9
	add hl,de			;75bc
	djnz L_75AE		;75bd
	ret			;75bf
rutina_11:
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
	push ix		;75ce   ; HL = la ficha
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
	call rutina_12		;75e7
	pop hl			;75ea
	pop bc			;75eb
	ld de,00004h		;75ec
L_75EF:
	add hl,de			;75ef
	djnz L_75DF		;75f0
	ret			;75f2

; ----------------------------------------------------------------------
; DATOS sin_llamar_75F3: codigo que no llama nadie (ninguna palabra del
;   cartucho vale 0x75F3): ld a,(0cb44h) / dec a / ld (0cb44h),a / ret (8
;   bytes)
;   0x75f3..0x75fb  (8 bytes)
DATA_sin_llamar_75F3:
	defb 03ah,044h,0cbh,03dh,032h,044h,0cbh,0c9h	; 75f3  :D.=2D..

; ======================================================================
; CODIGO 0x75fb..0x764b  (80 bytes)
; ======================================================================


rutina_12:
	xor 047h		;75fb
	and 00fh		;75fd
	ret nz			;75ff
	jp L_76C7		;7600
L_7603:
	ld hl,0d000h		;7603   ; 0xD000: la ficha del bicho 0, byte 0x00 (p01:74B7)
	ld b,008h		;7606   ; 8 vueltas
L_7608:
	ld a,(hl)			;7608
	or a			;7609
	jr z,L_7613		;760a
	push hl			;760c
	push bc			;760d
	call pon_contrasena		;760e
	pop bc			;7611
	pop hl			;7612
L_7613:
	ld de,00080h		;7613
	add hl,de			;7616
	djnz L_7608		;7617
	ret			;7619
pon_contrasena:
	push hl			;761a   ; la ficha es la de HL
	pop ix		;761b
	inc l			;761d
	inc l			;761e
	inc l			;761f
	ld e,(hl)			;7620
	inc l			;7621
	inc l			;7622
	ld d,(hl)			;7623
	ld (0e900h),de		;7624   ; 0xE900: la contrasena: la que se ensena y la tecleada (p06:B43E)
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
	call con_despacha		;7636
	pop bc			;7639
	pop hl			;763a
L_763B:
	ld de,00008h		;763b
	djnz L_762D		;763e
	ret			;7640
con_despacha:
	and 00fh		;7641
	ret z			;7643
	ld (hl),a			;7644
	inc hl			;7645
	dec a			;7646
	exx			;7647
	call 040aeh		;7648   ; p00:40AE despacha

; ----------------------------------------------------------------------
; DATOS tabla_764B: 12 destinos del despachador de 0x40AE (call en p01:7648):
;   0x7663, 0x7664, 0x7692, 0x769B, 0x76A4, 0x76A4, 0x76A6, 0x7692 ...; lo
;   leen p01:7648 (24 bytes)
;   0x764b..0x7663  (24 bytes)
DATA_tabla_764B:
	defb 063h,076h	; 764b
	defb 064h,076h	; 764d
	defb 092h,076h	; 764f
	defb 09bh,076h	; 7651
	defb 0a4h,076h	; 7653
	defb 0a4h,076h	; 7655
	defb 0a6h,076h	; 7657
	defb 092h,076h	; 7659
	defb 0c6h,076h	; 765b
	defb 0c7h,076h	; 765d
	defb 0d2h,076h	; 765f
	defb 0ddh,076h	; 7661

; ======================================================================
; CODIGO 0x7663..0x76c8  (101 bytes)
; ======================================================================


L_7663:
	ret			;7663
L_7664:
	exx			;7664
	push hl			;7665
	exx			;7666
	call ficha_campo_40_3		;7667
	exx			;766a
	pop hl			;766b
	push hl			;766c
	exx			;766d
	push hl			;766e
	push de			;766f
	exx			;7670
	call mira_scroll_3		;7671
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
	call mira_scroll_3		;7693
	ld a,001h		;7696
	jp 05226h		;7698
L_769B:
	exx			;769b
	call mira_scroll_3		;769c
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
; DATOS sin_llamar_76C8: codigo que no llama nadie (ninguna palabra del
;   cartucho vale 0x76C8): ld a,l / add a,007h / ld l,a / ld l,(hl) ... (10
;   bytes)
;   0x76c8..0x76d2  (10 bytes)
DATA_sin_llamar_76C8:
	defb 07dh,0c6h,007h,06fh,06eh,026h,0cbh,036h,000h,0c9h	; 76c8  }..on&.6..

; ======================================================================
; CODIGO 0x76d2..0x772e  (92 bytes)
; ======================================================================


L_76D2:
	exx			;76d2
	call mira_scroll_3		;76d3
	ex de,hl			;76d6
	ld a,d			;76d7
	ld d,000h		;76d8
	jp 0527eh		;76da
L_76DD:
	exx			;76dd
	call mira_scroll_3		;76de
	ld a,(0c385h)		;76e1   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
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
ficha_campo_40_2:
	call bucle_2		;7703
	ret nz			;7706
	jr L_770D		;7707
ficha_campo_40_3:
	ld a,(ix+040h)		;7709   ; ix+0x40: dato del tipo (p01:7372)
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
bucle_2:
	ld hl,0cb97h		;771e
	ld b,018h		;7721   ; 24 vueltas
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
; DATOS sin_lector_772E: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (13 bytes)
;   0x772e..0x773b  (13 bytes)
DATA_sin_lector_772E:
	defb 006h,020h,071h,023h,010h,0fch,0c9h,0beh,0d8h,019h,010h,0fbh,0c9h	; 772e  . q#.........

; ======================================================================
; CODIGO 0x773b..0x78cf  (404 bytes)
; ======================================================================


mira_scroll_3:
	ld a,(0e900h)		;773b   ; 0xE900: la contrasena: la que se ensena y la tecleada (p06:B43E)
	add a,(hl)			;773e
	ld e,a			;773f
	ld a,(0c385h)		;7740   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
	add a,e			;7743
	ld e,a			;7744
	inc l			;7745
	ld a,(0e901h)		;7746   ; 0xE901: la contrasena: la que se ensena y la tecleada (p06:B43E)
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
	ld ix,0dc00h		;7757   ; 0xDC00: fichas de lo que se mueve
	ld b,008h		;775b
L_775D:
	ld a,(ix+000h)		;775d   ; ix+0x00: el TIPO de la ficha (0 = libre; p01:6D12)
	and a			;7760
	jp z,L_77FB		;7761
	push bc			;7764
	bit 0,(ix+00bh)		;7765
	jr z,L_7791		;7769
	ld e,(ix+00ch)		;776b
	ld d,(ix+00dh)		;776e
	ld l,(ix+007h)		;7771   ; ix+0x07: el paso de la animacion (p01:6124)
	ld h,(ix+008h)		;7774
	add hl,de			;7777
	ld (ix+007h),l		;7778   ; ix+0x07: el paso de la animacion (p01:6124)
	ld (ix+008h),h		;777b
	ld e,(ix+00eh)		;777e
	ld d,(ix+00fh)		;7781
	ld l,(ix+009h)		;7784
	ld h,(ix+00ah)		;7787
	add hl,de			;778a
	ld (ix+009h),l		;778b
	ld (ix+00ah),h		;778e
L_7791:
	bit 0,(ix+006h)		;7791   ; ix+0x06: cuenta atras (p01:6124)
	jr z,L_77BD		;7795
	ld e,(ix+007h)		;7797   ; ix+0x07: el paso de la animacion (p01:6124)
	ld d,(ix+008h)		;779a
	ld l,(ix+002h)		;779d
	ld h,(ix+003h)		;77a0   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	add hl,de			;77a3
	ld (ix+002h),l		;77a4
	ld (ix+003h),h		;77a7   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	ld e,(ix+009h)		;77aa
	ld d,(ix+00ah)		;77ad
	ld l,(ix+004h)		;77b0
	ld h,(ix+005h)		;77b3   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
	add hl,de			;77b6
	ld (ix+004h),l		;77b7
	ld (ix+005h),h		;77ba   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
L_77BD:
	bit 0,(ix+011h)		;77bd   ; ix+0x11: cuenta atras de lo que hace
	jr nz,L_77CE		;77c1
	ld e,(ix+003h)		;77c3   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	ld d,(ix+005h)		;77c6   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
	call 04906h		;77c9
	jr c,L_77E0		;77cc
L_77CE:
	ld a,(ix+003h)		;77ce   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	cp 0dfh		;77d1
	jr nc,L_77E0		;77d3
	ld a,(ix+005h)		;77d5   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
	cp 0f8h		;77d8
	jr nc,L_77E0		;77da
	cp 007h		;77dc
	jr nc,L_77FA		;77de
L_77E0:
	xor a			;77e0
	ld (ix+000h),a		;77e1   ; ix+0x00: el TIPO de la ficha (0 = libre; p01:6D12)
	push ix		;77e4   ; HL = la ficha
	pop hl			;77e6
	set 5,l		;77e7
	ld b,(hl)			;77e9
	inc l			;77ea
L_77EB:
	ld a,(hl)			;77eb
	ld de,0e628h		;77ec   ; 0xE628: y, x, patron y color de los 32 sprites (p00:4B7A)
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
	ld (0d41ah),a		;7806   ; 0xD41A: lo que controla la salida de bichos
L_7809:
	ld c,(ix+003h)		;7809   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	ld b,(ix+005h)		;780c   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
	ld a,(ix+000h)		;780f   ; ix+0x00: el TIPO de la ficha (0 = libre; p01:6D12)
	ld (0e80fh),a		;7812   ; 0xE80F: buffer de trabajo
	push af			;7815
	xor a			;7816
	jr L_781A		;7817
L_7819:
	push af			;7819
L_781A:
	ld (0e800h),a		;781a   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	pop af			;781d
	ld (0e801h),bc		;781e   ; 0xE801: buffer de trabajo
	ld (0e805h),hl		;7822   ; 0xE805: buffer de trabajo
	ld (0e807h),de		;7825   ; 0xE807: buffer de trabajo
	ld h,a			;7829
	ld a,(0d41ah)		;782a   ; 0xD41A: lo que controla la salida de bichos
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
	call pon_buffer_7		;7841
	pop ix		;7844
	ret			;7846
pon_buffer_7:
	ld a,(0e800h)		;7847   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	and a			;784a
	jr nz,L_7858		;784b
	ld a,h			;784d
	ld hl,07911h		;784e
	call 040a4h		;7851   ; p00:40A4 hl_mas_a
	ld a,(hl)			;7854
	ld (0e800h),a		;7855   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
L_7858:
	ld hl,0dc00h		;7858   ; 0xDC00: fichas de lo que se mueve
	ld de,00080h		;785b
	ld b,008h		;785e   ; 8 vueltas
	xor a			;7860
L_7861:
	cp (hl)			;7861
	jr z,L_7868		;7862
	add hl,de			;7864
	djnz L_7861		;7865
	ret			;7867
L_7868:
	push hl			;7868   ; la ficha es la de HL
	pop ix		;7869
	ld (0e803h),hl		;786b   ; 0xE803: buffer de trabajo
	ld de,05000h		;786e
	ld hl,0e678h		;7871   ; 0xE678: y, x, patron y color de los 32 sprites (p00:4B7A)
	ld a,(0c4a9h)		;7874   ; 0xC4A9: variables de la partida
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
	call mira_buffer		;788a
	ld hl,(0e803h)		;788d   ; 0xE803: buffer de trabajo
	ld a,(0e800h)		;7890   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	ld (hl),a			;7893
	xor a			;7894
	inc l			;7895
	ld (hl),a			;7896
	ld de,(0e801h)		;7897   ; 0xE801: buffer de trabajo
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
	ld de,(0e805h)		;78a7   ; 0xE805: buffer de trabajo
	ld (hl),e			;78ab
	inc l			;78ac
	ld (hl),d			;78ad
	ld de,(0e807h)		;78ae   ; 0xE807: buffer de trabajo
	inc l			;78b2
	ld (hl),e			;78b3
	inc l			;78b4
	ld (hl),d			;78b5
	ld (ix+00bh),a		;78b6
	ld (ix+010h),03ch		;78b9   ; ix+0x10: el PATRON del sprite (p01:70FB)
	ld (ix+011h),a		;78bd   ; ix+0x11: cuenta atras de lo que hace
	ld (ix+020h),001h		;78c0
	ld (ix+025h),00ah		;78c4
	ld a,(ix+000h)		;78c8   ; ix+0x00: el TIPO de la ficha (0 = libre; p01:6D12)
	dec a			;78cb
	call 040aeh		;78cc   ; p00:40AE despacha

; ----------------------------------------------------------------------
; DATOS tabla_78CF: 4 destinos del despachador de 0x40AE (call en p01:78CC):
;   0x78D7, 0x78D8, 0x78E2, 0x78ED; lo leen p01:78CC (8 bytes)
;   0x78cf..0x78d7  (8 bytes)
DATA_tabla_78CF:
	defb 0d7h,078h	; 78cf
	defb 0d8h,078h	; 78d1
	defb 0e2h,078h	; 78d3
	defb 0edh,078h	; 78d5

; ======================================================================
; CODIGO 0x78d7..0x7907  (48 bytes)
; ======================================================================


L_78D7:
	ret			;78d7
L_78D8:
	call pon_buffer_8		;78d8
	call rutina_13		;78db
	ex de,hl			;78de
	jp L_792C		;78df
L_78E2:
	ld a,(0c480h)		;78e2   ; 0xC480: el AREA (0-23): 3*(fase-1) + columna, o 18 + fase - 1 (p01:64D5)
	cp 013h		;78e5
	ret nz			;78e7
	ld (ix+011h),001h		;78e8   ; ix+0x11: cuenta atras de lo que hace
	ret			;78ec
L_78ED:
	ld hl,07907h		;78ed   ; p01:7907 ficha_7907: 11 bytes de la ficha del bicho desde ix+7 (p01:7073)
	call copia_bytes_2		;78f0
	call mira_x_de_gao_2		;78f3
	jr nc,L_78FF		;78f6
	neg		;78f8
	ex af,af'			;78fa
	call con_hl_mas_a_2		;78fb
	ex af,af'			;78fe
L_78FF:
	cp 010h		;78ff
	ret nc			;7901
	ld (ix+00bh),000h		;7902
	ret			;7906

; ----------------------------------------------------------------------
; DATOS ficha_7907: 11 bytes de la ficha del bicho desde ix+7 (p01:7073); lo
;   leen p01:78ED (11 bytes)
;   0x7907..0x7912  (11 bytes)
DATA_ficha_7907:
	defb 000h,005h,000h,000h,001h,000h,000h,010h,000h,03dh,000h	; 7907  .........=.

; ----------------------------------------------------------------------
; DATOS sin_lector_7912: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (26 bytes)
;   0x7912..0x792c  (26 bytes)
DATA_sin_lector_7912:
	defb 002h,002h,002h,002h,002h,001h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h	; 7912  ................
	defb 002h,002h,002h,002h,002h,002h,002h,004h,004h,004h	; 7922  ..........

; ======================================================================
; CODIGO 0x792c..0x793a  (14 bytes)
; ======================================================================


L_792C:
	ld (ix+007h),e		;792c   ; ix+0x07: el paso de la animacion (p01:6124)
	ld (ix+008h),d		;792f
	ret			;7932
rutina_13:
	ld (ix+009h),e		;7933
	ld (ix+00ah),d		;7936
	ret			;7939

; ----------------------------------------------------------------------
; DATOS sin_lector_793A: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (14 bytes)
;   0x793a..0x7948  (14 bytes)
DATA_sin_lector_793A:
	defb 0ddh,073h,00ch,0ddh,072h,00dh,0c9h,0ddh,073h,00eh,0ddh,072h,00fh,0c9h	; 793a  .s..r...s..r..

; ======================================================================
; CODIGO 0x7948..0x7a11  (201 bytes)
; ======================================================================


pon_buffer_8:
	ld a,058h		;7948
pon_buffer_9:
	ld e,(ix+003h)		;794a   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	ld d,(ix+005h)		;794d   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
	cp 0f0h		;7950
	jr nc,L_7958		;7952
	ld hl,0c4aah		;7954   ; 0xC4AA: la dificultad: 0xC172 + lo de la tabla p01:7062 segun 0xC840, hasta 15 (p01:7049)
	add a,(hl)			;7957
L_7958:
	ld (0e800h),a		;7958   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	call mira_y_de_gao_2		;795b
pon_buffer_10:
	ld a,(0e808h)		;795e   ; 0xE808: buffer de trabajo
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
	ld (0e807h),a		;7973   ; 0xE807: buffer de trabajo
	ld e,c			;7976
	call mira_buffer_2		;7977
	ld a,(0e801h)		;797a   ; 0xE801: buffer de trabajo
	and a			;797d
	call nz,cambia_de_signo		;797e
	ld (0e803h),de		;7981   ; 0xE803: buffer de trabajo
	ld a,(0e807h)		;7985   ; 0xE807: buffer de trabajo
	ld e,a			;7988
	call mira_buffer_2		;7989
	ld a,(0e802h)		;798c   ; 0xE802: buffer de trabajo
	and a			;798f
	call nz,cambia_de_signo		;7990
	ld hl,(0e803h)		;7993   ; 0xE803: buffer de trabajo
	ret			;7996
mira_y_de_gao_2:
	ld a,(0c80bh)		;7997   ; 0xC80B: la Y de Gao (p01:70B3)
	ld (0e80ah),a		;799a   ; 0xE80A: buffer de trabajo
	ld a,(0c809h)		;799d   ; 0xC809: la X de Gao (p01:70BD)
	ld (0e80bh),a		;79a0   ; 0xE80B: buffer de trabajo
pon_buffer_11:
	ld hl,0e801h		;79a3   ; 0xE801: buffer de trabajo
	ld (hl),000h		;79a6
	ld a,(0e80ah)		;79a8   ; 0xE80A: buffer de trabajo
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
	ld a,(0e80bh)		;79b9   ; 0xE80B: buffer de trabajo
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
	ld hl,07a11h		;79ca   ; p01:7A11 tabla_7A11: tabla que lee p01:7969, p01:79CA, p03:A43A (128 bytes)
	call 040a4h		;79cd   ; p00:40A4 hl_mas_a
	ld a,(hl)			;79d0
	ld (0e808h),a		;79d1   ; 0xE808: buffer de trabajo
	ld c,a			;79d4
	ld hl,(0e801h)		;79d5   ; 0xE801: buffer de trabajo
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
	ld (0e809h),a		;79e7   ; 0xE809: buffer de trabajo
	ret			;79ea
cambia_de_signo:
	ld a,d			;79eb
	cpl			;79ec
	ld d,a			;79ed
	ld a,e			;79ee
	cpl			;79ef
	ld e,a			;79f0
	inc de			;79f1
	ret			;79f2
mira_buffer_2:
	ld a,(0e800h)		;79f3   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	ld h,a			;79f6
	call bucle_3		;79f7
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
bucle_3:
	ld b,008h		;7a05   ; 8 vueltas
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
; DATOS tabla_7A11: tabla que lee p01:7969, p01:79CA, p03:A43A (128 bytes)
;   0x7a11..0x7a91  (128 bytes)
DATA_tabla_7A11:
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
	ld a,(0c480h)		;7a91   ; 0xC480: el AREA (0-23): 3*(fase-1) + columna, o 18 + fase - 1 (p01:64D5)
	add a,a			;7a94
	ld hl,07aa5h		;7a95   ; p01:7AA5 tabla_7AA5: tabla que lee p01:7A95 (48 bytes)
	call 040a4h		;7a98   ; p00:40A4 hl_mas_a
	ld a,(hl)			;7a9b
	ld (0c4a8h),a		;7a9c   ; 0xC4A8: variables de la partida
	inc hl			;7a9f
	ld a,(hl)			;7aa0
	ld (0c4a9h),a		;7aa1   ; 0xC4A9: variables de la partida
	ret			;7aa4

; ----------------------------------------------------------------------
; DATOS tabla_7AA5: tabla que lee p01:7A95 (48 bytes)
;   0x7aa5..0x7ad5  (48 bytes)
DATA_tabla_7AA5:
	defb 010h,008h,010h,008h,010h,008h,010h,008h,010h,008h,010h,008h,010h,008h,010h,008h	; 7aa5  ................
	defb 010h,008h,010h,008h,010h,008h,010h,008h,010h,008h,010h,008h,010h,008h,010h,008h	; 7ab5  ................
	defb 010h,008h,010h,008h,014h,001h,00eh,008h,014h,001h,014h,001h,014h,001h,014h,001h	; 7ac5  ................

; ======================================================================
; CODIGO 0x7ad5..0x7b99  (196 bytes)
; ======================================================================


L_7AD5:
	xor a			;7ad5
	ld (0d412h),a		;7ad6   ; 0xD412: lo que controla la salida de bichos
	ld (0d400h),a		;7ad9   ; 0xD400: lo que controla la salida de bichos
	ld (0d402h),a		;7adc   ; 0xD402: lo que controla la salida de bichos
	ld (0d454h),a		;7adf   ; 0xD454: lo que controla la salida de bichos
	call mira_bichos_del_mapa_2		;7ae2
	call mira_fichas_2		;7ae5
	call mira_fichas_3		;7ae8
	jr $-90		;7aeb
L_7AED:
	ld a,008h		;7aed
	ld hl,0d413h		;7aef   ; 0xD413: lo que controla la salida de bichos
	ld (hl),a			;7af2
	inc hl			;7af3
	ld (hl),a			;7af4
	xor a			;7af5
	ld (0d439h),a		;7af6   ; 0xD439: lo que controla la salida de bichos
	ret			;7af9
mira_bichos_del_mapa_2:
	ld hl,0d500h		;7afa   ; 0xD500: 10 fichas de 0x10: los bichos que pone la lista del area (p01:6D12)
	ld bc,0009fh		;7afd
	jp 05de9h		;7b00
mira_fichas_2:
	ld hl,0d700h		;7b03   ; 0xD700: fichas de lo que se mueve
	ld bc,004ffh		;7b06
	jp 05de9h		;7b09
mira_fichas_3:
	ld hl,0dc00h		;7b0c   ; 0xDC00: fichas de lo que se mueve
	ld bc,003ffh		;7b0f
	jp 05de9h		;7b12
L_7B15:
	ld hl,0cc00h		;7b15   ; 0xCC00: 16 fichas de 0x10 (p01:749F)
	ld de,00010h		;7b18
	ld b,010h		;7b1b
L_7B1D:
	ld a,(hl)			;7b1d
	or a			;7b1e
	jr z,L_7B2F		;7b1f
	ld c,a			;7b21
	push hl			;7b22
	push bc			;7b23
	call mira_avance_del_cuadro_2		;7b24
	call c,mira_scroll_4		;7b27
	pop bc			;7b2a
	pop hl			;7b2b
	ld de,00010h		;7b2c
L_7B2F:
	add hl,de			;7b2f
	djnz L_7B1D		;7b30
	ret			;7b32
mira_scroll_4:
	ld a,c			;7b33
	dec a			;7b34
	dec a			;7b35
	jr z,L_7B60		;7b36
	dec a			;7b38
	jp z,L_7BB3		;7b39
	jp p,L_7BB4		;7b3c
	push hl			;7b3f
	call ficha_campo_40_2		;7b40
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
	ld a,(0c385h)		;7b51   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
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
mira_scroll_5:
	add a,01fh		;7b68
L_7B6A:
	call 0819bh		;7b6a
	push de			;7b6d
	inc l			;7b6e
	ld a,(0c385h)		;7b6f   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
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
	call mira_scroll_5		;7b89
	pop af			;7b8c
	pop hl			;7b8d
	sub 010h		;7b8e
	ld de,07b99h		;7b90   ; p01:7B99 tabla_7B99: tabla que lee p01:7B90 (26 bytes)
	call 040a9h		;7b93   ; p00:40A9 de_mas_a
	ld a,(de)			;7b96
	jr L_7B6A		;7b97

; ----------------------------------------------------------------------
; DATOS tabla_7B99: tabla que lee p01:7B90 (26 bytes)
;   0x7b99..0x7bb3  (26 bytes)
DATA_tabla_7B99:
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
	ld a,(0c385h)		;7bb8   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
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
mira_avance_del_cuadro_2:
	ld a,(0c388h)		;7bde   ; 0xC388: lo que se ha movido el mapa este cuadro (p00:56E8)
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
	ld hl,0ea00h		;7bfe   ; 0xEA00: buffers de pantallas y dibujos
	ld de,0ea01h		;7c01   ; 0xEA01: buffers de pantallas y dibujos
	ld bc,0001bh		;7c04
	ldir		;7c07
	ld a,(0c809h)		;7c09   ; 0xC809: la X de Gao (p01:70BD)
	ld d,a			;7c0c
	ld a,(0c80bh)		;7c0d   ; 0xC80B: la Y de Gao (p01:70B3)
	ld e,a			;7c10
	ld hl,0ea00h		;7c11   ; 0xEA00: buffers de pantallas y dibujos
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
	ld hl,0ea09h		;7c35   ; 0xEA09: buffers de pantallas y dibujos
	exx			;7c38
	ld hl,0ca00h		;7c39   ; 0xCA00: 6 fichas de 0x20 (p02:9368)
	ld b,006h		;7c3c
L_7C3E:
	ld a,(hl)			;7c3e
	or a			;7c3f
	jr z,L_7C54		;7c40
	push hl			;7c42   ; la ficha es la de HL
	pop ix		;7c43
	exx			;7c45
	ld (hl),000h		;7c46
	inc l			;7c48
	ld a,(ix+003h)		;7c49   ; ix+0x03: la Y (p01:70B3 la compara con la de Gao)
	ld (hl),a			;7c4c
	inc l			;7c4d
	ld a,(ix+005h)		;7c4e   ; ix+0x05: la X (p01:70BD la compara con la de Gao)
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
	ld hl,0d000h		;7c5f   ; 0xD000: la ficha del bicho 0, byte 0x00 (p01:74B7)
	ld b,008h		;7c62   ; 8 vueltas
L_7C64:
	ld a,(hl)			;7c64
	or a			;7c65
	jr z,L_7C6F		;7c66
	push hl			;7c68
	push bc			;7c69
	call rutina_14		;7c6a
	pop bc			;7c6d
	pop hl			;7c6e
L_7C6F:
	ld de,00080h		;7c6f
	add hl,de			;7c72
	djnz L_7C64		;7c73
	ret			;7c75
rutina_14:
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
	call mira_buffers		;7c94
	exx			;7c97
	ld a,c			;7c98
	exx			;7c99
	or a			;7c9a
	pop hl			;7c9b
	ret z			;7c9c
	push hl			;7c9d
	call rutina_15		;7c9e
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
	call mira_buffers		;7cad
	exx			;7cb0
	ld a,c			;7cb1
	exx			;7cb2
	or a			;7cb3
	pop bc			;7cb4
	pop hl			;7cb5
	call nz,rutina_15		;7cb6
	ld de,00008h		;7cb9
	djnz L_7CA7		;7cbc
	ret			;7cbe
L_7CBF:
	ld b,005h		;7cbf
	jr L_7CA8		;7cc1
L_7CC3:
	push hl			;7cc3
	call mira_buffers		;7cc4
	pop hl			;7cc7
	exx			;7cc8
	ld a,c			;7cc9
	exx			;7cca
	or a			;7ccb
	ret z			;7ccc
	jp rutina_15		;7ccd
mira_buffers:
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
	ld hl,0eaffh		;7cec   ; 0xEAFF: buffers de pantallas y dibujos
	call mira_nivel_c840		;7cef
	call mira_nivel_c840		;7cf2
	call mira_nivel_c840		;7cf5
L_7CF8:
	call mira_nivel_c840		;7cf8
	ret c			;7cfb
	call mira_nivel_c840		;7cfc
	ret c			;7cff
	call mira_nivel_c840		;7d00
	ret c			;7d03
	call mira_nivel_c840		;7d04
	ret c			;7d07
	call mira_nivel_c840		;7d08
	ret c			;7d0b
	call mira_nivel_c840		;7d0c
	ret			;7d0f
L_7D10:
	ld hl,0ea08h		;7d10   ; 0xEA08: buffers de pantallas y dibujos
	jr L_7CF8		;7d13
L_7D15:
	rrca			;7d15
	ret c			;7d16
	ld hl,0eaffh		;7d17   ; 0xEAFF: buffers de pantallas y dibujos
	call mira_nivel_c840		;7d1a
	call mira_nivel_c840		;7d1d
	jp mira_nivel_c840		;7d20
mira_nivel_c840:
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
	ld a,(0c840h)		;7d3d   ; 0xC840: elige los 32 bytes de p07:70AE que van a los patrones de 0xF8A0 (p00:5671) y el sumando de la dificultad (p01:704D); 6 es especial (p02:8F4F)
	ld e,a			;7d40
	ld d,000h		;7d41
	ld hl,07d70h		;7d43   ; p01:7D70 tabla_7D70: tabla que lee p01:7D43 (7 bytes)
	add hl,de			;7d46
	ld a,(hl)			;7d47
	or c			;7d48
	ld c,a			;7d49
	exx			;7d4a
	ret			;7d4b
L_7D4C:
	ld a,(0c80dh)		;7d4c   ; 0xC80D: la ficha de Gao
	cp 002h		;7d4f
	ret nc			;7d51
	ld a,(0c858h)		;7d52   ; 0xC858: el OBJETO 3 (byte 0 de 4; p06:BAC2)
	or a			;7d55
	ret nz			;7d56
	exx			;7d57
	ld a,004h		;7d58
	or c			;7d5a
	ld c,a			;7d5b
	exx			;7d5c
	scf			;7d5d
	ret			;7d5e
mira_invulnerable:
	exx			;7d5f
	ld hl,0c834h		;7d60   ; 0xC834: cuadros de invulnerabilidad de Gao (p02:860C)
	dec (hl)			;7d63
	exx			;7d64
	ret			;7d65
rutina_15:
	set 2,l		;7d66
	inc l			;7d68
	cp 004h		;7d69
	exx			;7d6b
	ld a,c			;7d6c
	exx			;7d6d
	ld (hl),a			;7d6e
	ret			;7d6f

; ----------------------------------------------------------------------
; DATOS tabla_7D70: tabla que lee p01:7D43 (7 bytes)
;   0x7d70..0x7d77  (7 bytes)
DATA_tabla_7D70:
	defb 001h,002h,002h,002h,002h,008h,002h	; 7d70

; ======================================================================
; CODIGO 0x7d77..0x7ed7  (352 bytes)
; ======================================================================


L_7D77:
	ld hl,0ea09h		;7d77   ; 0xEA09: buffers de pantallas y dibujos
	exx			;7d7a
	ld hl,0ca00h		;7d7b   ; 0xCA00: 6 fichas de 0x20 (p02:9368)
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
	ld hl,0d700h		;7d96   ; 0xD700: fichas de lo que se mueve
	ld b,00ah		;7d99
L_7D9B:
	ld a,(hl)			;7d9b
	or a			;7d9c
	jr z,L_7DAC		;7d9d
	push hl			;7d9f
	push bc			;7da0
	call mira_buffers_2		;7da1
	exx			;7da4
	ld a,c			;7da5
	or a			;7da6
	call nz,ficha_tipo_5		;7da7
	pop bc			;7daa
	pop hl			;7dab
L_7DAC:
	ld de,00080h		;7dac
	add hl,de			;7daf
	djnz L_7D9B		;7db0
	ret			;7db2
mira_buffers_2:
	exx			;7db3
	ld c,000h		;7db4
	exx			;7db6
	push hl			;7db7   ; la ficha es la de HL
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
	ld hl,0eaffh		;7dda   ; 0xEAFF: buffers de pantallas y dibujos
	call mira_nivel_c840		;7ddd
	call c,mira_invulnerable		;7de0
	call mira_nivel_c840		;7de3
	call c,mira_invulnerable		;7de6
	call mira_nivel_c840		;7de9
	call c,mira_invulnerable		;7dec
L_7DEF:
	call mira_nivel_c840		;7def
	ret c			;7df2
	call mira_nivel_c840		;7df3
	ret c			;7df6
	call mira_nivel_c840		;7df7
	ret c			;7dfa
	call mira_nivel_c840		;7dfb
	ret c			;7dfe
	call mira_nivel_c840		;7dff
	ret c			;7e02
	call mira_nivel_c840		;7e03
	ret			;7e06
L_7E07:
	ld hl,0ea08h		;7e07   ; 0xEA08: buffers de pantallas y dibujos
	jr L_7DEF		;7e0a
L_7E0C:
	ld hl,0eaffh		;7e0c   ; 0xEAFF: buffers de pantallas y dibujos
	call mira_nivel_c840		;7e0f
	call c,mira_invulnerable		;7e12
	call mira_nivel_c840		;7e15
	call c,mira_invulnerable		;7e18
	call mira_nivel_c840		;7e1b
	call c,mira_invulnerable		;7e1e
	ret			;7e21
ficha_tipo_5:
	ld a,(ix+000h)		;7e22   ; ix+0x00: el TIPO de la ficha (0 = libre; p01:6D12)
	ld (0c4c7h),a		;7e25   ; 0xC4C7: variables de la partida
	cp 00ah		;7e28
	jp z,L_7E49		;7e2a
	cp 00bh		;7e2d
	jp z,L_7E5B		;7e2f
	ld a,(0c860h)		;7e32   ; 0xC860: el OBJETO 5 (byte 0 de 4; p06:BAC2)
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
	ld a,(0c860h)		;7e49   ; 0xC860: el OBJETO 5 (byte 0 de 4; p06:BAC2)
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
	ld a,(0c860h)		;7e5b   ; 0xC860: el OBJETO 5 (byte 0 de 4; p06:BAC2)
	or a			;7e5e
	ret z			;7e5f
	push ix		;7e60
	ld l,(ix+01ah)		;7e62
	ld h,(ix+01bh)		;7e65
	push hl			;7e68   ; la ficha es la de HL
	pop ix		;7e69
	call 09f9fh		;7e6b
	pop ix		;7e6e
	ret			;7e70
L_7E71:
	ld a,(0c800h)		;7e71   ; 0xC800: lo que hace Gao (p00:5C68)
	cp 002h		;7e74
	ret z			;7e76
	ld a,(0c821h)		;7e77   ; 0xC821: la ficha de Gao
	sub 002h		;7e7a
	ld e,a			;7e7c
	ld a,(0c820h)		;7e7d   ; 0xC820: la ficha de Gao
	sub 002h		;7e80
	ld d,a			;7e82
	exx			;7e83
	ld hl,0cc00h		;7e84   ; 0xCC00: 16 fichas de 0x10 (p01:749F)
	ld b,010h		;7e87
L_7E89:
	ld a,(hl)			;7e89
	cp 003h		;7e8a
	jr nz,L_7E96		;7e8c
	push hl			;7e8e
	push bc			;7e8f
	call rutina_16		;7e90
	exx			;7e93
	pop bc			;7e94
	pop hl			;7e95
L_7E96:
	ld de,00010h		;7e96
	add hl,de			;7e99
	djnz L_7E89		;7e9a
	ret			;7e9c
rutina_16:
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
	call con_despacha_2		;7eb2
	ld hl,00001h		;7eb5
	call 04818h		;7eb8
	pop bc			;7ebb
	pop de			;7ebc
	pop hl			;7ebd
	pop af			;7ebe
	ret			;7ebf
con_despacha_2:
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
	call 040aeh		;7ed4   ; p00:40AE despacha

; ----------------------------------------------------------------------
; DATOS tabla_7ED7: 14 destinos del despachador de 0x40AE (call en p01:7ED4):
;   0x7F2F, 0x7F06, 0x7F1B, 0x7FA3, 0x7F21, 0x7F55, 0x7F25, 0x7F55 ...; lo
;   leen p01:7ED4 (28 bytes)
;   0x7ed7..0x7ef3  (28 bytes)
DATA_tabla_7ED7:
	defb 02fh,07fh	; 7ed7
	defb 006h,07fh	; 7ed9
	defb 01bh,07fh	; 7edb
	defb 0a3h,07fh	; 7edd
	defb 021h,07fh	; 7edf
	defb 055h,07fh	; 7ee1
	defb 025h,07fh	; 7ee3
	defb 055h,07fh	; 7ee5
	defb 055h,07fh	; 7ee7
	defb 03ah,07fh	; 7ee9
	defb 03ah,07fh	; 7eeb
	defb 02fh,07fh	; 7eed
	defb 00ch,07fh	; 7eef
	defb 04dh,07fh	; 7ef1

; ======================================================================
; CODIGO 0x7ef3..0x7f7b  (136 bytes)
; ======================================================================


L_7EF3:
	cp 02ah		;7ef3
	jp nc,L_7BFB		;7ef5
	call rutina_17		;7ef8
	ld a,028h		;7efb   ; el sonido 0x28 (p14:9C47 + 2*0x28)
	call 041ach		;7efd
	ld hl,0000ah		;7f00
	jp 04818h		;7f03
L_7F06:
	ld a,001h		;7f06
	ld (0c580h),a		;7f08   ; 0xC580: variables del avance del mapa
	ret			;7f0b
L_7F0C:
	call rutina_17		;7f0c
	ld (hl),05ah		;7f0f
	ld a,(0c0f2h)		;7f11   ; 0xC0F2: la musica de la pausa esta sonando (p14:9411)
	or a			;7f14
	ret nz			;7f15
	ld a,04ch		;7f16   ; el sonido 0x4C (p14:9C47 + 2*0x4C)
	jp 041ach		;7f18
L_7F1B:
	xor a			;7f1b
	ld (0c860h),a		;7f1c   ; 0xC860: el OBJETO 5 (byte 0 de 4; p06:BAC2)
	jr L_7F25		;7f1f
L_7F21:
	xor a			;7f21
	ld (0c858h),a		;7f22   ; 0xC858: el OBJETO 3 (byte 0 de 4; p06:BAC2)
L_7F25:
	call rutina_17		;7f25
	ld (hl),00dh		;7f28
	ld a,018h		;7f2a   ; el sonido 0x18 (p14:9C47 + 2*0x18)
	jp 041ach		;7f2c
L_7F2F:
	call rutina_17		;7f2f
	call c,pon_arma_dato		;7f32
	ld a,018h		;7f35   ; el sonido 0x18 (p14:9C47 + 2*0x18)
	jp 041ach		;7f37
L_7F3A:
	call rutina_17		;7f3a
	ret nc			;7f3d
	inc hl			;7f3e
	ld a,(0c481h)		;7f3f   ; 0xC481: la FASE, 1-6 (p01:65B4)
	ld b,a			;7f42
	call bucle_4		;7f43
	or (hl)			;7f46
	ld (hl),a			;7f47
	ld a,018h		;7f48   ; el sonido 0x18 (p14:9C47 + 2*0x18)
	jp 041ach		;7f4a
L_7F4D:
	call rutina_17		;7f4d
	ld a,018h		;7f50   ; el sonido 0x18 (p14:9C47 + 2*0x18)
	jp 041ach		;7f52
L_7F55:
	call rutina_17		;7f55
	ld a,018h		;7f58   ; el sonido 0x18 (p14:9C47 + 2*0x18)
	jp 041ach		;7f5a
rutina_17:
	call mira_objeto_1		;7f5d
	ret nc			;7f60
	inc (hl)			;7f61
	scf			;7f62
	ret			;7f63
mira_objeto_1:
	ld a,c			;7f64
	dec a			;7f65
	add a,a			;7f66
	add a,a			;7f67
	ld l,a			;7f68
	ld h,000h		;7f69
	ld de,0c850h		;7f6b   ; 0xC850: el OBJETO 1 (byte 0 de 4; p06:BAC2)
	add hl,de			;7f6e
	ld a,(hl)			;7f6f
	ex de,hl			;7f70
	ld b,000h		;7f71
	ld hl,07f7bh		;7f73   ; p01:7F7B tabla_7F7B: tabla que lee p01:7F73 (40 bytes)
	add hl,bc			;7f76
	cp (hl)			;7f77
	ex de,hl			;7f78
	ret			;7f79
pon_arma_dato:
	ret			;7f7a

; ----------------------------------------------------------------------
; DATOS tabla_7F7B: tabla que lee p01:7F73 (40 bytes)
;   0x7f7b..0x7fa3  (40 bytes)
DATA_tabla_7F7B:
	defb 001h,003h,0ffh,0ffh,003h,0ffh,0c8h,003h,0c8h,005h,006h,006h,001h,0ffh,001h,001h	; 7f7b  ................
	defb 001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h	; 7f8b  ................
	defb 001h,001h,001h,001h,001h,001h,001h,001h	; 7f9b  ........

; ======================================================================
; CODIGO 0x7fa3..0x7fbd  (26 bytes)
; ======================================================================


L_7FA3:
	call rutina_17		;7fa3
	ld a,018h		;7fa6   ; el sonido 0x18 (p14:9C47 + 2*0x18)
	call 041ach		;7fa8
L_7FAB:
	ld a,(0c85ch)		;7fab   ; 0xC85C: el ARMA de Gao: su cuenta es la del objeto 4 (p01:7FAB)
	ld de,07fbdh		;7fae   ; p01:7FBD tabla_7FBD: tabla que lee p01:7FAE (15 bytes)
	call 0486fh		;7fb1
	ld a,e			;7fb4
	ld (0c84ah),a		;7fb5   ; 0xC84A: lo que sale de p01:7FBD para el arma (p01:7FB5)
	ld a,d			;7fb8
	ld (0c842h),a		;7fb9   ; 0xC842: lo que sale de p01:7FBD para el arma (p01:7FB9)
	ret			;7fbc

; ----------------------------------------------------------------------
; DATOS tabla_7FBD: tabla que lee p01:7FAE (15 bytes)
;   0x7fbd..0x7fcc  (15 bytes)
DATA_tabla_7FBD:
	defb 001h,012h,003h,014h,006h,016h,006h,000h,0b7h,0c8h,004h,00fh,030h,0fch,0c9h	; 7fbd  ............0..

; ======================================================================
; CODIGO 0x7fcc..0x7fff  (51 bytes)
; ======================================================================


bucle_4:
	ld a,080h		;7fcc
L_7FCE:
	rlca			;7fce
	djnz L_7FCE		;7fcf
	ret			;7fd1
L_7FD2:
	ld a,(0c80dh)		;7fd2   ; 0xC80D: la ficha de Gao
	cp 003h		;7fd5
	ret nc			;7fd7
	ld a,(0c858h)		;7fd8   ; 0xC858: el OBJETO 3 (byte 0 de 4; p06:BAC2)
	or a			;7fdb
	ret nz			;7fdc
	ld a,(0c80bh)		;7fdd   ; 0xC80B: la Y de Gao (p01:70B3)
	sub 010h		;7fe0
	ld e,a			;7fe2
	ld a,(0c809h)		;7fe3   ; 0xC809: la X de Gao (p01:70BD)
	sub 006h		;7fe6
	ld d,a			;7fe8
	exx			;7fe9
	ld ix,0dc00h		;7fea   ; 0xDC00: fichas de lo que se mueve
	ld b,008h		;7fee
	ld a,(ix+000h)		;7ff0   ; ix+0x00: el TIPO de la ficha (0 = libre; p01:6D12)
	or a			;7ff3
	jr z,L_7FFC		;7ff4
	push bc			;7ff6
	call 08004h		;7ff7
	exx			;7ffa
	pop bc			;7ffb
L_7FFC:
	ld de,00080h		;7ffc

; ----------------------------------------------------------------------
; DATOS sin_lector_7FFF: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (1 bytes)
;   0x7fff..0x8000  (1 bytes)
DATA_sin_lector_7FFF:
	defb 0ddh	; 7fff
