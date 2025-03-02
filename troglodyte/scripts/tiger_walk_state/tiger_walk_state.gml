function tiger_walk_state() {
	//frog_idle_state
	//check health
	check_enemy_hp();
	
	//set spd
	hsp += 1;
	vsp = 0;

	//modify state
	//attack
	
	var detect_player_dis = 30;
	var player_alert = false;	//player in front and within range, but attack is not rdy
	//player is with detected distance and we are facing the player and we can attack
	if (distance_to_object(obj_player) < detect_player_dis) and sign(obj_player.x - x) == facing {
	if obj_player.hp > 0 {
		//	if can_attack {
				//attack
				can_attack = false;
				state = tiger_states.ATTACK;
				image_index = 0;
				image_speed = 1;
			}
			player_alert = true;
		//}
	}


	//apply movement
	collision();

	//animations
	tiger_anim();


}
