function create_dialog(_messages){
	if (instance_exists(obj_dialog)) return;
	
	var _inst = instance_create_depth(0, 0, 0, obj_dialog)
	_inst.messages = _messages;
	_inst.current_message = 0;
}

char_colors = {
	"Congrats": c_yellow,
	"Fer": c_red,
	"Valen": c_purple,
	"Maxi": c_blue
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
	name: "Maxi",
	msg: "Hola soy Maxi, y voy a contarte la introduccion de una manera totalmente casual y natural:"
},
{
	name: "Maxi",
	msg: "Hace siglos, un poderoso vampiro llamado Conde Valerian gobernaba desde su castillo. Su familia mantenía el control de la región mediante pactos y desapariciones misteriosas. Una noche, los habitantes del pueblo organizaron una rebelión para acabar con la familia matando a la secta pero sin embargo, nunca lograron encontrar al Conde Valerian del castillo."
},
{
	name: "Maxi",
	msg: "Con el paso de los años, comenzaron a escucharse voces provenientes del castillo y algunos habitantes aseguran ver figuras observándonos desde las ventanas. Tu eres un cazador de mitos, encontraste información sobre la leyenda del conde y decidiste investigar el castillo para descubrir qué sucedió con sus antiguos habitantes."
}
]

valen_dialog1 = [
{
	name: "Valen",
	msg: "Al ingresar al castillo las puertas se cierran detrás del jugador."
},
{
	name: "Valen",
	msg: "..."
},
{
	name: "Valen",
	msg: "En realidad estan cerradas, debe ser alguna clase de ilusion vampirica."
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
	name: "Maxi",
	msg: "El jugador ingresa en un comedor donde parece que una celebración acaba de terminar."
},
{
	name: "Maxi",
	msg: "Hay platos servidos y copas sobre la mesa."
},
{
	name: "Maxi",
	msg: "De repente, aparecen vampiros que aparentan ser antiguos invitados que atacaran a el jugador."
},
{
	name: "Maxi",
	msg: "Luego de derrotarlos, nuestro protagonista descubre que el ritual se encuentra roto, ya que una persona rompió ese ritual. Hace algunos años, unos historiadores revisaron el castillo y se llevaron algunos objetos, siendo uno de estos un cáliz el cual pertenece al ritual y sin el este se rompió. Por lo que el conde fue liberado y todavía se encuentra en el castillo."
},
{
	name: "Maxi",
	msg: "Mecánica: Disparar, golpear, esquivar"
},
{
	name: "Fer",
	msg: "Holaaaa, soy Fer, yo soy el que llego tarde metiendo estos dialogos. Probablemente te estes preguntando cual es el boton de disparar."
},
{
	name: "Fer",
	msg: "No llegue a agregarlo."
},
{
	name: "Fer",
	msg: "xd"
},
]
maxi_dialog3 = [
{
	name: "Maxi",
	msg: "Luego del banquete, el protagonista sigue a algunos vampiros hacia el sótano del castillo, ve cómo ingresan por una puerta hacia una habitación y esta se cierra detrás de ellos. El jugador deberá resolver un puzzle de presionar plataformas en orden para poder entrar. Al entrar se encuentra con una cripta."
},
{
	name: "Maxi",
	msg: "Allí, Valerian despierta al sentir que alguien ha llegado hasta su refugio."
},
{
	name: "Maxi",
	msg: "El protagonista deberá enfrentarse a Valerian para evitar que recupere todo su poder."
},
{
	name: "Maxi",
	msg: "Mecánica: Disparar, golpear, esquivar, puzzle"
},
]
valen_dialog4 = [
{
	name: "Valen",
	msg: "puzzle: “Cuando el sol desaparezca, la noche despertará. La luna guiará a las criaturas de la oscuridad, y la muerta reclamará su lugar.”"
},
{
	name: "Valen",
	msg: "símbolos a apretar y su orden: Sol. Luna. Murciélago. Calavera."
},
{
	name: "Valen",
	msg: "cada vez que el jugador toca la plataforma correcta queda iluminada"
},
]

fer_dialogFinal = [
{
	name: "Fer",
	msg: "Tras derrotar a Valerian, el jugador descubre una cámara secreta. Alli encontrara antiguos tesoros y objetos usados para rituales. Sin embargo, al examinar la habitación, se revela que Valerian no era el único vampiro de su linaje. Alguien mas consiguió escapar hace siglos durante la rebelión."
},
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