
// No interactuar mientras haya un mensaje abierto
if (instance_exists(obj_mensaje_bibloteca)) {
    exit;
}

var prog = instance_find(obj_progresion, 0);

// No permitir abrirlo si ya se resolvió el puzzle
if (prog != noone && prog.puertas_room2) {
    exit;
}

if (jugador_cerca && !pantalla_abierta) {

    // Mostrar la pista inicial una sola vez
    if (!pista_mostrada) {

        var nuevo_mensaje = instance_create_depth(
            0, 0, -10000, obj_mensaje_bibloteca
        );

        nuevo_mensaje.mensaje = "Parece que los documentos de la familia Valerian estan incompletos. Quizas debas reunirlos y ordenarlos para descubrir que ocurrio realmente.";

        pista_mostrada = true;
        exit;
    }

    var jugador = instance_find(obj_player, 0);

    if (jugador != noone) {

        if (jugador.documentos_encontrados[0] &&
            jugador.documentos_encontrados[1] &&
            jugador.documentos_encontrados[2] &&
            jugador.documentos_encontrados[3]) {

            pantalla_abierta = true;

            instance_create_depth(
                0, 0, -10000, obj_interfaz_documentos
            );

        } else {

            var nuevo_mensaje = instance_create_depth(
                0, 0, -10000, obj_mensaje_bibloteca
            );

            nuevo_mensaje.mensaje = "Todavia te faltan documentos por encontrar.";
        }
    }
}
