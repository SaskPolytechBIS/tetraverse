/// @description Insert description here

// Ensure the player exists before applying movement
if (instance_exists(obj_player)) {
    var player_x = obj_player.x; // Get player's X position

    // Move background layers at different speeds for parallax effect
    layer_x("bg_parallax_skies", -player_x * layer_speed1);
    layer_x("bg_parallax_mountain", -player_x * layer_speed2);
    layer_x("bg_parallax_trees_distant_3", -player_x * layer_speed3);
    layer_x("bg_parallax_trees_distant_2", -player_x * layer_speed4);
    layer_x("bg_parallax_trees_distant_1", -player_x * layer_speed5);
}

