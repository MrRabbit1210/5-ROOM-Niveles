function create_dialog(_messages){
	if (instance_exists(obj_dialog)) return;
	
	var _inst = instance_create_depth(0, 0, 0, obj_dialog)
	_inst.messages = _messages;
	_inst.current_message = 0;
}

char_colors = {
	"ROOM 1: EL PATIO": c_yellow,
	"ROOM 2: LA BIBLIOTECA": c_yellow,
	"ROOM 3: EL BANQUETE": c_yellow,
	"ROOM 4: LA CRIPTA": c_yellow,
	"ROOM 5: el secreto": c_yellow,
	"Fer": c_red,
	"Maxi": c_green,
	"Valen": c_blue,
}

welcome_dialog = [
{
	name: "Fer",
	msg: "Bienvenido al castillo"
},
{ 
	name: "Valen",
	msg: "VALERIANTE"
},
{ 
	name: "Maxi",
	msg: "Sabias que esquivando perdes las colisiones? Es una habilidad muy util contra vampiros... Y al quedarte trabado"
},
]
maxi_dialog1 = [
{
	name: "ROOM 1: EL PATIO",
	msg: "Decisiones de diseño:"
},
{
	name: "ROOM 1: EL PATIO",
	msg: "Esta primera habitación funciona como introducción al desafío. El jugador llega al patio de la mansión y descubre que la entrada está protegida por criaturas vampíricas."
},
{
	name: "ROOM 1: EL PATIO",
	msg: "Desde el punto de vista del gameplay, se busca introducir las mecánicas principales de combate: golpear (con click) y esquivar (espacio). Los enemigos funcionan como una primera barrera que impide avanzar directamente hacia el interior de la mansión."
},
{
	name:"ROOM 1: EL PATIO",
	msg: "A nivel narrativo, esta habitación permite establecer el peligro que representa la mansión y transmitir que el lugar todavía está habitado por criaturas."
},
{
	name: "ROOM 1: EL PATIO",
	msg: "Experiencia que se busca generar: presentar el peligro, introducir las mecánicas de combate y generar una primera sensación de tensión y misterio."
}
]

valen_dialog1 = [
{
	name: "ROOM 2: LA BIBLIOTECA",
	msg: "Decisiones de diseño:"
},
{
	name: "ROOM 2: LA BIBLIOTECA",
	msg: "Esta habitación propone un cambio respecto a la anterior, pasando del combate a un desafío de investigación y resolución de puzzles. El jugador encuentra una biblioteca con libros y documentos relacionados con la historia de la familia Valerian."
},
{
	name: "ROOM 2: LA BIBLIOTECA",
	msg: "El desafío consiste en encontrar cuatro documentos que cuentan diferentes acontecimientos de la familia: su origen, la transformación de Valerian, la rebelión de los habitantes y el ritual que lo encerró en un estado no físico."
},
{
	name: "ROOM 2: LA BIBLIOTECA",
	msg: "Para resolver el puzzle, el jugador debe encontrar unos documentos que debe deducir el su orden cronológico. Luego deberá colocarlos correctamente en los cuatro espacios de un escritorio antiguo."
},
{
	name: "ROOM 2: LA BIBLIOTECA",
	msg: "A nivel narrativo, esta habitación permite profundizar en la historia del castillo y revelar información importante sobre el pasado de Valerian. Al resolver el mecanismo, el jugador obtiene una reliquia familiar: un arma capaz de matar vampiros. Además, encuentra una página que explica qué sucedió durante la rebelión y cómo fue encerrado el conde."
},
{
	name: "ROOM 2: LA BIBLIOTECA",
	msg: "Experiencia que se busca generar: ofrecer variedad en el gameplay, incentivar la exploración y la interpretación de pistas, y generar curiosidad por descubrir la historia de la familia Valerian."
},
]
valen_dialog2 = [
{
	name: "Valen",
	msg: "El protagonista encuentra una biblioteca repleta de libros y documentos sobre la familia del conde."
},
{
	name: "Valen",
	msg: "Para continuar, el jugador deberá resolver un acertijo relacionado con la historia de la familia. Luego de esto encuentra una reliquia de la familia, un arma capaz de matar vampiros."
},
{
	name: "Valen",
	msg: "Entre los documentos descubre una pagina especifica que habla sobre él, donde explica que los habitantes del pueblo atacan al castillo de valerian y su secta. Atacan a su secta mientras que los pocos que quedan vivos hacen un ritual para encerrar a valerian en un estado no físico y que no lo puedan matar."
},
{
	name: "Valen",
	msg: "Mecánica: Resolver un puzzle"
},
{
	name: "Valen",
	msg: "Podemos hacer que los documentos contengan fragmentos de la historia de la familia y que el jugador tenga que relacionarlos para descubrir una secuencia. El mecanismo podría ser un escritorio antiguo con espacios para colocar cada documento."
},
]
valen_dialog3 = [
{
	name: "Valen",
	msg: "El protagonista encuentra cuatro documentos relacionados con la historia de la familia Valerian. Cada uno describe un acontecimiento importante:"
},
{
	name: "Valen",
	msg: "Documento 1 – El origen: relata cómo la familia Valerian obtuvo su título nobiliario y construyó el castillo."
},
{
	name: "Valen",
	msg: "Documento 2 – La transformación: cuenta cómo Valerian se convirtió en vampiro y comenzó a formar su secta."
},
{
	name: "Valen",
	msg: "Documento 3 – La rebelión: describe cómo los habitantes del pueblo descubrieron la existencia de los vampiros y organizaron un ataque al castillo."
},
{
	name: "Valen",
	msg: "Documento 4 – El ritual: explica cómo los vampiros sobrevivientes realizaron un ritual para encerrar a Valerian en un estado no físico."
},
{
	name: "Valen",
	msg: "2. Encontrar la pista"
},
{
	name: "Valen",
	msg: "En uno de los libros de la biblioteca, el protagonista encuentra una inscripción que dice:"
},
{
	name: "Valen",
	msg: "¨Primero nació nuestro legado, luego llegó la oscuridad. La humanidad se rebeló contra nosotros y, finalmente, la sangre de los nuestros selló nuestro destino.¨"
},
{
	name: "Valen",
	msg: "Esta inscripción permite deducir el orden cronológico de los cuatro documentos."
},
{
	name: "Valen",
	msg: "3. Resolver el mecanismo"
},
{
	name: "Valen",
	msg: "En el centro de la biblioteca hay un escritorio antiguo con cuatro espacios para colocar documentos."
},
{
	name: "Valen",
	msg: "El jugador deberá seleccionar cada documento de su inventario y colocarlo en el espacio correspondiente, siguiendo el orden indicado por la inscripción."
},
{
	name: "Valen",
	msg: "Si coloca un documento incorrectamente, el mecanismo no se activa y deberá volver a intentarlo."
},
{
	name: "Valen",
	msg: "4. Abrir el compartimento secreto"
},
{
	name: "Valen",
	msg: "Cuando los cuatro documentos están en el orden correcto, el escritorio activa un mecanismo interno. Se escucha un ruido y uno de sus cajones se abre, revelando una reliquia familiar: un arma capaz de matar vampiros."
},
{
	name: "Valen",
	msg: "5. Descubrir la verdad"
},
{
	name: "Valen",
	msg: "Junto a la reliquia, el protagonista encuentra una página que habla específicamente sobre él y revela que los habitantes del pueblo atacaron el castillo de Valerian. Los pocos vampiros que sobrevivieron realizaron un ritual para encerrar al conde en un estado no físico, impidiendo que pudiera ser asesinado."
},
{
	name: "Valen",
	msg: "Mecánica: Investigación, interpretación de pistas y ordenamiento de documentos."
},
{
	name: "Fer",
	msg: "*Insetar chiste sobre que el dialogo estuvo muy largo* //Y agregar una pregunta para repetirlo."
},
]

maxi_dialog2 = [
{
	name: "ROOM 3: EL BANQUETE",
	msg: "Decisiones de diseño:"
},
{
	name: "ROOM 3: EL BANQUETE",
	msg: "Esta habitación introduce una complicación en la historia. El jugador ingresa en un comedor donde parece que una celebración acaba de terminar, con platos servidos y copas sobre la mesa. Sin embargo, aparecen vampiros que aparentan ser antiguos invitados y atacan al protagonista."
},
{
	name: "ROOM 3: EL BANQUETE",
	msg: "Desde el punto de vista del gameplay, se retoman las mecánicas de combate presentadas en la primera habitación: golpear y esquivar, agregando una nueva mecánica de disparo conseguida en el anterior Room. Esto permite recuperar el ritmo de acción después del desafío de investigación de la biblioteca."
},
{
	name: "ROOM 3: EL BANQUETE",
	msg: "A nivel narrativo, luego de derrotar a los vampiros, el protagonista descubre que el ritual que mantenía encerrado a Valerian fue roto. Hace algunos años, unos historiadores visitaron el castillo y se llevaron diferentes objetos, entre ellos un cáliz que formaba parte del ritual. Al perder ese objeto, el ritual se rompió y el conde fue liberado."
},
{
	name: "ROOM 3: EL BANQUETE",
	msg: "Este descubrimiento modifica la situación inicial, ya que el protagonista comprende que Valerian no solamente sigue existiendo, sino que también fue liberado y todavía se encuentra dentro de la mansión."
},
{
	name:"ROOM 3: EL BANQUETE",
	msg: "Experiencia que se busca generar: sorprender al jugador mediante un cambio en la historia, aumentar la tensión y generar preocupación por la presencia de Valerian en el castillo."
},
]
maxi_dialog3 = [
{
	name: "ROOM 4: LA CRIPTA",
	msg: "Decisiones de diseño:"
},
{
	name: "ROOM 4: LA CRIPTA",
	msg: "Esta habitación representa el momento de mayor intensidad del nivel, ya que el protagonista finalmente llega hasta donde está Valerian."
},
{
	name: "ROOM 4: LA CRIPTA",
	msg: "Antes de ingresar a la cripta, se encuentra con un puzzle para poder continuar, deberá resolver un puzzle de plataformas que consiste en presionar cuatro símbolos en el orden correcto: Sol, Luna, Murciélago y Calavera."
},
{
	name: "ROOM 4: LA CRIPTA",
	msg: "La pista para resolverlo es una frase relacionada con la llegada de la noche y las criaturas de la oscuridad."
},
{
	name: "ROOM 4: LA CRIPTA",
	msg: "Una vez resuelto el puzzle, el protagonista consigue ingresar a la cripta y Valerian despierta al sentir su presencia. Allí comienza el enfrentamiento principal del nivel."
},
{
	name: "ROOM 4: LA CRIPTA",
	msg: "Desde el punto de vista del gameplay, esta habitación combina las mecánicas de disparar, golpear y esquivar con la resolución de un puzzle. De esta manera, se busca poner a prueba las habilidades que el jugador utilizó durante las habitaciones anteriores."
},
{
	name: "ROOM 4: LA CRIPTA",
	msg: "Experiencia que se busca generar: alcanzar el punto de mayor tensión del nivel, generar expectativa por el encuentro con Valerian y ofrecer un desafío que combine las mecánicas desarrolladas anteriormente."
},
]
valen_dialog4 = [
{
	name: "ROOM 4: LA CRIPTA",
	msg: "Decisiones de diseño:"
},
{
	name: "ROOM 4: LA CRIPTA",
	msg: "Esta habitación representa el momento de mayor intensidad del nivel, ya que el protagonista finalmente llega hasta donde está Valerian."
},
{
	name: "ROOM 4: LA CRIPTA",
	msg: "Antes de ingresar a la cripta, se encuentra con un puzzle para poder continuar, deberá resolver un puzzle de plataformas que consiste en presionar cuatro símbolos en el orden correcto: Sol, Luna, Murciélago y Calavera."
},
{
	name: "ROOM 4: LA CRIPTA",
	msg: "La pista para resolverlo es una frase relacionada con la llegada de la noche y las criaturas de la oscuridad."
},
{
	name: "ROOM 4: LA CRIPTA",
	msg: "Una vez resuelto el puzzle, el protagonista consigue ingresar a la cripta y Valerian despierta al sentir su presencia. Allí comienza el enfrentamiento principal del nivel."
},
{
	name: "ROOM 4: LA CRIPTA",
	msg: "Desde el punto de vista del gameplay, esta habitación combina las mecánicas de disparar, golpear y esquivar con la resolución de un puzzle. De esta manera, se busca poner a prueba las habilidades que el jugador utilizó durante las habitaciones anteriores."
},
{
	name: "ROOM 4: LA CRIPTA",
	msg: "Experiencia que se busca generar: alcanzar el punto de mayor tensión del nivel, generar expectativa por el encuentro con Valerian y ofrecer un desafío que combine las mecánicas desarrolladas anteriormente."
},
]

fer_dialogFinal = [
{
	name: "Fer",
	msg: "FELICIDADES TERMINASTE EL JUEGO."
},
]
valen_dialogFinal = [
{
	name: "Valen",
	msg: "Felicidades."
},
]
maxi_dialogFinal = [
{
	name: "Maxi",
	msg: "Felicidades!!!!!!!!!!!!!!!"
},
]

room_5 = [
{
	name: "ROOM 5: el secreto",
	msg: "Decisiones de diseño:"
},
{
	name: "ROOM 5: el secreto",
	msg: "Esta última habitación funciona como cierre de la experiencia y recompensa narrativa por haber derrotado a Valerian."
},
{
	name: "ROOM 5: el secreto",
	msg: "Después del enfrentamiento, el jugador descubre una cámara secreta que contiene antiguos tesoros y objetos utilizados para realizar rituales."
},
{
	name: "ROOM 5: el secreto",
	msg: "Sin embargo, la habitación también introduce una revelación que modifica la comprensión que el jugador tiene sobre la historia de la familia: Valerian no era el único vampiro de su linaje, ya que alguien más consiguió escapar durante la rebelión ocurrida siglos atrás."
},
{
	name: "ROOM 5: el secreto",
	msg: "Desde el punto de vista narrativo, esta revelación permite cerrar el conflicto principal del nivel, pero deja planteada la posibilidad de que todavía existan otros integrantes de la familia Valerian."
},
{
	name: "ROOM 5: el secreto",
	msg: "Experiencia que se busca generar: proporcionar una recompensa por superar el desafío principal, cerrar el enfrentamiento con Valerian y generar intriga mediante una revelación que deja abierta la historia."
},
]