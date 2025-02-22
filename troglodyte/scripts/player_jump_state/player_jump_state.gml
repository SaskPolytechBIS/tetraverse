function player_jump_state(){
 
	//Get input
	get_input();
 
	//Calculate movement
	calc_movement();
	
	//check state
	if on_ground() {
		//apply stretch
		scale_x = scale_max;
		scale_y = scale_min;
		if hsp != 0 state = states.WALK else state = states.IDLE;
		//create dust if landing
		if vsp > 0 {
			instance_create_layer(x, y, "Dust", obj_player_dust_land);	
		}
	}
	
	if attack {
		state = states.ATTACK;
		image_index = 0;
	} 
	
	//enable double jumps
	if jump {
		jumped();
	}
	
	//enable smaller jumps
	if vsp < 0 and !jump_held vsp = max(vsp,jump_spd/jump_dampner);

	//apply movement
	collision();
	
	//check player hp
//	check_player_hp();
 
	//Apply animations
	anim();
}