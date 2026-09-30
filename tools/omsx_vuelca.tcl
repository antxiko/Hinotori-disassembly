# omsx_vuelca.tcl - Volcados para cotejar: VRAM (128 KB), RAM 0xC000-0xFFFF y
# paleta y registros del VDP en los instantes de HI_T (segundos emulados). Pulsa
# ESPACIO en los instantes de HI_ESPACIO. Cada volcado va a HI_OUT/tNNN.*, y
# una foto de la pantalla a HI_OUT/tNNN.png.
#
#   HI_OUT=<dir> HI_T="5 20" openmsx -machine C-BIOS_MSX2_JP \
#       -cart hinotori.rom -romtype Konami -script este.tcl
set OUT $::env(HI_OUT)
file mkdir $OUT
set TS $::env(HI_T)
set ESP [expr {[info exists ::env(HI_ESPACIO)] ? $::env(HI_ESPACIO) : ""}]
set throttle off
proc guarda {nom datos} {
    set f [open "$::OUT/$nom" wb]; puts -nonewline $f $datos; close $f
}
proc vuelca {t} {
    set n [format t%03d $t]
    guarda $n.vram [debug read_block VRAM 0 131072]
    guarda $n.pal [debug read_block "VDP palette" 0 32]
    guarda $n.ram [debug read_block memory 0xC000 0x4000]
    set r ""
    for {set i 0} {$i < 47} {incr i} { append r [format %c [debug read "VDP regs" $i]] }
    guarda $n.regs $r
    guarda $n.pc [format "%04X %04X" [reg pc] [reg sp]]
    screenshot -raw -doublesize $::OUT/$n.png
}
proc espacio {} { keymatrixdown 8 0x01 ; after time 0.2 { keymatrixup 8 0x01 } }
foreach t $ESP { after time $t espacio }
foreach t $TS { after time $t [list vuelca $t] }
after time [expr {[lindex [lsort -real $TS] end] + 1}] exit
