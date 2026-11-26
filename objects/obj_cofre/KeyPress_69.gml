if (jugador_cerca)
{
    // Si no existe un mensaje, crear el siguiente
    if (!instance_exists(obj_mensaje_bibloteca))
    {
        if (dialogo_actual < array_length(mensajes))
        {
            // Abrir el cofre solamente la primera vez
            if (!cofre_abierto)
            {
                cofre_abierto = true;
                sprite_index = sprite_abierto;
            }

            var nuevo_mensaje = instance_create_depth(
                0, 0, -10000, obj_mensaje_bibloteca
            );

            nuevo_mensaje.mensaje = mensajes[dialogo_actual];

            dialogo_actual++;
        }
    }
}