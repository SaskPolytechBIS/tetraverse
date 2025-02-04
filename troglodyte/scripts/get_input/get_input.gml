function get_input(){
	right = keyboard_check(vk_right);
	left = keyboard_check(vk_left);
	up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	attack = keyboard_check_pressed(vk_space);
}