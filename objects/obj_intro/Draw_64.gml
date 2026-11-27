
var ancho = display_get_gui_width();
var alto = display_get_gui_height();

// Fondo negro
draw_set_color(c_black);
draw_set_alpha(1);

draw_rectangle(
    0, 0,
    ancho, alto,
    false
);

// Configuración del texto
draw_set_color(c_white);
draw_set_font(fnt_documentos);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Márgenes y separación
var margen_superior = 70;
var margen_inferior = 140;

var separacion_parrafos = 35;
var separacion_lineas = 25;

var texto_ancho = ancho * 0.75;
var texto_x = (ancho - texto_ancho) / 2;

// Cantidad de páginas que ya se mostraron
var cantidad = min(
    pagina_actual + 1,
    array_length(paginas)
);

// Calcular la altura total de los textos
var altura_total = 0;

for (var i = 0; i < cantidad; i++)
{
    var altura_texto = string_height_ext(
        paginas[i],
        separacion_lineas,
        texto_ancho
    );

    altura_total += altura_texto;

    if (i < cantidad - 1)
    {
        altura_total += separacion_parrafos;
    }
}

// Espacio disponible para la historia
var espacio_disponible =
    alto - margen_superior - margen_inferior;

// Desplazamiento para mantener los últimos textos visibles
var desplazamiento = max(
    0,
    altura_total - espacio_disponible
);

// Dibujar todos los textos anteriores
var texto_y = margen_superior - desplazamiento;

for (var i = 0; i < cantidad; i++)
{
var texto_dibujar = paginas[i];

// El último párrafo se muestra progresivamente
if (i == pagina_actual)
{
    texto_dibujar = string_copy(
        paginas[i],
        1,
        floor(caracteres_visibles)
    );
}

draw_text_ext(
    texto_x,
    texto_y,
    texto_dibujar,
    separacion_lineas,
    texto_ancho
);

    var altura_texto = string_height_ext(
        paginas[i],
        separacion_lineas,
        texto_ancho
    );

    texto_y += altura_texto + separacion_parrafos;
}

// Indicación para continuar
draw_set_color(make_color_rgb(160, 160, 160));
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(
    ancho / 2,
    alto - 60,
    "Presiona E para continuar"
);

// Restaurar configuración
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_alpha(1);
