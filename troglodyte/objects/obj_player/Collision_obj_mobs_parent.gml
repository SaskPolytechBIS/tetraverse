if !hurt {
	hurt = true;
		
	// face the enemy
	facing = sign(other.x - x);
		
	// ensure facing can never be 0
	if facing == 0 facing = 1;
		
	// ensure  enemy faces player
	other.facing = -facing;
							
	//damage enemy
	hp -= 1;
			
	//set hurt timer
	alarm[HURT] = hurt_time;
	
	state = states.HURTING;
	image_index = 0;
}