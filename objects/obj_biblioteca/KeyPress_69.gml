if (jugador_cerca &&
    !documento_encontrado &&
    !instance_exists(obj_mensaje_bibloteca)) {

    var texto_mensaje = "";

    switch (numero_documento) {

        case 1:
            texto_mensaje = "Encontraste un documento sobre el origen de la familia Valerian.";
            break;

        case 2:
            texto_mensaje = "Encontraste un documento sobre la transformacion de Valerian.";
            break;

        case 3:
            texto_mensaje = "Encontraste un documento sobre la rebelion del pueblo.";
            break;

        case 4:
            texto_mensaje = "Encontraste un documento sobre el ritual de los vampiros.";
            break;
    }

    // Crear mensaje
    var nuevo_mensaje = instance_create_depth(
        0,
        0,
        -10000,
        obj_mensaje_bibloteca
    );

    nuevo_mensaje.mensaje = texto_mensaje;

    // Registrar documento encontrado
    var jugador = instance_find(obj_player, 0);

    if (jugador != noone) {
        jugador.documentos_encontrados[numero_documento - 1] = true;
    }

    documento_encontrado = true;
}
