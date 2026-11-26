if (jugador_cerca && !cofre_abierto)
{
    cofre_abierto = true;

    sprite_index = sprite_abierto;

    var nuevo_mensaje = instance_create_depth(
        0, 0, -10000, obj_mensaje_bibloteca
    );

    nuevo_mensaje.mensaje = "Has derrotado a Valerian y descubierto los secretos de su familia. ¡Felicitaciones por completar la mazmorra!";
}