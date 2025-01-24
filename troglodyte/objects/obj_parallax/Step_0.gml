/// @description Insert description here


var _cam_x = camera_get_view_x(view_camera[0]);

layer_x("bg_parallax_trees_distant_1", _cam_x * 0.8);
layer_x("bg_parallax_trees_distant_2", _cam_x * 0.85);
layer_x("bg_parallax_trees_distant_3", _cam_x * 0.9);
layer_x("bg_parallax_mountain", _cam_x * 0.95);
layer_x("bg_parallax_skies", _cam_x * 1.2);
