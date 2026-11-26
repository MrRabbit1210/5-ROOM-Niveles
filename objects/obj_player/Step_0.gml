
// BLOQUEAR MOVIMIENTO CUANDO HAY DIALOGOS O INTERFACES
if (
    instance_exists(obj_dialog) ||
    instance_exists(obj_mensaje_bibloteca) ||
    instance_exists(obj_interfaz_documentos)
) {
    move_speed = normal_speed;
    dash_timer = 0;
    exit;
}

// BLOQUEAR MOVIMIENTO Y ATAQUES
if (bloquear_movimiento) {
    move_speed = normal_speed;
    dash_timer = 0;
    exit;
}

var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var _dir = point_direction(0, 0, _hor, _ver);

if (_hor != 0 || _ver != 0)
{	
	_hor = lengthdir_x(1, _dir);
	_ver = lengthdir_y(1, _dir);
}
// Detectar las puertas que siguen cerradas
var _puertas_cerradas = [];

with (obj_puerta)
{
    if (!esta_abierta)
    {
        array_push(_puertas_cerradas, id);
    }
}

// Lista de colisiones
var _colisiones = array_concat(
    [tilemap, tilemap2, tilemap3, tilemap4, tilemap_cena_walls],
    _puertas_cerradas
);

// Movimiento horizontal
move_and_collide(
    _hor * move_speed,
    0,
    _colisiones
);

// Movimiento vertical
move_and_collide(
    0,
    _ver * move_speed,
    _colisiones
);

// Animaciones y dirección
if (_hor != 0 or _ver != 0)
{
    if(_ver > 0) sprite_index = spr_player_walk_down;
    else if (_ver < 0) sprite_index = spr_player_walk_up;
    else if (_hor > 0) sprite_index = spr_player_walk_right;
    else if (_hor < 0) sprite_index = spr_player_walk_left;

    facing = point_direction(0, 0, _hor, _ver);
}
else
{
    if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
    else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
}

// Cambiar modo con Q
if (tiene_arma && keyboard_check_pressed(ord("Q")))
{
    if (modo_ataque == "melee")
    {
        modo_ataque = "disparo";
    }
    else
    {
        modo_ataque = "melee";
    }
}

// EVITAR ATAQUE AL CERRAR INTERFACES
if (esperar_soltar_clic)
{
    if (!mouse_check_button(mb_left))
    {
        esperar_soltar_clic = false;
        bloquear_ataque = false;
    }
}

// ATAQUES CON CLIC IZQUIERDO
if (mouse_check_button_pressed(mb_left) &&
    !bloquear_ataque &&
    !esperar_soltar_clic)
{
    // Ataque melee: siempre disponible
    if (modo_ataque == "melee")
    {
        var _inst = instance_create_depth(x, y, depth, obj_attack);
        _inst.image_angle = facing;
        _inst.damage *= damage;
    }

    // Disparo: requiere haber recogido la pistola
    else if (modo_ataque == "disparo" && tiene_arma)
    {
        var _bala_x = x + lengthdir_x(32, facing);
        var _bala_y = y + lengthdir_y(32, facing);

        var _bala = instance_create_depth(
            _bala_x,
            _bala_y,
            depth,
            obj_bala
        );

        if (instance_exists(_bala))
        {
            _bala.image_angle = facing;
            _bala.direccion = facing;
            _bala.damage = damage;
        }
    }
}

// DASH
if (keyboard_check_pressed(vk_space) && dash_timer <= 0)
{
    move_speed = dash_speed;
    dash_timer = dash_duration;

    move_and_collide(_hor * move_speed, _ver * move_speed, noone);
}

// Cuando termina el dash, vuelve a la velocidad normal
if (dash_timer > 0)
{
    dash_timer--;

    if (dash_timer <= 0)
    {
        move_speed = normal_speed;

        move_and_collide(
            _hor * move_speed,
            _ver * move_speed,
            _colisiones,
            undefined,
            undefined,
            undefined,
            move_speed,
            move_speed
        );
    }
}

