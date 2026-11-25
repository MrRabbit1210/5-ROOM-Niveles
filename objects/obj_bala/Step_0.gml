
// Calcular movimiento
var _mov_x = lengthdir_x(velocidad, direccion);
var _mov_y = lengthdir_y(velocidad, direccion);

// Mover la bala sin comprobar colisiones
x += _mov_x;
y += _mov_y;

// Sumar distancia recorrida
distancia_recorrida += point_distance(0, 0, _mov_x, _mov_y);

// Destruir al alcanzar la distancia máxima
if (distancia_recorrida >= distancia_maxima) {
    instance_destroy();
    exit;
}

// Tiempo de vida
tiempo_vida--;

if (tiempo_vida <= 0) {
    instance_destroy();
}
