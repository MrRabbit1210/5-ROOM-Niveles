if (instance_exists(obj_player))
{
    var jugador = instance_nearest(x, y, obj_player);

    if (point_distance(x, y, jugador.x, jugador.y) < 24)
    {
        with (obj_valerian)
        {
            boss_activo = true;
        }

        var progreso = instance_find(obj_progresion, 0);

        if (progreso != noone)
        {
            progreso.boss_valerian_activado = true;
        }

        instance_create_layer(
            0, 0,
            "Instances_zona_boss",
            obj_boss_bar
        );

        instance_destroy();
    }
}