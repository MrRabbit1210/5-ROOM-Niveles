move_speed = 3;
normal_speed = 3;

dash_speed = 12;
dash_duration = 5; //Duracion en frames
dash_timer = 1;

tilemap = layer_tilemap_get_id("Tiles_Walls")
tilemap2 = layer_tilemap_get_id("Tiles_walls_bibloteca_1")
tilemap3 = layer_tilemap_get_id("Tiles_Walls_lapidas_2")
tilemap4 = layer_tilemap_get_id("Tiles_cena_decorado")
tilemap_cena_walls = layer_tilemap_get_id("Tiles_walls_cena_2")

hp = 10;
hp_total = hp;
damage = 2;

facing = 0;

level = 1;
xp = 0;
xp_require = 100;

function add_xp(_xp_to_add)
{	
	xp += _xp_to_add;
	if (xp >= xp_require)
	{
		level++;
		xp -= xp_require;
		xp_require *= 1.4;
		
		hp_total += 5;
		hp = hp_total;
		damage += 0.4;
	}
}