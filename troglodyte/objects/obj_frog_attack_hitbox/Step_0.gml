//cycle through all enemies and see if they were hit
with(instance_place(x, y, obj_player)) {
	if !hurt {
		hurt = true;
		
		// face the enemy
		facing = sign(other.x - x);
		
		// ensure facing can never be 0
		if facing == 0 facing = 1;
		
		// ensure  enemy faces player
		other.facing = -facing;
				
//			//move player away
//			var knockback_dis = 5;
//			hsp = _dir * knockback_dis;
							
		//damage enemy
		hp -= 1;
			
		//set hurt timer
		alarm[HURT] = hurt_time;
	}
}

//enable death at begin step
die = true;