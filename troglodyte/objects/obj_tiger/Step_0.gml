switch (state)
{
	case "chase":
		#region Chase State
		set_state_sprite(Tiger_Sprite_walk, 0.8, 0);
		
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
		else
		{
			// Move towards player with correct direction
            move_and_collide(direction_facing * chase_speed, 0, true);
		}
		
		#endregion
		break;
		
	case "attack":
		#region Attack State
		set_state_sprite(Tiger_Sprite_swipe, 1, 0);
		
		if animation_hit_frame(4)
		{
			create_hitbox(x, y, self, Tiger_Sprite_swipe_Damage, 4, 4, 5, image_xscale);
		}
		
		if animation_end()
		{
			state = "chase";
		}
		#endregion
		break;
		
}

