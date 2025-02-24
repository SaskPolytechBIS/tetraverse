/// @description 
//move_to_x and move_to_y
x = lerp(x, move_to_x, camera_pan_speed);
y = lerp(y, move_to_y, camera_pan_speed);
 
 
camera_set_view_pos(camera, x - camera_get_view_width(camera)/2, y - camera_get_view_height(camera)/1.5);
 
if follow != noone {
	move_to_x = follow.x;
	var _buffer = global.tile_size/2;
	move_to_y = follow.y - _buffer;
}
 
var xx = clamp(camera_get_view_x(camera), 0, room_width - camera_get_view_width(camera));
var yy = clamp(camera_get_view_y(camera), 0, room_height - camera_get_view_height(camera));

// screen_share
if screen_shake {
	xx += random_range(-screen_shake_amount, screen_shake_amount);
	yy += random_range(-screen_shake_amount, screen_shake_amount);
}
 
camera_set_view_pos(camera, xx, yy);

// background scrolling
layer_x("bg_parallax_skies", lerp(0, -camera_get_view_x(view_camera [0]), 0.05));
layer_x("bg_parallax_mountain", lerp(0, -camera_get_view_x(view_camera[0]), 0.1));
layer_x("bg_parallax_trees_distant_3", lerp(0, -camera_get_view_x(view_camera[0]), 0.15));
layer_x("bg_parallax_trees_distant_2", lerp(0, -camera_get_view_x(view_camera[0]), 0.2));
layer_x("bg_parallax_trees_distant_1", lerp(0, -camera_get_view_x(view_camera[0]), 0.30));
layer_x("bg_cave", lerp(0, -camera_get_view_x(view_camera[0]), 0.25)); // bg_cave horizontal scrolling
layer_y("bg_cave", 360); // ✅ Set bg_cave's Y position to 360