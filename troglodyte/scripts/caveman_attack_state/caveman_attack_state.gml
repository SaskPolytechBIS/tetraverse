function caveman_attack_state() {
	//caveman_idle_state
	//check health
	check_enemy_hp();
	
	//modify state
	//attack
	//set tongue depth
	depth = layer_get_depth(layer_get_id("Player")) - 1;
	
	if image_index >= image_number - image_speed {
		state = frog_states.IDLE;
		alarm[CAN_ATTACK] = attack_delay;
		depth = layer_get_depth(layer_get_id("Mobs"));
		//inhale = false;
		//attack = false;
	}



	//apply movement
	collision();

	//animations
	caveman_anim();


}
