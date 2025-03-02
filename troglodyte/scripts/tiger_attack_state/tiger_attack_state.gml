function tiger_attack_state() {
	//check health
	check_enemy_hp();

	//get inputs

	//calculate movement
	//calc_entity_movement();

	//modify state
	//attack warning
	//if image_index = 2 and !inhale {
	//	inhale = true;
	//	alarm[INHALE] = inhale_timer;
	//	image_speed = 0;	
	//}

//	if attack {
		if image_index >= 4 and image_index <=5 {
			//create hitbox		
			var inst = instance_create_layer(x, y, "Mobs", obj_frog_attack_hitbox);
			//ensure hitbox faces the way the frog that created it is facing
			inst.image_xscale = facing;
			//if image_index == 5 audio_play_sound(snd_frog_attack, 15, false);
		}
	
		//set tongue depth
		depth = layer_get_depth(layer_get_id("Player")) - 1;

		if image_index >= image_number - sprite_get_speed(sprite_index)/game_get_speed(gamespeed_fps) {
			state = tiger_states.IDLE;
			alarm[CAN_ATTACK] = attack_delay;
			depth = layer_get_depth(layer_get_id("Mobs"));
			//inhale = false;
			//attack = false;
		}
//	}
	//apply movement
	collision();

	//animations
	tiger_anim();


}
