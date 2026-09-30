#!/bin/sh
# lanza_bp.sh <dir> <bp> [vez] ["espacios"] [max]: UN openMSX con tools/omsx_bp.tcl
R=$(cd "$(dirname "$0")/.." && pwd)
D=$R/$1
mkdir -p $D
cd $R && HI_OUT=$D HI_BP=$2 HI_VEZ=${3:-1} HI_ESPACIO="$4" HI_MAX=${5:-120} timeout 600 "/c/Program Files/openMSX/openmsx.exe" -machine C-BIOS_MSX2_JP -cart hinotori.rom -romtype Konami -script tools/omsx_bp.tcl > $D/log.txt 2>&1
echo hecho > $D/fin.txt
