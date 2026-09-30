# omsx_lecturas.tcl - Quien lee cada byte del cartucho.
#
# Un watchpoint de lectura sobre 0x4000-0xBFFF apunta, para cada byte leido,
# el banco que estaba puesto (el debuggable "romblocks" del cartucho, que es
# el estado real del mapper y no la copia en RAM) y la instruccion que lo leyo
# (PC y el banco en el que corria). Las lecturas de instruccion NO pasan por
# aqui -openMSX solo avisa de las de datos-, asi que lo que sale son DATOS.
#
# Variables de entorno:
#   HI_OUT     fichero de salida (una linea por byte: "banco dir pcbanco pc" y
#              las diez palabras de arriba de la pila como "banco:dir")
#   HI_SEGS    segundos emulados que corre (por defecto 300)
#   HI_TECLAS  guion de pulsaciones "t:fila:mascara:dur ..." (opcional)
#   HI_FOTOS   segundos a los que se hace una captura (opcional)
#
#   openmsx -machine C-BIOS_MSX2_JP -cart hinotori.rom -romtype Konami -script este.tcl
set OUT $::env(HI_OUT)
set SEGS [expr {[info exists ::env(HI_SEGS)] ? $::env(HI_SEGS) : 300}]
set TECLAS [expr {[info exists ::env(HI_TECLAS)] ? $::env(HI_TECLAS) : ""}]

set ::RB ""
foreach d [debug list] { if {[string match "Firebird*romblocks" $d]} { set ::RB $d } }

proc banco {a} {
    if {$a < 0x4000 || $a >= 0xC000} { return -1 }
    return [debug read $::RB $a]
}

proc lee {} {
    set a $::wp_last_address
    set b [debug read $::RB $a]
    set k "$b [format %04X $a]"
    if {![info exists ::R($k)]} {
        set pc [reg PC]
        set sp [reg SP]
        set pila ""
        for {set i 0} {$i < 20} {incr i 2} {
            set w [expr {[debug read memory [expr {($sp + $i) & 0xFFFF}]] + 256 * [debug read memory [expr {($sp + $i + 1) & 0xFFFF}]]}]
            append pila " [banco $w]:[format %04X $w]"
        }
        set ::R($k) "[banco $pc] [format %04X $pc]$pila"
    }
}

proc pulsa {fila mascara dur} {
    keymatrixdown $fila $mascara
    after time $dur [list keymatrixup $fila $mascara]
}

proc fin {} {
    set f [open $::OUT w]
    foreach k [lsort [array names ::R]] { puts $f "$k $::R($k)" }
    close $f
    exit
}

proc foto {s} { screenshot [format "%s_%03d.png" [file rootname $::OUT] $s] }

set throttle off
if {[info exists ::env(HI_FOTOS)]} { foreach s $::env(HI_FOTOS) { after time $s [list foto $s] } }
# La medida empieza cuando INIT llega a su `jr $` (p00:4115). Antes, durante
# el arranque de la BIOS, la pagina 2 puede no ser el cartucho aunque el mapper
# diga que banco tiene y se colarian lecturas que no son del juego.
proc arma {} {
    if {$::armado} return
    set ::armado 1
    debug set_watchpoint read_mem {0x4000 0xBFFF} {} lee
}
set ::armado 0
debug set_bp 0x4115 {} arma
foreach t $TECLAS {
    lassign [split $t :] s fila m dur
    after time $s [list pulsa $fila $m $dur]
}
after time $SEGS fin
