# omsx_guion.tcl - Un guion de acciones a tiempo (segundos emulados), para
# comprobar en el juego lo que dice el codigo. HI_GUION lleva las acciones
# separadas por ';', cada una "t orden argumentos":
#   t tecla FILA MASCARA DURACION   pulsa en la matriz del teclado
#   t escribe TEXTO                 lo teclea (openMSX `type`; \r = RETURN)
#   t vuelca NOMBRE                 VRAM, paleta, RAM 0xC000-0xFFFF, regs y foto
#   t poke DIR VALOR                escribe un byte en la memoria
#   t fin                           sale
#
#   HI_OUT=<dir> HI_GUION="31 tecla 8 1 0.2; 40 vuelca a; 41 fin" openmsx \
#       -machine C-BIOS_MSX2_JP -cart hinotori.rom -romtype Konami -script este.tcl
set OUT $::env(HI_OUT)
file mkdir $OUT
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
proc tecla {fila mascara dur} {
    keymatrixdown $fila $mascara
    after time $dur [list keymatrixup $fila $mascara]
}
proc escribe {txt} { type [subst -nocommands -novariables $txt] }
proc poke {dir val} { debug write memory $dir $val }
# Primero se llega a la partida: ESPACIO cada segundo hasta que 0xC100
# (el estado del juego) vale 5 -jugando- y lleva 3 segundos asi; los tiempos del
# guion cuentan desde ese momento.
set ::en_partida 0
proc a_la_partida {} {
    set f [open "$::OUT/estados.txt" a]
    puts $f "[machine_info time] [debug read memory 0xC100] [debug read memory 0xC101] [debug read memory 0xC102]"
    close $f
    if {[debug read memory 0xC100] == 5} {
        incr ::en_partida
        if {$::en_partida >= 3} { arranca_guion ; return }
    } else {
        set ::en_partida 0
        tecla 8 1 0.2
    }
    after time 1 a_la_partida
}
after time 10 a_la_partida
proc arranca_guion {} {
foreach accion [split $::env(HI_GUION) ";"] {
    set accion [string trim $accion]
    if {$accion eq ""} continue
    set t [lindex $accion 0]
    set orden [lindex $accion 1]
    set args [lrange $accion 2 end]
    switch $orden {
        tecla   { after time $t [list tecla {*}$args] }
        escribe { after time $t [list escribe [join $args " "]] }
        vuelca  { after time $t [list vuelca {*}$args] }
        poke    { after time $t [list poke {*}$args] }
        fin     { after time $t exit }
    }
}
}
