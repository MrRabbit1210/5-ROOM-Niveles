var jugador = instance_find(obj_player, 0);

if (jugador != noone && !recogida) {
    var distancia = point_distance(x, y, jugador.x, jugador.y);
    jugador_cerca = (distancia <= radio_interaccion);
} else {
    jugador_cerca = false;
}