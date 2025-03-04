event_inherited(); // Inherit any parent behavior

// Movement
hsp = 0;
vsp = 0;
max_hsp_initial = 1.5;
max_hsp = max_hsp_initial;
spd = 1.25;
jump_spd = -6;
hsp_decimal = 0;
vsp_decimal = 0;

attackSoundPlayed = false;

// Set facing direction towards player
if (x < obj_player.x) {
    facing = 1;  // Face right
} else {
    facing = -1; // Face left
}

// Drag and Health
drag = 0.08; // Reduce sliding effect
hp = 4; // Yeti is stronger than the Boar
death_gem_value = 5;

// Attack mechanics
can_attack = true;
attack_delay = game_get_speed(gamespeed_fps); // Room speed

x_start = x; // Store the original X position when the Yeti spawns


// Yeti states
enum yeti_states {
    IDLE,
    RUN,
    PUNCH,
}

state = yeti_states.IDLE; // Start in IDLE

// Assign state functions
states_array[yeti_states.IDLE] = yeti_idle_state;
states_array[yeti_states.RUN] = yeti_run_state;
states_array[yeti_states.PUNCH] = yeti_punch_state;

// Assign sprites
sprites_array[yeti_states.IDLE] = spr_yeti_walk; // spr_yeti_idle;
sprites_array[yeti_states.RUN] = spr_yeti_run;
sprites_array[yeti_states.PUNCH] = spr_yeti_punch;

// Attack SFX variable
attackSoundPlayed = false;
