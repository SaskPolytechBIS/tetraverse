//if mouse_check_button_pressed(mb_right) {
//	obj_player.hp = 0;
//}

if game_over_lose {
	with(obj_player) {
		get_input();
		if jump or attack {
			game_restart();	
		}
	}
}
////reduce delay time in game over room
//if game_over_won {
//	game_over_won_delay--;	
//}