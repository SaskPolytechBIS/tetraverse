
function boar_jump_start_state(){
	
	//get inputs
	
	// calculate movement
	
	// modify state
	if image_index >= image_number - image_speed{
		state = boar_states.JUMP;
		vsp = jump_spd;
	}
	
	// apply movement
	collision();
	
	//animations
	boar_anim();
	

}