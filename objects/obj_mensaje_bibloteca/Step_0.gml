// Esperar a que el jugador suelte E
if (esperar_soltar) {

    if (!keyboard_check(ord("E"))) {
        esperar_soltar = false;
    }

} 
else {

    // Cerrar mensaje al presionar E nuevamente
    if (keyboard_check_pressed(ord("E"))) {
        instance_destroy();
    }
}