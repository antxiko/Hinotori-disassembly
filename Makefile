# Hinotori (Konami, RC-747, 1987, MSX)
# desensamblado
#
# El orden de las cosas: trazar el flujo -> generar el listado -> comprobar que
# vuelve a dar la ROM byte a byte -> las comprobaciones que el reensamblado NO
# cubre.
#
# Es un MegaROM de 128 KB con el mapper Konami SIN SCC (Konami4), 16 bancos de
# 8 KB. Cada banco es un modulo (p00..p15) con su propio org -el sitio donde el
# mapper lo pone para ejecutarlo, medido en tools/paginas.py-, su trazado, sus
# notas y su listado. `make verify` reensambla los 16 y los concatena: tiene
# que salir la ROM entera, byte a byte.
#
# tools/bancos.py traza el CARTUCHO ENTERO llevando la cuenta de que banco hay
# en cada ranura. De ahi salen los src/pNN.entries -las llamadas que cruzan el
# mapper- y los src/pNN.nocode -las tablas del despachador-. `make semillas`
# los regenera.
#
# La ROM no se distribuye. Hace falta en la raiz como hinotori.rom, y
# `make comprueba` verifica el sha256.

ROM      = hinotori.rom
SHA      = d4d443c18203f1a463b4d0b356a95c5dc578e24e47e5ea596c773b63ad20fba0
SRC      = src
WORK     = work
TITULO   = HINOTORI - Konami (1987) - MSX - MegaROM RC-747 de 128 KB (Konami4)

PAGINAS  = 00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15

# Donde se ejecuta cada banco. Es la misma tabla que `python3 tools/paginas.py
# lista` (un test lo comprueba); esta copiada aqui para no lanzar python 32
# veces por cada make.
ORG_00 = 0x4000
ORG_01 = 0x6000
ORG_02 = 0x8000
ORG_03 = 0xa000
ORG_04 = 0x6000
ORG_05 = 0x8000
ORG_06 = 0xa000
ORG_07 = 0x6000
ORG_08 = 0x8000
ORG_09 = 0xa000
ORG_10 = 0x6000
ORG_11 = 0x8000
ORG_12 = 0xa000
ORG_13 = 0x6000
ORG_14 = 0x8000
ORG_15 = 0xa000
ORG    = $(ORG_$(1))

all: listado verify sanity test

$(ROM):
	@echo "=================================================================="
	@echo " Falta $(ROM), y este repositorio NO lo distribuye."
	@echo ""
	@echo " Es Hinotori (Konami, RC-747, 1987) para"
	@echo " MSX, 131072 bytes exactos. Ponlo aqui con ese nombre."
	@echo " Para comprobar que es el mismo:"
	@echo "     shasum -a 256 $(ROM)"
	@echo "     $(SHA)"
	@echo ""
	@echo " Sin el se puede leer el listado ya generado en $(SRC)/, y los"
	@echo " tests que no dependen del binario siguen pasando."
	@echo "=================================================================="
	@false

comprueba: $(ROM)
	@echo "$(SHA)  $(ROM)" | shasum -a 256 -c -

# Reconocimiento: cabecera, escrituras al mapper, y la comprobacion de que la
# regla banco -> org la cumplen todas las escrituras. Es la base sobre la que
# se apoya todo lo demas.
reconoce: $(ROM)
	@python3 tools/reconocimiento.py $(ROM)

# Los 16 bancos cortados de la ROM, uno por fichero.
$(WORK)/p00.bin: $(ROM) tools/paginas.py
	@mkdir -p $(WORK)
	python3 tools/paginas.py corta $(ROM) $(WORK)

paginas: $(WORK)/p00.bin

# Las semillas: el trazado de cartucho entero, que es el unico que sabe que
# banco hay en cada ranura. Reescribe los .entries y los .nocode.
semillas: $(ROM)
	python3 tools/bancos.py $(ROM) escribe $(SRC)

# El trazado sigue el flujo desde los puntos de entrada DE CADA BANCO.
define REGLA_TRAZA
$(WORK)/p$(1).trace.json: $(WORK)/p00.bin $(SRC)/p$(1).entries $(SRC)/p$(1).nocode tools/z80trace.py
	python3 tools/z80trace.py $(WORK)/p$(1).bin $(call ORG,$(1)) $(SRC)/p$(1).entries \
	        $(WORK)/p$(1) $(SRC)/p$(1).nocode
endef
$(foreach p,$(PAGINAS),$(eval $(call REGLA_TRAZA,$(p))))

trace: $(foreach p,$(PAGINAS),$(WORK)/p$(p).trace.json)

# Un listado por banco: src/hinotori_pNN.asm, con el org de ese banco.
define REGLA_LISTADO
$(SRC)/hinotori_p$(1).asm: $(WORK)/p$(1).trace.json $(SRC)/p$(1).notes tools/mkasm.py
	python3 tools/mkasm.py $(WORK)/p$(1).bin $(call ORG,$(1)) $(WORK)/p$(1).trace.json \
	        $(SRC)/p$(1).notes $(WORK)/msx.sym $(SRC)/hinotori_p$(1).asm \
	        "$(TITULO) - banco $(1) (se ejecuta en $(call ORG,$(1)))"
endef
$(foreach p,$(PAGINAS),$(eval $(call REGLA_LISTADO,$(p))))

listado: $(foreach p,$(PAGINAS),$(SRC)/hinotori_p$(p).asm)

# La prueba que decide si el desensamblado es fiable: cada banco reensambla a
# sus 8192 bytes, y los 16 concatenados dan la ROM entera.
verify: $(WORK)/p00.bin
	@for p in $(PAGINAS); do \
	  sh tools/verify_build.sh $(SRC)/hinotori_p$$p.asm $(WORK)/p$$p.bin \
	     `python3 tools/paginas.py org $$p` $(WORK)/p$$p.out.bin || exit 1; \
	done
	@sh tools/verify_rom.sh $(WORK) $(ROM) $(SHA)

# Lo que el reensamblado NO puede cazar: que unos datos se esten leyendo como
# codigo. El binario sale identico igual, porque los bytes no cambian; lo unico
# que cambia es lo que decimos de ellos.
sanity: trace
	@echo "=================================================================="
	@echo " la regla banco -> org la cumplen todas las escrituras al mapper"
	@echo "=================================================================="
	@python3 tools/reconocimiento.py $(ROM) | tail -1
	@echo "=================================================================="
	@echo " ningun byte declarado como datos puede salir como codigo"
	@echo "=================================================================="
	@for p in $(PAGINAS); do \
	  python3 tools/check_trace.py $(WORK)/p$$p.trace.json $(SRC)/p$$p.nocode | tail -1 || exit 1; \
	done
	@python3 tools/check_datos_como_codigo.py $(WORK) $(SRC)
	@echo "=================================================================="
	@echo " el trazado por bancos y el de cartucho entero dicen lo mismo"
	@echo "=================================================================="
	@python3 tools/check_bancos.py $(ROM) $(WORK) $(SRC)
	@echo "=================================================================="
	@echo " ningun punto de entrada puede caer dentro de una zona de datos"
	@echo "=================================================================="
	@for p in $(PAGINAS); do \
	  python3 tools/check_entradas.py $(SRC)/p$$p.entries $(SRC)/p$$p.notes \
	          $(SRC)/p$$p.nocode | tail -1 || exit 1; \
	done
	@echo "=================================================================="
	@echo " ni un byte del cartucho sin asignar (los 16 bancos)"
	@echo "=================================================================="
	@python3 tools/presupuesto.py $(WORK) $(SRC)

densidad:
	@for p in $(PAGINAS); do \
	  echo "-- p$$p"; python3 tools/densidad.py $(SRC)/hinotori_p$$p.asm | tail -2; \
	done

test:
	@echo "=================================================================="
	@echo " Tests"
	@echo "=================================================================="
	@python3 -m unittest discover -s tests -v

# Las imagenes de la web, dibujadas desde las tablas de la ROM con nuestro
# codigo (tools/titulo.py, laminas.py, figuras.py). Ninguna es una captura.
imagenes: $(ROM)
	@mkdir -p docs/imagenes
	python3 tools/titulo.py logo docs/imagenes/konami.png
	python3 tools/titulo.py titulo docs/imagenes/titulo.png
	python3 tools/titulo.py menu docs/imagenes/menu.png
	python3 tools/titulo.py rotulo docs/imagenes/rotulo.png
	python tools/mapa_general.py docs/imagenes
	python3 tools/figuras.py objetos docs/imagenes/objetos.png
	python3 tools/figuras.py gao docs/imagenes/gao.png
	python3 tools/figuras.py cosas docs/imagenes/cosas.png

# El cotejo contra los volcados de openMSX (work/, no viajan: se rehacen con
# tools/lanza_bp.sh y lanza_vuelca.sh, ver docs/IN-THE-EMULATOR.md). Los tres
# primeros tienen que dar 0; el mapa y la hoja dicen cuanto pisa el juego.
coteja: $(ROM)
	python3 tools/titulo.py logo $(WORK)/c_logo.png $(WORK)/logo/bp.vram
	python3 tools/titulo.py titulo $(WORK)/c_titulo.png $(WORK)/v4/t023.vram
	python3 tools/titulo.py menu $(WORK)/c_menu.png $(WORK)/menu_qbert/bp.vram
	-python3 tools/mapa.py coteja $(WORK)/v3/t045.ram $(WORK)/v3/t045.vram
	python3 tools/mapa.py coteja $(WORK)/area_1/bp.ram $(WORK)/area_1/bp.vram
	python3 tools/mapa.py coteja $(WORK)/area_2/bp.ram $(WORK)/area_2/bp.vram
	python3 tools/mapa.py coteja_hoja $(WORK)/area_1/bp.ram $(WORK)/area_1/bp.vram $(WORK)/area_1/bp.pal
	python3 tools/mapa.py coteja_hoja $(WORK)/area_2/bp.ram $(WORK)/area_2/bp.vram $(WORK)/area_2/bp.pal

# La web: las paginas se escriben en markdown y se convierten con md2html.py;
# la portada la monta make_web.py con lo de tools/contenido_web.py.
web:
	python3 tools/md2html.py docs en
	python3 tools/md2html.py docs/es es
	python3 tools/make_web.py docs/imagenes docs/index.html en
	python3 tools/make_web.py docs/imagenes docs/es/index.html es
	python3 tools/check_enlaces.py docs

clean:
	rm -f $(WORK)/p*.trace.json $(WORK)/p*.blocks $(WORK)/p*.out.bin \
	      $(WORK)/hinotori_reensamblada.rom $(WORK)/pasmo.err

.PHONY: all comprueba reconoce paginas semillas trace listado verify \
        sanity densidad test web clean imagenes coteja

# Rehace todas las secciones automaticas de las notas, en orden: los bloques
# de datos por formato, lo que queda con su prueba, las notas a mano por
# tandas (work/notas_pNN.txt, si estan) y los comentarios de las tablas.
notas: $(ROM)
	$(MAKE) semillas listado
	python3 tools/bloques.py --escribe
	python3 tools/resto.py --escribe
	-for f in work/notas_p*.txt; do python3 tools/mete_notas.py `echo $$f | sed 's/.*_p\([0-9]*\).txt/\1/'`; done
	python3 tools/anota.py --escribe
	$(MAKE) listado
