
var ancho = display_get_gui_width();
var alto = display_get_gui_height();

var panel_ancho = ancho * 0.75;
var panel_alto = alto * 0.70;

var x1 = (ancho - panel_ancho) / 2;
var y1 = (alto - panel_alto) / 2;

// Fondo de la ventana
draw_set_color(make_color_rgb(45, 32, 25));
draw_set_alpha(0.95);
draw_rectangle(x1, y1, x1 + panel_ancho, y1 + panel_alto, false);

// Titulo
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(fnt_documentos);

draw_text(x1 + 30, y1 + 25, "Documentos de la familia Valerian");

// =====================================
// BOTON PARA CERRAR (X)
// =====================================

draw_set_color(c_white);
draw_set_font(fnt_documentos);
draw_text(x1 + panel_ancho - 45, y1 + 20, "X");

// =====================================
// DOCUMENTOS
// =====================================

if (documento_abierto == -1) {

    var espacio_ancho = 130;
    var espacio_alto = 170;
    var separacion = 20;

    var inicio_x = x1 + 55;
    var inicio_y = y1 + 110;

    var escala = 4;

    // Posicion de la seleccion de documentos
    var seleccion_inicio_x = x1 + panel_ancho * 0.73;
    var seleccion_inicio_y = y1 + 150;

    // Dibujar casillas
    for (var i = 0; i < 4; i++) {

        var casilla_x = inicio_x + i * (espacio_ancho + separacion);

        draw_set_color(c_white);

        draw_rectangle(
            casilla_x,
            inicio_y,
            casilla_x + espacio_ancho,
            inicio_y + espacio_alto,
            true
        );
    }

    // Dibujar documentos colocados
    for (var i = 0; i < 4; i++) {

        if (documentos_colocados[i] != -1) {

            var casilla_x = inicio_x + i * (espacio_ancho + separacion);

            draw_sprite_ext(
                spr_documento,
                0,
                casilla_x + espacio_ancho / 2,
                inicio_y + espacio_alto / 2,
                escala,
                escala,
                0,
                c_white,
                1
            );
        }
    }

    // Dibujar documentos disponibles
    for (var i = 0; i < 4; i++) {

        var ya_colocado = false;

        for (var j = 0; j < 4; j++) {

            if (documentos_colocados[j] == documentos[i]) {
                ya_colocado = true;
            }
        }

        if (!ya_colocado && !(arrastrando && documento_arrastrado == documentos[i])) {

            var columna = i mod 2;
            var fila = floor(i / 2);

            var doc_x = seleccion_inicio_x + columna * 150;
            var doc_y = seleccion_inicio_y + fila * 170;

            draw_sprite_ext(
                spr_documento,
                0,
                doc_x,
                doc_y,
                escala,
                escala,
                0,
                c_white,
                1
            );
        }
    }

    // Dibujar documento mientras se arrastra
    if (arrastrando && documento_arrastrado != -1) {

        var mx = device_mouse_x_to_gui(0);
        var my = device_mouse_y_to_gui(0);

        draw_sprite_ext(
            spr_documento,
            0,
            mx,
            my,
            escala,
            escala,
            0,
            c_white,
            1
        );
    }

    // Cartel al pasar el mouse
    if (documento_hover != -1 && !arrastrando) {

        var titulo_hover = "";
        var id_doc = -1;

        if (documento_hover >= 0) {

            id_doc = documentos[documento_hover];

        } else {

            var casilla_origen = -documento_hover - 11;

            if (casilla_origen >= 0 && casilla_origen < 4) {
                id_doc = documentos_colocados[casilla_origen];
            }
        }

        switch (id_doc) {

            case 1:
                titulo_hover = "El origen de la familia Valerian";
                break;

            case 2:
                titulo_hover = "La transformacion de Valerian";
                break;

            case 3:
                titulo_hover = "La rebelion del pueblo";
                break;

            case 4:
                titulo_hover = "El ritual de sangre";
                break;
        }

        var mx = device_mouse_x_to_gui(0);
        var my = device_mouse_y_to_gui(0);

        draw_set_alpha(0.95);
        draw_set_color(make_color_rgb(35, 25, 20));

        draw_rectangle(
            mx + 10,
            my + 10,
            mx + 270,
            my + 75,
            false
        );

        draw_set_alpha(1);
        draw_set_color(c_white);

        draw_text_ext(
            mx + 20,
            my + 20,
            titulo_hover,
            18,
            240
        );
    }
}

// =====================================
// VISTA AMPLIADA DEL DOCUMENTO
// =====================================

if (documento_abierto != -1) {

    draw_set_alpha(1);
    draw_set_color(make_color_rgb(35, 25, 20));

    var vista_ancho = 500;
    var vista_alto = 400;

    var vista_x = (ancho - vista_ancho) / 2;
    var vista_y = (alto - vista_alto) / 2;

    draw_rectangle(
        vista_x,
        vista_y,
        vista_x + vista_ancho,
        vista_y + vista_alto,
        false
    );

    draw_set_color(c_white);
    draw_set_font(fnt_documentos);

    var titulo_documento = "";
    var texto_documento = "";

    switch (documento_abierto) {

        case 1:
            titulo_documento = "El origen de la familia Valerian";
            texto_documento = "La familia Valerian obtuvo su titulo nobiliario gracias a su influencia y riqueza. Con el paso de los años, construyeron un enorme castillo, convirtiendose en una de las familias mas poderosas de la region.";
            break;

        case 2:
            titulo_documento = "La transformacion de Valerian";
            texto_documento = "El conde Valerian, obsesionado con vencer a la muerte, realizo un antiguo ritual que lo convirtio en vampiro. Tiempo despues, reunio a otros seres de la noche y formo una secta que habitaba el castillo.";
            break;

        case 3:
            titulo_documento = "La rebelion del pueblo";
            texto_documento = "Los habitantes de la region descubrieron la verdadera naturaleza del conde y sus seguidores. Temiendo por sus vidas, organizaron una rebelion y atacaron el castillo. Sin embargo, nunca lograron encontrar a Valerian.";
            break;

        case 4:
            titulo_documento = "El ritual de sangre";
            texto_documento = "Tras la rebelion, los vampiros supervivientes realizaron un ritual para proteger a su senor. Utilizando un antiguo caliz, atraparon a Valerian en un estado incorporeo, impidiendo que pudiera ser destruido.";
            break;
    }

    draw_text(
        vista_x + 25,
        vista_y + 25,
        titulo_documento
    );

    draw_text_ext(
        vista_x + 25,
        vista_y + 85,
        texto_documento,
        24,
        vista_ancho - 50
    );
}

draw_set_alpha(1);
draw_set_color(c_white);
