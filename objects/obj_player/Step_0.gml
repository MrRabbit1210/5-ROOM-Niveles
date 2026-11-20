if(instance_exists(obj_dialog)) exit;

var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, tilemap2, tilemap3, tilemap4, tilemap_cena_walls], undefined, undefined, undefined, move_speed, move_speed);

if (_hor != 0 or _ver !=0)
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

if (mouse_check_button_pressed(mb_left))
{
	var _inst = instance_create_depth(x, y, depth, obj_attack);
	_inst.image_angle = facing;
	_inst.damage *= damage;
}
if (mouse_check_button_pressed(mb_right)) 
{
	
}

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
		move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);
	}
}