if (instance_number(obj_progresion) > 1) {
    instance_destroy();
    exit;
}

persistent = true;

// Progresion de las zonas
room1_completado = false;
room2_completado = false;
room3_completado = false;
puzzle_criptas_completado = false;
room4_completado = false;

// Control de las puertas
puertas_room1 = false;
puertas_room2 = false;
puertas_room3 = false;
puerta_room4 = false;
puerta_room5 = false;

// Mostrar mensaje inicial
instance_create_depth(0, 0, -10000, obj_mensaje_inicio);
