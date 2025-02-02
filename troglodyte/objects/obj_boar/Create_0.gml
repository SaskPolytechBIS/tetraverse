hsp = 0;
max_hsp_initial = 2;
max_hsp = max_hsp_initial;
vsp = 0;
spd = 2;
jump_spd = -4;
hsp_decimal = 0;
vsp_decimal = 0;
facing = choose(-1, 1);

// actions
can_attack = true;
attack_delay = game_get_speed(gamespeed_fps);

// breathing
breath_timer_initial = random_range(game_get_speed(gamespeed_fps) * 1.75, game_get_speed(gamespeed_fps) * 2.24);
breath_timer = breath_timer_initial;
image_speed = 0;

// jump
// will he jump this chance
jump_chance = 0.5;
// how often to check for a jump chance
jump_timer_initial = random_range(game_get_speed(gamespeed_fps), game_get_speed(gamespeed_fps) * 1.5);
jump_timer = jump_timer_initial;

// states
enum boar_states {
	IDLE,
	JUMP_START,
	JUMP,
	JUMP_LAND,
	ATTACK
}

state = boar_states.IDLE;

states_array[boar_states.IDLE]			= boar_idle_state;
states_array[boar_states.JUMP_START]	= boar_jump_start_state;
states_array[boar_states.JUMP]			= boar_jump_state;
states_array[boar_states.JUMP_LAND]		= boar_jump_land_state;
states_array[boar_states.ATTACK]		= boar_attack_state;

sprites_array[boar_states.IDLE]			= spr_boar_walk;
sprites_array[boar_states.JUMP_START]	= spr_boar_walk;
sprites_array[boar_states.JUMP]			= spr_boar_walk;
sprites_array[boar_states.JUMP_LAND]	= spr_boar_walk;
sprites_array[boar_states.ATTACK]		= spr_boar_attack;