////720x360

window_set_fullscreen(true);


//get gui dimensions
var gw = display_get_gui_width();
var gh = display_get_gui_height();
	
if room != rm_menu {	
	if room != rm_game_end {
		//Meat
		#region
		draw_set_font(fnt_stats);
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		var _col = make_color_rgb(173, 144, 159);
		draw_set_color(_col);

		//set draw location - DELETED
		var xx = gw - 92;
		var yy = 2;
		//draw_sprite(spr_health_1, 0, xx, yy);

		//text - counter for gems/meat
		//var text_xx = -20;
		//var text_yy = 24;
		//draw_set_color(c_black);
		//draw_text(xx + text_xx + 1, yy + text_yy + 1, obj_player.meat);
		//draw_set_color(_col);
		//draw_text(xx + text_xx, yy + text_yy, obj_player.meat);
		#endregion

		//HP bar
		#region
		xx = 16;
		yy = 30;
		var hp_ratio = (obj_player.max_hp > 0) ? obj_player.hp / obj_player.max_hp : 0; // fix - fix division by zero
		
		draw_sprite(spr_hp_bar, 1, xx, yy);
		draw_sprite_ext(spr_hp_bar, 2, xx, yy, hp_ratio, 1, 0, c_white, image_alpha);
		//draw_sprite(spr_hp_bar, 0, xx - 32, yy - 5);
		draw_sprite(spr_hp_bar, 0, xx - 32, yy - 5);
		#endregion

		//lives
		#region
		// Position in the top-right corner of the camera view
		xx = gw - 92;
		yy = 16;
		var gap = 24;
		var scale = 1.5;
		if lives > 0 {
			//draw number of lives
			for (var i = 0; i < lives; i++) {
				//draw_sprite(spr_lives, 0, xx + i * gap, yy);
				draw_sprite_ext(spr_lives, 0, xx + i * gap, yy, scale, scale, 0, c_white, 1);
			}
		}
		#endregion
	}
	//game over
	#region
	if game_over_lose or (game_over_won and game_over_won_delay <= 0) {
		//center gui
			var mx = gw / 2;
			var my = gh / 2;

		//draw game over
		draw_sprite_ext(spr_game_over, 0, mx, my, 2, 2, 0, c_white, 1);
		draw_sprite(spr_game_over_text, 0, mx, my);
	}
	#endregion
} else {
	//draw main menu and fade to first level
	//draw bounce
	var start_y = 150;		//how far the animation moves
	var factor = start_y;
	
	var max_frames = 60;		//how long animation goes for
	
	var move = 0;  // fix - initialize move 
	
	if current_frame < max_frames {
		current_frame++;
		move = EaseOutBounce(current_frame, 0, 1, max_frames);
	} else {
		move = 1;
		//alow game start as menu has dropped
		if (keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0, gp_face1)) and
		!instance_exists(obj_fade) {
//			//move to the next room on the list
//			//get string of the next room i.e. "rm_01"
//			//var next_room_str = room_get_name(room_next(room));
//			//get asset index of next room i.e 1, 2, 3...rooms start at 0
//			//var next_room_name = asset_get_index(next_room_str);			
			fade_to_room(rm_00, 0, 0, 1, c_black);
		}
	}
	
	draw_sprite(spr_main_screen2, 0, 0, (move * factor) - start_y);
	
//	//draw highscore
//	if current_frame == max_frames {
//		draw_set_halign(fa_right);
//		draw_set_font(fnt_bookman);
//		draw_text_ext_colour(gw - 10, 28, highscore, 5, 100, c_aqua, c_aqua, c_gray, c_gray, 1);
//	}
}

//fade screen in
if fade_in {
	alpha = lerp(alpha, 0, fade_spd);
	draw_set_alpha(alpha);
	draw_rectangle_colour(0, 0, gw, gh, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}

//display msg
if alarm[DISPLAY_MSG] > 0 {
	draw_set_halign(fa_center);
	//draw_set_font(fnt_bookman);
	draw_set_color(c_black);
	draw_text(gw/2 + 1, gh *.85 + 1, msg);
	draw_set_color(c_white);
	draw_text(gw/2, gh *.85, msg);	
}
