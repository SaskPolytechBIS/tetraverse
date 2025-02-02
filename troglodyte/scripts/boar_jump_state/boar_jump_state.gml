
function boar_jump_state(){
	
	//get inputs
	breathing();
	
	// calculate movement
	hsp += spd * facing;
	vsp += global.grav;
	
	// limit speed
	hsp = min(abs(hsp), max_hsp) * facing;
	
	// modify state
	/// check if on ground
	if on_ground() {
		state = boar_states.JUMP_LAND;
		hsp = 0;
		image_index = 0;
		image_speed = 1;
	}
	
	// apply movement
	collision();
	
	//animations
	boar_anim();
	

}