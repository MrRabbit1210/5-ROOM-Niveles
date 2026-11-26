if (place_meeting(x, y, obj_player))
{
    if (!presionado)
    {
        presionado = true;
        sprite_index = sprite_presionado;

        show_debug_message("Plataforma pisada: " + nombre_plataforma);

        var control = instance_find(obj_control_puzzle, 0);

        if (control == noone)
        {
            show_debug_message("ERROR: NO SE ENCONTRO obj_control_puzzle");
        }
        else
        {
            show_debug_message("CONTROLADOR ENCONTRADO");

            if (!control.puzzle_completado)
            {
                control.registrar_plataforma(nombre_plataforma);
            }
        }
    }
}
else
{
    presionado = false;
    sprite_index = sprite_normal;
}
