/// @description Insert description here

// Ensure the player exists before applying movement
//if (instance_exists(obj_player)) {
    //var player_x = obj_player.x; // Get player's X position

    // Move background layers at different speeds for parallax effect
   // layer_x("bg_parallax_skies", -player_x * layer_speed1);
    //layer_x("bg_parallax_mountain", -player_x * layer_speed2);
   // layer_x("bg_parallax_trees_distant_3", -player_x * layer_speed3);
   // layer_x("bg_parallax_trees_distant_2", -player_x * layer_speed4);
   // layer_x("bg_parallax_trees_distant_1", -player_x * layer_speed5);
//}

// Get the current camera position (instead of player.x)
var cam_x = camera_get_view_x(view_camera[0]);

// Adjust parallax movement based on the camera's X position
layer_x("bg_parallax_skies", cam_x * 0.1);   // Furthest background (slowest)
layer_x("bg_parallax_mountain", cam_x * 0.2);
layer_x("bg_parallax_trees_distant_3", cam_x * 0.3);
layer_x("bg_parallax_trees_distant_2", cam_x * 0.4);
layer_x("bg_parallax_trees_distant_1", cam_x * 0.5); // Closest background (fastest)