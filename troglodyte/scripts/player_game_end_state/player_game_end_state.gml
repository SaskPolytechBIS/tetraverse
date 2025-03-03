///player_die_state();
function player_game_end_state() {
	
	// Play death sound effect only once
    if (!deathSoundPlayed) {
        audio_play_sound(sfx_mc_death, 1, false);
        deathSoundPlayed = true;
    }
	
	//get input

	//calculate movement
	vsp += global.grav;

	//drag
	hsp = lerp(hsp, 0, drag);

	//stop
	if abs(hsp) <= 0.5 hsp = 0;

	//check state
	if (image_index >= image_number - 1) {
		image_speed = 0;
		if lives <= 0 {
			obj_game.game_over_lose = true;
		} else {
			get_input();		
			if jump or attack {	
				game_restart();
			}
		}
	}

	//apply movement
	collision();

	//apply animations
	anim();


}
