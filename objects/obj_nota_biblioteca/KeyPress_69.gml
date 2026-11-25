
if (jugador_cerca &&
    !instance_exists(obj_mensaje_bibloteca)) {

    var nuevo_mensaje = instance_create_depth(
        0,
        0,
        -10000,
        obj_mensaje_bibloteca
    );

    nuevo_mensaje.mensaje = "Los secretos de la familia Valerian quedaron registrados en los documentos de esta biblioteca. Solo quien consiga reconstruir su historia podra descubrir lo que ocurrio realmente.";
}
