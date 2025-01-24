/// @description Parallax Backgrounds

var _cam_x = camera_get_view_x(view_camera[0]);

// Define the layer ID's
var layer_id_1 = layer_get_id("bg_skies");
var layer_id_2 = layer_get_id("bg_mountain");
var layer_id_3 = layer_get_id("bg_trees_distant_3");
var layer_id_4 = layer_get_id("bg_trees_distant_2");
var layer_id_5 = layer_get_id("bg_trees_distant_1");

// lerp the layer coordinates to your camera view
layer_x(layer_id_1, lerp(0, _cam_x, 1.00));
layer_x(layer_id_2, lerp(0, _cam_x, 0.95));
layer_x(layer_id_3, lerp(0, _cam_x, 0.90));
layer_x(layer_id_4, lerp(0, _cam_x, 0.85));
layer_x(layer_id_5, lerp(0, _cam_x, 0.60));