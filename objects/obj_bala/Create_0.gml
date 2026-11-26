velocidad = 10;
damage = 2;
tiempo_vida = 60;

direccion = image_angle;

// Distancia máxima
distancia_maxima = 200;
distancia_recorrida = 0;

// Tilemaps de colisión
tilemap = layer_tilemap_get_id("Tiles_Walls");
tilemap2 = layer_tilemap_get_id("Tiles_walls_bibloteca_1");
tilemap3 = layer_tilemap_get_id("Tiles_Walls_lapidas_2");
tilemap4 = layer_tilemap_get_id("Tiles_cena_decorado");
tilemap_cena_walls = layer_tilemap_get_id("Tiles_walls_cena_2");

_colisiones = [tilemap, tilemap2, tilemap3, tilemap4, tilemap_cena_walls]