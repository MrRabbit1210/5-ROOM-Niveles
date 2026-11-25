
var ancho = display_get_gui_width();
var alto = display_get_gui_height();

var panel_ancho = ancho * 0.75;
var panel_alto = alto * 0.70;

var x1 = (ancho - panel_ancho) / 2;
var y1 = (alto - panel_alto) / 2;

// Posiciones de las casillas
var espacio_ancho = 130;
var espacio_alto = 170;
var separacion = 20;

var inicio_x = x1 + 55;
var inicio_y = y1 + 110;

// Posicion de los documentos disponibles
var seleccion_inicio_x = x1 + panel_ancho * 0.73;
var seleccion_inicio_y = y1 + 150;

// Posicion del boton X
var boton_x = x1 + panel_ancho - 45;
var boton_y = y1 + 20;

// =====================================
// CERRAR CON ESC
// =====================================

if (keyboard_check_pressed(vk_escape)) {

    if (documento_abierto != -1) {
        documento_abierto = -1;
    }
    else {
        var jugador = instance_find(obj_player, 0);

        if (jugador != noone) {
            jugador.bloquear_ataque = false;
        }

        var escritorio = instance_find(obj_escritorio_puzzle, 0);

        if (escritorio != noone) {
            escritorio.pantalla_abierta = false;
        }

        instance_destroy();
        exit;
    }
}

// =====================================
// DETECTAR MOUSE
// =====================================

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// =====================================
// CERRAR CON BOTON X
// =====================================

if (mouse_check_button_pressed(mb_left) &&
    point_in_rectangle(
        mx, my,
        boton_x, boton_y,
        boton_x + 30, boton_y + 30
    )) {

    // Si estamos leyendo un documento,
    // cerrar solamente el documento
    if (documento_abierto != -1) {

        documento_abierto = -1;

    }
    // Si estamos en los casilleros,
    // cerrar toda la interfaz
    else {

        var jugador = instance_find(obj_player, 0);

        if (jugador != noone) {
            jugador.bloquear_ataque = true;
            jugador.esperar_soltar_clic = true;
        }

        var escritorio = instance_find(obj_escritorio_puzzle, 0);

        if (escritorio != noone) {
            escritorio.pantalla_abierta = false;
        }

        instance_destroy();
        exit;
    }
}

// =====================================
// DETECTAR DOCUMENTO BAJO EL MOUSE
// =====================================

documento_hover = -1;

if (documento_abierto == -1) {

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

            if (point_in_rectangle(
                mx, my,
                doc_x - 55,
                doc_y - 65,
                doc_x + 55,
                doc_y + 65
            )) {
                documento_hover = i;
            }
        }
    }

    // Detectar documentos colocados
    for (var i = 0; i < 4; i++) {

        if (documentos_colocados[i] != -1) {

            var casilla_x = inicio_x + i * (espacio_ancho + separacion);
            var casilla_y = inicio_y;

            if (point_in_rectangle(
                mx, my,
                casilla_x,
                casilla_y,
                casilla_x + espacio_ancho,
                casilla_y + espacio_alto
            )) {
                documento_hover = -1 - (i + 10);
            }
        }
    }
}

// =====================================
// COMENZAR A ARRASTRAR
// =====================================

if (documento_abierto == -1 &&
    mouse_check_button_pressed(mb_left) &&
    documento_hover != -1) {

    if (documento_hover >= 0) {

        documento_seleccionado = documento_hover;
        documento_arrastrado = documentos[documento_hover];

    } else {

        var casilla_origen = -documento_hover - 11;

        documento_arrastrado = documentos_colocados[casilla_origen];

        documentos_colocados[casilla_origen] = -1;

        documento_seleccionado = documento_arrastrado;
    }

    arrastrando = true;
}

// =====================================
// ABRIR DOCUMENTO CON CLIC DERECHO
// =====================================

if (documento_abierto == -1 &&
    mouse_check_button_pressed(mb_right) &&
    documento_hover >= 0 &&
    !arrastrando) {

    documento_abierto = documentos[documento_hover];
}

// =====================================
// FINALIZAR ARRASTRE
// =====================================

if (arrastrando && mouse_check_button_released(mb_left)) {

    var colocado = false;

    for (var i = 0; i < 4; i++) {

        var casilla_x = inicio_x + i * (espacio_ancho + separacion);
        var casilla_y = inicio_y;

        if (point_in_rectangle(
            mx, my,
            casilla_x,
            casilla_y,
            casilla_x + espacio_ancho,
            casilla_y + espacio_alto
        )) {

            if (documentos_colocados[i] == -1) {

                documentos_colocados[i] = documento_arrastrado;
                colocado = true;
                break;
            }
        }
    }

    arrastrando = false;
    documento_arrastrado = -1;
    documento_seleccionado = -1;
}

// =====================================
// COMPROBAR EL ORDEN DE LOS DOCUMENTOS
// =====================================

var todos_colocados = true;

for (var i = 0; i < 4; i++) {
    if (documentos_colocados[i] == -1) {
        todos_colocados = false;
        break;
    }
}

if (todos_colocados) {

    var coincide_orden = true;

    for (var i = 0; i < 4; i++) {
        if (documentos_colocados[i] != orden_correcto[i]) {
            coincide_orden = false;
            break;
        }
    }

    if (coincide_orden) {

        var progreso = instance_find(obj_progresion, 0);

        if (progreso != noone) {
            progreso.puertas_room2 = true;
        }

        // Hacer aparecer el arma una sola vez
        if (!arma_aparecio) {

            var escritorio = instance_find(obj_escritorio_puzzle, 0);

            if (escritorio != noone) {

                var arma = instance_create_depth(
                    escritorio.x,
                    escritorio.y + 48,
                    escritorio.depth,
                    obj_arma
                );

                if (arma != noone) {
                    arma_aparecio = true;
                }
            }
        }
    }
}

