function jump_dust(){
	var inst = instance_create_layer(x, y, "Dust", obj_player_dust_jump);
	inst.image_xscale = facing;
}