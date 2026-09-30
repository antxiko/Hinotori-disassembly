#!/bin/sh
# lanza_lecturas.sh: las medidas de tools/omsx_lecturas.tcl, UN openMSX cada
# vez, en work/omsx/fNN.txt. f01: sin tocar nada (titulo y demo). f02: empieza
# partida y juega hacia arriba disparando con el guion de work/teclas_paseo.txt.
R=$(cd "$(dirname "$0")/.." && pwd)
O=$R/work/omsx
mkdir -p $O
cd $R
X="/c/Program Files/openMSX/openmsx.exe"
if [ ! -s $O/f01.txt ]; then
  HI_OUT=$O/f01.txt HI_SEGS=90 HI_FOTOS="20 40 60 80" \
    timeout 900 "$X" -machine C-BIOS_MSX2_JP -cart hinotori.rom -romtype Konami -script tools/omsx_lecturas.tcl > $O/f01.log 2>&1
fi
if [ ! -s $O/f02.txt ]; then
  HI_OUT=$O/f02.txt HI_SEGS=300 HI_TECLAS="$(cat work/teclas_paseo.txt)" HI_FOTOS="30 60 90 120 150 180 210 240 270 295" \
    timeout 1800 "$X" -machine C-BIOS_MSX2_JP -cart hinotori.rom -romtype Konami -script tools/omsx_lecturas.tcl > $O/f02.log 2>&1
fi
echo hecho > $O/fin.txt
