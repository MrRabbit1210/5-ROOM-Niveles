if (esperar_soltar) {
    if (!keyboard_check(ord("E"))) {
        esperar_soltar = false;
    }
}
else {
    if (keyboard_check_pressed(ord("E"))) {

        var jugador = instance_find(obj_player, 0);

        if (jugador != noone) {
            jugador.bloquear_movimiento = false;
            jugador.bloquear_ataque = false;
        }

        instance_destroy();
    }
}