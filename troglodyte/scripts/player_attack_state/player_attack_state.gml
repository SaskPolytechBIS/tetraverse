function player_attack_state(){
	//get input
	get_input();

	//calculate movement
	calc_movement();

	//check state
	// if image_index >= image_number - sprite_get_speed(sprite_index)/room_speed {
	if image_index >= image_number - image_speed {
		if !on_ground() state = states.JUMP else
		if hsp != 0 state = states.WALK else state = states.IDLE;
	}

	if jump {
		jumped();
		state = states.ATTACK;
	}
	
	//create hitbox
	if image_index >= 1 and image_index <= 3 {
		var inst = instance_create_layer(x, y, "Player", obj_player_attack_hitbox);
		inst.image_xscale = facing;
		if image_index == 1 audio_play_sound(sfx_club_miss, 20, false);
	}
	
	//enable smaller jumps
	if vsp < 0 and !jump_held vsp = max(vsp,jump_spd/jump_dampner);
	
	//apply movement
	collision();
	
	//check player hp
	check_player_hp();

	//apply animations
	anim();
}