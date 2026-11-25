var jugador = instance_nearest(x, y, obj_player);

if (jugador != noone)
{
    jugador_cerca = point_distance(x, y, jugador.x, jugador.y) < 50;
}
else
{
    jugador_cerca = false;
}