
/// CREATE EVENT - obj_valerian

// Vida
hp = 50;
hp_max = 50;

// Movimiento
velocidad = 1;

tilemap = layer_tilemap_get_id("Tiles_Walls");
tilemap2 = layer_tilemap_get_id("Tiles_walls_bibloteca_1");
tilemap3 = layer_tilemap_get_id("Tiles_Walls_lapidas_2");
tilemap4 = layer_tilemap_get_id("Tiles_cena_decorado");
tilemap_cena_walls = layer_tilemap_get_id("Tiles_walls_cena_2");
tilemap_cripta = layer_tilemap_get_id("Tiles_walls_Cripta");
tilemap_salasecreta = layer_tilemap_get_id("Tiles_walls_SalaSecreta");
tilemap_antesalacripta = layer_tilemap_get_id("Tiles_Antesalacripta_piso");

// Estado
estado = "idle";
boss_activo = false;

// Combate
danio = 2;
rango_ataque = 32;
attack_cooldown = 0;

// Efectos visuales
image_blend = c_white;

// Ataque
danio = 10;
rango_ataque = 32;
attack_cooldown = 0;

// Posición inicial del jefe
posicion_inicial_x = x;
posicion_inicial_y = y;
