/// @description Insert description here
// You can write your code in this editor

// Get the GUI width and height (matches camera view size)
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Draw the health bar at the top-right corner
draw_sprite(sprite_index, 0, gui_w - sprite_width - 20, 20);