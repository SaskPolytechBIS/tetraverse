function caveman_idle_state() {
	//caveman_idle_state
	//check health
	check_enemy_hp();
	
	// set 
	hsp = 0;
	vsp = 0;
	
	//attack
	var detect_player_dis = 80;
	var player_alert = false;
	
	if (distance_to_object(obj_player) < detect_player_dis) and sign(obj_player.x - x) = facing {
		if obj_player.hp > 0 {
			if can_attack {
				//attack
				can_attack = false;
				state = caveman_states.ATTACK;
				image_index = 0;
				image_speed = 1;
			}
			player_alert = true;
		}
	}
	


	//apply movement
	collision();

	//animations
	caveman_anim();


}
