// =====================================
// ROOM 1
// =====================================

var enemigos_patio = instance_number(obj_enemy_room1);

if (enemigos_patio == 0) {
    puertas_room1 = true;
}


// =====================================
// ROOM 3
// =====================================

var enemigos_room3 = instance_number(obj_enemy_room3);

if (enemigos_room3 == 0) {
    puertas_room3 = true;
    room3_completado = true;
}

// =====================================
// BOSS VALERIAN
// =====================================

// BOSS VALERIAN
if (boss_valerian_activado && !boss_valerian_derrotado)
{
    if (instance_number(obj_valerian) == 0)
    {
        boss_valerian_derrotado = true;
        puerta_room5 = true;
    }
}