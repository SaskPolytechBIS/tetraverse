/// @description
// You can write your code in this editor
health_level = 5; // Make sure player starts with full health

hsp = 0;
vsp = 0;
max_hsp = 2;
walk_spd = 1.5;

hsp_decimal = 0;
vsp_decimal = 0;
jump_spd = -5;
jump_dampner = 2.5;
jumps_initial = 2;
jumps = jumps_initial;

//friction
drag = .12

// facing direction
facing = 1;

// meat
meat = 0;

//hurt
flash_counter = 0;
hurt = false;
hurt_time = game_get_speed(gamespeed_fps);
hp = 5;

// movement
left = 0;
right = 0;
up = 0;
down = 0;
attack = 0;
jump = 0;
block = 0;
jump_held = 0;

//camera
obj_camera.follow = obj_player;

// states
enum states {
	IDLE,
	WALK,
	JUMP,
	ATTACK,
	BLOCK,
	CROUCH,
	CROUCH_BLOCK,
	HURTING,
	KNOCKBACK
}

state = states.IDLE;

//create states array
states_array[states.IDLE]			= player_idle_state;
states_array[states.WALK]			= player_walk_state;
states_array[states.JUMP]			= player_jump_state;
states_array[states.ATTACK]			= player_attack_state;
states_array[states.BLOCK]			= player_block_state;
states_array[states.CROUCH]			= player_crouch_state;
states_array[states.CROUCH_BLOCK]	= player_crouch_block_state;
states_array[states.HURTING]		= player_hurting_state;
states_array[states.KNOCKBACK]		= player_knockback_state;

//create sprites array
sprites_array[states.IDLE]			= s_player_idle;
sprites_array[states.WALK]			= s_player_walk;
sprites_array[states.JUMP]			= s_player_jump;
sprites_array[states.ATTACK]		= s_player_attack;
sprites_array[states.BLOCK]			= s_player_block;
sprites_array[states.CROUCH]		= s_player_block;	// todo: need design, if time allows
sprites_array[states.CROUCH_BLOCK]	= s_player_block;	// todo: need design, if time allows
sprites_array[states.HURTING]		= s_player_block;	// todo: need design, if time allows
sprites_array[states.KNOCKBACK]		= s_player_block;	// todo: need design, if time allows

//create mask array
mask_array[states.IDLE]			= s_player_idle;
mask_array[states.WALK]			= s_player_idle;
mask_array[states.JUMP]			= s_player_idle;
mask_array[states.ATTACK]		= s_player_idle;
mask_array[states.BLOCK]		= s_player_idle;
mask_array[states.CROUCH]		= s_player_block;
mask_array[states.CROUCH_BLOCK]	= s_player_block;
mask_array[states.HURTING]		= s_player_idle;
mask_array[states.KNOCKBACK]		= s_player_idle;