
if (!boss_activo)
{
    speed = 0;
    exit;
}

if (instance_exists(obj_player))
{
    var jugador = instance_nearest(x, y, obj_player);

    var distancia_jugador = point_distance(
        x, y,
        jugador.x, jugador.y
    );

    if (attack_cooldown > 0)
    {
        attack_cooldown--;
    }

    if (distancia_jugador > rango_ataque)
    {
        var _hor = clamp(jugador.x - x, -1, 1);
        var _ver = clamp(jugador.y - y, -1, 1);

        move_and_collide(
            _hor * velocidad,
            _ver * velocidad,
            [tilemap, obj_enemy_parent, tilemap2, tilemap3, tilemap4, tilemap_cena_walls]
        );
    }
    else
    {
        speed = 0;

        if (attack_cooldown <= 0)
        {
            jugador.hp -= danio;
            attack_cooldown = 90;
        }
    }
}