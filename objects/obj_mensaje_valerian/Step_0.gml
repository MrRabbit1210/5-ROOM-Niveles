if (esperar_soltar)
{
    if (!keyboard_check(ord("E")))
    {
        esperar_soltar = false;
    }
}
else
{
    if (keyboard_check_pressed(ord("E")))
    {
        pagina_actual++;

        // Si ya no quedan páginas, cerrar la nota
        if (pagina_actual >= array_length(paginas))
        {
            instance_destroy();
        }
    }
}