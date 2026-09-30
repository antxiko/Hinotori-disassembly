# omsx_bp.tcl - Vuelca VRAM, RAM, paleta y registros cuando el Z80 pasa por
# HI_BP (direccion; si es del cartucho, cualquiera que sea el banco puesto)
# por HI_VEZ-esima vez (por defecto 1) y sale. Ademas pulsa ESPACIO en los
# instantes de HI_ESPACIO. Si en HI_MAX segundos no ha pasado, sale igual.
#
#   HI_OUT=<dir> HI_BP=0x66F9 openmsx -machine C-BIOS_MSX2_JP \
#       -cart hinotori.rom -romtype Konami -script este.tcl
set OUT $::env(HI_OUT)
file mkdir $OUT
set BP $::env(HI_BP)
set ::VEZ [expr {[info exists ::env(HI_VEZ)] ? $::env(HI_VEZ) : 1}]
set ESP [expr {[info exists ::env(HI_ESPACIO)] ? $::env(HI_ESPACIO) : ""}]
set MAX [expr {[info exists ::env(HI_MAX)] ? $::env(HI_MAX) : 120}]
set throttle off
proc guarda {nom datos} {
    set f [open "$::OUT/$nom" wb]; puts -nonewline $f $datos; close $f
}
proc vuelca {n} {
    guarda $n.vram [debug read_block VRAM 0 131072]
    guarda $n.pal [debug read_block "VDP palette" 0 32]
    guarda $n.ram [debug read_block memory 0xC000 0x4000]
    set r ""
    for {set i 0} {$i < 47} {incr i} { append r [format %c [debug read "VDP regs" $i]] }
    guarda $n.regs $r
    screenshot -raw -doublesize $::OUT/$n.png
}
set ::cuenta 0
proc llega {} {
    incr ::cuenta
    if {$::cuenta == $::VEZ} {
        vuelca bp
        exit
    }
}
proc espacio {} { keymatrixdown 8 0x01 ; after time 0.2 { keymatrixup 8 0x01 } }
foreach t $ESP { after time $t espacio }
debug set_bp $BP {} llega
after time $MAX { vuelca tope ; exit }
