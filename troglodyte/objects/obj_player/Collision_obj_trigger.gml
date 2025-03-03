var _msg = "Defeat the boss mob to break the wall";
if other.stage != 999 {
	// get layer id 
	var layer_id = layer_get_id("Stage" + string(other.stage));

	//activate layer & destroy
	instance_activate_layer(layer_id);
	instance_destroy(other);
	
	// close the door
	if other.stage == 5 {
		layer_id = layer_get_id("Door");
		layer_set_visible(layer_id, false);
		
		// give player a message
		show_msg(_msg, 4);
	}
} else {
    // Check if the Yeti boss is still alive
    if !instance_exists(obj_yeti) { // Only trigger game end if Yeti is defeated
        obj_game.game_over_won = true;
        fade_to_room(rm_game_end, 0, 0, 1, c_black);
        state = states.GAME_END;
        instance_destroy(other);
    } else {
        // Give player a message if the Yeti is still alive
        show_msg(_msg, 4);
    }
}