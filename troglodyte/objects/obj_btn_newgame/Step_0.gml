/// @description Insert description here
// You can write your code in this editor

// Check if mouse is over the button
if (
	mouse_x > x - button_width / 2 && mouse_x < x + button_width / 2 &&
    mouse_y > y - button_height / 2 && mouse_y < y + button_height / 2) {
    hovered = true;
} else {
	hovered = false;
}