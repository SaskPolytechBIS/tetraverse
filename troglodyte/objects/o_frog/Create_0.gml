event_inherited();
//movement
hsp = 0;
max_hsp_initial = 2;
max_hsp = max_hsp_initial;
vsp = 0;
spd = 2;
jump_spd = -6;
hsp_decimal = 0;
vsp_decimal = 0;
facing = choose(-1, 1);

//actions
can_attack = true;
attack_delay = game_get_speed(gamespeed_fps);

//inhale
attack = false;
inhale = false;
inhale_timer = game_get_speed(gamespeed_fps) *.3;

//breathing
breath_timer_initial = random_range(game_get_speed(gamespeed_fps) * 1.75, game_get_speed(gamespeed_fps) * 2.25);
breath_timer = breath_timer_initial;
image_speed = 0;

//jump
//will he jump this chance
jump_chance = 0.5;
//hoe often to check for a jump chance
jump_timer_initial = random_range(game_get_speed(gamespeed_fps), game_get_speed(gamespeed_fps) * 1.5);
jump_timer = jump_timer_initial;

//states
enum frog_states {
	IDLE,
	JUMP_START,
	JUMP,
	JUMP_LAND,
	ATTACK
}

state = frog_states.IDLE;

states_array[frog_states.IDLE]			= frog_idle_state;
states_array[frog_states.JUMP_START]	= frog_jump_start_state;
states_array[frog_states.JUMP]			= frog_jump_state;
states_array[frog_states.JUMP_LAND]		= frog_jump_land_state;
states_array[frog_states.ATTACK]		= frog_attack_state;

sprites_array[frog_states.IDLE]			= spr_boar_idle;
sprites_array[frog_states.JUMP_START]	= spr_boar_jump_start;
sprites_array[frog_states.JUMP]			= spr_boar_jump_air;
sprites_array[frog_states.JUMP_LAND]	= spr_boar_jump_land;
sprites_array[frog_states.ATTACK]		= spr_boar_attack;

// boar's attack SFX variable
attackSoundPlayed = false;