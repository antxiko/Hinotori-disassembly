#!/usr/bin/env python3
"""EL CONTENIDO de la web de este cartucho: lo unico que es de este juego.

md2html.py y make_web.py son la maquinaria y no llevan dentro el nombre de
ningun juego: lo leen de aqui. Asi no se puede colar el texto de otro
cartucho al copiar la maquinaria.

Todas las cifras de aqui estan medidas sobre este cartucho, con las
herramientas de tools/: CODIGO y DATOS los imprime tools/presupuesto.py
(make sanity) y RUTINAS, INSTRUCCIONES y COMENTARIOS son la suma de los
bancos con codigo en tools/densidad.py (make densidad). Un test lo comprueba.
"""

NOMBRE = "Hinotori"
CATALOGO = "RC-747"
ANIO = 1987
REPOSITORIO = "https://github.com/antxiko/Hinotori-disassembly"

CODIGO = 32229
DATOS = 98843
RUTINAS = 1944
INSTRUCCIONES = 15938
COMENTARIOS = 6444


def densidad(idioma):
    """El porcentaje comentado, con la coma o el punto de cada idioma."""
    d = "%.1f" % (100.0 * COMENTARIOS / INSTRUCCIONES)
    return d.replace(".", ",") if idioma == "es" else d


PIE_LEGAL = {
    "es": "<em>Hinotori: H&#333;&#333;hen &ndash; Ga&#333; no B&#333;ken</em> "
          "(<em>El p&aacute;jaro de fuego</em>) lo public&oacute; Konami para "
          "MSX2 en 1987, sobre la obra de Osamu Tezuka (&copy; Kadokawa Shoten, "
          "&copy; Tezuka Production); su n&uacute;mero de cat&aacute;logo es "
          "RC-747 y son 128 KB. Todos los derechos sobre el juego siguen siendo "
          "de sus titulares. Este trabajo es de preservaci&oacute;n, estudio y "
          "documentaci&oacute;n, y la imagen del cartucho no se distribuye.",
    "en": "<em>Hinotori: H&#333;&#333;hen &ndash; Ga&#333; no B&#333;ken</em> "
          "(<em>Firebird</em>) was published by Konami for the MSX2 in 1987, "
          "based on Osamu Tezuka's work (&copy; Kadokawa Shoten, &copy; Tezuka "
          "Production); its catalogue number is RC-747 and it is 128 KB. All "
          "rights in the game remain with their holders. This is preservation, "
          "study and documentation work, and the cartridge image is not "
          "distributed.",
}

PORTADA = {
    "es": dict(
        titulo="Hinotori - desensamblado comentado",
        claim="Seis fases que dan la vuelta por los lados y por arriba, 18 "
              "puertas que las unen, 17 contrase&ntilde;as de truco y un "
              "cartucho que, con King Kong 2 al lado, arranca King Kong 2 para "
              "grabarle la partida.",
        ficha=["Konami - <b>(c) Konami 1987</b>",
               "Cartucho <b>RC-747</b>, MegaROM de 128 KB (Konami4)",
               "<b>MSX2</b>", "Volcado <b>d4d443c1...</b>"],
        aviso="<b>Aqu&iacute; no hay ninguna captura.</b> Todas las "
              "im&aacute;genes est&aacute;n <b>dibujadas desde los bytes de la "
              "ROM</b> con las tablas del propio cartucho: el logotipo, el "
              "t&iacute;tulo, el men&uacute; secreto, las seis fases con sus "
              "salas y sus puertas, Gao, los sprites de los enemigos y los "
              "objetos. Est&aacute;n <b>cotejadas contra openMSX</b> en una "
              "m&aacute;quina MSX2: el logotipo, el t&iacute;tulo y el "
              "men&uacute;, 0 bytes distintos; la hoja de dibujos y la paleta de "
              "las &aacute;reas volcadas, 0. El listado y las cifras se "
              "reproducen con <code>make</code>, y el reensamblado devuelve la "
              "ROM <b>byte a byte</b>.",
    ),
    "en": dict(
        titulo="Hinotori - a commented disassembly",
        claim="Six stages that wrap round at the sides and at the top, 18 "
              "gates joining them, 17 cheat passwords and a cartridge that, "
              "with King Kong 2 next to it, boots King Kong 2 to save its "
              "game.",
        ficha=["Konami - <b>(c) Konami 1987</b>",
               "An <b>RC-747</b> cartridge, a 128 KB MegaROM (Konami4)",
               "<b>MSX2</b>", "Dump <b>d4d443c1...</b>"],
        aviso="<b>Not one capture here.</b> Every picture is <b>drawn from "
              "the bytes of the ROM</b> with the cartridge's own tables: the "
              "logo, the title, the secret menu, the six stages with their "
              "rooms and gates, Gao, the enemy sprites and the items. They are "
              "<b>checked against openMSX</b> on an MSX2 machine: the logo, the "
              "title and the menu, 0 bytes different; the tile sheet and the "
              "palette of the dumped areas, 0. The listing and the numbers are "
              "reproducible with <code>make</code>, and reassembling gives back "
              "the ROM <b>byte for byte</b>.",
    ),
}

HALLAZGOS = {
    "es": [
        ("Con King Kong 2 al lado, arranca King Kong 2 y le graba la partida",
         "<p>Al encender, <code>p00:5DFF</code> mira las otras ranuras. Si "
         "encuentra la cabecera de <b>King Kong 2</b> (<code>'CD' 07 45</code> "
         "en <code>0x4010</code>), Hinotori no arranca: copia el INIT de King "
         "Kong 2 a <code>0xF120</code>, se engancha a la interrupci&oacute;n "
         "con 170 bytes suyos copiados a <code>0xF220</code> "
         "(<code>p09:B925</code>) y salta a King Kong 2. Jugando, "
         "<b>F4 graba</b> la partida en cinta y <b>F5 la carga</b>, con las "
         "rutinas de cinta de la BIOS y el c&oacute;digo de "
         "<code>p09:B9CF</code>.</p><p>Visto en openMSX con los dos "
         "cartuchos: arranca King Kong 2 y, con F4, sale &laquo;SAVE MODE / "
         "INPUT FILE NAME&raquo; dentro de su pantalla.</p>"),
        ("Con Q*bert o el Game Master, un men&uacute; para elegir fase",
         "<p>Si al lado hay un <b>Q*bert</b> (RC-746) o un <b>Game Master</b> "
         "(RC-735), que reconoce por seis bytes de su final "
         "(<code>p00:5E78</code>), al pulsar ESPACIO en el t&iacute;tulo sale "
         "un men&uacute;: START GAME, MODIFY STAGE NUMBER y MODIFY PLAYER "
         "NUMBER (<code>p00:4735</code>), para empezar en otra fase y con "
         "otras vidas. Y la tecla STOP congela el juego "
         "(<code>p00:4124</code>).</p><p>El men&uacute;, visto en openMSX con "
         "Q*bert al lado y montado aqu&iacute; desde la ROM (0 bytes "
         "distintos). Lo de STOP sale del c&oacute;digo; no lo hemos "
         "probado.</p>"),
        ("17 contrase&ntilde;as de truco, y una que no se puede escribir",
         "<p>Con F1 (pausa), HOME y HOME se escribe una contrase&ntilde;a. "
         "Adem&aacute;s de las que guardan la partida, hay <b>17 de truco</b> "
         "en <code>p06:B8A0</code>, cada una seguida del c&oacute;digo que "
         "hace, y cada una vale una vez por partida (<code>0xC600</code>). "
         "GAOOOOOOOOOOH da 10 vidas; ILOVEHINOTORI, invencible; "
         "NANDANANDANANDA, no se pierden vidas; FULLITEMDAYOON, "
         "KINOOOIHITODANE y SUPERBALL llenan objetos; METALSLAVE, toda la "
         "vida; ENDDEMOGAMITAINA ense&ntilde;a el final&hellip;</p><p>Una, "
         "&laquo;aaaaa&raquo;, <b>no se puede escribir</b>: "
         "<code>p06:B5AB</code> pasa lo tecleado a may&uacute;sculas. Quince "
         "probadas en openMSX con el cambio medido en la RAM.</p>"),
        ("Las fases dan la vuelta",
         "<p>Cada fase son <b>tres columnas</b> de 256 puntos de ancho y 1.536 "
         "de alto. Saliendo por un lado se entra por el otro "
         "(<code>p01:653A</code>: de la columna 2 a la 0 y al rev&eacute;s), y "
         "por arriba el mapa vuelve a empezar (<code>0xFF</code> en "
         "<code>p00:57BF</code>). Solo se sale por un <b>torii</b>, que lleva "
         "a la sala de la fase.</p><p>Sale de las tablas y del c&oacute;digo; "
         "el mapa de cada fase, cotejado contra la pantalla de openMSX.</p>"),
        ("18 puertas, y dos salas que te devuelven atr&aacute;s",
         "<p>Las puertas est&aacute;n en <code>p09:A269</code>: &aacute;rea, "
         "fila y sitio de llegada. De cada fase se va a su sala y de la sala a "
         "la fase siguiente, pero la sala 3 tiene dos salidas (a la fase 4 o "
         "<b>de vuelta a la 1</b>) y la 5 tambi&eacute;n (a la 6 o a la 2); "
         "la de la sala 6 lleva a la fase 4. Las cuatro &uacute;ltimas puertas "
         "llevan al &aacute;rea <code>0x18</code>, que no existe.</p><p>Sale "
         "de las tablas; no lo hemos jugado.</p>"),
        ("El objeto que salta de fase",
         "<p>Con F5 sale un mapa de las seis fases; si se lleva el objeto 14, "
         "con los cursores se elige una y con ESPACIO se salta a ella, "
         "gastando uno (<code>p02:8555</code>). HOIHOIHOINOHOI da nueve.</p>"
         "<p>Sale del c&oacute;digo; el truco s&iacute; se ha medido "
         "(<code>0xC884</code> = 9).</p>"),
        ("Un truco con el nombre de un dise&ntilde;ador",
         "<p>Los cr&eacute;ditos del final (<code>p06:AB23</code>) firman "
         "con apodos: ULTRAMAN ADACHI, DARENANDA SUZUKI, 27INCH NAGAE, MOAI "
         "SASAKI&hellip; y METALSLAVE NAOKI, dise&ntilde;ador. METALSLAVE es "
         "tambi&eacute;n la contrase&ntilde;a de truco que llena la vida.</p>"
         "<p>Medido en la ROM; los cr&eacute;ditos, transcritos en Hallazgos.</p>"),
        ("Dieciocho dibujos que no usa nadie",
         "<p>De <code>p07:7457</code> a <code>p08:824E</code> hay 18 tiras en el "
         "mismo RLE que los sprites (<code>p00:4A8D</code>), 3 KB, y ninguna "
         "palabra del cartucho apunta a ellas.</p><p>Medido en la ROM.</p>"),
    ],
    "en": [
        ("With King Kong 2 next to it, it boots King Kong 2 and saves its game",
         "<p>At power-on, <code>p00:5DFF</code> looks at the other slots. If "
         "it finds the <b>King Kong 2</b> header (<code>'CD' 07 45</code> at "
         "<code>0x4010</code>), Hinotori does not start: it copies King Kong "
         "2's INIT to <code>0xF120</code>, hooks the interrupt with 170 bytes "
         "of its own copied to <code>0xF220</code> (<code>p09:B925</code>) and "
         "jumps to King Kong 2. While playing, <b>F4 saves</b> the game to "
         "tape and <b>F5 loads it</b>, with the BIOS tape routines and the "
         "code at <code>p09:B9CF</code>.</p><p>Seen in openMSX with both "
         "cartridges: King Kong 2 boots and F4 brings up &laquo;SAVE MODE / "
         "INPUT FILE NAME&raquo; inside its screen.</p>"),
        ("With Q*bert or the Game Master, a menu to choose the stage",
         "<p>If there is a <b>Q*bert</b> (RC-746) or a <b>Game Master</b> "
         "(RC-735) next to it, recognised by six bytes at its end "
         "(<code>p00:5E78</code>), pressing SPACE on the title brings up a "
         "menu: START GAME, MODIFY STAGE NUMBER and MODIFY PLAYER NUMBER "
         "(<code>p00:4735</code>), to start on another stage and with other "
         "lives. And the STOP key freezes the game (<code>p00:4124</code>).</p>"
         "<p>The menu, seen in openMSX with Q*bert next to it and built here "
         "from the ROM (0 bytes different). The STOP key comes from the code; "
         "we have not tried it.</p>"),
        ("17 cheat passwords, and one that cannot be typed",
         "<p>F1 (pause), HOME and HOME let you type a password. Besides the "
         "ones that save the game, there are <b>17 cheats</b> at "
         "<code>p06:B8A0</code>, each followed by the code it runs, and each "
         "works once per game (<code>0xC600</code>). GAOOOOOOOOOOH gives 10 "
         "lives; ILOVEHINOTORI, invincibility; NANDANANDANANDA, no lives lost; "
         "FULLITEMDAYOON, KINOOOIHITODANE and SUPERBALL fill up items; "
         "METALSLAVE, full energy; ENDDEMOGAMITAINA shows the "
         "ending&hellip;</p><p>One, &laquo;aaaaa&raquo;, <b>cannot be "
         "typed</b>: <code>p06:B5AB</code> turns what you type into capitals. "
         "Fifteen tried in openMSX, with the change measured in RAM.</p>"),
        ("The stages wrap round",
         "<p>Every stage is <b>three columns</b> 256 pixels wide and 1,536 "
         "high. Leaving by one side you come in by the other "
         "(<code>p01:653A</code>: from column 2 to 0 and back), and at the top "
         "the map starts again (<code>0xFF</code> in <code>p00:57BF</code>). "
         "The only way out is a <b>torii</b>, which leads to the stage's "
         "room.</p><p>It comes from the tables and the code; the map of each "
         "stage is checked against the openMSX screen.</p>"),
        ("18 gates, and two rooms that send you back",
         "<p>The gates are at <code>p09:A269</code>: area, row and arrival "
         "point. Every stage leads to its room and every room to the next "
         "stage, but room 3 has two exits (to stage 4 or <b>back to 1</b>) and "
         "so does room 5 (to 6 or to 2); room 6's leads to stage 4. The last "
         "four gates lead to area <code>0x18</code>, which does not "
         "exist.</p><p>It comes from the tables; we have not played it.</p>"),
        ("The item that jumps between stages",
         "<p>F5 brings up a map of the six stages; carrying item 14, the "
         "cursor keys choose one and SPACE jumps there, using one up "
         "(<code>p02:8555</code>). HOIHOIHOINOHOI gives nine.</p><p>It comes "
         "from the code; the cheat itself was measured "
         "(<code>0xC884</code> = 9).</p>"),
        ("A cheat named after a designer",
         "<p>The ending credits (<code>p06:AB23</code>) are signed with "
         "nicknames: ULTRAMAN ADACHI, DARENANDA SUZUKI, 27INCH NAGAE, MOAI "
         "SASAKI&hellip; and METALSLAVE NAOKI, designer. METALSLAVE is also "
         "the cheat password that fills up the energy.</p><p>Measured in the "
         "ROM; the credits are transcribed in Findings.</p>"),
        ("Eighteen drawings nobody uses",
         "<p>From <code>p07:7457</code> to <code>p08:824E</code> there are 18 "
         "strips in the same RLE as the sprites (<code>p00:4A8D</code>), 3 KB, "
         "and no word in the cartridge points at them.</p><p>Measured in the "
         "ROM.</p>"),
    ],
}

# La cabecera: el rotulo del titulo, dibujado desde la ROM (tools/titulo.py)
LOGOTIPO = "rotulo.png"
GALERIA = [
    ("titulo.png",
     "El t&iacute;tulo: la hoja de las listas de <code>p04:6443</code>, "
     "<code>6458</code> y <code>6468</code> y los mapas de dibujos de "
     "<code>p13:7640</code>, <code>79A0</code>, <code>7D00</code> y "
     "<code>7D30</code>. Cotejado contra openMSX: 0 bytes distintos.",
     "The title: the sheet from the lists at <code>p04:6443</code>, "
     "<code>6458</code> and <code>6468</code> and the tile maps at "
     "<code>p13:7640</code>, <code>79A0</code>, <code>7D00</code> and "
     "<code>7D30</code>. Checked against openMSX: 0 bytes different."),
    ("mapa.png",
     "Las seis fases, cada una con sus tres columnas y su sala, y debajo el "
     "camino entre ellas. En amarillo, las puertas con su destino "
     "(<code>p09:A269</code>); en azul, por d&oacute;nde se entra a la fase.",
     "The six stages, each with its three columns and its room, and the "
     "route between them underneath. In yellow, the gates with where they "
     "lead (<code>p09:A269</code>); in blue, where you come into the stage."),
    ("fase1.png",
     "La fase 1 entera: superfilas de <code>p11:7FC0</code>, bloques de "
     "<code>p10:6000</code>, la hoja de las listas del banco 4 y la paleta de "
     "<code>p05:9E2C</code>.",
     "Stage 1 in full: superrows at <code>p11:7FC0</code>, blocks at "
     "<code>p10:6000</code>, the sheet from the bank-4 lists and the palette "
     "at <code>p05:9E2C</code>."),
    ("gao.png",
     "Gao en sus 20 poses: dos sprites de 16 &times; 16 a dos capas cada una "
     "(<code>p06:A0BB</code>), andando, saltando, lanzando y ardiendo.",
     "Gao in his 20 poses: two 16 &times; 16 sprites of two layers each "
     "(<code>p06:A0BB</code>), walking, jumping, throwing and burning."),
    ("cosas.png",
     "Los 132 sprites de las 41 cosas que las &aacute;reas cargan "
     "(<code>p07:6173</code>): enemigos, jefes a trozos y lo que lanzan. En "
     "dos tonos: el color lo pone cada bicho al moverse.",
     "The 132 sprites of the 41 sets the areas load (<code>p07:6173</code>): "
     "enemies, bosses in pieces and what they throw. In two tones: the colour "
     "is set by each enemy as it moves."),
    ("objetos.png",
     "Los 41 objetos como los pinta la ventana ITEM INFORMATION "
     "(<code>p01:7B60</code>): del 16 en adelante, un icono encima de un "
     "fondo.",
     "The 41 items as the ITEM INFORMATION window draws them "
     "(<code>p01:7B60</code>): from 16 on, an icon over a background."),
    ("menu.png",
     "El men&uacute; que sale con Q*bert o el Game Master al lado "
     "(<code>p00:5E89</code>). Cotejado: 0 bytes distintos.",
     "The menu shown with Q*bert or the Game Master next to it "
     "(<code>p00:5E89</code>). Checked: 0 bytes different."),
    ("konami.png",
     "El logotipo de Konami: letras de 1 bit de <code>p09:AB3C</code> "
     "compuestas por <code>p01:6710</code>. 0 bytes distintos.",
     "The Konami logo: 1-bit letters at <code>p09:AB3C</code> put together "
     "by <code>p01:6710</code>. 0 bytes different."),
]
