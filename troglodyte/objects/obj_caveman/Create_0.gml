event_inherited();
//movement
hsp = 0;
max_hsp_initial = 0.5;
max_hsp = max_hsp_initial;
vsp = 0;
spd = 0.5;
hsp_decimal = 0;
vsp_decimal = 0;
facing = choose(-1, 1);
drag = 0.04;
hp = 3;
death_gem_value = 5;

//actions
can_attack = true;
attack_delay =  game_get_speed(gamespeed_fps);

//states
enum caveman_states {
	IDLE,
	//WALK,
	ATTACK,
}

state = caveman_states.IDLE;

states_array[caveman_states.IDLE]			= caveman_idle_state;
//states_array[caveman_states.WALK]			= caveman_walk_state;
states_array[caveman_states.ATTACK]			= caveman_attack_state;

sprites_array[caveman_states.IDLE]			= spr_caveman_idle;
//sprites_array[caveman_states.WALK]			= spr_caveman_walk;
sprites_array[caveman_states.ATTACK]		= spr_caveman_attack;

attackSoundPlayed = false;