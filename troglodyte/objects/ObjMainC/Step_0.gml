////character's movements
if (keyboard_check(vk_right) or keyboard_check(ord("D"))){
	x += 2;
	sprite_index = MainC_Run;
	image_xscale = 1;
}
else if (keyboard_check(vk_left)  or keyboard_check(ord("A"))){
	x -= 2;
	sprite_index = MainC_Run;
	image_xscale = -1;
}
else {
	sprite_index = MainC_Idle;
}

////combat
if (mouse_check_button_pressed(mb_left) or keyboard_check_pressed(ord("J"))){
	sprite_index = MainC_Atk;
	image_speed = 0.3;
}