// default state of sprite

switch (state)
{
	case "move":
		#region Move State
		
		// press right key to move to the right
		if input.right
		{
			move_collide(4, 0);
			image_xscale = 1;
			sprite_index = main_chr_move;
			image_speed = 0.2;
		}

		// press right key to move to the left
		if input.left
		{
			move_collide(-4, 0);
			image_xscale = -1;
			sprite_index = main_chr_move;
			image_speed = 0.2;
		}
		
		// If player steps off a platform, switch to jump (falling) state
	    if !place_meeting(x, y + 1, obj_ground)
	    {
	        state = "jump";
	    }
		
		// press W or Up key to jump
		if input.up && place_meeting(x, y + 1, obj_ground)
		{
		    vspeed = -6; // Apply jump velocity
		    state = "jump";
		}

		// default state of sprite
		if not input.right and not input.left
		{
			sprite_index = main_chr_idle;
			image_speed = 0.2;
		}
	
		// press space key to attack
		if input.attack	
		{
			state = "attack";
		}
		
		#endregion
		break;
	
	case "attack":
		#region Attack State
		set_state_sprite(main_club_atk, 0.7, 0);
		
		//if animation_hit_frame(2)
		//{
			//audio_play_sound(sfx_club_miss, 2, false); // 2 = higher priority, false = don’t loop
			//create_hitbox(x, y, self, main_club_atk_damage, 4, 4, 10, image_xscale);
		//}
		
		// Only play attack sound once per animation
	    if animation_hit_frame(2) // This frame is when the attack connects
	    {
	        var hitbox = create_hitbox(x, y, self, main_club_atk_damage, 4, 5, 2, image_xscale);

	        // Debug: Confirm attack execution
	        show_debug_message("Attack frame reached!");

	        var attack_sound = sfx_club_miss; // Default to miss sound

	        if instance_exists(hitbox)
	        {
	            var boar_hit = instance_place(hitbox.x, hitbox.y, obj_boar);
	            var tiger_hit = instance_place(hitbox.x, hitbox.y, obj_tiger);

	            if boar_hit != noone || tiger_hit != noone  // If enemy is hit
	            {
	                show_debug_message("Enemy hit detected!");
	                attack_sound = sfx_club_hit_2; // Change to hit sound
	            }
	            else
	            {
	                show_debug_message("Attack missed!");
	            }
	        }

	        // Move audio playback **outside the if-block** so it always runs
	        audio_play_sound(sfx_club_miss, 1, false);
	    }
		
		if animation_end()
		{
			state = "move";
		}
		
		#endregion
		break;
		
	case "jump":
		#region Jump State
		// Set the jump sprite
		sprite_index = main_chr_jump; // Assign your jump sprite
		
		// Apply gravity but clamp to max fall speed
	    vspeed = min(vspeed + 0.4, 8); 

	    // Allow movement while in air
	    if input.right
	    {
	        move_collide(3, 0);
	        image_xscale = 1;
	    }
	    if input.left
	    {
	        move_collide(-3, 0);
	        image_xscale = -1;
	    }

	    var hit = move_collide(0, vspeed); // Apply vertical movement

	    // Check if player has landed
	    if place_meeting(x, y + 1, obj_ground)
	    {
	        vspeed = 0; // Stop downward movement when touching the ground
	        y = y - ((y + 1) mod 1); // Snap to the ground properly
			sprite_index = main_chr_move; // Reset to move sprite after landing
	        state = "move";
	    }
		
		if animation_end()
		{
			sprite_index = main_chr_move; // Reset to move sprite after landing
			state = "move";
		}
		#endregion
		break;
}

#region Debug message if Player is on the ground
if place_meeting(x, y + 1, obj_ground) {
    show_debug_message("Player is on the ground.");
} else {
    show_debug_message("Player is NOT on the ground.");
}
#endregion

#region Camera settings
var cam_x = x - 320; // Center camera on player (assuming 640 width)
var cam_y = y - 180; // Adjust based on height

camera_set_view_pos(view_camera[0], cam_x, cam_y);
#endregion

#region damaged by obj_boar
// Check if player collides with the boar
//if place_meeting(x, y, obj_boar) 
//{
    //health -= 1; // Reduce health by 1 per hit
   // if health < 0 { health = 0; } // Prevent negative health
//}
#endregion

#region Healthbar

if (place_meeting(x, y, obj_boar)) { 
    health_level -= 1; // Reduce health when hit
    if (health_level < 0) {
        health_level = 0; // Prevent negative health
    }
}

// Reduce hit cooldown each step (if greater than 0)
if (hit_cooldown > 0) {
    hit_cooldown -= 1;
}

#endregion

