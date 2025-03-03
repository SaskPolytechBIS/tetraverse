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
		
		if room == rm_01 {
			var layer_id = layer_get_id("Wall");
			layer_set_visible(layer_id, true);
			show_msg("You hear a door slide open in the distance..", 4)
		}
	}	
}