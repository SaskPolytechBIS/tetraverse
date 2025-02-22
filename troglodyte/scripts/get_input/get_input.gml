function get_input(){
	left		= keyboard_check(vk_left) or keyboard_check(ord("A"));
	right		= keyboard_check(vk_right) or keyboard_check(ord("D"));
	attack		= keyboard_check_pressed(vk_space);
	jump		= keyboard_check_pressed(ord("W"));
	jump_held	= keyboard_check(ord("W"));
	block		= keyboard_check(ord("Z"));
}