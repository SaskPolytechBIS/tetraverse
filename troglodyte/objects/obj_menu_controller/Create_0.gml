/// @description Insert description here
// You can write your code in this editor

var center_x = display_get_gui_width() / 2;
var center_y = display_get_gui_height() / 2;

// Create buttons dynamically
var btn_new = instance_create_depth(0, 0, 0, obj_btn_newgame);
var btn_credits = instance_create_depth(0, 0, 0, obj_btn_credits);

// Set their positions AFTER creation
btn_new.x = center_x;
btn_new.y = center_y - 50;

btn_credits.x = center_x;
btn_credits.y = center_y + 50;


show_debug_message("Creating New Game Button at: " + string(center_x) + ", " + string(center_y - 50));
show_debug_message("Creating Credits Button at: " + string(center_x) + ", " + string(center_y + 50));

