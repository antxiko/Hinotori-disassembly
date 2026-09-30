; ==========================================================================
; HINOTORI - Konami (1987) - MSX - MegaROM RC-747 de 128 KB (Konami4) - banco 00 (se ejecuta en 0x4000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x04000


; ----------------------------------------------------------------------
; DATOS cabecera_ab: la cabecera del cartucho: 'AB', INIT (0x40B8) y
;   STATEMENT, DEVICE y TEXT a cero; lo leen la BIOS (16 bytes)
;   0x4000..0x4010  (16 bytes)
DATA_cabecera_ab:
	defb 041h,042h,0b8h,040h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 4000  AB.@............

; ----------------------------------------------------------------------
; DATOS cabecera_de_konami: 'C', 0, 'D', 0, 3, 0, 0x15, 0... y las direcciones
;   de la RAM del juego (0xC161 la fase, 0xC160 las vidas, 0xC155 los
;   puntos...): ningun codigo de este cartucho la lee; es para que la lea otro
;   cartucho de Konami puesto al lado; lo leen otro cartucho (56 bytes)
;   0x4010..0x4048  (56 bytes)
DATA_cabecera_de_konami:
	defb 043h,000h,044h,000h,003h,000h,015h,000h	; 4010  C.D.....
	defb 000h,000h,000h,004h,000h,061h,0c1h,000h	; 4018  .....a..
	defb 000h,006h,060h,0c1h,000h,000h,055h,0c1h	; 4020  ..`...U.
	defb 0f7h,0c0h,012h,0c0h,032h,0c0h,052h,0c0h	; 4028  ....2.R.
	defb 013h,0c0h,014h,0c0h,033h,0c0h,034h,0c0h	; 4030  ....3.4.
	defb 053h,0c0h,054h,0c0h,049h,09ch,0f2h,0c0h	; 4038  S.T.I...
	defb 0f4h,0c0h,072h,0c0h,073h,0c0h,074h,0c0h	; 4040  ..r.s.t.

; ======================================================================
; CODIGO 0x4048..0x4257  (527 bytes)
; ======================================================================


L_4048:
	di			;4048
	ld a,(0c110h)		;4049   ; 0xC110: 1: hay un Game Master o Q*bert al lado; 2: King Kong 2 (p00:5DFF)
	or a			;404c
	jp nz,L_4124		;404d
L_4050:
	di			;4050
	ld hl,0c139h		;4051   ; 0xC139: semaforo de la interrupcion (p00:4051)
	ld a,(hl)			;4054
	and a			;4055
	jr nz,L_40A2		;4056
	inc (hl)			;4058
	ld a,001h		;4059
	ld (06000h),a		;405b
	ld a,002h		;405e
	ld (08000h),a		;4060
	ld a,003h		;4063
	ld (0a000h),a		;4065
	di			;4068
	ld a,00fh		;4069
	ld (0a000h),a		;406b
	ld a,00eh		;406e
	ld (08000h),a		;4070
	call 09497h		;4073
	di			;4076
	ld a,(0f0f3h)		;4077   ; 0xF0F3: copia de lo que hay en 0xA000
	ld (0a000h),a		;407a
	ld a,(0f0f2h)		;407d   ; 0xF0F2: copia de lo que hay en 0x8000
	ld (08000h),a		;4080
	ld a,(0f0f1h)		;4083   ; 0xF0F1: copia de lo que hay en 0x6000 (p00:5408)
	ld (06000h),a		;4086
	xor a			;4089
	ld (0c139h),a		;408a   ; 0xC139: semaforo de la interrupcion (p00:4051)
	ld hl,0c130h		;408d   ; 0xC130: la interrupcion avisa de un cuadro (p00:408D)
	inc (hl)			;4090
	ld hl,0c105h		;4091   ; 0xC105: el juego no se mete dos veces (si el cuadro anterior no acabo)
	bit 0,(hl)		;4094
	jp nz,L_40A2		;4096
	inc (hl)			;4099
	ei			;409a
	call pon_banco_de_a000		;409b   ; p00:4200: el juego entero, un cuadro
	xor a			;409e
	ld (0c105h),a		;409f   ; 0xC105: semaforo: el cuadro de juego no se mete dos veces (p00:4094)
L_40A2:
	ei			;40a2
	ret			;40a3
hl_mas_a:
	add a,l			;40a4
	ld l,a			;40a5
	ret nc			;40a6
	inc h			;40a7
	ret			;40a8
de_mas_a:
	add a,e			;40a9
	ld e,a			;40aa
	ret nc			;40ab
	inc d			;40ac
	ret			;40ad

; ----------------------------------------------------------------------
; Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.
; ----------------------------------------------------------------------
despacha:
	pop hl			;40ae
despacha_hl:
	add a,a			;40af   ; SALTA A LA ENTRADA A de la tabla de palabras de HL
	call hl_mas_a		;40b0
	ld e,(hl)			;40b3   ; la palabra, y alli
	inc hl			;40b4
	ld d,(hl)			;40b5
	ex de,hl			;40b6
	jp (hl)			;40b7
L_40B8:
	di			;40b8   ; INIT: el cartucho arranca aqui (cabecera AB)
	ld sp,0f0f0h		;40b9   ; la pila, debajo de las copias del mapper
	call 00138h		;40bc   ; BIOS RSLREG - Reads the primary slot register | la ranura primaria de la pagina 1 (la del cartucho)...
	rrca			;40bf
	rrca			;40c0
	and 003h		;40c1
	ld c,a			;40c3
	ld b,000h		;40c4
	ld hl,0fcc1h		;40c6   ; ...y si esta expandida, la secundaria (0xFCC1 + ranura)...
	add hl,bc			;40c9
	ld a,(hl)			;40ca
	and 080h		;40cb
	or c			;40cd
	ld c,a			;40ce
	inc hl			;40cf
	inc hl			;40d0
	inc hl			;40d1
	inc hl			;40d2
	ld a,(hl)			;40d3
	and 00ch		;40d4
	or c			;40d6
	ld h,080h		;40d7   ; ...para poner el cartucho tambien en la pagina 2 (0x8000-0xBFFF)
	call 00024h		;40d9   ; BIOS ENASLT - Switches to specified slot and page definitively
	ld hl,0c000h		;40dc   ; 0x30EF ceros desde 0xC000: toda la RAM del juego
	ld de,0c001h		;40df
	ld bc,030efh		;40e2
	ld (hl),000h		;40e5
	ldir		;40e7
	ld a,003h		;40e9
	ld (0c10ch),a		;40eb   ; 0xC10C: el banco que p00:53E9 pone en 0xA000 con el 1 y el 2
	call mira_banco_6000		;40ee
	call pon_otro_cartucho		;40f1
	ld a,(0c110h)		;40f4   ; 0xC110: 1: hay un Game Master o Q*bert al lado; 2: King Kong 2 (p00:5DFF)
	cp 002h		;40f7
	jr z,L_4117		;40f9
	call mira_banco_6000		;40fb
	call pon_atributos_vram_2		;40fe
	di			;4101
	ld a,0c3h		;4102
	ld (0fd9fh),a		;4104
	ld hl,L_4048		;4107
	ld (0fda0h),hl		;410a
	xor a			;410d
	ld (0f3dbh),a		;410e
	ld (0f0ffh),a		;4111   ; 0xF0FF: 1: se esta arrancando King Kong 2 (p00:4117)
	ei			;4114
L_4115:
	jr L_4115		;4115
L_4117:
	ld a,001h		;4117
	ld (0f0ffh),a		;4119   ; 0xF0FF: 1: se esta arrancando King Kong 2 (p00:4117)
	ld a,009h		;411c
	ld (0a000h),a		;411e
	jp 0b880h		;4121
L_4124:
	ld a,007h		;4124
	call 00141h		;4126   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;4129
	and 010h		;412a
	ld b,a			;412c
	ld a,001h		;412d
	call 00141h		;412f   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;4132
	and 080h		;4133
	or b			;4135
	ld hl,0c120h		;4136   ; 0xC120: STOP y la del bit 7 de la fila 1 (p00:4136)
	ld c,(hl)			;4139
	ld (hl),a			;413a
	xor c			;413b
	and (hl)			;413c
	ld c,a			;413d
	ld hl,0c111h		;413e   ; 0xC111: juego congelado con STOP (p00:413E)
	ld a,(hl)			;4141
	or a			;4142
	jr nz,L_4150		;4143
	bit 4,c		;4145
	jp z,L_4050		;4147
	ld (hl),c			;414a
	call pon_estado_del_juego		;414b
	ei			;414e
	ret			;414f
L_4150:
	bit 7,c		;4150
	jp nz,L_415B		;4152
	bit 4,c		;4155
	jr z,L_4161		;4157
	xor a			;4159
	ld (hl),a			;415a
L_415B:
	call mira_estado_del_juego		;415b
	jp L_4050		;415e
L_4161:
	call escribe_psg		;4161
	ei			;4164
	ret			;4165
pon_estado_del_juego:
	ld a,008h		;4166
	call 00096h		;4168   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c121h),a		;416b   ; 0xC121: variables del juego
	ld a,009h		;416e
	call 00096h		;4170   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c122h),a		;4173   ; 0xC122: variables del juego
	ld a,00ah		;4176
	call 00096h		;4178   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c123h),a		;417b   ; 0xC123: variables del juego
escribe_psg:
	ld e,000h		;417e
	ld a,008h		;4180
	call 00093h		;4182   ; BIOS WRTPSG - Writes data to PSG-register
	ld e,000h		;4185
	inc a			;4187
	call 00093h		;4188   ; BIOS WRTPSG - Writes data to PSG-register
	ld e,000h		;418b
	inc a			;418d
	jp 00093h		;418e   ; BIOS WRTPSG - Writes data to PSG-register
mira_estado_del_juego:
	ld a,(0c121h)		;4191   ; 0xC121: variables del juego
	ld e,a			;4194
	ld a,008h		;4195
	call 00093h		;4197   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c122h)		;419a   ; 0xC122: variables del juego
	ld e,a			;419d
	ld a,009h		;419e
	call 00093h		;41a0   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c123h)		;41a3   ; 0xC123: variables del juego
	ld e,a			;41a6
	ld a,00ah		;41a7
	jp 00093h		;41a9   ; BIOS WRTPSG - Writes data to PSG-register
mira_banderas_juego:
	di			;41ac
	push hl			;41ad
	ld hl,0c102h		;41ae   ; 0xC102: bit 0: es la demostracion; bit 6: hay partida (p00:46A5)
	bit 6,(hl)		;41b1
	jp nz,L_41C3		;41b3
	ld hl,0c13ah		;41b6   ; 0xC13A: variables del juego
	bit 0,(hl)		;41b9
	jp nz,L_41FD		;41bb
	jp L_41C3		;41be
pon_banco_8000_guardado:
	di			;41c1
	push hl			;41c2
L_41C3:
	push de			;41c3
	push bc			;41c4
	push af			;41c5
	ld c,a			;41c6
	ld a,(0f0f2h)		;41c7   ; 0xF0F2: copia de lo que hay en 0x8000
	ld (0f0f4h),a		;41ca   ; 0xF0F4: 0xF0F2 mientras suena el sonido (p00:41CA)
	ld a,(0f0f3h)		;41cd   ; 0xF0F3: copia de lo que hay en 0xA000
	ld (0f0f5h),a		;41d0   ; 0xF0F5: 0xF0F3 mientras suena el sonido
	ld a,00eh		;41d3
	ld (08000h),a		;41d5
	ld (0f0f2h),a		;41d8   ; 0xF0F2: copia de lo que hay en 0x8000
	ld a,00fh		;41db
	ld (0a000h),a		;41dd
	ld (0f0f3h),a		;41e0   ; 0xF0F3: copia de lo que hay en 0xA000
	ld a,c			;41e3
	call 09400h		;41e4
	di			;41e7
	ld a,(0f0f4h)		;41e8   ; 0xF0F4: 0xF0F2 mientras suena el sonido (p00:41CA)
	ld (08000h),a		;41eb
	ld (0f0f2h),a		;41ee   ; 0xF0F2: copia de lo que hay en 0x8000
	ld a,(0f0f5h)		;41f1   ; 0xF0F5: 0xF0F3 mientras suena el sonido
	ld (0a000h),a		;41f4
	ld (0f0f3h),a		;41f7   ; 0xF0F3: copia de lo que hay en 0xA000
	pop af			;41fa
	pop bc			;41fb
	pop de			;41fc
L_41FD:
	pop hl			;41fd
	ei			;41fe
	ret			;41ff
pon_banco_de_a000:
	ld hl,0c130h		;4200   ; 0xC130: la interrupcion avisa de un cuadro (p00:408D)
	ld a,(hl)			;4203
	cp 001h		;4204
	ret z			;4206
	ld (hl),000h		;4207
	ld a,003h		;4209
	ld (0c10ch),a		;420b   ; 0xC10C: el banco que p00:53E9 pone en 0xA000 con el 1 y el 2
	call pon_banco_a000		;420e
	ld hl,0c102h		;4211   ; 0xC102: bit 0: es la demostracion; bit 6: hay partida (p00:46A5)
	bit 0,(hl)		;4214
	call z,rutina_9		;4216
	ld hl,0c102h		;4219   ; 0xC102: bit 0: es la demostracion; bit 6: hay partida (p00:46A5)
	bit 0,(hl)		;421c
	call nz,063dbh		;421e
	ld hl,0c102h		;4221   ; 0xC102: bit 0: es la demostracion; bit 6: hay partida (p00:46A5)
	bit 0,(hl)		;4224
	jr z,L_4235		;4226
	ld a,(0c100h)		;4228   ; 0xC100: el ESTADO del juego (p00:4254): 1 titulo, 2 demostracion, 4 empieza el area, 5 jugando, 9 MENU, 0x0A pausa...
	cp 005h		;422b
	jr nz,L_4235		;422d
	ld hl,00102h		;422f
	ld (0c100h),hl		;4232   ; 0xC100: el ESTADO del juego (p00:4254): 1 titulo, 2 demostracion, 4 empieza el area, 5 jugando, 9 MENU, 0x0A pausa...
L_4235:
	ld hl,0c103h		;4235   ; 0xC103: cuenta los cuadros (p00:4238)
	inc (hl)			;4238
	ld a,(0c203h)		;4239   ; 0xC203: el logotipo y el titulo (p01:66D4)
	or a			;423c
	jp nz,estado_11		;423d
	ld bc,(0c100h)		;4240   ; 0xC100: el ESTADO del juego (p00:4254): 1 titulo, 2 demostracion, 4 empieza el area, 5 jugando, 9 MENU, 0x0A pausa...
	ld a,c			;4244
	ld hl,0c102h		;4245   ; 0xC102: bit 0: es la demostracion; bit 6: hay partida (p00:46A5)
	bit 0,(hl)		;4248
	jr nz,L_4250		;424a
	cp 003h		;424c
	jr nc,L_4254		;424e
L_4250:
	ld hl,04680h		;4250
	push hl			;4253
L_4254:
	call despacha		;4254

; ----------------------------------------------------------------------
; DATOS tabla_4257: 19 destinos del despachador de 0x40AE (call en p00:4254):
;   0x427E, 0x42C3, 0x42EB, 0x434D, 0x4383, 0x43B5, 0x4411, 0x4439 ...; lo
;   leen p00:4254 (38 bytes)
;   0x4257..0x427d  (38 bytes)
DATA_tabla_4257:
	defb 07eh,042h	; 4257
	defb 0c3h,042h	; 4259
	defb 0ebh,042h	; 425b
	defb 04dh,043h	; 425d
	defb 083h,043h	; 425f
	defb 0b5h,043h	; 4261
	defb 011h,044h	; 4263
	defb 039h,044h	; 4265
	defb 0a0h,044h	; 4267
	defb 035h,047h	; 4269
	defb 0adh,044h	; 426b
	defb 0fch,045h	; 426d
	defb 003h,046h	; 426f
	defb 047h,046h	; 4271
	defb 0fah,084h	; 4273
	defb 055h,085h	; 4275
	defb 07dh,042h	; 4277
	defb 05ah,046h	; 4279
	defb 06dh,046h	; 427b

; ======================================================================
; CODIGO 0x427d..0x43f1  (372 bytes)
; ======================================================================


estado_16:
	ret			;427d
estado_00:
	djnz L_4290		;427e
	call apaga_los_sprites		;4280
	call 066f0h		;4283
	ld a,(0c202h)		;4286   ; 0xC202: el logotipo y el titulo (p01:66D4)
	or a			;4289
	ret z			;428a
	ld a,068h		;428b
	jp L_4345		;428d
L_4290:
	djnz L_429D		;4290
	ld hl,0c104h		;4292   ; 0xC104: cuenta atras del paso del estado (p00:4345)
	dec (hl)			;4295
	ret nz			;4296
	call con_lee_de_la_vram		;4297
	jp mira_paso		;429a
L_429D:
	djnz L_42AC		;429d
	call rutina_21		;429f
	call rutina_21		;42a2
	call rutina_21		;42a5
	ret nz			;42a8
	jp mira_paso		;42a9
L_42AC:
	djnz L_42B7		;42ac
	call pon_scroll		;42ae
	call rutina_19		;42b1
	jp L_4390		;42b4
L_42B7:
	call escribe_vdp		;42b7
	call pon_avance		;42ba
	call 0668eh		;42bd
	jp mira_paso		;42c0
estado_01:
	djnz L_42D5		;42c3
	ld a,(0c103h)		;42c5   ; 0xC103: cuenta los cuadros (p00:4238)
	and 007h		;42c8
	ret nz			;42ca
	ld hl,0c104h		;42cb   ; 0xC104: cuenta atras del paso del estado (p00:4345)
	dec (hl)			;42ce
	ret nz			;42cf
	call con_lee_de_la_vram		;42d0
	jr mira_paso		;42d3
L_42D5:
	djnz L_42DE		;42d5
	call rutina_21		;42d7
	ret nz			;42da
	jp L_4390		;42db
L_42DE:
	call rutina_20		;42de
	ret nz			;42e1
	ld a,061h		;42e2   ; el sonido 0x61 (p14:9C47 + 2*0x61)
	call pon_banco_8000_guardado		;42e4
	ld a,01ch		;42e7
	jr L_4345		;42e9
estado_02:
	djnz L_4339		;42eb
	call 063cdh		;42ed
	ld a,(0c163h)		;42f0   ; 0xC163: hay una partida en marcha (p00:4388)
	or a			;42f3
	jr z,L_4323		;42f4
	ld a,(0c108h)		;42f6   ; 0xC108: F1, F2 y F3 pulsadas en este cuadro, bits 0-2 (p00:5318)
	rra			;42f9
	ld b,00ah		;42fa
	jp c,L_43ED		;42fc
	rra			;42ff
	ld b,00dh		;4300
	jp c,L_43ED		;4302
	rra			;4305
	ld b,011h		;4306
	jp c,L_43ED		;4308
	ld hl,0c485h		;430b   ; 0xC485: bit 7: hay que cambiar de area (p01:64CD)
	bit 7,(hl)		;430e
	call nz,064cdh		;4310
	ld a,(0c124h)		;4313   ; 0xC124: F4 y F5 pulsadas en este cuadro (p00:5330)
	ld b,00eh		;4316
	rrca			;4318
	jp c,L_43ED		;4319
	ld b,00fh		;431c
	rrca			;431e
	ret nc			;431f
	jp L_43ED		;4320
L_4323:
	ld a,074h		;4323
	ld (0c0f4h),a		;4325   ; 0xC0F4: el sonido que se pide para el cuadro siguiente (p14:94C1)
	ld hl,0c102h		;4328   ; 0xC102: bit 0: es la demostracion; bit 6: hay partida (p00:46A5)
	res 0,(hl)		;432b
L_432D:
	xor a			;432d
L_432E:
	ld (0c100h),a		;432e   ; 0xC100: el ESTADO del juego (p00:4254): 1 titulo, 2 demostracion, 4 empieza el area, 5 jugando, 9 MENU, 0x0A pausa...
	ld a,020h		;4331
	ld (0c104h),a		;4333   ; 0xC104: cuenta atras del paso del estado (p00:4345)
	jp L_4399		;4336
L_4339:
	call pon_avance		;4339
	xor a			;433c
	ld (0c13bh),a		;433d   ; 0xC13B: la demostracion se esta acabando (p01:63DB)
	call 06335h		;4340
	ld a,020h		;4343
L_4345:
	ld (0c104h),a		;4345   ; 0xC104: cuenta atras del paso del estado (p00:4345)
mira_paso:
	ld hl,0c101h		;4348   ; 0xC101: el paso dentro del estado (p00:4348)
	inc (hl)			;434b
	ret			;434c
estado_03:
	djnz L_4360		;434d
	ld hl,0c104h		;434f   ; 0xC104: cuenta atras del paso del estado (p00:4345)
	dec (hl)			;4352
	jr z,mira_paso		;4353
	bit 1,(hl)		;4355
	ld hl,053cbh		;4357
	jp z,con_hmmm		;435a
	jp L_4F8B		;435d
L_4360:
	djnz L_4371		;4360
	call escribe_vdp_2		;4362
	call espera_al_vdp		;4365
	call pon_musica_de_pausa		;4368
	call mira_menu_hecho		;436b
	jp L_4390		;436e
L_4371:
	ld a,074h		;4371   ; el sonido 0x74 (p14:9C47 + 2*0x74)
	call mira_banderas_juego		;4373
	call espera_al_vdp		;4376
	ld a,064h		;4379   ; el sonido 0x64 (p14:9C47 + 2*0x64)
	call pon_banco_8000_guardado		;437b
	ld a,014h		;437e
	jp L_4345		;4380
estado_04:
	djnz L_439E		;4383
	call pon_partida		;4385
	ld hl,0c163h		;4388   ; 0xC163: hay una partida en marcha (p00:4388)
	ld (hl),001h		;438b
	call enciende_los_sprites		;438d
L_4390:
	ld a,020h		;4390
	ld (0c104h),a		;4392   ; 0xC104: cuenta atras del paso del estado (p00:4345)
	ld hl,0c100h		;4395   ; 0xC100: el ESTADO del juego (p00:4254): 1 titulo, 2 demostracion, 4 empieza el area, 5 jugando, 9 MENU, 0x0A pausa...
	inc (hl)			;4398
L_4399:
	xor a			;4399
	ld (0c101h),a		;439a   ; 0xC101: el paso dentro del estado (p00:4348)
	ret			;439d
L_439E:
	call mira_scroll_5		;439e
	ld hl,0c160h		;43a1   ; 0xC160: las VIDAS, en BCD (p00:4417; GAOOOOOOOOOOH suma 10)
	ld a,(hl)			;43a4
	or a			;43a5
	jr z,L_43AC		;43a6
	add a,099h		;43a8
	daa			;43aa
	ld (hl),a			;43ab
L_43AC:
	call pon_avance_3		;43ac
	call apaga_los_sprites		;43af
	jp mira_paso		;43b2
estado_05:
	ld hl,0c485h		;43b5   ; 0xC485: bit 7: hay que cambiar de area (p01:64CD)
	bit 7,(hl)		;43b8
	call nz,064cdh		;43ba
	call mira_cuadros_2		;43bd
	ld a,(0c163h)		;43c0   ; 0xC163: hay una partida en marcha (p00:4388)
	or a			;43c3
	jp z,L_4390		;43c4
	ld a,(0c800h)		;43c7   ; 0xC800: lo que hace Gao (p00:5C68)
	cp 002h		;43ca
	ret z			;43cc
	ld a,(0c108h)		;43cd   ; 0xC108: F1, F2 y F3 pulsadas en este cuadro, bits 0-2 (p00:5318)
	rra			;43d0
	ld b,00ah		;43d1
	jr c,L_43ED		;43d3
	rra			;43d5
	ld b,00dh		;43d6
	jr c,L_43ED		;43d8
	rra			;43da
	ld b,011h		;43db
	jr c,L_43ED		;43dd
	ld a,(0c124h)		;43df   ; 0xC124: F4 y F5 pulsadas en este cuadro (p00:5330)
	ld b,00eh		;43e2
	rrca			;43e4
	jr c,L_43ED		;43e5
	ld b,00fh		;43e7
	rrca			;43e9
	jr c,L_43ED		;43ea
	ret			;43ec
L_43ED:
	ld a,b			;43ed
	jp L_432E		;43ee

; ----------------------------------------------------------------------
; DATOS tabla_43F1: tabla que lee p03:B6CE (32 bytes)
;   0x43f1..0x4411  (32 bytes)
DATA_tabla_43F1:
	defb 021h,01fh,000h,022h,087h,0c4h,021h,086h,0c4h,034h,021h,085h,0c4h,0cbh,0feh,0c9h	; 43f1  !.."..!..4!.....
	defb 021h,01fh,000h,022h,087h,0c4h,021h,086h,0c4h,035h,021h,085h,0c4h,0cbh,0feh,0c9h	; 4401  !.."..!..5!.....

; ======================================================================
; CODIGO 0x4411..0x4525  (276 bytes)
; ======================================================================


estado_06:
	ld hl,00000h		;4411
	ld (0c170h),hl		;4414   ; 0xC170: variables del juego
	ld hl,0c160h		;4417   ; 0xC160: las VIDAS, en BCD (p00:4417; GAOOOOOOOOOOH suma 10)
	ld a,(0c4e0h)		;441a   ; 0xC4E0: NANDANANDANANDA: al perder una vida se devuelve (p00:441A)
	or a			;441d
	ld a,(hl)			;441e
	jr z,L_4427		;441f
	add a,001h		;4421
	daa			;4423
	jr z,L_4427		;4424
	ld (hl),a			;4426
L_4427:
	or a			;4427
	jr nz,L_442C		;4428
	jr L_4431		;442a
L_442C:
	ld a,004h		;442c
	jp L_432E		;442e
L_4431:
	ld a,06dh		;4431   ; el sonido 0x6D (p14:9C47 + 2*0x6D)
	call mira_banderas_juego		;4433
	jp L_4390		;4436
estado_07:
	djnz L_4480		;4439
	ld a,(0c124h)		;443b   ; 0xC124: F4 y F5 pulsadas en este cuadro (p00:5330)
	and 002h		;443e
	jr nz,L_4451		;4440
	ld a,(0c012h)		;4442   ; 0xC012: el sonido del primer canal (p14:9420)
	or a			;4445
	ret nz			;4446
L_4447:
	ld hl,0c102h		;4447   ; 0xC102: bit 0: es la demostracion; bit 6: hay partida (p00:46A5)
	ld a,(hl)			;444a
	and 0bfh		;444b
	ld (hl),a			;444d
	jp L_432D		;444e
L_4451:
	ld a,003h		;4451
	ld (0c160h),a		;4453   ; 0xC160: las VIDAS, en BCD (p00:4417; GAOOOOOOOOOOH suma 10)
	xor a			;4456
	ld h,a			;4457
	ld l,a			;4458
	ld (0c15bh),hl		;4459   ; 0xC15B: variables del juego
	ld (0c158h),hl		;445c   ; 0xC158: variables del juego
	ld (0c15ah),a		;445f   ; 0xC15A: variables del juego
	ld hl,02020h		;4462
	ld bc,0a080h		;4465
	ld d,000h		;4468
	ld a,0ffh		;446a
	call hmmv		;446c
	ld hl,0c0a0h		;446f   ; 0xC0A0: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ld de,07060h		;4472
	ld a,048h		;4475
	ld bc,02010h		;4477
	call con_lmmm		;447a
	jp mira_paso		;447d
L_4480:
	djnz L_448C		;4480
	ld a,(0c012h)		;4482   ; 0xC012: el sonido del primer canal (p14:9420)
	or a			;4485
	ret nz			;4486
	call 08eb4h		;4487
	jr L_442C		;448a
L_448C:
	call pon_avance		;448c
	ld hl,053dch		;448f
	call rutina_7		;4492
	call rutina		;4495
	call bucle		;4498
	ld a,078h		;449b
	jp L_4345		;449d
estado_08:
	ld hl,0c160h		;44a0   ; 0xC160: las VIDAS, en BCD (p00:4417; GAOOOOOOOOOOH suma 10)
	ld a,(hl)			;44a3
	add a,001h		;44a4
	daa			;44a6
	ld (hl),a			;44a7
	ld a,004h		;44a8
	jp L_432E		;44aa
estado_10:
	ld a,(0c205h)		;44ad   ; 0xC205: el logotipo y el titulo (p01:66D4)
	or a			;44b0
	ld a,005h		;44b1
	jp nz,L_432E		;44b3
	ld a,b			;44b6
	dec a			;44b7
	jp z,L_4552		;44b8
	dec a			;44bb
	jp z,L_4579		;44bc
	jp p,L_459F		;44bf
	call apaga_los_sprites		;44c2
	ld hl,03820h		;44c5
	ld a,0cch		;44c8
	ld bc,09040h		;44ca
	call mira_scroll_3		;44cd
	ld hl,03a22h		;44d0
	ld a,(0c385h)		;44d3   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
	add a,l			;44d6
	ld l,a			;44d7
	ld a,0ffh		;44d8
	ld d,000h		;44da
	ld bc,08c3ch		;44dc
	call con_hmmv		;44df
	ld hl,04525h		;44e2   ; p00:4525 tabla_4525: tabla que lee p00:44E2, p00:4511 (45 bytes)
	call rutina_7		;44e5
	ld hl,(0c158h)		;44e8   ; 0xC158: variables del juego
	ld a,(0c15ah)		;44eb   ; 0xC15A: variables del juego
	ld b,a			;44ee
	call rutina_4		;44ef
	ld hl,0c155h		;44f2   ; 0xC155: variables del juego
	ld (hl),e			;44f5
	inc hl			;44f6
	ld (hl),d			;44f7
	inc hl			;44f8
	ld (hl),c			;44f9
	ld de,08050h		;44fa
	ld b,003h		;44fd
	call bucle_2		;44ff
	ld hl,0c160h		;4502   ; 0xC160: las VIDAS, en BCD (p00:4417; GAOOOOOOOOOOH suma 10)
	ld de,09044h		;4505
	ld b,001h		;4508
	call bucle_2		;450a
	ld a,(0c481h)		;450d   ; 0xC481: la FASE, 1-6 (p01:65B4)
	dec a			;4510
	ld hl,04549h		;4511
	call con_hl_mas_a_2		;4514
	ld hl,09034h		;4517
	call 0818fh		;451a
	call mira_paso		;451d
	ld a,070h		;4520   ; el sonido 0x70 (p14:9C47 + 2*0x70)
	jp mira_banderas_juego		;4522

; ----------------------------------------------------------------------
; DATOS tabla_4525: tabla que lee p00:44E2, p00:4511 (45 bytes)
;   0x4525..0x4552  (45 bytes)
DATA_tabla_4525:
	defb 068h,028h,050h,041h,055h,053h,045h,0feh,058h,038h,053h,054h,041h,047h,045h,0feh	; 4525  h(PAUSE.X8STAGE.
	defb 058h,044h,052h,045h,053h,054h,0feh,048h,050h,053h,043h,04fh,052h,045h,0feh,0b0h	; 4535  XDREST.HPSCORE..
	defb 050h,030h,030h,0ffh,008h,009h,00ah,00bh,00ch,00dh,01bh,01bh,001h	; 4545  P00..........

; ======================================================================
; CODIGO 0x4552..0x4721  (463 bytes)
; ======================================================================


L_4552:
	ld a,008h		;4552
	call 00141h		;4554   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	bit 1,a		;4557
	jr z,L_4563		;4559
	ld a,(0c106h)		;455b   ; 0xC106: cursores, ESPACIO y los disparos pulsados en este cuadro (p00:533B)
	or a			;455e
	ret z			;455f
	jp mira_paso		;4560
L_4563:
	ld hl,03820h		;4563
	ld bc,09040h		;4566
	call rutina_6		;4569
	call rutina_3		;456c
	xor a			;456f
	ld (0c137h),a		;4570   ; 0xC137: la ventana de la pausa: contrasena, teclear, comprobar... (p06:B3A8)
	ld hl,0c101h		;4573   ; 0xC101: el paso dentro del estado (p00:4348)
	ld (hl),003h		;4576
	ret			;4578
L_4579:
	ld a,(0c0f2h)		;4579   ; 0xC0F2: la musica de la pausa esta sonando (p14:9411)
	or a			;457c
	ld a,001h		;457d
	jp z,L_4588		;457f
	ld a,04ch		;4582   ; el sonido 0x4C (p14:9C47 + 2*0x4C)
	call mira_banderas_juego		;4584
	xor a			;4587
L_4588:
	ld (0c0f1h),a		;4588   ; 0xC0F1: lo pone p00:4588 al volver de la pausa: 1 si no sonaba la musica de pausa
	ld hl,03820h		;458b
	ld bc,09040h		;458e
	call rutina_6		;4591
	call enciende_los_sprites		;4594
	call rutina_3		;4597
	ld b,005h		;459a
	jp L_43ED		;459c
L_459F:
	ld a,006h		;459f
	ld (0c10ch),a		;45a1   ; 0xC10C: el banco que p00:53E9 pone en 0xA000 con el 1 y el 2
	call pon_banco_a000_5		;45a4
	call 0b3a8h		;45a7
	ld a,003h		;45aa
	ld (0c10ch),a		;45ac   ; 0xC10C: el banco que p00:53E9 pone en 0xA000 con el 1 y el 2
	call pon_banco_a000_5		;45af
	ld a,(0c137h)		;45b2   ; 0xC137: la ventana de la pausa: contrasena, teclear, comprobar... (p06:B3A8)
	cp 005h		;45b5
	ret nz			;45b7
	ld a,(0c4dah)		;45b8   ; 0xC4DA: el final: lo pone ENDDEMOGAMITAINA (p06:B98A)
	ld b,a			;45bb
	cp 005h		;45bc
	call z,mira_musica_de_pausa		;45be
	ld a,b			;45c1
	or a			;45c2
	jr nz,L_45D3		;45c3
	ld a,(0c0f2h)		;45c5   ; 0xC0F2: la musica de la pausa esta sonando (p14:9411)
	or a			;45c8
	ld a,001h		;45c9
	jp z,L_45D4		;45cb
	ld a,04ch		;45ce   ; el sonido 0x4C (p14:9C47 + 2*0x4C)
	call mira_banderas_juego		;45d0
L_45D3:
	xor a			;45d3
L_45D4:
	ld (0c0f1h),a		;45d4   ; 0xC0F1: lo pone p00:4588 al volver de la pausa: 1 si no sonaba la musica de pausa
	call enciende_los_sprites		;45d7
	ld a,(0c4dah)		;45da   ; 0xC4DA: el final: lo pone ENDDEMOGAMITAINA (p06:B98A)
	or a			;45dd
	ld b,005h		;45de
	jp z,L_43ED		;45e0
	ld hl,(0c4dah)		;45e3   ; 0xC4DA: el final: lo pone ENDDEMOGAMITAINA (p06:B98A)
	ld (0c100h),hl		;45e6   ; 0xC100: el ESTADO del juego (p00:4254): 1 titulo, 2 demostracion, 4 empieza el area, 5 jugando, 9 MENU, 0x0A pausa...
	ld hl,00000h		;45e9
	ld (0c4dah),hl		;45ec   ; 0xC4DA: el final: lo pone ENDDEMOGAMITAINA (p06:B98A)
	ret			;45ef
mira_musica_de_pausa:
	ld c,000h		;45f0
	ld hl,0c0f2h		;45f2   ; 0xC0F2: la musica de la pausa esta sonando (p14:9411)
	ld a,(hl)			;45f5
	ld (hl),c			;45f6
	or a			;45f7
	ret z			;45f8
	ld b,000h		;45f9   ; 0 vueltas
	ret			;45fb
estado_11:
	ld hl,(0c202h)		;45fc   ; 0xC202: el logotipo y el titulo (p01:66D4)
	ld a,h			;45ff
	or a			;4600
	ret z			;4601
	jp (hl)			;4602
estado_12:
	djnz L_4621		;4603
	ld hl,0c130h		;4605   ; 0xC130: la interrupcion avisa de un cuadro (p00:408D)
	ld a,(hl)			;4608
	cp 001h		;4609
	ret z			;460b
	ld (hl),000h		;460c
	ld a,006h		;460e
	ld (0c10ch),a		;4610   ; 0xC10C: el banco que p00:53E9 pone en 0xA000 con el 1 y el 2
	call pon_banco_a000_5		;4613
	call 0ad00h		;4616
	ld a,003h		;4619
	ld (0c10ch),a		;461b   ; 0xC10C: el banco que p00:53E9 pone en 0xA000 con el 1 y el 2
	jp pon_banco_a000_5		;461e
L_4621:
	call con_sube_una_letra		;4621
	call con_sube_letras		;4624
	call rutina_13		;4627
	ld hl,0cd00h		;462a   ; 0xCD00: la escena del final y las pantallas de p06
	ld bc,00200h		;462d
	call copia_bytes		;4630
	ld a,020h		;4633
	ld (0c4a8h),a		;4635   ; 0xC4A8: variables de la partida
	xor a			;4638
	ld (0c4a9h),a		;4639   ; 0xC4A9: variables de la partida
	ld (0c388h),a		;463c   ; 0xC388: lo que se ha movido el mapa este cuadro (p00:56E8)
	ld a,046h		;463f   ; el sonido 0x46 (p14:9C47 + 2*0x46)
	call mira_banderas_juego		;4641
	jp mira_paso		;4644
estado_13:
	ld a,009h		;4647
	ld (0c10ch),a		;4649   ; 0xC10C: el banco que p00:53E9 pone en 0xA000 con el 1 y el 2
	call mira_banco_6000		;464c
	call 0bd31h		;464f
	ld a,003h		;4652
	ld (0c10ch),a		;4654   ; 0xC10C: el banco que p00:53E9 pone en 0xA000 con el 1 y el 2
	jp mira_banco_6000		;4657
estado_17:
	ld a,006h		;465a
	ld (0c10ch),a		;465c   ; 0xC10C: el banco que p00:53E9 pone en 0xA000 con el 1 y el 2
	call mira_banco_6000		;465f
	call 0ba4bh		;4662
	ld a,003h		;4665
	ld (0c10ch),a		;4667   ; 0xC10C: el banco que p00:53E9 pone en 0xA000 con el 1 y el 2
	jp mira_banco_6000		;466a
estado_18:
	ld a,006h		;466d
	ld (0c10ch),a		;466f   ; 0xC10C: el banco que p00:53E9 pone en 0xA000 con el 1 y el 2
	call mira_banco_6000		;4672
	call 0bb69h		;4675
	ld a,003h		;4678
	ld (0c10ch),a		;467a   ; 0xC10C: el banco que p00:53E9 pone en 0xA000 con el 1 y el 2
	jp mira_banco_6000		;467d
L_4680:
	ld a,007h		;4680
	call 00141h		;4682   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	bit 7,a		;4685
	call z,pon_sonido_1		;4687
	call escribe_psg_2		;468a
	ld hl,0c151h		;468d   ; 0xC151: variables del juego
	call rutina_10		;4690
	or a			;4693
	ret z			;4694
	ld hl,0c104h		;4695   ; 0xC104: cuenta atras del paso del estado (p00:4345)
	ld (hl),00ah		;4698
	ld hl,0c100h		;469a   ; 0xC100: el ESTADO del juego (p00:4254): 1 titulo, 2 demostracion, 4 empieza el area, 5 jugando, 9 MENU, 0x0A pausa...
	ld b,(hl)			;469d
	djnz L_46B9		;469e
	and 030h		;46a0
	ret z			;46a2
	ld a,040h		;46a3
	ld (0c102h),a		;46a5   ; 0xC102: bit 0: es la demostracion; bit 6: hay partida (p00:46A5)
	push hl			;46a8
	call con_pon_un_color		;46a9
	pop hl			;46ac
	ld a,(0c110h)		;46ad   ; 0xC110: 1: hay un Game Master o Q*bert al lado; 2: King Kong 2 (p00:5DFF)
	or a			;46b0
	jr nz,L_4705		;46b1
	ld (hl),003h		;46b3
	inc hl			;46b5
	ld (hl),000h		;46b6
	ret			;46b8
L_46B9:
	push hl			;46b9
	ld hl,0c102h		;46ba   ; 0xC102: bit 0: es la demostracion; bit 6: hay partida (p00:46A5)
	bit 0,(hl)		;46bd
	jr z,L_46C6		;46bf
	ld a,074h		;46c1
	ld (0c0f4h),a		;46c3   ; 0xC0F4: el sonido que se pide para el cuadro siguiente (p14:94C1)
L_46C6:
	res 0,(hl)		;46c6
	pop hl			;46c8
	ld (hl),001h		;46c9
	inc hl			;46cb
	ld (hl),001h		;46cc
	ld hl,0c102h		;46ce   ; 0xC102: bit 0: es la demostracion; bit 6: hay partida (p00:46A5)
	bit 0,(hl)		;46d1
	ld a,074h		;46d3
	call nz,mira_banderas_juego		;46d5
	jp L_5A3B		;46d8
pon_sonido_1:
	ld a,001h		;46db
	ld (0c13ah),a		;46dd   ; 0xC13A: variables del juego
	ld a,(0c012h)		;46e0   ; 0xC012: el sonido del primer canal (p14:9420)
	cp 061h		;46e3
	ret z			;46e5
	xor a			;46e6
	ld (0c012h),a		;46e7   ; 0xC012: el sonido del primer canal (p14:9420)
	ld (0c032h),a		;46ea   ; 0xC032: el sonido del segundo canal
	ld (0c052h),a		;46ed   ; 0xC052: el sonido del tercer canal
	ld (0c092h),a		;46f0   ; 0xC092: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ld (0c0b2h),a		;46f3   ; 0xC0B2: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ld (0c0d2h),a		;46f6   ; 0xC0D2: los canales del sonido (0x20 bytes cada uno, p14:94CA)
	ret			;46f9
mira_menu_hecho:
	ld hl,0c114h		;46fa   ; 0xC114: el MENU ha cambiado algo (p00:46FA)
	ld a,(hl)			;46fd
	or a			;46fe
	ret z			;46ff
	ld (hl),000h		;4700
	jp L_5FDD		;4702
L_4705:
	xor a			;4705
	ld (0c114h),a		;4706   ; 0xC114: el MENU ha cambiado algo (p00:46FA)
	ld a,001h		;4709
	ld (0c115h),a		;470b   ; 0xC115: la fase con que empieza la partida (MENU)
	ld (0c116h),a		;470e   ; 0xC116: copia de la fase del MENU (p00:4795)
	ld a,003h		;4711
	ld (0c117h),a		;4713   ; 0xC117: las vidas con que empieza la partida (MENU)
	ld a,009h		;4716
	jp L_432E		;4718
rutina:
	ld hl,04721h		;471b   ; p00:4721 tabla_4721: tabla que lee p00:471B, p06:BBA2 (20 bytes)
	jp rutina_7		;471e

; ----------------------------------------------------------------------
; DATOS tabla_4721: tabla que lee p00:471B, p06:BBA2 (20 bytes)
;   0x4721..0x4735  (20 bytes)
DATA_tabla_4721:
	defb 050h,068h,046h,035h,0feh,064h,068h,03eh,0feh,070h,068h,043h,04fh,04eh,054h,049h	; 4721  PhF5.dh>.phCONTI
	defb 04eh,055h,045h,0ffh	; 4731

; ======================================================================
; CODIGO 0x4735..0x4815  (224 bytes)
; ======================================================================


estado_09:
	djnz L_476D		;4735
	ld a,(0c106h)		;4737   ; 0xC106: cursores, ESPACIO y los disparos pulsados en este cuadro (p00:533B)
	and 033h		;473a
	ret z			;473c
	and 003h		;473d
	jp nz,06009h		;473f
	ld a,(0c11bh)		;4742
	or a			;4745
	jp nz,L_4753		;4746
	call mira_canales		;4749
	ld hl,00003h		;474c
	ld (0c100h),hl		;474f   ; 0xC100: el ESTADO del juego (p00:4254): 1 titulo, 2 demostracion, 4 empieza el area, 5 jugando, 9 MENU, 0x0A pausa...
	ret			;4752
L_4753:
	dec a			;4753
	jr z,L_4761		;4754
	ld hl,0b8b8h		;4756
	ld (0c112h),hl		;4759
	call mira_menu_jugadores		;475c
	jr L_476A		;475f
L_4761:
	ld hl,0b0b8h		;4761
	ld (0c112h),hl		;4764
	call mira_menu_fase		;4767
L_476A:
	jp mira_paso		;476a
L_476D:
	djnz L_47A2		;476d
	call lee_teclado_2		;476f
	jr nz,L_4777		;4772
	jp L_5F51		;4774
L_4777:
	ld a,(0c11bh)		;4777
	ld b,a			;477a
	ld hl,0c114h		;477b   ; 0xC114: el MENU ha cambiado algo (p00:46FA)
	or (hl)			;477e
	ld (hl),a			;477f
	ld a,(0c125h)		;4780   ; 0xC125: la fila 7 del teclado que se tiene pulsada
	or a			;4783
	jr z,L_4798		;4784
	ld a,(0c11eh)		;4786
	ld d,a			;4789
	ld a,(0c11fh)		;478a
	bit 0,b		;478d
	jr z,L_479D		;478f
	ld (0c115h),a		;4791   ; 0xC115: la fase con que empieza la partida (MENU)
	ld a,d			;4794
	ld (0c116h),a		;4795   ; 0xC116: copia de la fase del MENU (p00:4795)
L_4798:
	xor a			;4798
	ld (0c101h),a		;4799   ; 0xC101: el paso dentro del estado (p00:4348)
	ret			;479c
L_479D:
	ld (0c117h),a		;479d   ; 0xC117: las vidas con que empieza la partida (MENU)
	jr L_4798		;47a0
L_47A2:
	call con_marco		;47a2
	xor a			;47a5
	ld hl,0c118h		;47a6
	ld de,0c119h		;47a9
	ld bc,0000eh		;47ac
	ld (hl),000h		;47af
	ldir		;47b1
	jp mira_paso		;47b3
pon_musica_de_pausa:
	ld hl,0c155h		;47b6   ; 0xC155: variables del juego
	ld bc,02eabh		;47b9
	ld d,h			;47bc
	ld e,l			;47bd
	inc e			;47be
	ld (hl),000h		;47bf
	ldir		;47c1
	ld hl,04815h		;47c3   ; p00:4815 tabla_4815: tabla que lee p00:47C3 (3 bytes)
	ld de,0c160h		;47c6   ; 0xC160: las VIDAS, en BCD (p00:4417; GAOOOOOOOOOOH suma 10)
	ld bc,00003h		;47c9
	ldir		;47cc
	xor a			;47ce
	ld (0c0f2h),a		;47cf   ; 0xC0F2: la musica de la pausa esta sonando (p14:9411)
	ld (0c840h),a		;47d2   ; 0xC840: elige los 32 bytes de p07:70AE que van a los patrones de 0xF8A0 (p00:5671) y el sumando de la dificultad (p01:704D); 6 es especial (p02:8F4F)
	ld (0c845h),a		;47d5   ; 0xC845: la VIDA de Gao, hasta 200 (p03:AD1C; METALSLAVE la llena)
	ld a,007h		;47d8
	ld (0c843h),a		;47da   ; 0xC843: la ficha de Gao
	ld a,010h		;47dd
	ld (0c842h),a		;47df   ; 0xC842: lo que sale de p01:7FBD para el arma (p01:7FB9)
	ld hl,0ffb4h		;47e2
	ld (0d43bh),hl		;47e5   ; 0xD43B: lo que controla la salida de bichos
	ld a,001h		;47e8
	ld (0c84ah),a		;47ea   ; 0xC84A: lo que sale de p01:7FBD para el arma (p01:7FB5)
	ld (0c480h),a		;47ed   ; 0xC480: el AREA (0-23): 3*(fase-1) + columna, o 18 + fase - 1 (p01:64D5)
	ld (0c486h),a		;47f0   ; 0xC486: el area a la que se va (p01:6549)
pon_x_de_entrada:
	call 065bfh		;47f3
	call 065b0h		;47f6
	ld a,080h		;47f9
	ld (0c48ah),a		;47fb   ; 0xC48A: la x de Gao al entrar (p01:6553)
	ld (0c489h),a		;47fe   ; 0xC489: la y de Gao al entrar (p01:6571)
	ld (0c49fh),a		;4801
	ld (0c4a0h),a		;4804   ; 0xC4A0: variables de la partida
	xor a			;4807
	ld (0c4a3h),a		;4808   ; 0xC4A3: variables de la partida
	ld hl,0001fh		;480b
	ld (0c487h),hl		;480e   ; 0xC487: la fila del mapa con que se entra (p00:5924)
	ld (0c4a1h),hl		;4811   ; 0xC4A1: variables de la partida
	ret			;4814

; ----------------------------------------------------------------------
; DATOS tabla_4815: tabla que lee p00:47C3 (3 bytes)
;   0x4815..0x4818  (3 bytes)
DATA_tabla_4815:
	defb 003h,000h,001h	; 4815

; ======================================================================
; CODIGO 0x4818..0x48d9  (193 bytes)
; ======================================================================


L_4818:
	push hl			;4818
	ld de,(0c15bh)		;4819   ; 0xC15B: variables del juego
	add hl,de			;481d
	ld (0c15bh),hl		;481e   ; 0xC15B: variables del juego
	ld de,003e8h		;4821
	or a			;4824
	sbc hl,de		;4825
	jr c,L_483E		;4827
	ld (0c15bh),hl		;4829   ; 0xC15B: variables del juego
	ld a,(0c160h)		;482c   ; 0xC160: las VIDAS, en BCD (p00:4417; GAOOOOOOOOOOH suma 10)
	add a,001h		;482f
	daa			;4831
	jr nz,L_4836		;4832
	ld a,099h		;4834
L_4836:
	ld (0c160h),a		;4836   ; 0xC160: las VIDAS, en BCD (p00:4417; GAOOOOOOOOOOH suma 10)
	ld a,036h		;4839   ; el sonido 0x36 (p14:9C47 + 2*0x36)
	call mira_banderas_juego		;483b
L_483E:
	pop hl			;483e
	or a			;483f
	ld de,(0c158h)		;4840   ; 0xC158: variables del juego
	adc hl,de		;4844
	ld (0c158h),hl		;4846   ; 0xC158: variables del juego
	ret nc			;4849
	ld a,(0c15ah)		;484a   ; 0xC15A: variables del juego
	inc a			;484d
	ld (0c15ah),a		;484e   ; 0xC15A: variables del juego
	ret			;4851
bucle:
	ret			;4852
bucle_2:
	ld a,(hl)			;4853
	rra			;4854
	rra			;4855
	rra			;4856
	rra			;4857
	call rutina_2		;4858
	ld a,(hl)			;485b
	call rutina_2		;485c
	dec hl			;485f
	djnz bucle_2		;4860
	ret			;4862
rutina_2:
	and 00fh		;4863
	add a,030h		;4865
	call mira_scroll_6		;4867
	ld a,d			;486a
	add a,008h		;486b
	ld d,a			;486d
	ret			;486e
L_486F:
	ld l,a			;486f
	ld h,000h		;4870
	add hl,hl			;4872
	add hl,de			;4873
	ld e,(hl)			;4874
	inc hl			;4875
	ld d,(hl)			;4876
	ret			;4877
con_hl_mas_a:
	add a,a			;4878
con_hl_mas_a_2:
	call hl_mas_a		;4879
	ld a,(hl)			;487c
	inc hl			;487d
	ld h,(hl)			;487e
	ld l,a			;487f
	ret			;4880
L_4881:
	call rutina_13		;4881
L_4884:
	call con_sube_letras		;4884
	call con_sube_una_letra		;4887
	call rutina_14		;488a
rutina_3:
	call pon_base_de_la_hoja_3		;488d
	jp L_55D1		;4890
L_4893:
	ld b,000h		;4893
rutina_4:
	exx			;4895
	ld b,018h		;4896
	exx			;4898
	ld de,00000h		;4899
	ld c,d			;489c
L_489D:
	add hl,hl			;489d
	ld a,b			;489e
	adc a,a			;489f
	ld b,a			;48a0
	ld a,e			;48a1
	adc a,a			;48a2
	daa			;48a3
	ld e,a			;48a4
	ld a,d			;48a5
	adc a,a			;48a6
	daa			;48a7
	ld d,a			;48a8
	ld a,c			;48a9
	adc a,a			;48aa
	daa			;48ab
	ld c,a			;48ac
	exx			;48ad
	dec b			;48ae
	exx			;48af
	jr nz,L_489D		;48b0
	ret			;48b2
rutina_5:
	push hl			;48b3
	ld a,e			;48b4
	call mira_pantalla		;48b5
	ld de,02000h		;48b8
	add hl,de			;48bb
	pop de			;48bc
	add hl,de			;48bd
	ret			;48be
mira_scroll:
	ld a,(0c385h)		;48bf   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
	add a,e			;48c2
mira_pantalla:
	rrca			;48c3
	rrca			;48c4
	rrca			;48c5
	and 01fh		;48c6
	ld h,a			;48c8
	ld a,d			;48c9
	srl h		;48ca
	rra			;48cc
	srl h		;48cd
	rra			;48cf
	srl h		;48d0
	rra			;48d2
	ld l,a			;48d3
	ld de,0e000h		;48d4   ; 0xE000: la tabla de 32x32 dibujos de la pantalla (p00:58A4)
	add hl,de			;48d7
	ret			;48d8

; ----------------------------------------------------------------------
; DATOS sin_lector_48D9: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (34 bytes)
;   0x48d9..0x48fb  (34 bytes)
DATA_sin_lector_48D9:
	defb 0f5h,078h,0d9h,047h,0d9h,0cdh,0bfh,048h,0f1h,006h,000h,04fh,087h,030h,001h,005h	; 48d9  .x.G...H...O.0..
	defb 016h,0c9h,0d9h,0d9h,05eh,01ah,01fh,0d8h,009h,07ch,0e6h,0e7h,067h,0d9h,010h,0f3h	; 48e9  ....^....|..g...
	defb 0afh,0c9h	; 48f9

; ======================================================================
; CODIGO 0x48fb..0x4927  (44 bytes)
; ======================================================================


L_48FB:
	call mira_scroll		;48fb
	ld e,(hl)			;48fe
	ld d,0c9h		;48ff
	ld a,(de)			;4901
	ld d,a			;4902
	rrca			;4903
	ld a,e			;4904
	ret			;4905
L_4906:
	call mira_scroll		;4906
	ld e,(hl)			;4909
	ld d,0c9h		;490a
	ld a,(de)			;490c
	ld d,a			;490d
	rrca			;490e
	rrca			;490f
	rrca			;4910
	ld a,e			;4911
	ret			;4912
L_4913:
	call mira_scroll		;4913
	ld e,(hl)			;4916
	ld d,0c9h		;4917
	ld a,(de)			;4919
	ret			;491a
L_491B:
	ld a,h			;491b
	cp b			;491c
	ret nz			;491d
	ld a,l			;491e
	cp c			;491f
	ret			;4920
L_4921:
	ld a,h			;4921
	cp d			;4922
	ret nz			;4923
	ld a,l			;4924
	cp e			;4925
	ret			;4926

; ----------------------------------------------------------------------
; DATOS sin_llamar_4927: codigo que no llama nadie (ninguna palabra del
;   cartucho vale 0x4927): ex af,af' / ld a,(0c385h) / add a,e / and 0f8h ...
;   (16 bytes)
;   0x4927..0x4937  (16 bytes)
DATA_sin_llamar_4927:
	defb 008h,03ah,085h,0c3h,083h,0e6h,0f8h,05fh,07ah,0e6h,0f8h,057h,008h,0c3h,024h,050h	; 4927  .:....._z..W..$P

; ======================================================================
; CODIGO 0x4937..0x498e  (87 bytes)
; ======================================================================


mira_scroll_2:
	ex af,af'			;4937
	ld a,(0c385h)		;4938   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
	add a,e			;493b
	ld e,a			;493c
	ex af,af'			;493d
	jp pon_dibujo_transparente		;493e
mira_scroll_3:
	ld de,01000h		;4941
L_4944:
	push af			;4944
	ld a,(0c204h)		;4945   ; 0xC204: el logotipo y el titulo (p01:66D4)
	set 1,a		;4948
	ld (0c204h),a		;494a   ; 0xC204: el logotipo y el titulo (p01:66D4)
	ld a,(0c385h)		;494d   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
	add a,l			;4950
	ld l,a			;4951
	push hl			;4952
	push bc			;4953
	ld a,004h		;4954
	call con_hmmm_4		;4956
	pop bc			;4959
	pop hl			;495a
	ld d,000h		;495b
	pop af			;495d
	jp con_hmmv		;495e
L_4961:
	push af			;4961
	ld a,(0c385h)		;4962   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
	add a,l			;4965
	ld l,a			;4966
	ld d,000h		;4967
	pop af			;4969
	jp con_hmmv		;496a
rutina_6:
	ld de,01000h		;496d
	jr mira_scroll_4		;4970
L_4972:
	ld de,01000h		;4972
	call mira_scroll_4		;4975
	jp L_4881		;4978
mira_scroll_4:
	ex de,hl			;497b
	ld a,(0c385h)		;497c   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
	add a,e			;497f
	ld e,a			;4980
	ld a,001h		;4981
	call con_hmmm_3		;4983
	ld hl,0c581h		;4986   ; 0xC581: variables del avance del mapa
	res 1,(hl)		;4989
	jp espera_al_vdp		;498b   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias

; ----------------------------------------------------------------------
; DATOS sin_llamar_498E: codigo que no llama nadie (ninguna palabra del
;   cartucho vale 0x498E): ld a,(0c100h) / cp 005h / ret nz / ld hl,0cb49h ...
;   (74 bytes)
;   0x498e..0x49d8  (74 bytes)
DATA_sin_llamar_498E:
	defb 03ah,000h,0c1h,0feh,005h,0c0h,021h,049h,0cbh,07eh,0b7h,0c8h,03ah,0b0h,0c4h,0e6h	; 498e  :.....!I.~..:...
	defb 001h,0c0h,0cbh,046h,0cbh,086h,028h,018h,0cbh,0feh,021h,0c4h,049h,03ah,04ah,0cbh	; 499e  ...F..(...!.I:J.
	defb 05fh,00eh,001h,0cdh,0cbh,049h,047h,07bh,032h,04ah,0cbh,00eh,012h,0c3h,047h,000h	; 49ae  _....IG{2J....G.
	defb 036h,000h,006h,000h,018h,0f5h,006h,0e0h,000h,010h,001h,020h,00fh,016h,000h,07bh	; 49be  6.......... ...{
	defb 081h,05fh,0beh,038h,001h,05ah,019h,023h,07eh,0c9h	; 49ce  ._.8.Z.#~.

; ======================================================================
; CODIGO 0x49d8..0x4a1f  (71 bytes)
; ======================================================================


lee_de_la_vram:
	call vram_para_leer		;49d8   ; LEE BC bytes de la VRAM de HL a DE
	call cuenta_para_otir		;49db   ; B y A: las vueltas de 256 de inir
	ex af,af'			;49de
	ld a,(00006h)		;49df   ; el puerto de datos del VDP (0x0006 de la BIOS)
	ld c,a			;49e2
	ex af,af'			;49e3
L_49E4:
	inir		;49e4   ; una tanda de B bytes...
	dec a			;49e6   ; ...y otra, hasta A
	jr nz,L_49E4		;49e7
	ex de,hl			;49e9
	ret			;49ea
cuenta_para_otir:
	ex de,hl			;49eb   ; DE <-> HL; B = C (lo que sobra) y A = B, +1 si sobra algo: las vueltas de 256
	ld a,c			;49ec
	or a			;49ed
	ld a,b			;49ee
	ld b,c			;49ef
	ret z			;49f0
	inc a			;49f1
	ret			;49f2
copia_a_la_vram:
	ex de,hl			;49f3   ; BC bytes de HL a la VRAM de DE
	call vram_para_escribir		;49f4   ; el sitio de la VRAM
	call cuenta_para_otir		;49f7   ; cuenta_para_otir: DE <-> HL; B = C (lo que sobra) y A = B, +1 si sobra algo: las vueltas de 256
	ex af,af'			;49fa
	ld a,(00007h)		;49fb   ; el puerto de datos del VDP (0x0007 de la BIOS)
	ld c,a			;49fe
	ex af,af'			;49ff
L_4A00:
	otir		;4a00   ; una tanda de B bytes...
	dec a			;4a02   ; ...y otra, hasta A
	jr nz,L_4A00		;4a03
	ret			;4a05
rellena_la_vram:
	push de			;4a06   ; BC bytes con A desde la VRAM de HL
	push af			;4a07
	call vram_para_escribir		;4a08   ; el sitio de la VRAM
	ld d,c			;4a0b   ; D: lo que sobra de 256...
	ld a,c			;4a0c
	or a			;4a0d
	jr z,L_4A11		;4a0e
	inc b			;4a10   ; ...y B, las vueltas enteras
L_4A11:
	ld a,(00007h)		;4a11   ; el puerto de datos
	ld c,a			;4a14
	pop af			;4a15
L_4A16:
	out (c),a		;4a16   ; A, BC veces
	dec d			;4a18
	jr nz,L_4A16		;4a19
	djnz L_4A16		;4a1b
	pop de			;4a1d
	ret			;4a1e

; ----------------------------------------------------------------------
; DATOS sin_llamar_4A1F: codigo que no llama nadie (ninguna palabra del
;   cartucho vale 0x4A1F): push bc / call 04a58h / ld a,(00006h) / ld c,a ...
;   (26 bytes)
;   0x4a1f..0x4a39  (26 bytes)
DATA_sin_llamar_4A1F:
	defb 0c5h,0cdh,058h,04ah,03ah,006h,000h,04fh,0edh,078h,0c1h,0c9h,0c5h,0f5h,0cdh,039h	; 4a1f  ..XJ:..O.x.....9
	defb 04ah,03ah,007h,000h,04fh,0f1h,0edh,079h,0c1h,0c9h	; 4a2f  J:..O..y..

; ======================================================================
; CODIGO 0x4a39..0x4bdf  (422 bytes)
; ======================================================================


vram_para_escribir:
	push bc			;4a39   ; prepara el V9938 para escribir en la direccion de VRAM HL (R#14 y el puerto 1)
	ld a,(00007h)		;4a3a   ; el puerto de registros del VDP (el de datos + 1)
	inc a			;4a3d
	ld c,a			;4a3e   ; los dos bits altos de la direccion...
	ld a,h			;4a3f
	rlca			;4a40
	rlca			;4a41
	and 003h		;4a42
	di			;4a44
	out (c),a		;4a45   ; ...en R#14
	ld a,08eh		;4a47
	out (c),a		;4a49   ; al VDP
	ld a,l			;4a4b   ; el byte bajo...
	out (c),a		;4a4c   ; al VDP
	ld a,h			;4a4e   ; ...y los seis siguientes, con el bit 6: para escribir
	and 03fh		;4a4f
	or 040h		;4a51
	out (c),a		;4a53   ; al VDP
	pop bc			;4a55
	ei			;4a56
	ret			;4a57
vram_para_leer:
	push bc			;4a58
	ld a,(00007h)		;4a59
	inc a			;4a5c
	ld c,a			;4a5d
	ld a,h			;4a5e
	rlca			;4a5f
	rlca			;4a60
	and 003h		;4a61
	di			;4a63
	out (c),a		;4a64   ; al VDP
	ld a,08eh		;4a66
	out (c),a		;4a68   ; al VDP
	ld a,l			;4a6a
	out (c),a		;4a6b   ; al VDP
	ld a,h			;4a6d   ; ...sin el bit 6: para leer
	and 03fh		;4a6e
	out (c),a		;4a70   ; al VDP
	pop bc			;4a72
	ei			;4a73
	ret			;4a74
L_4A75:
	ld a,c			;4a75
	ex af,af'			;4a76
	ld a,(00007h)		;4a77
	inc a			;4a7a
	ld c,a			;4a7b
	ld a,b			;4a7c
	di			;4a7d
	out (c),a		;4a7e   ; al VDP
	ex af,af'			;4a80
	or 080h		;4a81
	ei			;4a83
	out (c),a		;4a84   ; al VDP
	ret			;4a86
rle_con_destino:
	ex de,hl			;4a87   ; la palabra de DE es la direccion de VRAM; detras, el RLE
	ld e,(hl)			;4a88   ; la direccion de VRAM de la palabra de DE
	inc hl			;4a89
	ld d,(hl)			;4a8a
	inc hl			;4a8b
	ex de,hl			;4a8c
rle_a_la_vram:
	call vram_para_escribir		;4a8d   ; el RLE de DE a la VRAM de HL (n con el bit 7: n bytes tal cual; sin el, repetir; 0 acaba)
	ld a,(00007h)		;4a90   ; el puerto de datos
	ld c,a			;4a93
L_4A94:
	ld a,(de)			;4a94   ; n
	and a			;4a95   ; 0: se acabo
	ret z			;4a96
	inc de			;4a97
	ld b,a			;4a98   ; con el bit 7...
	and 07fh		;4a99
	cp b			;4a9b   ; ...sin el: repetir
	jr z,L_4AA8		;4a9c
	and a			;4a9e   ; 0x80: otra direccion de VRAM (p00:4A87)
	jr z,rle_con_destino		;4a9f
	ex de,hl			;4aa1   ; n & 0x7F bytes tal cual
	ld b,a			;4aa2
	otir		;4aa3
	ex de,hl			;4aa5
	jr L_4A94		;4aa6
L_4AA8:
	ld a,(de)			;4aa8   ; el byte que se repite, B veces
	inc de			;4aa9
L_4AAA:
	out (c),a		;4aaa   ; al VDP
	djnz L_4AAA		;4aac
	jr L_4A94		;4aae
con_rle_a_la_vram:
	ld a,(hl)			;4ab0
	inc hl			;4ab1
	inc a			;4ab2
	ret z			;4ab3
	dec a			;4ab4
	or a			;4ab5
	jr z,L_4AC0		;4ab6
	dec a			;4ab8
	jr z,L_4AC5		;4ab9
	call con_copia_a_la_vram		;4abb
	jr con_rle_a_la_vram		;4abe
L_4AC0:
	call con_rle_a_la_vram_2		;4ac0
	jr con_rle_a_la_vram		;4ac3
L_4AC5:
	call mira_buffer		;4ac5
	jr con_rle_a_la_vram		;4ac8
con_rle_a_la_vram_2:
	ld e,(hl)			;4aca
	inc hl			;4acb
	ld d,(hl)			;4acc
	inc hl			;4acd
	ld a,(hl)			;4ace
	inc hl			;4acf
	ld b,(hl)			;4ad0
	inc hl			;4ad1
	push hl			;4ad2
	ld l,a			;4ad3
	ld h,b			;4ad4
	call rle_a_la_vram		;4ad5
	pop hl			;4ad8
	ret			;4ad9
mira_buffer:
	ld e,(hl)			;4ada
	inc hl			;4adb
	ld d,(hl)			;4adc
	inc hl			;4add
	ld a,(hl)			;4ade
	inc hl			;4adf
	push hl			;4ae0
	ld l,a			;4ae1
	ld h,000h		;4ae2
	add hl,hl			;4ae4
	add hl,hl			;4ae5
	add hl,hl			;4ae6
	add hl,hl			;4ae7
	add hl,hl			;4ae8
	ld c,l			;4ae9
	ld b,h			;4aea
	ex de,hl			;4aeb
	push bc			;4aec
	push af			;4aed
	ld de,0e800h		;4aee   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	call lee_de_la_vram		;4af1
	pop af			;4af4
	call mira_buffer_2		;4af5
	pop bc			;4af8
	pop hl			;4af9
	ld e,(hl)			;4afa
	inc hl			;4afb
	ld d,(hl)			;4afc
	inc hl			;4afd
	push hl			;4afe
	ld hl,0ec00h		;4aff   ; 0xEC00: buffers de pantallas y dibujos
	call copia_a_la_vram		;4b02
	pop hl			;4b05
	ret			;4b06
con_copia_a_la_vram:
	ld e,(hl)			;4b07
	inc hl			;4b08
	ld d,(hl)			;4b09
	inc hl			;4b0a
	ld c,(hl)			;4b0b
	inc hl			;4b0c
	ld b,(hl)			;4b0d
	inc hl			;4b0e
	ld a,(hl)			;4b0f
	inc hl			;4b10
	push hl			;4b11
	ld h,(hl)			;4b12
	ld l,a			;4b13
	ex de,hl			;4b14
	call copia_a_la_vram		;4b15
	pop hl			;4b18
	inc hl			;4b19
	ret			;4b1a
mira_buffer_2:
	ld hl,0e800h		;4b1b   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	ld de,0ec10h		;4b1e   ; 0xEC10: buffers de pantallas y dibujos
	ld c,a			;4b21
L_4B22:
	call bucle_3		;4b22
	ld a,0e0h		;4b25
	add a,e			;4b27
	ld e,a			;4b28
	jr c,L_4B2C		;4b29
	dec d			;4b2b
L_4B2C:
	call bucle_3		;4b2c
	ld a,020h		;4b2f
	call de_mas_a		;4b31
	dec c			;4b34
	jp nz,L_4B22		;4b35
	ret			;4b38
bucle_3:
	ld b,010h		;4b39
L_4B3B:
	ld a,(hl)			;4b3b
	inc hl			;4b3c
	exx			;4b3d
	ld c,a			;4b3e
	ld a,001h		;4b3f
L_4B41:
	rr c		;4b41
	rla			;4b43
	jp nc,L_4B41		;4b44
	exx			;4b47
	ld (de),a			;4b48
	inc de			;4b49
	djnz L_4B3B		;4b4a
	ret			;4b4c
pon_atributos_vram:
	ld hl,(0c134h)		;4b4d   ; 0xC134: donde van los colores de los sprites este cuadro
	bit 2,h		;4b50
	jr z,L_4B67		;4b52
	ld hl,0f200h		;4b54   ; 0xF200: el INIT de King Kong 2 y el gancho de Hinotori, copiados (p09:B8EA, p09:B919)
	ld (0c132h),hl		;4b57   ; 0xC132: donde van los atributos de los sprites este cuadro (p00:4B4D)
	ld hl,0f000h		;4b5a
	ld (0c134h),hl		;4b5d   ; 0xC134: donde van los colores de los sprites este cuadro
	ld c,005h		;4b60
	ld b,0efh		;4b62
	jp 00047h		;4b64   ; BIOS WRTVDP - Writes data in the VDP-register
L_4B67:
	ld hl,0f600h		;4b67
	ld (0c132h),hl		;4b6a   ; 0xC132: donde van los atributos de los sprites este cuadro (p00:4B4D)
	ld hl,0f400h		;4b6d
	ld (0c134h),hl		;4b70   ; 0xC134: donde van los colores de los sprites este cuadro
	ld c,005h		;4b73
	ld b,0e7h		;4b75
	jp 00047h		;4b77   ; BIOS WRTVDP - Writes data in the VDP-register
mira_atributos_vram:
	ld hl,0c10fh		;4b7a
	ld a,(hl)			;4b7d
	add a,068h		;4b7e
	and 078h		;4b80
	ld (hl),a			;4b82
	ld a,(00007h)		;4b83
	ld c,a			;4b86
	call mira_colores_vram		;4b87
	ld hl,(0c132h)		;4b8a   ; 0xC132: donde van los atributos de los sprites este cuadro (p00:4B4D)
	call vram_para_escribir		;4b8d
	ld a,(0c10fh)		;4b90
	ld d,010h		;4b93
	ld h,0e6h		;4b95
L_4B97:
	ld l,a			;4b97
	ex af,af'			;4b98
	ld a,(0c385h)		;4b99   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
	ld e,a			;4b9c
	add a,(hl)			;4b9d
	cp 0d8h		;4b9e
	jr nz,L_4BA3		;4ba0
	inc a			;4ba2
L_4BA3:
	out (c),a		;4ba3   ; al VDP
	inc hl			;4ba5
	outi		;4ba6
	outi		;4ba8
	outi		;4baa
	ld a,e			;4bac
	add a,(hl)			;4bad
	cp 0d8h		;4bae
	jr nz,L_4BB3		;4bb0
	inc a			;4bb2
L_4BB3:
	out (c),a		;4bb3   ; al VDP
	inc hl			;4bb5
	outi		;4bb6
	outi		;4bb8
	outi		;4bba
	ex af,af'			;4bbc
	add a,048h		;4bbd
	and 078h		;4bbf
	dec d			;4bc1
	jr nz,L_4B97		;4bc2
	ret			;4bc4
mira_colores_vram:
	ld hl,(0c134h)		;4bc5   ; 0xC134: donde van los colores de los sprites este cuadro
	call vram_para_escribir		;4bc8
	ld a,(0c10fh)		;4bcb
	ld d,010h		;4bce
	add a,a			;4bd0
L_4BD1:
	ld h,072h		;4bd1
	ld l,a			;4bd3
	add hl,hl			;4bd4
	ld b,020h		;4bd5
	otir		;4bd7
	add a,090h		;4bd9
	dec d			;4bdb
	jr nz,L_4BD1		;4bdc
	ret			;4bde

; ----------------------------------------------------------------------
; DATOS sin_llamar_4BDF: codigo que no llama nadie (ninguna palabra del
;   cartucho vale 0x4BDF): ld hl,0e400h / ld de,(0c134h) / ld bc,00280h / jp
;   049f3h (13 bytes)
;   0x4bdf..0x4bec  (13 bytes)
DATA_sin_llamar_4BDF:
	defb 021h,000h,0e4h,0edh,05bh,034h,0c1h,001h,080h,002h,0c3h,0f3h,049h	; 4bdf  !...[4......I

; ======================================================================
; CODIGO 0x4bec..0x4c2a  (62 bytes)
; ======================================================================


con_vram_para_escribir:
	push de			;4bec
	ld a,(00007h)		;4bed
	ld c,a			;4bf0
	ld b,008h		;4bf1
L_4BF3:
	push bc			;4bf3
	ex de,hl			;4bf4
	call vram_para_escribir		;4bf5
	ex de,hl			;4bf8
	ld b,004h		;4bf9   ; 4 vueltas
L_4BFB:
	ld a,(hl)			;4bfb
	dec hl			;4bfc
	rrca			;4bfd
	rrca			;4bfe
	rrca			;4bff
	rrca			;4c00
	out (c),a		;4c01   ; al VDP
	djnz L_4BFB		;4c03
	ld c,008h		;4c05
	add hl,bc			;4c07
	ex de,hl			;4c08
	ld c,080h		;4c09
	add hl,bc			;4c0b
	ex de,hl			;4c0c
	pop bc			;4c0d
	djnz L_4BF3		;4c0e
	pop de			;4c10
	ret			;4c11
L_4C12:
	inc hl			;4c12
	inc hl			;4c13
	inc hl			;4c14
L_4C15:
	push bc			;4c15
	call con_vram_para_escribir		;4c16
	ld a,004h		;4c19
	add a,e			;4c1b
	cp 080h		;4c1c
	jr nz,L_4C25		;4c1e
	ld a,004h		;4c20
	add a,d			;4c22
	ld d,a			;4c23
	xor a			;4c24
L_4C25:
	ld e,a			;4c25
	pop bc			;4c26
	djnz L_4C15		;4c27
	ret			;4c29

; ----------------------------------------------------------------------
; DATOS sin_lector_4C2A: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (59 bytes)
;   0x4c2a..0x4c65  (59 bytes)
DATA_sin_lector_4C2A:
	defb 0d5h,03ah,007h,000h,04fh,006h,010h,0c5h,0ebh,0cdh,039h,04ah,0ebh,006h,008h,07eh	; 4c2a  .:..O.....9J...~
	defb 02bh,00fh,00fh,00fh,00fh,0edh,079h,010h,0b8h,00eh,016h,009h,0ebh,00eh,080h,009h	; 4c3a  +.....y.........
	defb 0ebh,0c1h,010h,0a5h,0d1h,0c9h,0c5h,0cdh,02ah,04ch,03eh,008h,083h,0feh,080h,020h	; 4c4a  ........*L>....
	defb 005h,03eh,004h,082h,057h,0afh,05fh,0c1h,010h,0ech,0c9h	; 4c5a  .>..W._....

; ======================================================================
; CODIGO 0x4c65..0x4d32  (205 bytes)
; ======================================================================


mira_scroll_5:
	ld a,(0c385h)		;4c65   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
	ld (0fff6h),a		;4c68
	ld b,a			;4c6b
	ld c,017h		;4c6c
	jp L_4A75		;4c6e
escribe_vdp:
	ld b,000h		;4c71
	ld c,017h		;4c73
	jp 00047h		;4c75   ; BIOS WRTVDP - Writes data in the VDP-register
escribe_vdp_2:
	call pon_avance_3		;4c78
	call mira_atributos_de_sprites		;4c7b
	call pon_avance_5		;4c7e
	ld bc,00f07h		;4c81
	call 00047h		;4c84   ; BIOS WRTVDP - Writes data in the VDP-register
	call paleta_inicial		;4c87
	jp pon_avance_2		;4c8a
pon_avance:
	call mira_atributos_de_sprites		;4c8d
	call pon_avance_3		;4c90
	call pon_avance_5		;4c93
pon_avance_2:
	ld a,(0f3e0h)		;4c96
	or 040h		;4c99
	ld b,a			;4c9b
	ld c,001h		;4c9c
	call 00047h		;4c9e   ; BIOS WRTVDP - Writes data in the VDP-register
	jr enciende_los_sprites		;4ca1
pon_avance_3:
	ld a,(0f3e0h)		;4ca3
	and 0bfh		;4ca6
	ld b,a			;4ca8
	ld c,001h		;4ca9
	call 00047h		;4cab   ; BIOS WRTVDP - Writes data in the VDP-register
	jr apaga_los_sprites		;4cae
pon_avance_4:
	xor a			;4cb0
	ld d,a			;4cb1
	jr L_4CB7		;4cb2
pon_avance_5:
	xor a			;4cb4
	ld d,a			;4cb5
	dec a			;4cb6
L_4CB7:
	ld hl,00000h		;4cb7
	ld bc,00000h		;4cba
	ld (0c384h),hl		;4cbd   ; 0xC384: lo que ha avanzado el mapa, 8.8 (p00:56D8)
	call hmmv		;4cc0
	ld b,000h		;4cc3
	ld c,017h		;4cc5
	jp 00047h		;4cc7   ; BIOS WRTVDP - Writes data in the VDP-register
mira_atributos_de_sprites:
	ld hl,0f600h		;4cca
	ld a,0e0h		;4ccd
	ld bc,00080h		;4ccf
	call rellena_la_vram		;4cd2
	ld hl,0e600h		;4cd5   ; 0xE600: y, x, patron y color de los 32 sprites (p00:4B7A)
	ld b,020h		;4cd8   ; 32 vueltas
L_4CDA:
	ld (hl),0e0h		;4cda
	inc l			;4cdc
	inc l			;4cdd
	inc l			;4cde
	inc l			;4cdf
	djnz L_4CDA		;4ce0
	ld hl,0f200h		;4ce2   ; 0xF200: el INIT de King Kong 2 y el gancho de Hinotori, copiados (p09:B8EA, p09:B919)
	ld a,0e0h		;4ce5
	ld bc,00080h		;4ce7
	jp rellena_la_vram		;4cea
apaga_los_sprites:
	ld a,(0ffe7h)		;4ced   ; la copia de R#8 (0xFFE7)...
	or 002h		;4cf0
	ld b,a			;4cf2
	ld c,008h		;4cf3
	jp 00047h		;4cf5   ; BIOS WRTVDP - Writes data in the VDP-register
enciende_los_sprites:
	ld a,(0ffe7h)		;4cf8   ; la copia de R#8 sin el bit 1: se ven los sprites
	and 0fdh		;4cfb
	ld b,a			;4cfd
	ld c,008h		;4cfe
	jp 00047h		;4d00   ; BIOS WRTVDP - Writes data in the VDP-register
pon_un_color:
	push bc			;4d03   ; color A de la paleta = D (RB) y E (G)
	push hl			;4d04
	ld b,a			;4d05   ; el numero de color
	ld a,(00007h)		;4d06   ; el puerto de registros
	inc a			;4d09
	ld c,a			;4d0a
	di			;4d0b
	out (c),b		;4d0c   ; R#16 = el color...
	ld a,090h		;4d0e
	out (c),a		;4d10   ; al VDP
	inc c			;4d12   ; ...y el puerto de la paleta: RB y G
	out (c),d		;4d13   ; al VDP
	push af			;4d15
	pop af			;4d16
	out (c),e		;4d17   ; al VDP
	dec c			;4d19
	ld hl,0f680h		;4d1a   ; y tambien en la copia de la paleta en la VRAM (0xF680 + 2*color)
	ld a,b			;4d1d
	add a,a			;4d1e
	add a,l			;4d1f
	ld l,a			;4d20
	call vram_para_escribir		;4d21   ; vram_para_escribir: prepara el V9938 para escribir en la direccion de VRAM HL (R#14 y el puerto 1)
	dec c			;4d24
	out (c),d		;4d25   ; RB y G a la VRAM
	out (c),e		;4d27   ; al VDP
	pop hl			;4d29
	pop bc			;4d2a
	ei			;4d2b
	ret			;4d2c
paleta_inicial:
	ld hl,04d32h		;4d2d   ; p00:4D32 tabla_4D32: tabla que lee p00:4D2D (13 bytes)
	jr $+15		;4d30

; ----------------------------------------------------------------------
; DATOS tabla_4D32: tabla que lee p00:4D2D (13 bytes)
;   0x4d32..0x4d3f  (13 bytes)
DATA_tabla_4D32:
	defb 00fh,000h,000h,00eh,074h,004h,00dh,061h,001h,00ch,077h,007h,0ffh	; 4d32  ....t..a..w..

; ======================================================================
; CODIGO 0x4d3f..0x4f2b  (492 bytes)
; ======================================================================


pon_paleta:
	ld a,(hl)			;4d3f   ; lista [color][RB][G] ... 0xFF
	inc hl			;4d40
	inc a			;4d41   ; 0xFF acaba
	ret z			;4d42
	dec a			;4d43
	ld d,(hl)			;4d44   ; RB y G
	inc hl			;4d45
	ld e,(hl)			;4d46
	inc hl			;4d47
	call pon_un_color		;4d48   ; pon_un_color: color A de la paleta = D (RB) y E (G)
	jr pon_paleta		;4d4b
espera_al_vdp:
	ld a,002h		;4d4d   ; espera a que el V9938 acabe la orden (bit 0 de S#2)
	call lee_estado_del_vdp		;4d4f   ; lee_estado_del_vdp: lee el registro de estado A del V9938
	rra			;4d52   ; el bit 0 de S#2 (CE): la orden sigue en marcha
	jr c,espera_al_vdp		;4d53
	ret			;4d55
lee_estado_del_vdp:
	push bc			;4d56   ; lee el registro de estado A del V9938
	push hl			;4d57
	ld hl,(00006h)		;4d58   ; H = el puerto de control (0x0007), L = el de lectura (0x0006 + 1)
	inc h			;4d5b
	inc l			;4d5c
	ld c,h			;4d5d
	di			;4d5e
	out (c),a		;4d5f   ; R#15 = A...
	ld a,08fh		;4d61
	out (c),a		;4d63   ; al VDP
	ld c,l			;4d65   ; ...se lee el registro de estado...
	in a,(c)		;4d66
	push af			;4d68
	xor a			;4d69   ; ...y R#15 vuelve a 0 (la BIOS lo espera asi)
	ld c,h			;4d6a
	out (c),a		;4d6b   ; al VDP
	ld a,08fh		;4d6d
	out (c),a		;4d6f   ; al VDP
	pop af			;4d71
	pop hl			;4d72
	pop bc			;4d73
	ei			;4d74
	ret			;4d75
raya_horizontal:
	call espera_al_vdp		;4d76   ; orden LINE del V9938 (MAJ = 0): de (H, L), B-1 puntos
	push bc			;4d79
	ld a,(00007h)		;4d7a   ; C = el puerto de control del VDP (0x0007 + 1)
	inc a			;4d7d
	ld c,a			;4d7e
	ld a,024h		;4d7f   ; desde R#36...
	di			;4d81
	out (c),a		;4d82   ; al VDP
	ld a,091h		;4d84
	out (c),a		;4d86   ; al VDP
	inc c			;4d88   ; ...el puerto de los registros seguidos (R#17 auto)
	inc c			;4d89
	out (c),h		;4d8a   ; DX = H
	xor a			;4d8c   ; DX alto = 0
	out (c),a		;4d8d   ; al VDP
	out (c),l		;4d8f   ; DY = L
	out (c),a		;4d91   ; DY alto = 0 (pagina 0)
	pop hl			;4d93   ; lo largo: B - 1 puntos
	dec h			;4d94
	out (c),h		;4d95   ; NX (el lado largo) = B - 1...
	xor a			;4d97
	out (c),a		;4d98   ; ...su byte alto 0...
	xor a			;4d9a   ; ...NY (el corto) = 0...
	out (c),a		;4d9b   ; al VDP
	out (c),a		;4d9d   ; al VDP
	out (c),l		;4d9f   ; CLR = C, el color
	out (c),a		;4da1   ; ARG = 0: MAJ 0, hacia la derecha
	ld a,070h		;4da3   ; LINE con IMP
	out (c),a		;4da5   ; al VDP
	ei			;4da7
	ret			;4da8
raya_vertical:
	call espera_al_vdp		;4da9   ; orden LINE con MAJ = 1: la raya va hacia abajo
	push bc			;4dac
	ld a,(00007h)		;4dad   ; C = el puerto de control del VDP
	inc a			;4db0
	ld c,a			;4db1
	ld a,024h		;4db2
	di			;4db4
	out (c),a		;4db5   ; al VDP
	ld a,091h		;4db7
	out (c),a		;4db9   ; al VDP
	inc c			;4dbb
	inc c			;4dbc
	out (c),h		;4dbd   ; DX = H
	xor a			;4dbf
	out (c),a		;4dc0   ; al VDP
	out (c),l		;4dc2   ; DY = L
	out (c),a		;4dc4   ; al VDP
	pop hl			;4dc6
	dec h			;4dc7   ; NX (el lado largo) = B - 1
	out (c),h		;4dc8   ; al VDP
	xor a			;4dca
	out (c),a		;4dcb   ; al VDP
	xor a			;4dcd
	out (c),a		;4dce   ; al VDP
	out (c),a		;4dd0   ; al VDP
	out (c),l		;4dd2   ; CLR = C, el color
	inc a			;4dd4   ; ARG con MAJ = 1: el lado largo es el vertical
	out (c),a		;4dd5   ; al VDP
	ld a,070h		;4dd7   ; LINE con IMP
	out (c),a		;4dd9   ; al VDP
	ei			;4ddb
	ret			;4ddc
marco:
	ld b,e			;4ddd   ; cuatro rayas: un marco de E por D en HL
	call raya_vertical_guardando		;4dde   ; la raya de la izquierda (E puntos)
	ld b,d			;4de1
	call raya_horizontal_guardando		;4de2   ; la de arriba (D puntos)
	push hl			;4de5   ; la de abajo: L + E - 1
	ld a,l			;4de6
	dec a			;4de7
	add a,e			;4de8
	ld l,a			;4de9
	ld b,d			;4dea
	call raya_horizontal_guardando		;4deb
	pop hl			;4dee
	ld a,h			;4def   ; la de la derecha: H + D - 1
	dec a			;4df0
	add a,d			;4df1
	ld h,a			;4df2
	ld b,e			;4df3
	jp raya_vertical_guardando		;4df4
raya_vertical_guardando:
	push hl			;4df7
	push de			;4df8
	push bc			;4df9
	call raya_vertical		;4dfa   ; raya_vertical: orden LINE con MAJ = 1: la raya va hacia abajo
	pop bc			;4dfd
	pop de			;4dfe
	pop hl			;4dff
	ret			;4e00
raya_horizontal_guardando:
	push hl			;4e01
	push de			;4e02
	push bc			;4e03
	call raya_horizontal		;4e04   ; raya_horizontal: orden LINE del V9938 (MAJ = 0): de (H, L), B-1 puntos
	pop bc			;4e07
	pop de			;4e08
	pop hl			;4e09
	ret			;4e0a
hmmv:
	ex af,af'			;4e0b   ; el color, a un lado
	call espera_al_vdp		;4e0c   ; espera_al_vdp: espera a que el V9938 acabe la orden (bit 0 de S#2)
	push bc			;4e0f
	ld a,(00007h)		;4e10   ; C = el puerto de control del VDP
	inc a			;4e13
	ld c,a			;4e14
	ld a,024h		;4e15   ; desde R#36
	di			;4e17
	out (c),a		;4e18   ; al VDP
	ld a,091h		;4e1a
	out (c),a		;4e1c   ; al VDP
	inc c			;4e1e
	inc c			;4e1f
	out (c),h		;4e20   ; DX = H
	xor a			;4e22
	out (c),a		;4e23   ; DX alto = 0
	out (c),l		;4e25   ; DY = L y la pagina D
	out (c),d		;4e27   ; al VDP
	pop hl			;4e29   ; NX = B (0 = 256)
	out (c),h		;4e2a   ; al VDP
	cp h			;4e2c   ; NX alto: 1 si NX es 0 (256 puntos)
	jr nz,L_4E30		;4e2d
	inc a			;4e2f
L_4E30:
	out (c),a		;4e30   ; al VDP
	xor a			;4e32
	out (c),l		;4e33   ; NY = C (0 = 256)
	cp l			;4e35   ; NY alto: 1 si NY es 0
	jr nz,L_4E39		;4e36
	inc a			;4e38
L_4E39:
	out (c),a		;4e39   ; al VDP
	ex af,af'			;4e3b   ; CLR = el color
	out (c),a		;4e3c   ; al VDP
	xor a			;4e3e   ; ARG = 0
	out (c),a		;4e3f   ; al VDP
	ld a,0c0h		;4e41   ; HMMV
	out (c),a		;4e43   ; al VDP
	ei			;4e45
	ret			;4e46
hmmm:
	ex af,af'			;4e47   ; orden HMMM del V9938: copia BxC puntos de (H, L) a (D, E); A lleva las paginas
	call espera_al_vdp		;4e48   ; espera_al_vdp: espera a que el V9938 acabe la orden (bit 0 de S#2)
	push bc			;4e4b   ; desde R#32 (SX)
	ld a,(00007h)		;4e4c   ; C = el puerto de control del VDP
	inc a			;4e4f
	ld c,a			;4e50
	ld a,020h		;4e51
	di			;4e53
	out (c),a		;4e54   ; al VDP
	ld a,091h		;4e56
	out (c),a		;4e58   ; al VDP
	inc c			;4e5a
	inc c			;4e5b
	out (c),h		;4e5c   ; SX = H
	xor a			;4e5e   ; SX alto = 0
	out (c),a		;4e5f   ; al VDP
	out (c),l		;4e61   ; SY = L...
	ex af,af'			;4e63
	ld l,a			;4e64   ; ...y la pagina de origen: bits 0-1 de A
	and 003h		;4e65
	out (c),a		;4e67   ; al VDP
	out (c),d		;4e69   ; DX = D
	xor a			;4e6b   ; DX alto = 0
	out (c),a		;4e6c   ; al VDP
	out (c),e		;4e6e   ; DY = E...
	ld a,l			;4e70   ; ...y la pagina de destino: bits 2-3 de A
	rra			;4e71
	rra			;4e72
	and 003h		;4e73
	out (c),a		;4e75   ; al VDP
	pop hl			;4e77
	out (c),h		;4e78   ; NX = B
	xor a			;4e7a   ; NX alto = 0
	out (c),a		;4e7b   ; al VDP
	out (c),l		;4e7d   ; NY = C
	out (c),a		;4e7f   ; NY alto = 0, y R#44 (CLR) y R#45 (ARG) = 0
	out (c),a		;4e81   ; al VDP
	out (c),a		;4e83   ; al VDP
	ld a,0d0h		;4e85   ; HMMM
	out (c),a		;4e87   ; al VDP
	ei			;4e89
	ret			;4e8a
lmmm:
	ex af,af'			;4e8b   ; orden LMMM del V9938: lo mismo con operacion logica (A: paginas y operacion; 8 = TIMP)
	call espera_al_vdp		;4e8c   ; espera_al_vdp: espera a que el V9938 acabe la orden (bit 0 de S#2)
	push bc			;4e8f   ; desde R#32
	ld a,(00007h)		;4e90   ; C = el puerto de control del VDP
	inc a			;4e93
	ld c,a			;4e94
	ld a,020h		;4e95
	di			;4e97
	out (c),a		;4e98   ; al VDP
	ld a,091h		;4e9a
	out (c),a		;4e9c   ; al VDP
	inc c			;4e9e
	inc c			;4e9f
	out (c),h		;4ea0   ; SX = H
	xor a			;4ea2   ; SX alto = 0
	out (c),a		;4ea3   ; al VDP
	out (c),l		;4ea5   ; SY = L...
	ex af,af'			;4ea7
	rlca			;4ea8   ; ...y la pagina de origen: bits 6-7 de A
	rlca			;4ea9
	ld l,a			;4eaa
	and 003h		;4eab
	out (c),a		;4ead   ; al VDP
	out (c),d		;4eaf   ; DX = D
	xor a			;4eb1   ; DX alto = 0
	out (c),a		;4eb2   ; al VDP
	out (c),e		;4eb4   ; DY = E...
	ld a,l			;4eb6   ; ...y la pagina de destino: bits 4-5
	ld e,a			;4eb7
	rlca			;4eb8
	rlca			;4eb9
	and 003h		;4eba
	out (c),a		;4ebc   ; al VDP
	pop hl			;4ebe
	out (c),h		;4ebf   ; NX = B
	xor a			;4ec1   ; NX alto = 0
	out (c),a		;4ec2   ; al VDP
	out (c),l		;4ec4   ; NY = C
	out (c),a		;4ec6   ; NY alto = 0, CLR y ARG = 0
	out (c),a		;4ec8   ; al VDP
	out (c),a		;4eca   ; al VDP
	ld a,e			;4ecc   ; LMMM con la operacion de los bits 0-3 (8 = TIMP)
	rra			;4ecd
	rra			;4ece
	and 00fh		;4ecf
	or 090h		;4ed1
	out (c),a		;4ed3   ; al VDP
	ei			;4ed5
	ret			;4ed6
sube_letras:
	call sube_una_letra		;4ed7   ; B letras de 1 bit de HL, en color C, a la hoja de la pagina 1 desde (D, E)
	call rutina_8		;4eda   ; siguiente_sitio: D + 8; al dar la vuelta, E + 8
	djnz sube_letras		;4edd   ; la siguiente letra
	ret			;4edf
sube_una_letra:
	push bc			;4ee0
	push de			;4ee1
	push hl			;4ee2
	push de			;4ee3   ; 1 bit a 4 bits, en 0xE800
	call mira_buffer_3		;4ee4   ; expande_letra: una letra de 1 bit a 4 bits, en 0xE800, con el color C
	pop de			;4ee7
	ld b,d			;4ee8   ; D y E cambiados...
	ld d,e			;4ee9
	ld e,b			;4eea
	srl d		;4eeb   ; ...y (y*256 + x)/2: el byte de la VRAM...
	rr e		;4eed
	ld a,d			;4eef   ; ...en la pagina 1 (0x8000)
	add a,080h		;4ef0
	ld d,a			;4ef2
	ld hl,0e800h		;4ef3   ; los 32 bytes de 0xE800
	call sube_un_dibujo		;4ef6   ; sube_un_dibujo: un dibujo de 8x8 a 4 bits (32 bytes) de HL a la VRAM de DE
	pop hl			;4ef9
	ld bc,00008h		;4efa   ; 8 bytes de fuente por letra
	add hl,bc			;4efd
	pop de			;4efe
	pop bc			;4eff
	ret			;4f00
sube_un_dibujo:
	push de			;4f01   ; un dibujo de 8x8 a 4 bits (32 bytes) de HL a la VRAM de DE
	ld b,008h		;4f02   ; 8 filas
L_4F04:
	push bc			;4f04
	ld bc,00004h		;4f05   ; de 4 bytes (8 puntos)
	call copia_a_la_vram		;4f08   ; copia_a_la_vram: BC bytes de HL a la VRAM de DE
	ex de,hl			;4f0b
	ld bc,00080h		;4f0c   ; la fila de abajo: 128 bytes de VRAM
	add hl,bc			;4f0f
	ex de,hl			;4f10
	pop bc			;4f11
	djnz L_4F04		;4f12
	pop de			;4f14
	ret			;4f15
sube_dibujos:
	push bc			;4f16   ; B dibujos de 8x8 a 4 bits de HL a la VRAM de DE
	call sube_un_dibujo		;4f17   ; sube_un_dibujo: un dibujo de 8x8 a 4 bits (32 bytes) de HL a la VRAM de DE
	ld a,004h		;4f1a   ; el siguiente, 4 bytes (8 puntos) a la derecha...
	add a,e			;4f1c
	cp 080h		;4f1d   ; ...y al llegar al borde (0x80), 8 lineas mas abajo
	jr nz,L_4F26		;4f1f
	ld a,004h		;4f21
	add a,d			;4f23
	ld d,a			;4f24
	xor a			;4f25
L_4F26:
	ld e,a			;4f26
	pop bc			;4f27
	djnz sube_dibujos		;4f28   ; el siguiente dibujo
	ret			;4f2a

; ----------------------------------------------------------------------
; DATOS sin_lector_4F2B: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (42 bytes)
;   0x4f2b..0x4f55  (42 bytes)
DATA_sin_lector_4F2B:
	defb 0d5h,006h,010h,0c5h,001h,008h,000h,0cdh,0f3h,049h,0ebh,001h,080h,000h,009h,0ebh	; 4f2b  .........I......
	defb 0c1h,010h,0f0h,0d1h,0c9h,0c5h,0cdh,02bh,04fh,03eh,008h,083h,0feh,080h,020h,005h	; 4f3b  .......+O>.... .
	defb 03eh,008h,082h,057h,0afh,05fh,0c1h,010h,0ech,0c9h	; 4f4b  >..W._....

; ======================================================================
; CODIGO 0x4f55..0x5019  (196 bytes)
; ======================================================================


mira_buffer_3:
	ld b,008h		;4f55
	ld de,0e800h		;4f57   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
L_4F5A:
	push bc			;4f5a
	push hl			;4f5b
	ex de,hl			;4f5c
	ld a,(de)			;4f5d
	ld d,a			;4f5e
	ld b,004h		;4f5f
L_4F61:
	ld a,c			;4f61
	and 00fh		;4f62
	rl d		;4f64
	jr c,L_4F6D		;4f66
	xor c			;4f68
	rrca			;4f69
	rrca			;4f6a
	rrca			;4f6b
	rrca			;4f6c
L_4F6D:
	rld		;4f6d
	ld a,c			;4f6f
	and 00fh		;4f70
	rl d		;4f72
	jr c,L_4F7B		;4f74
	xor c			;4f76
	rrca			;4f77
	rrca			;4f78
	rrca			;4f79
	rrca			;4f7a
L_4F7B:
	rld		;4f7b
	inc hl			;4f7d
	djnz L_4F61		;4f7e
	ex de,hl			;4f80
	pop hl			;4f81
	inc hl			;4f82
	pop bc			;4f83
	djnz L_4F5A		;4f84
	ret			;4f86
con_hmmm:
	ld c,0ffh		;4f87
	jr L_4F8D		;4f89
L_4F8B:
	ld c,000h		;4f8b
L_4F8D:
	ld d,(hl)			;4f8d
	inc hl			;4f8e
	ld e,(hl)			;4f8f
	inc hl			;4f90
L_4F91:
	ld a,(hl)			;4f91
	inc hl			;4f92
	ld b,a			;4f93
	inc b			;4f94
	ret z			;4f95
	inc b			;4f96
	jr z,con_hmmm		;4f97
	and c			;4f99
	call con_hmmm_2		;4f9a
	ld a,d			;4f9d
	add a,008h		;4f9e
	ld d,a			;4fa0
	jr L_4F91		;4fa1
con_hmmm_2:
	push bc			;4fa3
	push hl			;4fa4
	push de			;4fa5
	or a			;4fa6
	ld h,a			;4fa7
	jr z,L_4FB1		;4fa8
	add a,010h		;4faa
	call mira_modo_king_kong		;4fac
	add a,060h		;4faf
L_4FB1:
	ld l,a			;4fb1
	ld bc,00808h		;4fb2
	ld a,001h		;4fb5
	call hmmm		;4fb7
	pop de			;4fba
	pop hl			;4fbb
	pop bc			;4fbc
	ret			;4fbd
rutina_7:
	ld c,0ffh		;4fbe
	jr L_4FC4		;4fc0
L_4FC2:
	ld c,000h		;4fc2
L_4FC4:
	ld d,(hl)			;4fc4
	inc hl			;4fc5
	ld e,(hl)			;4fc6
	inc hl			;4fc7
L_4FC8:
	ld a,(hl)			;4fc8
	inc hl			;4fc9
	ld b,a			;4fca
	inc b			;4fcb
	ret z			;4fcc
	inc b			;4fcd
	jr z,rutina_7		;4fce
	inc b			;4fd0
	jr z,L_4FDD		;4fd1
	and c			;4fd3
	call mira_scroll_6		;4fd4
	ld a,d			;4fd7
	add a,008h		;4fd8
	ld d,a			;4fda
	jr L_4FC8		;4fdb
L_4FDD:
	ld a,(hl)			;4fdd
	add a,d			;4fde
	ld d,a			;4fdf
	inc hl			;4fe0
	ld a,(hl)			;4fe1
	add a,e			;4fe2
	ld e,a			;4fe3
	inc hl			;4fe4
	jr L_4FC8		;4fe5
mira_scroll_6:
	push bc			;4fe7
	push hl			;4fe8
	push de			;4fe9
	or a			;4fea
	ld h,a			;4feb
	jr z,L_5005		;4fec
	add a,010h		;4fee
	call mira_modo_king_kong		;4ff0
	add a,060h		;4ff3
	ld l,a			;4ff5
	ld bc,00808h		;4ff6
	ld a,(0c385h)		;4ff9   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
	add a,e			;4ffc
	ld e,a			;4ffd
	ld a,048h		;4ffe
	call con_lmmm		;5000
	jr L_5015		;5003
L_5005:
	ld a,(0c385h)		;5005   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
	add a,e			;5008
	ld e,a			;5009
	ex de,hl			;500a
	ld a,0ffh		;500b
	ld d,000h		;500d
	ld bc,00808h		;500f
	call con_hmmv		;5012
L_5015:
	pop de			;5015
	pop hl			;5016
	pop bc			;5017
	ret			;5018

; ----------------------------------------------------------------------
; DATOS tabla_5019: tabla que lee p06:AE71 (11 bytes)
;   0x5019..0x5024  (11 bytes)
DATA_tabla_5019:
	defb 0f5h,0cdh,0a3h,04fh,0cdh,095h,050h,0f1h,010h,0f6h,0c9h	; 5019  ...O..P....

; ======================================================================
; CODIGO 0x5024..0x521e  (506 bytes)
; ======================================================================


L_5024:
	push bc			;5024
	push hl			;5025
	push de			;5026
	call mira_modo_king_kong		;5027
	ld bc,00808h		;502a
	ld a,(0c138h)		;502d   ; 0xC138: las paginas de origen y destino de las copias de dibujos (p00:502D)
	call hmmm		;5030   ; hmmm: orden HMMM del V9938: copia BxC puntos de (H, L) a (D, E); A lleva las paginas
	pop de			;5033
	pop hl			;5034
	pop bc			;5035
	ret			;5036
pon_dibujo_transparente:
	push bc			;5037   ; lo mismo con LMMM + TIMP: el color 0 no pinta
	push hl			;5038
	push de			;5039
	call mira_modo_king_kong		;503a   ; sitio_del_dibujo: H = (A & 31)*8, L = (A >> 5)*8: donde esta el dibujo A en la hoja
	ld bc,00808h		;503d   ; 8x8 con LMMM y TIMP, de la pagina 1 a la 0
	ld a,048h		;5040
	call con_lmmm		;5042   ; lmmm: orden LMMM del V9938: lo mismo con operacion logica (A: paginas y operacion; 8 = TIMP)
	pop de			;5045
	pop hl			;5046
	pop bc			;5047
	ret			;5048
copia_dibujo_en_la_hoja:
	push bc			;5049
	push hl			;504a
	push de			;504b
	call mira_modo_king_kong		;504c   ; sitio_del_dibujo: H = (A & 31)*8, L = (A >> 5)*8: donde esta el dibujo A en la hoja
	ld bc,00808h		;504f   ; 8x8, dentro de la pagina 1
	ld a,005h		;5052
	call hmmm		;5054   ; hmmm: orden HMMM del V9938: copia BxC puntos de (H, L) a (D, E); A lleva las paginas
	pop de			;5057
	pop hl			;5058
	pop bc			;5059
	ret			;505a
copia_8x8_en_la_hoja:
	push bc			;505b
	push hl			;505c
	push de			;505d
	sub 0cch		;505e
	ld h,a			;5060
	and 0f8h		;5061
	add a,030h		;5063
	ld l,a			;5065
	ld a,h			;5066
	and 007h		;5067
	add a,a			;5069
	add a,a			;506a
	add a,a			;506b
	add a,a			;506c
	add a,a			;506d
	ld h,a			;506e
	ld bc,02008h		;506f
	ld a,001h		;5072
	call hmmm		;5074
	pop de			;5077
	pop hl			;5078
	pop bc			;5079
	ret			;507a
mira_modo_king_kong:
	ld b,a			;507b
	and 01fh		;507c
	add a,a			;507e
	add a,a			;507f
	add a,a			;5080
	ld h,a			;5081
	ld a,b			;5082
	and 0e0h		;5083
	rrca			;5085
	rrca			;5086
	ld l,a			;5087
	ld a,(0f0ffh)		;5088   ; 0xF0FF: 1: se esta arrancando King Kong 2 (p00:4117)
	and a			;508b
	jr z,L_5093		;508c
	ld a,l			;508e
	sub 030h		;508f
	ld l,a			;5091
	ret			;5092
L_5093:
	ld a,l			;5093
	ret			;5094
rutina_8:
	ld a,d			;5095
	add a,008h		;5096
	ld d,a			;5098
	ret nz			;5099
	ld a,e			;509a
	add a,008h		;509b
	ld e,a			;509d
	ret			;509e
L_509F:
	push bc			;509f
	push de			;50a0
	exx			;50a1
	ld hl,0e800h		;50a2   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	exx			;50a5
L_50A6:
	push bc			;50a6
	call bucle_4		;50a7
	pop bc			;50aa
	djnz L_50A6		;50ab
	pop de			;50ad
	pop bc			;50ae
	ld hl,0e800h		;50af   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	jp sube_dibujos		;50b2
L_50B5:
	push bc			;50b5
	push de			;50b6
	exx			;50b7
	ld hl,0e800h		;50b8   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	exx			;50bb
L_50BC:
	push bc			;50bc
	call bucle_4		;50bd
	pop bc			;50c0
	djnz L_50BC		;50c1
	pop de			;50c3
	pop bc			;50c4
	ld hl,0e800h		;50c5   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	jp L_4C12		;50c8
bucle_4:
	ld b,008h		;50cb   ; 8 vueltas
L_50CD:
	ld e,(hl)			;50cd
	inc hl			;50ce
	push bc			;50cf
	call multiplica		;50d0
	pop bc			;50d3
	djnz L_50CD		;50d4
	ret			;50d6
multiplica:
	ld b,004h		;50d7
L_50D9:
	xor a			;50d9
	rl e		;50da
	rla			;50dc
	exx			;50dd
	ld e,a			;50de
	ld d,0c5h		;50df
	ld a,(de)			;50e1
	add a,a			;50e2
	add a,a			;50e3
	add a,a			;50e4
	add a,a			;50e5
	ld c,a			;50e6
	exx			;50e7
	xor a			;50e8
	rl e		;50e9
	rla			;50eb
	exx			;50ec
	ld e,a			;50ed
	ld d,0c5h		;50ee
	ld a,(de)			;50f0
	or c			;50f1
	ld (hl),a			;50f2
	inc hl			;50f3
	exx			;50f4
	djnz L_50D9		;50f5
	ret			;50f7
L_50F8:
	push bc			;50f8
	push de			;50f9
	exx			;50fa
	ld hl,0e800h		;50fb   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	exx			;50fe
L_50FF:
	push bc			;50ff
	call bucle_5		;5100
	pop bc			;5103
	djnz L_50FF		;5104
	pop de			;5106
	pop bc			;5107
	ld hl,0e800h		;5108   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	jp sube_dibujos		;510b
L_510E:
	push bc			;510e
	push de			;510f
	exx			;5110
	ld hl,0e800h		;5111   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	exx			;5114
L_5115:
	push bc			;5115
	call bucle_5		;5116
	pop bc			;5119
	djnz L_5115		;511a
	pop de			;511c
	pop bc			;511d
	ld hl,0e800h		;511e   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	jp L_4C12		;5121
bucle_5:
	ld b,008h		;5124   ; 8 vueltas
L_5126:
	push bc			;5126
	call multiplica_2		;5127
	pop bc			;512a
	djnz L_5126		;512b
	ret			;512d
multiplica_2:
	ld b,004h		;512e
	ld e,(hl)			;5130
	inc hl			;5131
	ld d,(hl)			;5132
	inc hl			;5133
L_5134:
	xor a			;5134
	rl d		;5135
	rla			;5137
	rl e		;5138
	rla			;513a
	exx			;513b
	ld e,a			;513c
	ld d,0c5h		;513d
	ld a,(de)			;513f
	add a,a			;5140
	add a,a			;5141
	add a,a			;5142
	add a,a			;5143
	ld c,a			;5144
	exx			;5145
	xor a			;5146
	rl d		;5147
	rla			;5149
	rl e		;514a
	rla			;514c
	exx			;514d
	ld e,a			;514e
	ld d,0c5h		;514f
	ld a,(de)			;5151
	or c			;5152
	ld (hl),a			;5153
	inc hl			;5154
	exx			;5155
	djnz L_5134		;5156
	ret			;5158
L_5159:
	push bc			;5159
	push de			;515a
	exx			;515b
	ld hl,0e800h		;515c   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	exx			;515f
L_5160:
	push bc			;5160
	call bucle_6		;5161
	pop bc			;5164
	djnz L_5160		;5165
	pop de			;5167
	pop bc			;5168
	ld hl,0e800h		;5169   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	jp sube_dibujos		;516c
L_516F:
	push bc			;516f
	push de			;5170
	exx			;5171
	ld hl,0e800h		;5172   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	exx			;5175
L_5176:
	push bc			;5176
	call bucle_6		;5177
	pop bc			;517a
	djnz L_5176		;517b
	pop de			;517d
	pop bc			;517e
	ld hl,0e800h		;517f   ; 0xE800: buffer de trabajo (dibujos que se descomprimen, cuentas...)
	jp L_4C12		;5182
bucle_6:
	ld b,008h		;5185   ; 8 vueltas
L_5187:
	push bc			;5187
	call multiplica_3		;5188
	pop bc			;518b
	djnz L_5187		;518c
	ret			;518e
multiplica_3:
	ld b,004h		;518f
	ld e,(hl)			;5191
	inc hl			;5192
	ld d,(hl)			;5193
	inc hl			;5194
	ld c,(hl)			;5195
	inc hl			;5196
L_5197:
	xor a			;5197
	rl c		;5198
	rla			;519a
	rl d		;519b
	rla			;519d
	rl e		;519e
	rla			;51a0
	exx			;51a1
	ld e,a			;51a2
	ld d,0c5h		;51a3
	ld a,(de)			;51a5
	add a,a			;51a6
	add a,a			;51a7
	add a,a			;51a8
	add a,a			;51a9
	ld c,a			;51aa
	exx			;51ab
	xor a			;51ac
	rl c		;51ad
	rla			;51af
	rl d		;51b0
	rla			;51b2
	rl e		;51b3
	rla			;51b5
	exx			;51b6
	ld e,a			;51b7
	ld d,0c5h		;51b8
	ld a,(de)			;51ba
	or c			;51bb
	ld (hl),a			;51bc
	inc hl			;51bd
	exx			;51be
	djnz L_5197		;51bf
	ret			;51c1
L_51C2:
	push hl			;51c2
	call mira_scroll		;51c3
	jr L_51CF		;51c6
L_51C8:
	push hl			;51c8
	ld hl,0ea00h		;51c9   ; 0xEA00: buffers de pantallas y dibujos
	call rutina_5		;51cc
L_51CF:
	pop de			;51cf
	ex af,af'			;51d0
	ld a,b			;51d1
	ex af,af'			;51d2
L_51D3:
	ex af,af'			;51d3
	ld b,a			;51d4
	ex af,af'			;51d5
	push hl			;51d6
L_51D7:
	ld a,(de)			;51d7
	ld (hl),a			;51d8
	inc hl			;51d9
	inc de			;51da
	djnz L_51D7		;51db
	pop hl			;51dd
	push de			;51de
	ld de,00020h		;51df
	add hl,de			;51e2
	pop de			;51e3
	res 2,h		;51e4
	dec c			;51e6
	jr nz,L_51D3		;51e7
	ret			;51e9
L_51EA:
	ex af,af'			;51ea
	ld a,(0c385h)		;51eb   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
	add a,e			;51ee
	ld e,a			;51ef
	jr L_51F4		;51f0
con_lmmm:
	ex af,af'			;51f2
	ld a,e			;51f3
L_51F4:
	add a,c			;51f4
	jr z,L_51F9		;51f5
	jr c,L_51FD		;51f7
L_51F9:
	ex af,af'			;51f9
	jp lmmm		;51fa
L_51FD:
	ex af,af'			;51fd
	push af			;51fe
	push bc			;51ff
	push de			;5200
	push hl			;5201
	ex af,af'			;5202
	ld a,e			;5203
	neg		;5204
	ld c,a			;5206
	ex af,af'			;5207
	call lmmm		;5208
	pop hl			;520b
	pop de			;520c
	pop bc			;520d
	pop af			;520e
	ex af,af'			;520f
	ld a,e			;5210
	neg		;5211
	add a,l			;5213
	ld l,a			;5214
	ld a,e			;5215
	add a,c			;5216
	ld c,a			;5217
	ld e,000h		;5218
	ex af,af'			;521a
	jp lmmm		;521b

; ----------------------------------------------------------------------
; DATOS sin_lector_521E: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (8 bytes)
;   0x521e..0x5226  (8 bytes)
DATA_sin_lector_521E:
	defb 008h,03ah,085h,0c3h,083h,05fh,018h,002h	; 521e  .:..._..

; ======================================================================
; CODIGO 0x5226..0x530c  (230 bytes)
; ======================================================================


con_hmmm_3:
	ex af,af'			;5226
	ld a,e			;5227
	add a,c			;5228
	jr z,L_522D		;5229
	jr c,L_5231		;522b
L_522D:
	ex af,af'			;522d
	jp hmmm		;522e
L_5231:
	ex af,af'			;5231
	push af			;5232
	push bc			;5233
	push de			;5234
	push hl			;5235
	ex af,af'			;5236
	ld a,e			;5237
	neg		;5238
	ld c,a			;523a
	ex af,af'			;523b
	call hmmm		;523c
	pop hl			;523f
	pop de			;5240
	pop bc			;5241
	pop af			;5242
	ex af,af'			;5243
	ld a,e			;5244
	neg		;5245
	add a,l			;5247
	ld l,a			;5248
	ld a,e			;5249
	add a,c			;524a
	ld c,a			;524b
	ld e,000h		;524c
	ex af,af'			;524e
	jp hmmm		;524f
con_hmmm_4:
	ex af,af'			;5252
	ld a,l			;5253
	add a,c			;5254
	jr z,L_5259		;5255
	jr c,L_525D		;5257
L_5259:
	ex af,af'			;5259
	jp hmmm		;525a
L_525D:
	ex af,af'			;525d
	push af			;525e
	push bc			;525f
	push de			;5260
	push hl			;5261
	ex af,af'			;5262
	ld a,l			;5263
	neg		;5264
	ld c,a			;5266
	ex af,af'			;5267
	call hmmm		;5268
	pop hl			;526b
	pop de			;526c
	pop bc			;526d
	pop af			;526e
	ex af,af'			;526f
	ld a,l			;5270
	neg		;5271
	add a,e			;5273
	ld e,a			;5274
	ld a,l			;5275
	add a,c			;5276
	ld c,a			;5277
	ld l,000h		;5278
	ex af,af'			;527a
	jp hmmm		;527b
con_hmmv:
	ex af,af'			;527e
	ld a,l			;527f
	add a,c			;5280
	jr z,L_5285		;5281
	jr c,L_5289		;5283
L_5285:
	ex af,af'			;5285
	jp hmmv		;5286
L_5289:
	ex af,af'			;5289
	push af			;528a
	push bc			;528b
	push de			;528c
	push hl			;528d
	ex af,af'			;528e
	ld a,l			;528f
	neg		;5290
	ld c,a			;5292
	ex af,af'			;5293
	call hmmv		;5294
	pop hl			;5297
	pop de			;5298
	pop bc			;5299
	pop af			;529a
	ex af,af'			;529b
	ld a,l			;529c
	neg		;529d
	ld a,l			;529f
	add a,c			;52a0
	ld c,a			;52a1
	ld l,000h		;52a2
	ex af,af'			;52a4
	jp hmmv		;52a5
pon_atributos_vram_2:
	call pon_sonido_callado		;52a8
	ld hl,0f600h		;52ab
	ld (0c132h),hl		;52ae   ; 0xC132: donde van los atributos de los sprites este cuadro (p00:4B4D)
	ld hl,0f400h		;52b1
	ld (0c134h),hl		;52b4   ; 0xC134: donde van los colores de los sprites este cuadro
	ld a,001h		;52b7
	ld (0c138h),a		;52b9   ; 0xC138: las paginas de origen y destino de las copias de dibujos (p00:502D)
	ret			;52bc
pon_sonido_callado:
	xor a			;52bd
	ld (0c0f7h),a		;52be   ; 0xC0F7: todo el sonido callado (p14:95C0)
	ld a,0bfh		;52c1
	ld (0c0f0h),a		;52c3   ; 0xC0F0: la copia del registro 7 del PSG (p00:52C1)
	ld e,a			;52c6
	ld a,007h		;52c7
	call 00093h		;52c9   ; BIOS WRTPSG - Writes data to PSG-register
	call apaga_los_sprites		;52cc
	ld a,00fh		;52cf
	ld (0f3ebh),a		;52d1
	ld a,005h		;52d4
	call 0005fh		;52d6   ; BIOS CHGMOD - Switches to given screen mode
	call pon_avance_3		;52d9
	xor a			;52dc
	ld h,a			;52dd
	ld l,0d8h		;52de
	ld b,a			;52e0
	ld c,028h		;52e1
	ld d,a			;52e3
	call hmmv		;52e4
	xor a			;52e7
	ld h,a			;52e8
	ld l,a			;52e9
	ld b,a			;52ea
	ld c,a			;52eb
	ld d,001h		;52ec
	call hmmv		;52ee
	call espera_al_vdp		;52f1
	ld b,004h		;52f4   ; 4 vueltas
	ld hl,0530ch		;52f6   ; p00:530C tabla_530C: tabla que lee p00:52F6 (8 bytes)
L_52F9:
	push bc			;52f9
	ld c,(hl)			;52fa
	inc hl			;52fb
	ld b,(hl)			;52fc
	inc hl			;52fd
	push hl			;52fe
	call 00047h		;52ff   ; BIOS WRTVDP - Writes data in the VDP-register
	pop hl			;5302
	pop bc			;5303
	djnz L_52F9		;5304
	call mira_atributos_de_sprites		;5306
	jp pon_avance_2		;5309

; ----------------------------------------------------------------------
; DATOS tabla_530C: tabla que lee p00:52F6 (8 bytes)
;   0x530c..0x5314  (8 bytes)
DATA_tabla_530C:
	defb 001h,062h,005h,0efh,006h,01fh,00bh,001h	; 530c  .b......

; ======================================================================
; CODIGO 0x5314..0x5382  (110 bytes)
; ======================================================================


rutina_9:
	call mira_f1_f3		;5314
	ret			;5317
mira_f1_f3:
	ld a,006h		;5318
	call 00141h		;531a   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;531d
	rlca			;531e
	rlca			;531f
	rlca			;5320
	and 007h		;5321
	ld hl,0c109h		;5323   ; 0xC109: F1, F2 y F3 que se tienen pulsadas
	call rutina_10		;5326
	ld a,007h		;5329
	call 00141h		;532b   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;532e
	ld c,a			;532f
	ld hl,0c125h		;5330   ; 0xC125: la fila 7 del teclado que se tiene pulsada
	xor (hl)			;5333
	and c			;5334
	ld (hl),c			;5335
	dec hl			;5336
	ld (hl),a			;5337
	call escribe_psg_2		;5338
L_533B:
	ld hl,0c107h		;533b   ; 0xC107: cursores, ESPACIO y los disparos que se tienen pulsados (p00:5345)
rutina_10:
	ld c,(hl)			;533e
	ld (hl),a			;533f
	xor c			;5340
	and (hl)			;5341
	dec hl			;5342
	ld (hl),a			;5343
	ret			;5344
escribe_psg_2:
	ld e,08fh		;5345
	ld a,00fh		;5347
	call 00093h		;5349   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,00eh		;534c
	di			;534e
	call 00096h		;534f   ; BIOS RDPSG - Reads value from PSG-register
	ei			;5352
	cpl			;5353
	and 03fh		;5354
	push af			;5356
	ld a,004h		;5357
	call 00141h		;5359   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;535c
	rlca			;535d
	rlca			;535e
	ld c,a			;535f
	rlca			;5360
	or c			;5361
	and 020h		;5362
	ld e,a			;5364
	ld a,008h		;5365
	call 00141h		;5367   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;536a
	rrca			;536b
	rrca			;536c
	ld b,a			;536d
	and 004h		;536e
	or e			;5370
	ld c,a			;5371
	ld a,b			;5372
	rrca			;5373
	rrca			;5374
	ld b,a			;5375
	and 018h		;5376
	or c			;5378
	ld c,a			;5379
	ld a,b			;537a
	rrca			;537b
	and 003h		;537c
	or c			;537e
	pop bc			;537f
	or b			;5380
	ret			;5381

; ----------------------------------------------------------------------
; DATOS tabla_5382: tabla que lee p00:4357, p00:448F, p00:5B16 (103 bytes)
;   0x5382..0x53e9  (103 bytes)
DATA_tabla_5382:
	defb 070h,000h,048h,049h,040h,0feh,008h,000h,053h,043h,04fh,052h,045h,040h,0feh,0d4h	; 5382  p.HI@...SCORE@..
	defb 000h,050h,040h,0feh,06ch,000h,053h,054h,041h,047h,045h,040h,0ffh,060h,038h,053h	; 5392  .P@.l.STAGE@.`8S
	defb 054h,041h,047h,045h,000h,000h,000h,0ffh,038h,0b0h,03ah,000h,04bh,04fh,04eh,041h	; 53a2  TAGE....8.:.KONA
	defb 04dh,049h,000h,031h,039h,038h,037h,0feh,008h,098h,050h,055h,053h,048h,000h,053h	; 53b2  MI.1987...PUSH.S
	defb 050h,041h,043h,045h,000h,04bh,045h,059h,0ffh,008h,098h,000h,000h,050h,04ch,041h	; 53c2  PACE.KEY.....PLA
	defb 059h,000h,053h,054h,041h,052h,054h,000h,000h,0ffh,058h,058h,047h,041h,04dh,045h	; 53d2  Y.START...XXGAME
	defb 000h,000h,04fh,056h,045h,052h,0ffh	; 53e2

; ======================================================================
; CODIGO 0x53e9..0x5526  (317 bytes)
; ======================================================================


mira_banco_6000:
	di			;53e9
	push hl			;53ea
	ld hl,0f0f1h		;53eb   ; 0xF0F1: copia de lo que hay en 0x6000 (p00:5408)
	ld a,001h		;53ee
	ld (06000h),a		;53f0
	ld (hl),a			;53f3
	inc a			;53f4
	ld (08000h),a		;53f5
	inc hl			;53f8
	ld (hl),a			;53f9
	ld a,(0c10ch)		;53fa   ; 0xC10C: el banco que p00:53E9 pone en 0xA000 con el 1 y el 2
	ld (0a000h),a		;53fd
	inc hl			;5400
	ld (hl),a			;5401
	pop hl			;5402
	ei			;5403
	ret			;5404
mira_banco_6000_2:
	di			;5405
	ld a,004h		;5406
mira_banco_6000_3:
	di			;5408
	push hl			;5409
	ld hl,0f0f1h		;540a   ; 0xF0F1: copia de lo que hay en 0x6000 (p00:5408)
	ld (06000h),a		;540d
	ld (hl),a			;5410
	inc l			;5411
	inc a			;5412
	ld (08000h),a		;5413
	ld (hl),a			;5416
	inc l			;5417
	inc a			;5418
	ld (0a000h),a		;5419
	ld (hl),a			;541c
	pop hl			;541d
	ei			;541e
	ret			;541f
pon_banco_a000:
	di			;5420
	ld a,001h		;5421
	jr mira_banco_6000_3		;5423
pon_banco_a000_2:
	di			;5425
	ld a,007h		;5426
	jr mira_banco_6000_3		;5428
pon_banco_a000_3:
	di			;542a
	ld a,00ah		;542b
	jr mira_banco_6000_3		;542d
pon_banco_a000_4:
	di			;542f
	ld a,00dh		;5430
	jr mira_banco_6000_3		;5432
pon_banco_a000_5:
	di			;5434
	ld (0f0f3h),a		;5435   ; 0xF0F3: copia de lo que hay en 0xA000
	ld (0a000h),a		;5438
	ei			;543b
	ret			;543c
L_543D:
	di			;543d
	ld (0f0f2h),a		;543e   ; 0xF0F2: copia de lo que hay en 0x8000
	ld (08000h),a		;5441
	ei			;5444
	ret			;5445
L_5446:
	ld de,0c500h		;5446   ; 0xC500: los colores de los dibujos de 1, 2 y 3 bits (p00:5446)
	ld b,004h		;5449
	jr z,L_5455		;544b
	cp 0feh		;544d
	ld b,002h		;544f
	jr z,L_5455		;5451
	ld b,001h		;5453
L_5455:
	ld a,(hl)			;5455
	ld c,a			;5456
	rrca			;5457
	rrca			;5458
	rrca			;5459
	rrca			;545a
	and 00fh		;545b
	ld (de),a			;545d
	inc hl			;545e
	inc de			;545f
	ld a,c			;5460
	and 00fh		;5461
	ld (de),a			;5463
	inc de			;5464
	djnz L_5455		;5465
	jr rutina_11		;5467
pon_base_de_la_hoja:
	add a,a			;5469
	add a,a			;546a
	add a,a			;546b
pon_base_de_la_hoja_2:
	add a,a			;546c
	add a,a			;546d
	ld (0c4b2h),a		;546e   ; 0xC4B2: el byte alto de la VRAM donde las listas suben los dibujos (p00:546E)
	jr rutina_11		;5471
pon_base_de_la_hoja_3:
	ld a,(0c483h)		;5473   ; 0xC483: la COLUMNA: 0-2 el camino, 3 la sala (p01:6543)
	cp 003h		;5476
	ld hl,0e050h		;5478   ; 0xE050: la tabla de 32x32 dibujos de la pantalla
	ld d,001h		;547b
	ld a,000h		;547d
	ld bc,02020h		;547f
	call nz,hmmv		;5482
	ld hl,063f9h		;5485
	ld a,036h		;5488
	call pon_base_de_la_hoja_2		;548a
	ld hl,06423h		;548d
	ld a,038h		;5490
	call pon_base_de_la_hoja_2		;5492
	ld hl,06430h		;5495
	ld a,(0c483h)		;5498   ; 0xC483: la COLUMNA: 0-2 el camino, 3 la sala (p01:6543)
	cp 003h		;549b
	ld a,02ah		;549d
	call nz,pon_base_de_la_hoja_2		;549f
	ld hl,061e9h		;54a2
	ld a,005h		;54a5
	call pon_base_de_la_hoja		;54a7
	ld a,080h		;54aa
	ld (0c4b2h),a		;54ac   ; 0xC4B2: el byte alto de la VRAM donde las listas suben los dibujos (p00:546E)
	ld hl,06271h		;54af
	ld a,(0c482h)		;54b2   ; 0xC482: el juego de dibujos, 0-7 (p01:65BB)
	cp 006h		;54b5
	call c,rutina_11		;54b7
	call mira_banco_6000_2		;54ba
	ld a,(0c482h)		;54bd   ; 0xC482: el juego de dibujos, 0-7 (p01:65BB)
	ld hl,06000h		;54c0   ; p04:6000 listas_de_cada_juego: las listas de dibujos de cada juego (0xC482 = 0..7), una palabra cada una
	call con_hl_mas_a		;54c3
rutina_11:
	call mira_base_de_la_hoja		;54c6
	jp mira_banco_6000		;54c9
mira_base_de_la_hoja:
	call mira_banco_6000_2		;54cc
	ld a,(hl)			;54cf
	ld b,a			;54d0
	ld c,a			;54d1
	inc hl			;54d2
	or a			;54d3
	ret z			;54d4
	cp 0fdh		;54d5
	jp nc,L_5446		;54d7
	ld e,(hl)			;54da
	ld d,0c9h		;54db
	inc hl			;54dd
	ld a,(hl)			;54de
	push de			;54df
L_54E0:
	ld (de),a			;54e0
	inc de			;54e1
	dec c			;54e2
	jr nz,L_54E0		;54e3
	pop de			;54e5
	inc hl			;54e6
	ld d,e			;54e7
	ld a,e			;54e8
	and 01fh		;54e9
	add a,a			;54eb
	add a,a			;54ec
	ld e,a			;54ed
	ld a,d			;54ee
	and 0e0h		;54ef
	rrca			;54f1
	rrca			;54f2
	rrca			;54f3
	ld d,a			;54f4
	ld a,(0c4b2h)		;54f5   ; 0xC4B2: el byte alto de la VRAM donde las listas suben los dibujos (p00:546E)
	add a,d			;54f8
	ld d,a			;54f9
	push hl			;54fa
	push de			;54fb
	ld e,(hl)			;54fc
	inc hl			;54fd
	ld d,(hl)			;54fe
	inc hl			;54ff
	ld a,(hl)			;5500
	inc hl			;5501
	ex de,hl			;5502
	pop de			;5503
	call con_despacha		;5504
	pop hl			;5507
	inc hl			;5508
	inc hl			;5509
	inc hl			;550a
	jr mira_base_de_la_hoja		;550b
con_despacha:
	ld c,a			;550d
	and 00fh		;550e
	exx			;5510
	call mira_banco_6000_3		;5511
	exx			;5514
	ld a,c			;5515
	rlca			;5516
	rlca			;5517
	rlca			;5518
	and 007h		;5519
	exx			;551b
	ld hl,mira_banco_6000_2		;551c
	push hl			;551f
	cp 008h		;5520
	ret nc			;5522
	call despacha		;5523

; ----------------------------------------------------------------------
; DATOS tabla_5526: 8 destinos del despachador de 0x40AE (call en p00:5523):
;   0x5536, 0x553A, 0x553E, 0x5545, 0x554C, 0x5553, 0x555A, 0x5561; lo leen
;   p00:5523 (16 bytes)
;   0x5526..0x5536  (16 bytes)
DATA_tabla_5526:
	defb 036h,055h	; 5526
	defb 03ah,055h	; 5528
	defb 03eh,055h	; 552a
	defb 045h,055h	; 552c
	defb 04ch,055h	; 552e
	defb 053h,055h	; 5530
	defb 05ah,055h	; 5532
	defb 061h,055h	; 5534

; ======================================================================
; CODIGO 0x5536..0x5568  (50 bytes)
; ======================================================================


L_5536:
	exx			;5536
	jp sube_dibujos		;5537
L_553A:
	exx			;553a
	jp L_4C12		;553b
L_553E:
	exx			;553e
	call rutina_12		;553f
	jp L_509F		;5542
L_5545:
	exx			;5545
	call rutina_12		;5546
	jp L_50B5		;5549
L_554C:
	exx			;554c
	call rutina_12		;554d
	jp L_50F8		;5550
L_5553:
	exx			;5553
	call rutina_12		;5554
	jp L_510E		;5557
L_555A:
	exx			;555a
	call rutina_12		;555b
	jp L_5159		;555e
L_5561:
	exx			;5561
	call rutina_12		;5562
	jp L_516F		;5565

; ----------------------------------------------------------------------
; DATOS sin_lector_5568: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (17 bytes)
;   0x5568..0x5579  (17 bytes)
DATA_sin_lector_5568:
	defb 0d9h,0ebh,0e5h,0d5h,0c5h,001h,008h,008h,0cdh,026h,052h,0c1h,0d1h,0e1h,010h,0f2h	; 5568  .........&R.....
	defb 0c9h	; 5578

; ======================================================================
; CODIGO 0x5579..0x56d8  (351 bytes)
; ======================================================================


rutina_12:
	ld a,b			;5579
	cp 040h		;557a
	jr c,L_5580		;557c
	ld a,040h		;557e
L_5580:
	ld b,a			;5580
	ret			;5581
rutina_13:
	ld a,032h		;5582
	ld hl,063a3h		;5584
	jp pon_base_de_la_hoja_2		;5587
L_558A:
	ld hl,0638ah		;558a
	ld a,004h		;558d
	jp pon_base_de_la_hoja		;558f
L_5592:
	ld a,004h		;5592
	ld hl,06371h		;5594
	jp pon_base_de_la_hoja		;5597
L_559A:
	ld a,004h		;559a
	ld hl,0632ch		;559c
	jp pon_base_de_la_hoja		;559f
mira_juego_de_dibujos:
	call mira_banco_6000_2		;55a2
	ld hl,09d58h		;55a5   ; p05:9D58 paleta_comun: la paleta comun a todas las fases: [color][RB][G] ... 0xFF (p00:4D3F)
	call pon_paleta		;55a8
	ld a,(0c482h)		;55ab   ; 0xC482: el juego de dibujos, 0-7 (p01:65BB)
	ld hl,09d77h		;55ae   ; p05:9D77 paletas_de_cada_juego: la paleta de cada juego de dibujos (0xC482), una palabra
	call con_hl_mas_a		;55b1
	call pon_paleta		;55b4
	ld a,(0c480h)		;55b7   ; 0xC480: el AREA (0-23): 3*(fase-1) + columna, o 18 + fase - 1 (p01:64D5)
	ld hl,09e2ch		;55ba   ; p05:9E2C paletas_de_cada_area: la paleta de cada area (0xC480), una palabra
	call con_hl_mas_a		;55bd
	call pon_paleta		;55c0
	jp mira_banco_6000		;55c3
L_55C6:
	push hl			;55c6
	call mira_banco_6000_2		;55c7
	pop hl			;55ca
	call pon_paleta		;55cb
	jp mira_banco_6000		;55ce
L_55D1:
	ld hl,00000h		;55d1
	ld d,001h		;55d4
	ld bc,00808h		;55d6
	call hmmv		;55d9
con_sube_una_letra:
	call pon_banco_a000_4		;55dc
	ld de,00000h		;55df
	ld c,000h		;55e2
	ld hl,06158h		;55e4   ; p13:6158 letras_6158: 1 letras de 8x8 a 1 bit (8 bytes cada una) que p00:55E7 sube a la hoja (p00:4EE0)
	call sube_una_letra		;55e7
	ld de,00070h		;55ea
	ld hl,06000h		;55ed   ; p13:6000 letras_6000: 43 letras de 8x8 a 1 bit (8 bytes cada una) que p00:55F3 sube a la hoja (p00:4ED7)
	ld bc,02b0ch		;55f0
	call sube_letras		;55f3
	jp mira_banco_6000		;55f6
con_copia_a_la_vram_2:
	call pon_banco_a000_4		;55f9
	ld hl,06000h		;55fc   ; p13:6000 letras_6000: 43 letras de 8x8 a 1 bit (8 bytes cada una) que p00:55F3 sube a la hoja (p00:4ED7)
	ld de,0f800h		;55ff
	ld b,010h		;5602
L_5604:
	push bc			;5604
	push de			;5605
	ld hl,06000h		;5606   ; p13:6000 letras_6000: 43 letras de 8x8 a 1 bit (8 bytes cada una) que p00:55F3 sube a la hoja (p00:4ED7)
	ld bc,00050h		;5609
	push de			;560c
	call copia_a_la_vram		;560d
	pop hl			;5610
	ld bc,00050h		;5611
	add hl,bc			;5614
	ex de,hl			;5615
	ld hl,06088h		;5616
	ld bc,00030h		;5619
	call copia_a_la_vram		;561c
	pop hl			;561f
	ld bc,00080h		;5620
	add hl,bc			;5623
	ex de,hl			;5624
	pop bc			;5625
	djnz L_5604		;5626
	jp mira_banco_6000		;5628
con_sube_letras:
	call pon_banco_a000_4		;562b
	ld de,08078h		;562e
	ld hl,061b8h		;5631   ; p13:61B8 letras_61B8: 54 letras de 8x8 a 1 bit (8 bytes cada una) que p00:5637 sube a la hoja (p00:4ED7)
	ld bc,0360ch		;5634
	call sube_letras		;5637
	jp mira_banco_6000		;563a
rutina_14:
	ret			;563d
L_563E:
	call pon_banco_a000_2		;563e
	call con_rle_a_la_vram		;5641
	jp mira_banco_6000		;5644
mira_area:
	call pon_banco_a000_2		;5647
	ld hl,06030h		;564a   ; p07:6030 lista_vram_6030: lista de p00:4AB0: 0 [rle][vram]; 1 [vram][n][vram]: n dibujos de la VRAM girados; 2+ [fuente][n][vram]: n byt
	call con_rle_a_la_vram		;564d
	call mira_banco_6000		;5650
	ld hl,0cf00h		;5653   ; 0xCF00: que cosa hay en cada sitio de los patrones (p00:56A2)
	ld bc,000ffh		;5656
	call copia_bytes		;5659
	call pon_banco_a000_2		;565c
	ld a,(0c480h)		;565f   ; 0xC480: el AREA (0-23): 3*(fase-1) + columna, o 18 + fase - 1 (p01:64D5)
	ld hl,06000h		;5662   ; p07:6000 sprites_de_cada_area: la lista de patrones de sprite de cada area (0xC480), una palabra
	call con_hl_mas_a		;5665
	call rutina_15		;5668
	jp mira_banco_6000		;566b
mira_nivel_c840:
	call pon_banco_a000_2		;566e
	ld a,(0c840h)		;5671   ; 0xC840: elige los 32 bytes de p07:70AE que van a los patrones de 0xF8A0 (p00:5671) y el sumando de la dificultad (p01:704D); 6 es especial (p02:8F4F)
	ld hl,070aeh		;5674   ; p07:70AE patrones_f8a0: 7 palabras, por 0xC840: los 32 bytes que p00:566E sube a la VRAM 0xF8A0 (un patron de sprite de 16x16)
	call con_hl_mas_a		;5677
	ld de,0f8a0h		;567a
	ld bc,00020h		;567d
	call copia_a_la_vram		;5680
	jp mira_banco_6000		;5683
rutina_15:
	ld a,(hl)			;5686
	cp 0ffh		;5687
	ret z			;5689
	inc hl			;568a
	ld b,(hl)			;568b
	inc hl			;568c
	push hl			;568d
	call rutina_16		;568e
	pop hl			;5691
	jr rutina_15		;5692
rutina_16:
	ld l,a			;5694
	ld h,000h		;5695
	add hl,hl			;5697
	ld d,h			;5698
	ld e,l			;5699
	add hl,hl			;569a
	add hl,de			;569b
	ld de,06173h		;569c   ; p07:6173 cosas_con_sprite: 41 cosas: [ficha 0xCF00+][tipo 0 = RLE, 1 = nada, 2+ = tal cual][fuente][bytes] (p00:5694); las listas de las
	add hl,de			;569f
	ld e,(hl)			;56a0
	inc hl			;56a1
	ld d,0cfh		;56a2
	ld a,b			;56a4
	ld (de),a			;56a5
	push hl			;56a6
	ld l,a			;56a7
	ld h,000h		;56a8
	add hl,hl			;56aa
	add hl,hl			;56ab
	add hl,hl			;56ac
	ld de,0f800h		;56ad
	add hl,de			;56b0
	push hl			;56b1   ; la ficha es la de HL
	pop ix		;56b2
	pop hl			;56b4
	ld a,(hl)			;56b5
	inc hl			;56b6
	inc a			;56b7
	ret z			;56b8
	dec a			;56b9
	or a			;56ba
	jr z,L_56C1		;56bb
	dec a			;56bd
	ret z			;56be
	jr L_56CA		;56bf
L_56C1:
	ld e,(hl)			;56c1
	inc hl			;56c2
	ld d,(hl)			;56c3
	push ix		;56c4   ; HL = la ficha
	pop hl			;56c6
	jp rle_a_la_vram		;56c7
L_56CA:
	ld e,(hl)			;56ca
	inc hl			;56cb
	ld d,(hl)			;56cc
	inc hl			;56cd
	ld c,(hl)			;56ce
	inc hl			;56cf
	ld b,(hl)			;56d0
	ex de,hl			;56d1
	push ix		;56d2
	pop de			;56d4
	jp copia_a_la_vram		;56d5

; ----------------------------------------------------------------------
; DATOS sin_lector_56D8: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (17 bytes)
;   0x56d8..0x56e9  (17 bytes)
DATA_sin_lector_56D8:
	defb 02ah,084h,0c3h,07ch,0edh,05bh,082h,0c3h,019h,022h,084h,0c3h,094h,032h,088h,0c3h	; 56d8  *..|.[..."...2..
	defb 0c9h	; 56e8

; ======================================================================
; CODIGO 0x56e9..0x5740  (87 bytes)
; ======================================================================


L_56E9:
	xor a			;56e9
	ld (0c388h),a		;56ea   ; 0xC388: lo que se ha movido el mapa este cuadro (p00:56E8)
	ret			;56ed
pon_sonido_0f1:
	ld hl,0c880h		;56ee   ; 0xC880: el OBJETO 13 (byte 0 de 4; p06:BAC2)
	ld a,(hl)			;56f1
	or a			;56f2
	jr z,L_5700		;56f3
	dec (hl)			;56f5
	ld a,001h		;56f6
	jr nz,L_56FD		;56f8
	ld (0c0f1h),a		;56fa   ; 0xC0F1: lo pone p00:4588 al volver de la pausa: 1 si no sonaba la musica de pausa
L_56FD:
	ld (0c204h),a		;56fd   ; 0xC204: el logotipo y el titulo (p01:66D4)
L_5700:
	ld a,(0c204h)		;5700   ; 0xC204: el logotipo y el titulo (p01:66D4)
	or a			;5703
	jr nz,L_56E9		;5704
	call pon_banco_a000_3		;5706
	call pon_avance_6		;5709
	jp mira_banco_6000		;570c
pon_avance_6:
	xor a			;570f
	ld (0d404h),a		;5710   ; 0xD404: lo que controla la salida de bichos
	ld a,(0c38ch)		;5713
	rra			;5716
	ret c			;5717
	ld hl,(0c384h)		;5718   ; 0xC384: lo que ha avanzado el mapa, 8.8 (p00:56D8)
	ld a,h			;571b
	ld de,(0c382h)		;571c   ; 0xC382: lo que se suma a 0xC384 cada cuadro (p00:56D8)
	add hl,de			;5720
	ld (0c384h),hl		;5721   ; 0xC384: lo que ha avanzado el mapa, 8.8 (p00:56D8)
	sub h			;5724
	ld (0c388h),a		;5725   ; 0xC388: lo que se ha movido el mapa este cuadro (p00:56E8)
	ld a,h			;5728
	and 007h		;5729
	ld hl,0c381h		;572b
	cp (hl)			;572e
	ld (hl),a			;572f
	jr z,L_573A		;5730
	cp 007h		;5732
	jr nz,L_573A		;5734
	xor a			;5736
	ld (0c380h),a		;5737   ; 0xC380: el paso del avance del mapa (p00:573A)
L_573A:
	ld a,(0c380h)		;573a   ; 0xC380: el paso del avance del mapa (p00:573A)
	call despacha		;573d

; ----------------------------------------------------------------------
; DATOS tabla_5740: 9 destinos del despachador de 0x40AE (call en p00:573D):
;   0x5752, 0x576F, 0x577B, 0x5783, 0x578B, 0x5793, 0x579B, 0x57A3 ...; lo
;   leen p00:573D (18 bytes)
;   0x5740..0x5752  (18 bytes)
DATA_tabla_5740:
	defb 052h,057h	; 5740
	defb 06fh,057h	; 5742
	defb 07bh,057h	; 5744
	defb 083h,057h	; 5746
	defb 08bh,057h	; 5748
	defb 093h,057h	; 574a
	defb 09bh,057h	; 574c
	defb 0a3h,057h	; 574e
	defb 0adh,057h	; 5750

; ======================================================================
; CODIGO 0x5752..0x5847  (245 bytes)
; ======================================================================


L_5752:
	call pon_fila_de_bloque		;5752
	ld hl,(0c30ch)		;5755   ; 0xC30C: la fila de 0xE000 donde va la siguiente (p00:59C7)
	ld de,0ffe0h		;5758
	add hl,de			;575b
	ld a,h			;575c
	and 003h		;575d
	or 0e0h		;575f
	ld h,a			;5761
	ld (0c30ch),hl		;5762   ; 0xC30C: la fila de 0xE000 donde va la siguiente (p00:59C7)
	call pon_fila		;5765
	ld a,001h		;5768
	ld (0c389h),a		;576a   ; 0xC389: 1: el mapa avanza (p01:6CA2); p00:57CE lo pone a 0 con la orden 0xFC
	jr L_57AE		;576d
L_576F:
	ld de,00000h		;576f
	call mira_fila_del_buffer		;5772
	xor a			;5775
	ld (0c389h),a		;5776   ; 0xC389: 1: el mapa avanza (p01:6CA2); p00:57CE lo pone a 0 con la orden 0xFC
	jr L_57AE		;5779
L_577B:
	ld de,02805h		;577b
	call mira_fila_del_buffer		;577e
	jr L_57AE		;5781
L_5783:
	ld de,0500ah		;5783
	call mira_fila_del_buffer		;5786
	jr L_57AE		;5789
L_578B:
	ld de,0780fh		;578b
	call mira_fila_del_buffer		;578e
	jr L_57AE		;5791
L_5793:
	ld de,0a014h		;5793
	call mira_fila_del_buffer		;5796
	jr L_57AE		;5799
L_579B:
	ld de,0c819h		;579b   ; 0xC819: la ficha de Gao
	call mira_fila_del_buffer		;579e
	jr L_57AE		;57a1
L_57A3:
	ld de,0f01eh		;57a3
	ld b,002h		;57a6
	call mira_fila_del_buffer_2		;57a8
	jr L_57AE		;57ab
L_57AD:
	ret			;57ad
L_57AE:
	ld hl,0c380h		;57ae   ; 0xC380: el paso del avance del mapa (p00:573A)
	inc (hl)			;57b1
	ret			;57b2
L_57B3:
	ld hl,(0c302h)		;57b3   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	jr L_57BF		;57b6
pon_fila:
	ld hl,(0c302h)		;57b8   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	inc hl			;57bb
	ld (0c302h),hl		;57bc   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
L_57BF:
	call mira_fila		;57bf
	ld a,(hl)			;57c2
	inc a			;57c3
	jr z,L_580E		;57c4
	inc a			;57c6
	jr z,L_57FC		;57c7
	inc a			;57c9
	jr z,L_57D7		;57ca
	inc a			;57cc
	ret nz			;57cd
	xor a			;57ce
	ld (0c389h),a		;57cf   ; 0xC389: 1: el mapa avanza (p01:6CA2); p00:57CE lo pone a 0 con la orden 0xFC
	inc a			;57d2
	ld (0c581h),a		;57d3   ; 0xC581: variables del avance del mapa
	ret			;57d6
L_57D7:
	push hl			;57d7
	call mira_fase		;57d8
	pop hl			;57db
	jr nz,L_580E		;57dc
	ld a,001h		;57de
	ld (0d404h),a		;57e0   ; 0xD404: lo que controla la salida de bichos
	ld hl,0d402h		;57e3   ; 0xD402: lo que controla la salida de bichos
	ld (hl),000h		;57e6
	ld hl,(0c302h)		;57e8   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	dec hl			;57eb
	ld (0c390h),hl		;57ec   ; 0xC390: la fila del mapa que lleva la puerta (p00:57EC)
L_57EF:
	ld a,00ch		;57ef
	ld hl,(0c302h)		;57f1   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	call hl_mas_a		;57f4
	ld (0c302h),hl		;57f7   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	jr L_57B3		;57fa
L_57FC:
	push hl			;57fc
	call mira_fase		;57fd
	pop hl			;5800
	jr nz,L_5806		;5801
	jp L_580E		;5803
L_5806:
	ld hl,00000h		;5806
	ld (0c390h),hl		;5809   ; 0xC390: la fila del mapa que lleva la puerta (p00:57EC)
	jr L_57EF		;580c
L_580E:
	inc hl			;580e
	ld a,(hl)			;580f
	inc hl			;5810
	ld h,(hl)			;5811
	ld l,a			;5812
	ld (0c302h),hl		;5813   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	call mira_control_de_bichos		;5816
	jr L_57B3		;5819
mira_control_de_bichos:
	xor a			;581b
	ld hl,0d412h		;581c   ; 0xD412: lo que controla la salida de bichos
	ld (hl),a			;581f
	ld hl,0cb00h		;5820   ; 0xCB00: las cosas del camino que se van poniendo (p01:72ED)
	ld (hl),a			;5823
	ret			;5824
mira_fila:
	ld hl,(0c302h)		;5825   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	srl h		;5828
	rr l		;582a
	srl h		;582c
	rr l		;582e
	ld de,(0c300h)		;5830   ; 0xC300: el MAPA del area (p00:5909)
	add hl,de			;5834
	ret			;5835
mira_fase:
	ld a,(0c481h)		;5836   ; 0xC481: la FASE, 1-6 (p01:65B4)
	dec a			;5839
	and 007h		;583a
	ld hl,05847h		;583c   ; p00:5847 tabla_5847: tabla que lee p00:583C (15 bytes)
	call hl_mas_a		;583f
	ld a,(0d407h)		;5842   ; 0xD407: lo que controla la salida de bichos
	and (hl)			;5845
	ret			;5846

; ----------------------------------------------------------------------
; DATOS tabla_5847: tabla que lee p00:583C (15 bytes)
;   0x5847..0x5856  (15 bytes)
DATA_tabla_5847:
	defb 001h,002h,004h,008h,010h,020h,040h,080h,011h,000h,000h,006h,020h,018h,002h	; 5847  ..... @..... ..

; ======================================================================
; CODIGO 0x5856..0x593b  (229 bytes)
; ======================================================================


mira_fila_del_buffer:
	ld b,005h		;5856
mira_fila_del_buffer_2:
	push de			;5858
	ld d,000h		;5859
	ld hl,(0c30ch)		;585b   ; 0xC30C: la fila de 0xE000 donde va la siguiente (p00:59C7)
	add hl,de			;585e
	ld de,00020h		;585f
	add hl,de			;5862
	res 2,h		;5863
	pop de			;5865
	ld a,(0c385h)		;5866   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
	sub 020h		;5869
	and 0f8h		;586b
	ld e,a			;586d
L_586E:
	ld a,(hl)			;586e
	call mira_dibujos_d0		;586f
	inc hl			;5872
	call rutina_8		;5873
	djnz L_586E		;5876
	ret			;5878
mira_dibujos_d0:
	push hl			;5879
	ld hl,0c392h		;587a   ; 0xC392: bit 0: los dibujos 0xD0 en adelante se copian con p00:505B (p00:587A)
	bit 0,(hl)		;587d
	pop hl			;587f
	jp z,L_5024		;5880
	cp 0d0h		;5883
	jr nc,L_588A		;5885
	jp L_5024		;5887
L_588A:
	ex af,af'			;588a
	ld a,d			;588b
	and 01fh		;588c
	ret nz			;588e
	ex af,af'			;588f
	jp copia_8x8_en_la_hoja		;5890
rutina_17:
	call pon_banco_a000_3		;5893
	call pon_fila_del_buffer		;5896
	call pon_paginas_hmmm		;5899
	jp mira_banco_6000		;589c
pon_paginas_hmmm:
	ld a,001h		;589f
	ld (0c138h),a		;58a1   ; 0xC138: las paginas de origen y destino de las copias de dibujos (p00:502D)
	ld hl,0e000h		;58a4   ; 0xE000: la tabla de 32x32 dibujos de la pantalla (p00:58A4)
	ld bc,02020h		;58a7
	ld de,00000h		;58aa
L_58AD:
	push bc			;58ad
	push de			;58ae
L_58AF:
	ld a,(hl)			;58af
	inc hl			;58b0
	call mira_dibujos_d0		;58b1
	call rutina_8		;58b4
	djnz L_58AF		;58b7
	pop de			;58b9
	ld a,e			;58ba
	add a,008h		;58bb
	ld e,a			;58bd
	pop bc			;58be
	dec c			;58bf
	jr nz,L_58AD		;58c0
	ret			;58c2
bucle_7:
	push bc			;58c3
	push de			;58c4
L_58C5:
	ld a,(hl)			;58c5
	or a			;58c6
	inc hl			;58c7
	jr z,L_58CD		;58c8
	call mira_dibujos_d0		;58ca
L_58CD:
	call rutina_8		;58cd
	djnz L_58C5		;58d0
	pop de			;58d2
	ld a,e			;58d3
	add a,008h		;58d4
	ld e,a			;58d6
	pop bc			;58d7
	dec c			;58d8
	jr nz,bucle_7		;58d9
	ret			;58db
L_58DC:
	ld hl,0ea00h		;58dc   ; 0xEA00: buffers de pantallas y dibujos
	ld bc,02020h		;58df
	ld de,00000h		;58e2
bucle_8:
	push bc			;58e5
	push de			;58e6
L_58E7:
	ld a,(hl)			;58e7
	inc hl			;58e8
	or a			;58e9
	jr z,L_58F1		;58ea
	push de			;58ec
	call mira_scroll_2		;58ed
	pop de			;58f0
L_58F1:
	call rutina_8		;58f1
	djnz L_58E7		;58f4
	pop de			;58f6
	ld a,e			;58f7
	add a,008h		;58f8
	ld e,a			;58fa
	pop bc			;58fb
	dec c			;58fc
	jr nz,bucle_8		;58fd
	ret			;58ff
pon_mapa:
	ld hl,0597bh		;5900   ; p00:597B mapa_de_cada_area: el mapa de cada area (0xC480): una superfila por cada 32 puntos
	ld a,(0c480h)		;5903   ; 0xC480: el AREA (0-23): 3*(fase-1) + columna, o 18 + fase - 1 (p01:64D5)
	call con_hl_mas_a		;5906
	ld (0c300h),hl		;5909   ; 0xC300: el MAPA del area (p00:5909)
	ld hl,0594bh		;590c   ; p00:594B superfilas_de_cada_area: donde empiezan las superfilas (8 bloques) de cada area (0xC480)
	ld a,(0c480h)		;590f   ; 0xC480: el AREA (0-23): 3*(fase-1) + columna, o 18 + fase - 1 (p01:64D5)
	call con_hl_mas_a		;5912
	ld (0c306h),hl		;5915   ; 0xC306: las superfilas del area (p00:5915)
	ld hl,0593bh		;5918   ; p00:593B bloques_de_cada_juego: donde empiezan los bloques de 4x4 dibujos de cada juego (0xC482)
	ld a,(0c482h)		;591b   ; 0xC482: el juego de dibujos, 0-7 (p01:65BB)
	call con_hl_mas_a		;591e
	ld (0c304h),hl		;5921   ; 0xC304: los bloques de 4x4 dibujos del juego (p00:5921)
	ld hl,(0c487h)		;5924   ; 0xC487: la fila del mapa con que se entra (p00:5924)
	ld (0c302h),hl		;5927   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	ld hl,00000h		;592a
	ld (0c487h),hl		;592d   ; 0xC487: la fila del mapa con que se entra (p00:5924)
	ld (0c384h),hl		;5930   ; 0xC384: lo que ha avanzado el mapa, 8.8 (p00:56D8)
	xor a			;5933
	ld (0c380h),a		;5934   ; 0xC380: el paso del avance del mapa (p00:573A)
	ld (0c581h),a		;5937   ; 0xC581: variables del avance del mapa
	ret			;593a

; ----------------------------------------------------------------------
; DATOS bloques_de_cada_juego: donde empiezan los bloques de 4x4 dibujos de
;   cada juego (0xC482); lo leen p00:5918 (16 bytes)
;   0x593b..0x594b  (16 bytes)
DATA_bloques_de_cada_juego:
	defb 000h,060h	; 593b
	defb 0b0h,067h	; 593d
	defb 0e0h,06ch	; 593f
	defb 0b0h,070h	; 5941
	defb 060h,075h	; 5943
	defb 0c0h,07bh	; 5945
	defb 0b0h,07eh	; 5947
	defb 0b0h,07eh	; 5949

; ----------------------------------------------------------------------
; DATOS superfilas_de_cada_area: donde empiezan las superfilas (8 bloques) de
;   cada area (0xC480); lo leen p00:590C (48 bytes)
;   0x594b..0x597b  (48 bytes)
DATA_superfilas_de_cada_area:
	defb 0c0h,07fh	; 594b
	defb 040h,081h	; 594d
	defb 0c0h,082h	; 594f
	defb 040h,084h	; 5951
	defb 0c0h,085h	; 5953
	defb 040h,087h	; 5955
	defb 0c0h,088h	; 5957
	defb 040h,08ah	; 5959
	defb 0c0h,08bh	; 595b
	defb 040h,08dh	; 595d
	defb 0c0h,08eh	; 595f
	defb 040h,090h	; 5961
	defb 0c0h,091h	; 5963
	defb 040h,093h	; 5965
	defb 0c0h,094h	; 5967
	defb 040h,096h	; 5969
	defb 0c0h,097h	; 596b
	defb 040h,099h	; 596d
	defb 0c0h,09ah	; 596f
	defb 0c0h,09ah	; 5971
	defb 0c0h,09ah	; 5973
	defb 0c0h,09ah	; 5975
	defb 0c0h,09ah	; 5977
	defb 0c0h,09ah	; 5979

; ----------------------------------------------------------------------
; DATOS mapa_de_cada_area: el mapa de cada area (0xC480): una superfila por
;   cada 32 puntos; lo leen p00:5900 (48 bytes)
;   0x597b..0x59ab  (48 bytes)
DATA_mapa_de_cada_area:
	defb 02ch,0a4h	; 597b
	defb 02ch,0a4h	; 597d
	defb 02ch,0a4h	; 597f
	defb 02ch,0a4h	; 5981
	defb 02ch,0a4h	; 5983
	defb 02ch,0a4h	; 5985
	defb 02ch,0a4h	; 5987
	defb 02ch,0a4h	; 5989
	defb 02ch,0a4h	; 598b
	defb 02ch,0a4h	; 598d
	defb 02ch,0a4h	; 598f
	defb 02ch,0a4h	; 5991
	defb 02ch,0a4h	; 5993
	defb 02ch,0a4h	; 5995
	defb 02ch,0a4h	; 5997
	defb 02ch,0a4h	; 5999
	defb 02ch,0a4h	; 599b
	defb 02ch,0a4h	; 599d
	defb 05fh,0a4h	; 599f
	defb 05fh,0a4h	; 59a1
	defb 06bh,0a4h	; 59a3
	defb 05fh,0a4h	; 59a5
	defb 06bh,0a4h	; 59a7
	defb 05fh,0a4h	; 59a9

; ----------------------------------------------------------------------
; DATOS sin_lector_59AB: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (2 bytes)
;   0x59ab..0x59ad  (2 bytes)
DATA_sin_lector_59AB:
	defb 02ch,0a4h	; 59ab

; ======================================================================
; CODIGO 0x59ad..0x5add  (304 bytes)
; ======================================================================


pon_fila_del_buffer:
	ld hl,0e360h		;59ad   ; 0xE360: la tabla de 32x32 dibujos de la pantalla
	ld (0c30ch),hl		;59b0   ; 0xC30C: la fila de 0xE000 donde va la siguiente (p00:59C7)
	ld hl,(0c302h)		;59b3   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	ld b,020h		;59b6
	call pon_fila_del_buffer_2		;59b8
	ld hl,0e360h		;59bb   ; 0xE360: la tabla de 32x32 dibujos de la pantalla
	ld (0c30ch),hl		;59be   ; 0xC30C: la fila de 0xE000 donde va la siguiente (p00:59C7)
	ret			;59c1
pon_fila_del_buffer_2:
	push hl			;59c2
	push bc			;59c3
	call pon_fila_de_bloque_2		;59c4
	ld hl,(0c30ch)		;59c7   ; 0xC30C: la fila de 0xE000 donde va la siguiente (p00:59C7)
	ld de,00020h		;59ca
	add hl,de			;59cd
	res 2,h		;59ce
	ld (0c30ch),hl		;59d0   ; 0xC30C: la fila de 0xE000 donde va la siguiente (p00:59C7)
	pop bc			;59d3
	pop hl			;59d4
	dec hl			;59d5
	djnz pon_fila_del_buffer_2		;59d6
	ret			;59d8
L_59D9:
	ld hl,(0c302h)		;59d9   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
	inc hl			;59dc
	inc hl			;59dd
	inc hl			;59de
	ld (0c302h),hl		;59df   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
pon_fila_de_bloque:
	ld hl,(0c302h)		;59e2   ; 0xC302: la FILA de 8 puntos del mapa que se esta pintando; sube al avanzar (p00:57B8)
pon_fila_de_bloque_2:
	ld c,l			;59e5
	sra h		;59e6
	rr l		;59e8
	sra h		;59ea
	rr l		;59ec
	ld de,(0c300h)		;59ee   ; 0xC300: el MAPA del area (p00:5909)
	add hl,de			;59f2
	ld a,(hl)			;59f3
	cp 0e0h		;59f4
	jr nc,L_59D9		;59f6
	ld l,a			;59f8
	ld h,000h		;59f9
	add hl,hl			;59fb
	add hl,hl			;59fc
	add hl,hl			;59fd
	ld de,(0c306h)		;59fe   ; 0xC306: las superfilas del area (p00:5915)
	add hl,de			;5a02
	ld a,c			;5a03
	and 003h		;5a04
	xor 003h		;5a06
	add a,a			;5a08
	add a,a			;5a09
	exx			;5a0a
	ld l,a			;5a0b
	ld h,000h		;5a0c
	ld de,(0c304h)		;5a0e   ; 0xC304: los bloques de 4x4 dibujos del juego (p00:5921)
	add hl,de			;5a12
	ld (0c308h),hl		;5a13   ; 0xC308: la fila de dibujos del bloque que se copia (p00:5A13)
	ld de,(0c30ch)		;5a16   ; 0xC30C: la fila de 0xE000 donde va la siguiente (p00:59C7)
	jp L_5A1D		;5a1a
L_5A1D:
	exx			;5a1d
	ld b,008h		;5a1e
L_5A20:
	ld a,(hl)			;5a20
	inc hl			;5a21
	exx			;5a22
	ld h,000h		;5a23
	ld l,a			;5a25
	add hl,hl			;5a26
	add hl,hl			;5a27
	add hl,hl			;5a28
	add hl,hl			;5a29
	ld bc,(0c308h)		;5a2a   ; 0xC308: la fila de dibujos del bloque que se copia (p00:5A13)
	add hl,bc			;5a2e
	ldi		;5a2f
	ldi		;5a31
	ldi		;5a33
	ldi		;5a35
	exx			;5a37
	djnz L_5A20		;5a38
	ret			;5a3a
L_5A3B:
	call pon_avance_3		;5a3b
	call pon_scroll		;5a3e
	call rutina_19		;5a41
	call espera_al_vdp		;5a44
	call con_pon_un_color		;5a47
	jp pon_avance_2		;5a4a
con_pon_un_color:
	ld hl,05be9h		;5a4d   ; p00:5BE9 tabla_5BE9: tabla que lee p00:5A4D, p00:5B1F (79 bytes)
	ld b,010h		;5a50   ; 16 vueltas
	ld c,000h		;5a52
L_5A54:
	ld d,(hl)			;5a54
	inc hl			;5a55
	ld e,(hl)			;5a56
	inc hl			;5a57
	ld a,c			;5a58
	inc c			;5a59
	call pon_un_color		;5a5a
	djnz L_5A54		;5a5d
	ret			;5a5f
pon_scroll:
	xor a			;5a60
	ld (0c385h),a		;5a61   ; 0xC385: el SCROLL vertical: R#23 del VDP (p00:4C65)
	call apaga_los_sprites		;5a64
	call mira_atributos_de_sprites		;5a67
	call pon_avance_4		;5a6a
	call con_sube_una_letra		;5a6d
	xor a			;5a70
	ld d,a			;5a71
	ld e,a			;5a72
	ld b,010h		;5a73   ; 16 vueltas
L_5A75:
	inc a			;5a75
	push af			;5a76
	call pon_un_color		;5a77
	pop af			;5a7a
	djnz L_5A75		;5a7b
	ld b,000h		;5a7d
	ld c,007h		;5a7f
	call 00047h		;5a81   ; BIOS WRTVDP - Writes data in the VDP-register
rutina_18:
	ld hl,06443h		;5a84
	ld a,004h		;5a87
	call pon_base_de_la_hoja		;5a89
	call pon_banco_a000_4		;5a8c
	ld hl,07640h		;5a8f
	ld bc,02012h		;5a92
	ld de,00028h		;5a95
	call bucle_7		;5a98
	ld hl,06458h		;5a9b
	ld a,004h		;5a9e
	call pon_base_de_la_hoja		;5aa0
	call pon_banco_a000_4		;5aa3
	ld hl,079a0h		;5aa6
	ld bc,02012h		;5aa9
	ld de,00028h		;5aac
	call bucle_7		;5aaf
	ld hl,06468h		;5ab2
	ld a,004h		;5ab5
	call pon_base_de_la_hoja		;5ab7
	ld de,02008h		;5aba
	ld hl,08810h		;5abd
L_5AC0:
	push hl			;5ac0
	call pon_banco_a000_4		;5ac1
	ld hl,07d00h		;5ac4
	ld bc,00c04h		;5ac7
	call bucle_8		;5aca
	ld hl,07d30h		;5acd
	ld bc,00903h		;5ad0
	pop de			;5ad3
	call bucle_8		;5ad4
	call mira_banco_6000		;5ad7
	jp pon_avance_2		;5ada

; ----------------------------------------------------------------------
; DATOS tabla_5ADD: tabla que lee p00:5B10 (42 bytes)
;   0x5add..0x5b07  (42 bytes)
DATA_tabla_5ADD:
	defb 038h,0b8h,03ah,000h,04bh,041h,044h,04fh,04bh,041h,057h,041h,000h,053h,048h,04fh	; 5add  8.:.KADOKAWA.SHO
	defb 054h,045h,04eh,0feh,038h,0c0h,03ah,000h,054h,045h,05ah,055h,04bh,041h,000h,050h	; 5aed  TEN.8.:.TEZUKA.P
	defb 052h,04fh,044h,055h,043h,054h,049h,04fh,04eh,0ffh	; 5afd  RODUCTION.

; ======================================================================
; CODIGO 0x5b07..0x5b3d  (54 bytes)
; ======================================================================


rutina_19:
	call pon_banco_a000_4		;5b07
	call rutina_18		;5b0a
	call mira_banco_6000		;5b0d
	ld hl,05addh		;5b10   ; p00:5ADD tabla_5ADD: tabla que lee p00:5B10 (42 bytes)
	call con_hmmm		;5b13
	ld hl,053aah		;5b16
	call con_hmmm		;5b19
	call con_lee_de_la_vram		;5b1c
	ld hl,05be9h		;5b1f   ; p00:5BE9 tabla_5BE9: tabla que lee p00:5A4D, p00:5B1F (79 bytes)
	jp L_5B70		;5b22
rutina_20:
	call con_hl_mas_a_3		;5b25
	call con_hl_mas_a_4		;5b28
	call con_hl_mas_a_3		;5b2b
	jp con_hl_mas_a_4		;5b2e
rutina_21:
	call con_hl_mas_a_3		;5b31
	call con_pon_un_color_2		;5b34
	call con_hl_mas_a_3		;5b37
	jp con_pon_un_color_2		;5b3a

; ----------------------------------------------------------------------
; DATOS sin_llamar_5B3D: codigo que no llama nadie (ninguna palabra del
;   cartucho vale 0x5B3D): ld hl,0e800h / ld a,(de) / and a / ret z ... (33
;   bytes)
;   0x5b3d..0x5b5e  (33 bytes)
DATA_sin_llamar_5B3D:
	defb 021h,000h,0e8h,01ah,0a7h,0c8h,013h,047h,0e6h,07fh,0b8h,028h,00ch,0a7h,028h,0f0h	; 5b3d  !......G...(..(.
	defb 0ebh,04fh,006h,000h,0edh,0b0h,0ebh,018h,0eah,01ah,013h,077h,023h,010h,0fch,018h	; 5b4d  .O.........w#...
	defb 0e2h	; 5b5d

; ======================================================================
; CODIGO 0x5b5e..0x5be9  (139 bytes)
; ======================================================================


con_lee_de_la_vram:
	ld hl,0f680h		;5b5e
	ld de,0c510h		;5b61
	ld bc,00020h		;5b64
	call lee_de_la_vram		;5b67
	ld a,080h		;5b6a
	ld (0c550h),a		;5b6c
	ret			;5b6f
L_5B70:
	ld de,0c530h		;5b70
	ld bc,00020h		;5b73
	ldir		;5b76
	ret			;5b78
con_hl_mas_a_3:
	ld hl,0c550h		;5b79
	dec (hl)			;5b7c
	ld a,(hl)			;5b7d
	and 00fh		;5b7e
	ld c,a			;5b80
	add a,a			;5b81
	ld hl,0c510h		;5b82
	jp hl_mas_a		;5b85
con_pon_un_color_2:
	ld a,(hl)			;5b88
	and 0f0h		;5b89
	jr z,L_5B8F		;5b8b
	sub 010h		;5b8d
L_5B8F:
	ld d,a			;5b8f
	ld a,(hl)			;5b90
	and 00fh		;5b91
	jr z,L_5B96		;5b93
	dec a			;5b95
L_5B96:
	or d			;5b96
	ld (hl),a			;5b97
	ld d,a			;5b98
	inc hl			;5b99
	ld a,(hl)			;5b9a
	and 00fh		;5b9b
	jr z,L_5BA0		;5b9d
	dec a			;5b9f
L_5BA0:
	ld (hl),a			;5ba0
	inc hl			;5ba1
	ld e,a			;5ba2
	ld a,c			;5ba3
	call pon_un_color		;5ba4
	ld a,(0c550h)		;5ba7
	and a			;5baa
	ret			;5bab
con_hl_mas_a_4:
	ld a,c			;5bac
	exx			;5bad
	add a,a			;5bae
	ld hl,0c530h		;5baf
	call hl_mas_a		;5bb2
	exx			;5bb5
	ld a,(hl)			;5bb6
	and 0f0h		;5bb7
	push af			;5bb9
	exx			;5bba
	ld a,(hl)			;5bbb
	and 0f0h		;5bbc
	exx			;5bbe
	ld b,a			;5bbf
	pop af			;5bc0
	cp b			;5bc1
	jr z,L_5BC6		;5bc2
	add a,010h		;5bc4
L_5BC6:
	ld d,a			;5bc6
	ld a,(hl)			;5bc7
	and 00fh		;5bc8
	push af			;5bca
	exx			;5bcb
	ld a,(hl)			;5bcc
	and 00fh		;5bcd
	inc hl			;5bcf
	exx			;5bd0
	ld b,a			;5bd1
	pop af			;5bd2
	cp b			;5bd3
	jr z,L_5BD7		;5bd4
	inc a			;5bd6
L_5BD7:
	or d			;5bd7
	ld (hl),a			;5bd8
	ld d,a			;5bd9
	inc hl			;5bda
	ld a,(hl)			;5bdb
	and a			;5bdc
	push af			;5bdd
	exx			;5bde
	ld a,(hl)			;5bdf
	exx			;5be0
	ld b,a			;5be1
	pop af			;5be2
	cp b			;5be3
	jr z,L_5BE7		;5be4
	inc a			;5be6
L_5BE7:
	jr L_5BA0		;5be7

; ----------------------------------------------------------------------
; DATOS tabla_5BE9: tabla que lee p00:5A4D, p00:5B1F (79 bytes)
;   0x5be9..0x5c38  (79 bytes)
DATA_tabla_5BE9:
	defb 070h,000h,076h,006h,075h,005h,074h,004h,073h,003h,060h,000h,050h,000h,040h,000h	; 5be9  p.v.u.t.s.`.P.@.
	defb 030h,000h,020h,000h,070h,000h,010h,000h,077h,007h,000h,000h,000h,000h,000h,000h	; 5bf9  0. .p...w.......
	defb 00ch,00fh,00ch,00fh,000h,070h,000h,001h,076h,006h,002h,075h,005h,003h,074h,004h	; 5c09  .....p..v..u..t.
	defb 004h,073h,003h,005h,060h,000h,006h,050h,000h,007h,040h,000h,008h,030h,000h,009h	; 5c19  .s..`..P..@..0..
	defb 020h,000h,00ah,070h,000h,00bh,010h,000h,00ch,077h,007h,00fh,000h,000h,0ffh	; 5c29   ..p.....w.....

; ======================================================================
; CODIGO 0x5c38..0x5d1a  (226 bytes)
; ======================================================================


mira_cuadros_2:
	ld hl,0c4b0h		;5c38   ; 0xC4B0: cuenta los cuadros; el bit 0 alterna los colores de los sprites (p02:93AA)
	inc (hl)			;5c3b
	call mira_scroll_5		;5c3c
	call pon_atributos_vram		;5c3f
	or a			;5c42
	scf			;5c43
	call nc,mira_propiedades		;5c44
	ld a,006h		;5c47   ; el banco 6 en 0xA000
	call pon_banco_a000_5		;5c49
	call 093d6h		;5c4c
	ld a,003h		;5c4f   ; el banco 3 en 0xA000
	call pon_banco_a000_5		;5c51
	ld a,(0c4d1h)		;5c54   ; 0xC4D1: lo pone la contrasena 'aaaaa', que no se puede teclear (p06:B9AC)
	or a			;5c57
	jr z,L_5C65		;5c58
	ld a,006h		;5c5a
	ld (0c874h),a		;5c5c   ; 0xC874: el OBJETO 10 (byte 0 de 4; p06:BAC2)
	ld (0c878h),a		;5c5f   ; 0xC878: el OBJETO 11 (byte 0 de 4; p06:BAC2)
	ld (0c884h),a		;5c62   ; 0xC884: el OBJETO 14 (byte 0 de 4; p06:BAC2)
L_5C65:
	call 06656h		;5c65
	ld a,(0c800h)		;5c68   ; 0xC800: lo que hace Gao (p00:5C68)
	cp 002h		;5c6b
	jr z,L_5CB0		;5c6d
	call pon_sonido_0f1		;5c6f
	call 060d1h		;5c72
	call 07049h		;5c75
	call 072edh		;5c78
	call 0ade5h		;5c7b
	call 0681bh		;5c7e
	call 07757h		;5c81
	call 08600h		;5c84
	call 08f46h		;5c87
	call 06b1ah		;5c8a
	call 06bd3h		;5c8d
	call 06b21h		;5c90
	call 06bdch		;5c93
	call 07539h		;5c96
	call 07603h		;5c99
	call rutina_22		;5c9c
	call 07b15h		;5c9f
	call 06508h		;5ca2
	call mira_atributos_vram		;5ca5
	ld hl,0c4beh		;5ca8   ; 0xC4BE: variables de la partida
	ld a,(hl)			;5cab
	or a			;5cac
	ret z			;5cad
	dec (hl)			;5cae
	ret			;5caf
L_5CB0:
	xor a			;5cb0
	ld (0c388h),a		;5cb1   ; 0xC388: lo que se ha movido el mapa este cuadro (p00:56E8)
	call 060d1h		;5cb4
	call 08600h		;5cb7
	call 09162h		;5cba
	call 09368h		;5cbd
	call 0681eh		;5cc0
	call 07757h		;5cc3
	call 06b21h		;5cc6
	call 0ade5h		;5cc9
	call 06bdch		;5ccc
	call 06b1ah		;5ccf
	call 06bd3h		;5cd2
	call 07539h		;5cd5
	call 07603h		;5cd8
	call rutina_22		;5cdb
	jp mira_atributos_vram		;5cde
rutina_22:
	call 07bfeh		;5ce1
	call 07c35h		;5ce4
	call 07c5fh		;5ce7
	call 07d96h		;5cea
	call 07fd2h		;5ced
	call 07e71h		;5cf0
	call 07d77h		;5cf3
	ret			;5cf6
mira_propiedades:
	ld hl,0c900h		;5cf7   ; 0xC900: la propiedad de cada dibujo de la hoja (p00:54E0)
	ld de,0c901h		;5cfa   ; 0xC901: la propiedad de cada dibujo de la hoja (p00:54E0)
	ld (hl),000h		;5cfd
	ld bc,000ffh		;5cff
	ldir		;5d02
	ret			;5d04
L_5D05:
	xor a			;5d05
	ld (0c4d8h),a		;5d06   ; 0xC4D8: variables de la partida
	call pon_logotipo		;5d09
	jr $+61		;5d0c
L_5D0E:
	xor a			;5d0e
	ld (0c4d8h),a		;5d0f   ; 0xC4D8: variables de la partida
	call pon_logotipo		;5d12
	call 060b0h		;5d15
	jr $+25		;5d18

; ----------------------------------------------------------------------
; DATOS sin_llamar_5D1A: codigo que no llama nadie (ninguna palabra del
;   cartucho vale 0x5D1A): call 05de2h / jp 05dc4h (6 bytes)
;   0x5d1a..0x5d20  (6 bytes)
DATA_sin_llamar_5D1A:
	defb 0cdh,0e2h,05dh,0c3h,0c4h,05dh	; 5d1a

; ======================================================================
; CODIGO 0x5d20..0x5d7e  (94 bytes)
; ======================================================================


pon_partida:
	ld a,001h		;5d20
	ld (0c4d8h),a		;5d22   ; 0xC4D8: variables de la partida
	call 07aedh		;5d25
	call pon_objeto_13		;5d28
	call 060b0h		;5d2b
	call pon_logotipo		;5d2e
L_5D31:
	call con_sube_una_letra		;5d31
	call con_sube_letras		;5d34
	call rutina_13		;5d37
	call con_copia_a_la_vram_2		;5d3a
	call pon_base_de_la_hoja_3		;5d3d
	call 0679fh		;5d40
	call mira_juego_de_dibujos		;5d43
	call rutina_14		;5d46
L_5D49:
	call mira_area		;5d49
	call mira_nivel_c840		;5d4c
	call mira_atributos_de_sprites_2		;5d4f
	call pon_velocidad		;5d52
	call pon_mapa		;5d55
	call rutina_17		;5d58
	ld a,(0c4d8h)		;5d5b   ; 0xC4D8: variables de la partida
	or a			;5d5e
	call nz,08e36h		;5d5f
	call 08e67h		;5d62
	call 07ad5h		;5d65
	call 074c4h		;5d68
	call mira_juego_de_dibujos_2		;5d6b
	call mira_scroll_5		;5d6e
	call pon_avance_2		;5d71
	ld a,002h		;5d74
	ld (0c4d0h),a		;5d76   ; 0xC4D0: variables de la partida
	ld a,024h		;5d79   ; el sonido 0x24 (p14:9C47 + 2*0x24)
	jp mira_banderas_juego		;5d7b

; ----------------------------------------------------------------------
; DATOS sin_lector_5D7E: bytes sin lector conocido: ninguna instruccion
;   trazada los apunta y la sonda de openMSX no los lee (22 bytes)
;   0x5d7e..0x5d94  (22 bytes)
DATA_sin_lector_5D7E:
	defb 03ah,061h,0c1h,03dh,047h,087h,080h,03ch,032h,086h,0c4h,0cdh,0bfh,065h,0cdh,0b0h	; 5d7e  :a.=G..<2....e..
	defb 065h,0afh,032h,061h,0c1h,0c9h	; 5d8e

; ======================================================================
; CODIGO 0x5d94..0x5e78  (228 bytes)
; ======================================================================


pon_objeto_13:
	xor a			;5d94
	ld (0c880h),a		;5d95   ; 0xC880: el OBJETO 13 (byte 0 de 4; p06:BAC2)
	ld (0c858h),a		;5d98   ; 0xC858: el OBJETO 3 (byte 0 de 4; p06:BAC2)
	ld (0c860h),a		;5d9b   ; 0xC860: el OBJETO 5 (byte 0 de 4; p06:BAC2)
	ret			;5d9e
mira_juego_de_dibujos_2:
	ld a,(0c482h)		;5d9f   ; 0xC482: el juego de dibujos, 0-7 (p01:65BB)
	cp 006h		;5da2
	jr c,L_5DAF		;5da4
	ld b,028h		;5da6
	ld c,008h		;5da8
	call 00047h		;5daa   ; BIOS WRTVDP - Writes data in the VDP-register
	jr L_5DB6		;5dad
L_5DAF:
	ld b,008h		;5daf
	ld c,008h		;5db1
	call 00047h		;5db3   ; BIOS WRTVDP - Writes data in the VDP-register
L_5DB6:
	ld bc,00f07h		;5db6
	call 00047h		;5db9   ; BIOS WRTVDP - Writes data in the VDP-register
	ld c,00fh		;5dbc
	ld de,00000h		;5dbe
	jp pon_un_color		;5dc1
pon_logotipo:
	call pon_avance_3		;5dc4
	call mira_atributos_de_sprites		;5dc7
	call con_rellena_la_vram		;5dca
	xor a			;5dcd
	ld (0c10ah),a		;5dce
	ld (0c201h),a		;5dd1   ; 0xC201: el logotipo y el titulo (p01:66D4)
	jp 072b4h		;5dd4
con_rellena_la_vram:
	ld hl,0f300h		;5dd7
	ld bc,00080h		;5dda
	ld a,0e0h		;5ddd
	jp rellena_la_vram		;5ddf
pon_velocidad:
	ld hl,0ff00h		;5de2
	ld (0c382h),hl		;5de5   ; 0xC382: lo que se suma a 0xC384 cada cuadro (p00:56D8)
	ret			;5de8
copia_bytes:
	ld e,l			;5de9
	ld d,h			;5dea
	inc de			;5deb
	ld (hl),000h		;5dec
	ldir		;5dee
	ret			;5df0
mira_atributos_de_sprites_2:
	ld hl,0e600h		;5df1   ; 0xE600: y, x, patron y color de los 32 sprites (p00:4B7A)
	ld de,0e601h		;5df4   ; 0xE601: y, x, patron y color de los 32 sprites (p00:4B7A)
	ld (hl),0e0h		;5df7
	ld bc,00080h		;5df9
	ldir		;5dfc
	ret			;5dfe
pon_otro_cartucho:
	ld bc,00400h		;5dff
	ld hl,0fcc1h		;5e02
L_5E05:
	push bc			;5e05
	push hl			;5e06
	ld a,(hl)			;5e07
	bit 7,a		;5e08
	jr nz,L_5E1C		;5e0a
	call pon_ranura_del_otro		;5e0c
L_5E0F:
	pop hl			;5e0f
	pop bc			;5e10
	jr c,L_5E18		;5e11
	inc hl			;5e13
	inc c			;5e14
	djnz L_5E05		;5e15
	xor a			;5e17
L_5E18:
	ld (0c110h),a		;5e18   ; 0xC110: 1: hay un Game Master o Q*bert al lado; 2: King Kong 2 (p00:5DFF)
	ret			;5e1b
L_5E1C:
	call bucle_9		;5e1c
	jr L_5E0F		;5e1f
bucle_9:
	and 080h		;5e21
	or c			;5e23
	ld c,a			;5e24
	ld b,004h		;5e25   ; 4 vueltas
L_5E27:
	push bc			;5e27
	call pon_ranura_del_otro		;5e28
	pop bc			;5e2b
	ret c			;5e2c
	ld a,c			;5e2d
	add a,004h		;5e2e
	ld c,a			;5e30
	djnz L_5E27		;5e31
	xor a			;5e33
	ret			;5e34
pon_ranura_del_otro:
	ld a,c			;5e35
	ld (0f101h),a		;5e36   ; 0xF101: la ranura del otro cartucho (p00:5E36)
	call lee_de_otra_ranura_2		;5e39
	ld a,001h		;5e3c
	ret c			;5e3e
	call lee_de_otra_ranura		;5e3f
	ld a,002h		;5e42
	ret			;5e44
lee_de_otra_ranura:
	ld de,05e7eh		;5e45
	ld hl,04010h		;5e48   ; p00:4010 cabecera_de_konami: 'C', 0, 'D', 0, 3, 0, 0x15, 0... y las direcciones de la RAM del juego (0xC161 la fase, 0xC160 las vidas, 0xC1
	ld b,005h		;5e4b
	jr lee_de_otra_ranura_3		;5e4d
lee_de_otra_ranura_2:
	ld de,05e78h		;5e4f   ; p00:5E78 tabla_5E78: tabla que lee p00:5E45, p00:5E4F, p00:5E5B (17 bytes)
	ld hl,07ffah		;5e52
	ld b,006h		;5e55
	call lee_de_otra_ranura_3		;5e57
	ret c			;5e5a
	ld de,05e83h		;5e5b
	ld hl,0bffah		;5e5e
	ld b,006h		;5e61
lee_de_otra_ranura_3:
	push bc			;5e63
	push de			;5e64
	ld a,c			;5e65
	call 0000ch		;5e66   ; BIOS RDSLT - Reads the value of an address in another slot
	pop de			;5e69
	pop bc			;5e6a
	ex de,hl			;5e6b
	cp (hl)			;5e6c
	ex de,hl			;5e6d
	jr nz,L_5E76		;5e6e
	inc hl			;5e70
	inc de			;5e71
	djnz lee_de_otra_ranura_3		;5e72
	scf			;5e74
	ret			;5e75
L_5E76:
	and a			;5e76
	ret			;5e77

; ----------------------------------------------------------------------
; DATOS tabla_5E78: tabla que lee p00:5E45, p00:5E4F, p00:5E5B (17 bytes)
;   0x5e78..0x5e89  (17 bytes)
DATA_tabla_5E78:
	defb 000h,030h,031h,013h,035h,0aah,043h,044h,007h,045h,0ffh,0bah,0b2h,086h,007h,046h	; 5e78  .01.5.CD.E.....F
	defb 0aah	; 5e88

; ======================================================================
; CODIGO 0x5e89..0x5ea8  (31 bytes)
; ======================================================================


con_marco:
	call mira_canales		;5e89
	ld c,00ch		;5e8c
	call marco		;5e8e
	ld hl,05eb0h		;5e91
	jp con_hmmm		;5e94
mira_canales:
	ld hl,02098h		;5e97
	ld bc,0c038h		;5e9a   ; 0xC038: los canales del sonido (0x20 bytes cada uno, p14:94CA)
L_5E9D:
	xor a			;5e9d
	ld d,000h		;5e9e
	push bc			;5ea0
	push hl			;5ea1
	call hmmv		;5ea2
	pop hl			;5ea5
	pop de			;5ea6
	ret			;5ea7

; ----------------------------------------------------------------------
; DATOS tabla_5EA8: tabla que lee p00:5E91 (85 bytes)
;   0x5ea8..0x5efd  (85 bytes)
DATA_tabla_5EA8:
	defb 0cdh,09dh,05eh,00eh,00ch,0c3h,0ddh,04dh,058h,0a0h,040h,040h,040h,04dh,045h,04eh	; 5ea8  ..^....MX.@@@MEN
	defb 055h,040h,040h,040h,0feh,028h,0b0h,03eh,0feh,030h,0b0h,053h,054h,041h,052h,054h	; 5eb8  U@@@.(.>.0.START
	defb 000h,000h,047h,041h,04dh,045h,0feh,030h,0b8h,04dh,04fh,044h,049h,046h,059h,000h	; 5ec8  ..GAME.0.MODIFY.
	defb 053h,054h,041h,047h,045h,000h,000h,04eh,055h,04dh,042h,045h,052h,0feh,030h,0c0h	; 5ed8  STAGE..NUMBER.0.
	defb 04dh,04fh,044h,049h,046h,059h,000h,050h,04ch,041h,059h,045h,052h,000h,04eh,055h	; 5ee8  MODIFY.PLAYER.NU
	defb 04dh,042h,045h,052h,0ffh	; 5ef8

; ======================================================================
; CODIGO 0x5efd..0x5f0e  (17 bytes)
; ======================================================================


mira_menu_fase:
	ld hl,05f0eh		;5efd   ; p00:5F0E tabla_5F0E: tabla que lee p00:5EFD (19 bytes)
	call rutina_23		;5f00
	ld hl,0c115h		;5f03   ; 0xC115: la fase con que empieza la partida (MENU)
	ld de,0b0b8h		;5f06
L_5F09:
	ld b,001h		;5f09
	jp bucle_2		;5f0b

; ----------------------------------------------------------------------
; DATOS tabla_5F0E: tabla que lee p00:5EFD (19 bytes)
;   0x5f0e..0x5f21  (19 bytes)
DATA_tabla_5F0E:
	defb 048h,0b8h,053h,054h,041h,047h,045h,000h,04eh,055h,04dh,042h,045h,052h,02fh,0ffh	; 5f0e  H.STAGE.NUMBER/.
	defb 030h,031h,0ffh	; 5f1e

; ======================================================================
; CODIGO 0x5f21..0x5f37  (22 bytes)
; ======================================================================


mira_menu_jugadores:
	ld hl,05f37h		;5f21   ; p00:5F37 tabla_5F37: tabla que lee p00:5F21 (17 bytes)
	call rutina_23		;5f24
	ld hl,0c117h		;5f27   ; 0xC117: las vidas con que empieza la partida (MENU)
	ld de,0b8b8h		;5f2a
	jr $-36		;5f2d
rutina_23:
	push hl			;5f2f
	call rutina_24		;5f30
	pop hl			;5f33
	jp con_hmmm		;5f34

; ----------------------------------------------------------------------
; DATOS tabla_5F37: tabla que lee p00:5F21 (17 bytes)
;   0x5f37..0x5f48  (17 bytes)
DATA_tabla_5F37:
	defb 048h,0b8h,050h,04ch,041h,059h,045h,052h,000h,04eh,055h,04dh,042h,045h,052h,02fh	; 5f37  H.PLAYER.NUMBER/
	defb 0ffh	; 5f47

; ======================================================================
; CODIGO 0x5f48..0x6000  (184 bytes)
; ======================================================================


rutina_24:
	ld hl,024b0h		;5f48
	ld bc,0b818h		;5f4b
	jp L_5E9D		;5f4e
L_5F51:
	call lee_teclado		;5f51
	ret z			;5f54
	ld hl,(0c118h)		;5f55
	ld d,000h		;5f58
	ld b,008h		;5f5a
	ld a,l			;5f5c
	call bucle_10		;5f5d
	jr c,L_5F69		;5f60
	ld a,h			;5f62
	ld b,002h		;5f63
	call bucle_10		;5f65
	ret nc			;5f68
L_5F69:
	push de			;5f69
	ld hl,(0c112h)		;5f6a
	ld bc,01008h		;5f6d
	xor a			;5f70
	ld d,a			;5f71
	call hmmv		;5f72
	pop de			;5f75
	ld hl,0c125h		;5f76   ; 0xC125: la fila 7 del teclado que se tiene pulsada
	ld (hl),0ffh		;5f79
	ld hl,0c11fh		;5f7b
	ld a,d			;5f7e
	rld		;5f7f
	ld de,(0c112h)		;5f81
	ld b,001h		;5f85   ; 1 vueltas
	call bucle_2		;5f87
	jp L_5FB4		;5f8a
bucle_10:
	rra			;5f8d
	ret c			;5f8e
	inc d			;5f8f
	djnz bucle_10		;5f90
	ret			;5f92
lee_teclado:
	xor a			;5f93
	call 00141h		;5f94   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;5f97
	ld d,a			;5f98
	ld a,001h		;5f99
	call 00141h		;5f9b   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;5f9e
	and 003h		;5f9f
	ld e,a			;5fa1
	ld a,d			;5fa2
	ld hl,0c118h		;5fa3
	ld c,(hl)			;5fa6
	ld (hl),a			;5fa7
	xor c			;5fa8
	and (hl)			;5fa9
	ld d,a			;5faa
	ld a,e			;5fab
	inc hl			;5fac
	ld c,(hl)			;5fad
	ld (hl),a			;5fae
	xor c			;5faf
	and (hl)			;5fb0
	ld e,a			;5fb1
	or d			;5fb2
	ret			;5fb3
L_5FB4:
	ld hl,0c11fh		;5fb4
	ld a,(hl)			;5fb7
	ld c,a			;5fb8
	rrca			;5fb9
	rrca			;5fba
	rrca			;5fbb
	rrca			;5fbc
	and 00fh		;5fbd
	add a,a			;5fbf
	ld b,a			;5fc0
	add a,a			;5fc1
	add a,a			;5fc2
	add a,b			;5fc3
	ld b,a			;5fc4
	ld a,c			;5fc5
	and 00fh		;5fc6
	add a,b			;5fc8
	ld (0c11eh),a		;5fc9
	ret			;5fcc
lee_teclado_2:
	ld a,007h		;5fcd
	call 00141h		;5fcf   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;5fd2
	and 080h		;5fd3
	ld hl,0c11ah		;5fd5
	ld c,(hl)			;5fd8
	ld (hl),a			;5fd9
	xor c			;5fda
	and (hl)			;5fdb
	ret			;5fdc
L_5FDD:
	rra			;5fdd
	push af			;5fde
	jr nc,L_5FFF		;5fdf
	ld a,(0c116h)		;5fe1   ; 0xC116: copia de la fase del MENU (p00:4795)
	or a			;5fe4
	jr nz,L_5FE8		;5fe5
	inc a			;5fe7
L_5FE8:
	cp 006h		;5fe8
	jr c,L_5FEE		;5fea
	ld a,006h		;5fec
L_5FEE:
	ld (0c481h),a		;5fee   ; 0xC481: la FASE, 1-6 (p01:65B4)
	ld a,001h		;5ff1
	ld (0c483h),a		;5ff3   ; 0xC483: la COLUMNA: 0-2 el camino, 3 la sala (p01:6543)
	call 065f5h		;5ff6
	ld (0c480h),a		;5ff9   ; 0xC480: el AREA (0-23): 3*(fase-1) + columna, o 18 + fase - 1 (p01:64D5)
	call pon_x_de_entrada		;5ffc
L_5FFF:
	pop af			;5fff
