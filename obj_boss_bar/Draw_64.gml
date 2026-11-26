
/// DRAW GUI EVENT - obj_boss_bar

if (instance_exists(obj_valerian))
{
    var boss = instance_nearest(x, y, obj_valerian);

    // Dimensiones
    var barra_ancho = 450;
    var barra_alto = 22;

    // Posición
    var centro_x = display_get_gui_width() / 2;
    var barra_x = centro_x - barra_ancho / 2;
    var barra_y = 55;

    // Vida
    var porcentaje = clamp(boss.hp / boss.hp_max, 0, 1);

    // Nombre centrado
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_transformed(
        centro_x,
        barra_y - 20,
        "VALERIAN",
        1.5,
        1.5,
        0
    );

    // Fondo
    draw_set_color(c_black);
    draw_rectangle(
        barra_x - 3, barra_y - 3,
        barra_x + barra_ancho + 3,
        barra_y + barra_alto + 3,
        false
    );

    // Barra vacía
    draw_set_color(c_dkgray);
    draw_rectangle(
        barra_x, barra_y,
        barra_x + barra_ancho,
        barra_y + barra_alto,
        false
    );

    // Vida restante
    draw_set_color(c_red);
    draw_rectangle(
        barra_x, barra_y,
        barra_x + barra_ancho * porcentaje,
        barra_y + barra_alto,
        false
    );

    // Restaurar alineación
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
}
