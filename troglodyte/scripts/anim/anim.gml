
function anim(){
	sprite_index = sprites_array[state];
	mask_index = mask_array[state];	
	image_xscale = facing;
	switch(state) {
		case states.JUMP:
			if vsp < 0 image_index = 0 else image_index = 2;
		break;	
		case states.ATTACK:
			//if !on_ground() sprite_index = s_player_attack; else 
			//on ground
			//if hsp != 0	sprite_index = s_player_attack else
				sprite_index = s_player_attack;
		break;
	}
}