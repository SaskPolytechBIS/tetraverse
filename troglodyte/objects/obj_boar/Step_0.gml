switch (state)
{
	case "idle":
	#region Idle State
		set_state_sprite(Boar_Idle, 0.5, 0); // Set idle animation
        
        if not instance_exists(obj_player) break;

        // Get player's position
        var player_x = obj_player.x;
        var distance_to_player = point_distance(x, y, player_x, obj_player.y);
        
        // If player enters detection range, switch to chase
        if distance_to_player <= detection_range
        {
            state = "chase";
        }
	#endregion
		break;
		
	case "chase":
		#region Chase State
		set_state_sprite(Boar_Move, 0.8, 0);
		
		if not instance_exists(obj_player) break;
		
		// Get player's position
        var player_x = obj_player.x;
        
        // Reverse flipping logic since the boar starts facing left
        if player_x > x {
            image_xscale = -1; // Face right
        } 
        else if player_x < x {
            image_xscale = 1; // Face left
        }
		
		var direction_facing = image_xscale;

        // Calculate distance to player
        var distance_to_player = point_distance(x, y, player_x, obj_player.y);
        
        if distance_to_player <= attack_range
        {
			state = "attack";
        }
		// If player is too far, stop chasing and return to idle
        else if distance_to_player > detection_range + 20 // Add some buffer to prevent instant reactivation
        {
            state = "idle";
        }
		else
		{
			// Move towards player with correct direction
            move_and_collide(direction_facing * chase_speed, 0, true);
		}
		
		#endregion
		break;
		
	case "attack":
		#region Attack State
		set_state_sprite(Boar_Attack, 1, 0);
		
		if animation_hit_frame(1)
		{
			audio_play_sound(sfx_Boar_tackle, 2, false);
			create_hitbox(x, y, self, Boar_Attack_Damage, 4, 4, 1, image_xscale);
		}
		
		if animation_end()
		{
			state = "chase";
		}
		#endregion
		break;
		
}

