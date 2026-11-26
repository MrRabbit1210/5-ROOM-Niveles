var ancho = display_get_gui_width();
var alto = display_get_gui_height();

// Dimensiones del cartel
var caja_ancho = ancho * 0.65;
var caja_alto = 350;

var caja_x = (ancho - caja_ancho) / 2;
var caja_y = (alto - caja_alto) / 2;

// Fondo oscuro
draw_set_alpha(0.95);
draw_set_color(make_color_rgb(35, 25, 20));

draw_rectangle(
    caja_x,
    caja_y,
    caja_x + caja_ancho,
    caja_y + caja_alto,
    false
);

// Borde dorado
draw_set_alpha(1);
draw_set_color(make_color_rgb(180, 145, 90));

draw_rectangle(
    caja_x,
    caja_y,
    caja_x + caja_ancho,
    caja_y + caja_alto,
    true
);

// Título
draw_set_color(make_color_rgb(210, 180, 130));
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_documentos);

draw_text(
    ancho / 2,
    caja_y + 40,
    "CONTROLES DEL JUEGO"
);

// Controles
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(
    caja_x + 70,
    caja_y + 90,
    "WASD: Para moverse.\n\nClic izquierdo: Para atacar o disparar.\n\nESPACIO: Para realizar un dash.\n\nE: Para interactuar."
);

// Indicación para continuar
draw_set_color(make_color_rgb(210, 180, 130));
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(
    ancho / 2,
    caja_y + 310,
    "Presiona E para comenzar"
);

// Restaurar configuración
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
draw_set_color(c_white);