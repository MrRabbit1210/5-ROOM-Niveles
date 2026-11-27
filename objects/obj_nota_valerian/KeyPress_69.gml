if (jugador_cerca)
{
    if (!instance_exists(obj_mensaje_valerian))
    {
        var interfaz = instance_create_depth(
            0, 0, -10000, obj_mensaje_valerian
        );

        interfaz.paginas = [
            "Registro de expedición – El antiguo ritual",

            "Durante nuestra visita al castillo, encontramos varios objetos relacionados con antiguos rituales de la familia Valerian. Entre ellos, un cáliz que decidimos retirar para estudiarlo junto con otras reliquias.",

            "Desconocíamos que aquel objeto era parte de un ritual que mantenía al conde Valerian atrapado en un estado incorpóreo.",

            "Al retirar el cáliz, el ritual perdió su poder y el sello se rompió.",

            "Valerian ha sido liberado."
        ];

        interfaz.pagina_actual = 0;
    }
}