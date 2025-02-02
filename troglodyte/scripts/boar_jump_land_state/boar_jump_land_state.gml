// boar_jump_Land_state

function boar_jump_land_state(){
	
	//get inputs
	breathing();
	
	// calculate movement
	
	// modify state
	if image_index >= image_number - image_speed{
		state = boar_states.IDLE;
		image_index = 0;
		image_speed = 0;
	}
	
	// apply movement
	collision();
	
	//animations
	boar_anim();
	

}