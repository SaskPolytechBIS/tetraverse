if  room != rm_game_end {	
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
	
	draw_sprite(spr_main_screen, 0, 0, (move * factor) - start_y);
}