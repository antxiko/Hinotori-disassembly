#!/bin/sh
# lanza_vuelca.sh <dir> "<instantes>" ["<espacios>"] [otros argumentos de openMSX]:
# UN openMSX con tools/omsx_vuelca.tcl; deja <dir>/fin.txt al acabar.
R=$(cd "$(dirname "$0")/.." && pwd)
D=$R/$1
T=$2
E=$3
shift 3 2>/dev/null || shift $#
mkdir -p $D
cd $R && HI_OUT=$D HI_T="$T" HI_ESPACIO="$E" timeout 600 "/c/Program Files/openMSX/openmsx.exe" -machine C-BIOS_MSX2_JP -carta hinotori.rom -romtype Konami "$@" -script tools/omsx_vuelca.tcl > $D/log.txt 2>&1
echo hecho > $D/fin.txt
