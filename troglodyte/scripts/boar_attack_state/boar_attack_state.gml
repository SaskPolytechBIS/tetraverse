
function boar_attack_state(){	
	// get inputs
	// calculate movement
	
	
	// modify state
	//attack
	// set boar's tusk depth
	depth = layer_get_depth(layer_get_id("Player")) - 1;
	
	if image_index >= image_number - image_speed {
		state = boar_states.IDLE;
		alarm[CAN_ATTACK] = attack_delay;
		depth = layer_get_depth(layer_get_id("Mobs"));
		
	}
	
	// apply movement
	collision();
	
	// animations
	boar_anim();
}