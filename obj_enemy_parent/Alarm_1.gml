image_blend = c_white

if (hp <= 0)
{
	obj_player.add_xp(xp_value);
	
	instance_destroy();
}