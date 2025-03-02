var _msg = "Defeat the boss mob to break the wall";
if other.stage != 999 {
	// get layer id 
	var layer_id = layer_get_id("Stage" + string(other.stage));

	//activate layer
	instance_activate_layer(layer_id);

	// destroy the layer
	instance_destroy(other);
	
	// close the door
	if other.stage == 5 {
		layer_id = layer_get_id("Door");
		layer_set_visible(layer_id, false);
		
		// give player a message
		show_msg(_msg, 4);
	}
} else {
	// give player a message
	show_msg(_msg, 4);
}