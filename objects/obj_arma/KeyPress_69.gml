
if (jugador_cerca && !recogida) {

    var jugador = instance_find(obj_player, 0);

    if (jugador != noone) {
        jugador.tiene_arma = true;
    }

    // Mostrar mensaje con los controles de la pistola
    var nuevo_mensaje = instance_create_depth(
        0,
        0,
        -10000,
        obj_mensaje_bibloteca
    );

    nuevo_mensaje.mensaje = "¡Conseguiste la pistola!\n\nPresiona Q para intercambiar entre pistola y melee.\n\nClic izquierdo para atacar o disparar.";

    recogida = true;
    instance_destroy();
}
