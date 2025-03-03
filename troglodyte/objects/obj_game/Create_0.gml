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





