event_inherited();
//movement
hsp = 0;
max_hsp_initial = 0.5;
max_hsp = max_hsp_initial;
vsp = 0;
spd = 0.5;
jump_spd = -6;
hsp_decimal = 0;
vsp_decimal = 0;

attackSoundPlayed = false;

if (x < obj_player.x) {
    facing = 1;  // If the tiger is to the left of the player, face right
} else {
    facing = -1; // If the tiger is to the right of the player, face left
}


drag = 0.04;
hp = 2;
death_gem_value = 3;

//attack actions
can_attack = true;
attack_delay = game_get_speed(gamespeed_fps);	// room_speed

//states
enum tiger_states {
	IDLE,
	ATTACK,
	CHASE,
}

state = tiger_states.IDLE;

states_array[tiger_states.IDLE]			= tiger_idle_state;
states_array[tiger_states.ATTACK]		= tiger_attack_state;
states_array[tiger_states.CHASE]		= tiger_chase_state;

sprites_array[tiger_states.IDLE]		= spr_tiger_idle;
sprites_array[tiger_states.ATTACK]		= spr_tiger_attack;
sprites_array[tiger_states.CHASE]		= spr_tiger_walk;

// boar's attack SFX variable
attackSoundPlayed = false;