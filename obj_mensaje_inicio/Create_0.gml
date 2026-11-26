mensaje = "WASD: Para moverse.\n\nClic izquierdo: Para atacar o disparar.\n\nESPACIO: Para realizar un dash.\n\nE: Para interactuar.";

esperar_soltar = true;

// Bloquear movimiento y ataques
var jugador = instance_find(obj_player, 0);

if (jugador != noone) {
    jugador.bloquear_ataque = true;
    jugador.bloquear_movimiento = true;
}