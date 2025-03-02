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
facing = choose(1, 1);

// jump
//walk_chance = 0.5;
//walk_timer_initial = random_range(game_get_speed(gamespeed_fps), game_get_speed(gamespeed_fps) * 1.5);
//walk_timer = walk_timer_initial;


drag = 0.04;
hp = 3;
death_gem_value = 3;

//attack actions
can_attack = true;
attack_delay = game_get_speed(gamespeed_fps);	// room_speed

//states
enum tiger_states {
	IDLE,
	ATTACK,
}

state = tiger_states.IDLE;

states_array[tiger_states.IDLE]			= tiger_idle_state;
states_array[tiger_states.ATTACK]		= tiger_attack_state;

sprites_array[tiger_states.IDLE]		= spr_tiger_idle;
sprites_array[tiger_states.ATTACK]		= spr_tiger_attack;

// boar's attack SFX variable
attackSoundPlayed = false;