#!/bin/sh
# lanza_guion.sh <dir> "<guion>" [otros argumentos de openMSX]: UN openMSX con tools/omsx_guion.tcl
R=$(cd "$(dirname "$0")/.." && pwd)
D=$R/$1
G=$2
shift 2
mkdir -p $D
cd $R && HI_OUT=$D HI_GUION="$G" timeout 900 "/c/Program Files/openMSX/openmsx.exe" -machine C-BIOS_MSX2_JP -carta hinotori.rom -romtype Konami "$@" -script tools/omsx_guion.tcl > $D/log.txt 2>&1
echo hecho > $D/fin.txt
