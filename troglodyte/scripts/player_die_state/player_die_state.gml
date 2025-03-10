///player_die_state();
function player_die_state() {
	
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
			show_msg("Press space to restart", 1);
			get_input();		
			if jump or attack {	
				// Reset deathSoundPlayed so that the sound will play again on the next death
                deathSoundPlayed = false;
				
				fade_to_room(room, room_start_pos_x, room_start_pos_y, room_start_facing, c_black);
				//allow instant camera panning
				with(obj_camera) {
					//enable instant panning
					camera_pan_speed = 1;
					//reset camera pan speed
					alarm[CAMERA_RESET] = 3;
				}
			}
		}
	}

	//apply movement
	collision();

	//apply animations
	anim();


}
