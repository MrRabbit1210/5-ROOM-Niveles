documentos = [3, 1, 4, 2];
orden_correcto = [1, 2, 3, 4];

pantalla_activa = true;

var jugador = instance_find(obj_player, 0);

if (jugador != noone) {
    jugador.bloquear_ataque = true;
}

documentos_colocados = [-1, -1, -1, -1];

documento_seleccionado = -1;
documento_arrastrado = -1;
arrastrando = false;

documento_hover = -1;

ancho = display_get_gui_width();
alto = display_get_gui_height();

panel_ancho = ancho * 0.75;
panel_alto = alto * 0.70;

x1 = (ancho - panel_ancho) / 2;
y1 = (alto - panel_alto) / 2;

espacio_ancho = 130;
espacio_alto = 170;
separacion = 20;

inicio_x = x1 + 55;
inicio_y = y1 + 110;

documento_abierto = -1;
arma_aparecio = false;