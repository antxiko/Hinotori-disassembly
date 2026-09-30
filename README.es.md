# Hinotori — desensamblado comentado

*(Also available [in English](README.md).)*

Desensamblado comentado de ***Hinotori: Hōōhen – Gaō no Bōken***
(火の鳥 鳳凰編 我王の冒険), Konami, 1987, cartucho **RC-747** para **MSX2**: un
MegaROM de 128 KB con el mapper Konami sin SCC, dieciséis bancos de 8 KB.

**La web**: https://antxiko.github.io/Hinotori-disassembly/es/

| | |
|---|---|
| explicado | 100 % (32.243 bytes de código, 98.829 de datos) |
| comentado | 23,4 % de las instrucciones |
| rutinas | 1.945, todas con nombre |
| reensamblado | la ROM, byte a byte |
| imágenes | dibujadas desde la ROM y cotejadas contra openMSX |

## Qué hay

- El listado de los dieciséis bancos (`src/hinotori_pNN.asm`), que se genera
  desde el binario y las notas y reensambla la ROM exacta.
- Las seis fases con sus tres columnas y su sala, y las 18 puertas que las
  unen, desde las tablas del cartucho.
- Gao en sus 20 poses, los 132 sprites de lo que sale en cada área y los 41
  objetos.
- Los secretos: 17 contraseñas de truco (una que no se puede escribir), el
  menú que sale con Q*bert o el Game Master al lado, y King Kong 2, que con
  Hinotori al lado se puede grabar en cinta.

## Cómo reproducirlo

Hace falta Python 3 (con Pillow), GNU make, [Pasmo](https://pasmo.speccy.org/)
y **tu propia imagen del cartucho** como `hinotori.rom` en la raíz:

```
sha256  d4d443c18203f1a463b4d0b356a95c5dc578e24e47e5ea596c773b63ad20fba0
make
```

Los detalles, en [Empezar](docs/es/EMPEZAR.md).

## Aviso

El juego es de Konami; aquí solo están el análisis, los comentarios y las
herramientas. La ROM no se distribuye. Ver [AVISO-LEGAL.md](AVISO-LEGAL.md).
