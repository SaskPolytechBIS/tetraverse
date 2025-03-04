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
    facing = 1;  // If the boar is to the left of the player, face right
} else {
    facing = -1; // If the boar is to the right of the player, face left
}


drag = 0.04;
hp = 2;
death_gem_value = 1;

//attack actions
can_attack = true;
attack_delay = game_get_speed(gamespeed_fps);	// room_speed

//states
enum boar_states {
	IDLE,
	ATTACK,
	CHASE,
}

state = boar_states.IDLE;

states_array[boar_states.IDLE]			= boar_idle_state;
states_array[boar_states.ATTACK]		= boar_attack_state;
states_array[boar_states.CHASE]			= boar_chase_state;

sprites_array[boar_states.IDLE]			= spr_boar_idle;
sprites_array[boar_states.ATTACK]		= spr_boar_attack;
sprites_array[boar_states.CHASE]		= spr_boar_walk;

// boar's attack SFX variable
attackSoundPlayed = false;