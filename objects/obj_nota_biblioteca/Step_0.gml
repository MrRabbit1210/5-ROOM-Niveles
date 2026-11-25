var jugador = instance_find(obj_player, 0);

if (jugador != noone) {
    jugador_cerca = point_distance(x, y, jugador.x, jugador.y) < 40;
}