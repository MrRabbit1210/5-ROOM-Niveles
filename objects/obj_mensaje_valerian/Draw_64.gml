
var ancho = display_get_gui_width();
var alto = display_get_gui_height();

// Dimensiones del cartel
var caja_ancho = ancho * 0.80;
var caja_alto = 280;

var caja_x = (ancho - caja_ancho) / 2;
var caja_y = alto - 310;

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

// Texto de la página actual
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_documentos);

draw_text_ext(
    ancho / 2,
    caja_y + 75,
    paginas[pagina_actual],
    -1,
    caja_ancho - 60
);

// Indicación para continuar
draw_set_color(make_color_rgb(210, 180, 130));

draw_text(
    ancho / 2,
    caja_y + 180,
    "Presiona E para continuar"
);

// Restaurar configuración
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
draw_set_color(c_white);
