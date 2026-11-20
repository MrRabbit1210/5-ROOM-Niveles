target_x = x;
target_y = y;

alarm[0] = 60;

tilemap = layer_tilemap_get_id("Tiles_Walls");
tilemap2 = layer_tilemap_get_id("Tiles_walls_bibloteca_1");
tilemap3 = layer_tilemap_get_id("Tiles_Walls_lapidas_2");
tilemap4 = layer_tilemap_get_id("Tiles_cena_decorado");
tilemap_cena_walls = layer_tilemap_get_id("Tiles_walls_cena_2");

// Knockback

kb_x = 0;
kb_y = 0;