// other refers to the player
with(other) {
	if can_pickup {
		die = true;
		other.meat++;
		//audio_play_sound(snd_pickup_gem, 5, false);
		
		// for health power up
		with(other) {
			if hp < max_hp hp++;
		}
	}	
}