
// tiles
// get the tile map
global.map = layer_tilemap_get_id("Collisions");
global.tile_size = 16;

// plater create
if !instance_exists(obj_player) {
	instance_create_layer(x, y, "Player", obj_player);
}
