
if (jugador_cerca &&
    !documento_encontrado &&
    !instance_exists(obj_mensaje_bibloteca)) {

    var nuevo_mensaje = instance_create_depth(
        0,
        0,
        -10000,
        obj_mensaje_bibloteca
    );

    nuevo_mensaje.mensaje = "No hay informacion relevante en esta biblioteca.";

    documento_encontrado = true;
}
