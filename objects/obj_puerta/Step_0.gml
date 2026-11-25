var progreso = instance_find(obj_progresion, 0);

// Comprobar si la zona esta desbloqueada
if (progreso != noone) {
    switch (zona_puerta) {
        case 1:
            puede_abrirse = progreso.puertas_room1;
            break;

        case 2:
            puede_abrirse = progreso.puertas_room2;
            break;

        case 3:
            puede_abrirse = progreso.puertas_room3;
            break;

        case 4:
            puede_abrirse = progreso.puerta_room4;
            break;

        case 5:
            puede_abrirse = progreso.puerta_room5;
            break;
    }
}

// Abrir automaticamente cuando se desbloquea
if (puede_abrirse) {
    esta_abierta = true;
}

// Seleccionar sprite segun orientacion y estado
if (orientacion == "frente") {
    image_xscale = 1;
    image_yscale = 1;

    if (esta_abierta) {
        sprite_index = sprite_frente_abierta;
    }
    else {
        sprite_index = sprite_frente_cerrada;
    }
}
else if (orientacion == "costado") {
    image_xscale = 2;
    image_yscale = 2;

    if (esta_abierta) {
        sprite_index = sprite_costado_abierta;
    }
    else {
        sprite_index = sprite_costado_cerrada;
    }
}
