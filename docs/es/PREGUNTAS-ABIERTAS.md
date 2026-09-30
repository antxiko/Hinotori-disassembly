# Preguntas abiertas

Lo que no está resuelto, dicho tal cual.

- **El camino no se ha recorrido jugando.** Las puertas salen de la tabla de
  `p09:A269` y de las listas de cosas; no hemos cruzado un torii en openMSX.
- **El área `0x18`.** Las puertas 14-17 llevan a ella, que no está en
  ninguna tabla de 24 áreas. Ninguna lista de cosas pone esas puertas.
- **Cómo se acaba el juego.** Las salas 3, 5 y 6 devuelven a fases ya
  pasadas; lo que decide el final no está leído todavía (el estado 12 lo
  pone `0xC4DA`, que escribe ENDDEMOGAMITAINA y alguien más).
- **METALSLAVE**: se tecleó con Gao muriendo y no se pudo medir; el código
  (`p06:B92E`) pone la vida `0xC845` a 200.
- **La tecla STOP** con Q*bert o el Game Master al lado: sale del código, no
  se ha probado.
- **El color de los bichos.** Los sprites de las cosas van en dos tonos: el
  color lo pone el código de cada tipo y no está sacado tipo a tipo.
- **Las 18 tiras RLE sin puntero** de `p07:7457`: qué eran.
- **Los objetos del 18 al 32** se pintan con iconos casi vacíos en la hoja
  de las fases volcadas; puede que sus iconos se suban en otro momento.
