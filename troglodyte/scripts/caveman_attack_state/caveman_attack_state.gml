function caveman_attack_state() {
	//caveman_idle_state
	//check health
	check_enemy_hp();
	
	// Play attack SFX on a specific frame, once per attack
    // Suppose the “attack” animation frame is around image_index = 1
    if (!attackSoundPlayed && image_index >= 1 && image_index < 2) {
        audio_play_sound(sfx_Cavemen_hoo_haa, 1, false);
        attackSoundPlayed = true;
	}
	
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
		
		// Reset the flag so the next attack can play the sound again
        attackSoundPlayed = false;
	}



	//apply movement
	collision();

	//animations
	caveman_anim();


}
