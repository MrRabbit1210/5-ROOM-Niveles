if (jugador_cerca)
{
    if (!instance_exists(obj_mensaje_puzzle))
    {
        var interfaz = instance_create_depth(
            0, 0, -10000, obj_mensaje_puzzle
        );

        interfaz.mensaje = "Cuando el sol desaparezca, la noche despertará.\nLa luna guiará a las criaturas de la oscuridad, y la muerta reclamará su lugar.";
    }
}