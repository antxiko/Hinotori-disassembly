#!/bin/sh
# lanza_bp.sh <dir> <bp> [vez] ["espacios"] [max] [otros argumentos de openMSX]:
# UN openMSX con tools/omsx_bp.tcl
R=$(cd "$(dirname "$0")/.." && pwd)
D=$R/$1
BP=$2
VEZ=${3:-1}
ESP=$4
MAX=${5:-120}
shift 5 2>/dev/null || shift $#
mkdir -p $D
cd $R && HI_OUT=$D HI_BP=$BP HI_VEZ=$VEZ HI_ESPACIO="$ESP" HI_MAX=$MAX timeout 600 "/c/Program Files/openMSX/openmsx.exe" -machine C-BIOS_MSX2_JP -carta hinotori.rom -romtype Konami "$@" -script tools/omsx_bp.tcl > $D/log.txt 2>&1
echo hecho > $D/fin.txt
