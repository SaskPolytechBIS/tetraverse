// desc show_msg(message, secs_to_display)
function show_msg(){
	var _msg		= argument0;
	var _time		= argument1;
	
	with(obj_game) {
		alarm[DISPLAY_MSG] = _time * game_get_speed(gamespeed_fps);
		msg = _msg;
	}
}