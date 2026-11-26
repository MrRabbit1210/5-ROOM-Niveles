if (esperar_soltar)
{
    if (!keyboard_check(ord("E")))
    {
        esperar_soltar = false;
    }
}
else if (keyboard_check_pressed(ord("E")))
{
    instance_destroy();
}