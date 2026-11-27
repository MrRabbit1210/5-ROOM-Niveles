// Texto actual
var texto_actual = paginas[pagina_actual];

// Mostrar caracteres progresivamente
if (caracteres_visibles < string_length(texto_actual))
{
    caracteres_visibles += velocidad_texto;

    if (caracteres_visibles >= string_length(texto_actual))
    {
        caracteres_visibles = string_length(texto_actual);
        texto_completo = true;
    }
}

// Control de E
if (esperar_soltar)
{
    if (!keyboard_check(ord("E")))
    {
        esperar_soltar = false;
    }
}
else if (keyboard_check_pressed(ord("E")))
{
    // Si todavía se está escribiendo, completar el texto
    if (!texto_completo)
    {
        caracteres_visibles = string_length(texto_actual);
        texto_completo = true;
    }
    else
    {
        // Pasar al siguiente párrafo
        pagina_actual++;

        if (pagina_actual >= array_length(paginas))
        {
            room_goto(Room1);
        }
        else
        {
            caracteres_visibles = 0;
            texto_completo = false;
        }
    }
}