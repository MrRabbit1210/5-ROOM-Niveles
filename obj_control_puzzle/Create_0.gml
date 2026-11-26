secuencia_jugador = [];

secuencia_correcta = [
    "sol",
    "luna",
    "murcielago",
    "calavera"
];

puzzle_completado = false;

// Registrar las plataformas
registrar_plataforma = function(_nombre)
{
    if (puzzle_completado) return;

    var posicion = array_length(secuencia_jugador);

    if (_nombre == secuencia_correcta[posicion])
    {
        array_push(secuencia_jugador, _nombre);

        // Comprobar si se completo la secuencia
        if (array_length(secuencia_jugador) == array_length(secuencia_correcta))
        {
            puzzle_completado = true;

            show_debug_message("PUZZLE COMPLETADO");

            // Desbloquear la puerta de Room 4
            var progreso = instance_find(obj_progresion, 0);

            if (progreso != noone)
            {
                progreso.puerta_room4 = true;
            }
        }
    }
    else
    {
        // Secuencia incorrecta: volver a empezar
        secuencia_jugador = [];
    }
};