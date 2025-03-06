// macros
macros();

global.grav = 0.25;

//set gui size
display_set_gui_size(720, 360);

//how many sparks come off meat
gem_sparks = 6;
//how many sparks come off dead enemies
enemy_sparks = 6;

// game over and lost
game_over_lose = false;

// game over and won
game_over_won = false;

game_over_won_delay = game_get_speed(gamespeed_fps) * 3;

//main menu
current_frame = 0;
   
//fade in menu
fade_in = true;
alpha = 1;
fade_spd = 0.02;

////highscore
//savename = "game.sav";
//highscore = 0;

////open savefile
//ini_open(savename);
////read an old highscore, or set it to 0 if none
//highscore = ini_read_real("Score", "Highscore", 0);
//ini_close();

// final room
msg = "";

// tooltip messages (msg#, propertries)
// 0 - pre msg
// 1 - post msg
// 2 - keyboard button
// 3- pad button
// 4 - time on screen
// 5 - has it been shown this game?
global.tooltip = ds_grid_create(6, 6);

// objective
global.tooltip[# 0, 0] = "Me Troglodyte! Me Smash Bad Things!";
global.tooltip[# 0, 1] = "Me Strong! Me Boss! HA HA HA!";
global.tooltip[# 0, 2] = "Me Beat Big Ugly Boss!";
global.tooltip[# 0, 3] = "B";
global.tooltip[# 0, 4] = 16;
global.tooltip[# 0, 5] = 0;

// attack
global.tooltip[# 1, 0] = "Press";
global.tooltip[# 1, 1] = "to attack";
global.tooltip[# 1, 2] = "Space";
global.tooltip[# 1, 3] = "B";
global.tooltip[# 1, 4] = 3;
global.tooltip[# 1, 5] = 0;

// jump
global.tooltip[# 2, 0] = "Press";
global.tooltip[# 2, 1] = "to jump";
global.tooltip[# 2, 2] = "W";
global.tooltip[# 2, 3] = "Z";
global.tooltip[# 2, 4] = 3;
global.tooltip[# 2, 5] = 0;

// Double jump
global.tooltip[# 3, 0] = "Press";
global.tooltip[# 3, 1] = "again to Double Jump";
global.tooltip[# 3, 2] = "W";
global.tooltip[# 3, 3] = "A";
global.tooltip[# 3, 4] = 3;
global.tooltip[# 3, 5] = 0;


// warning
global.tooltip[# 4, 0] = "Double trouble!";
global.tooltip[# 4, 1] = "unless you make them!";
global.tooltip[# 4, 2] = "These cavemen won't budge";
global.tooltip[# 4, 3] = "A";
global.tooltip[# 4, 4] = 4;
global.tooltip[# 4, 5] = 0;

// level 1 complete
global.tooltip[# 5, 0] = "That was just a warm-up!";
global.tooltip[# 5, 1] = "Things are about to get wild!";
global.tooltip[# 5, 2] = "";
global.tooltip[# 5, 3] = "A";
global.tooltip[# 5, 4] = 4;
global.tooltip[# 5, 5] = 0;



