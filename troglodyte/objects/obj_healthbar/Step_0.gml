if (instance_exists(obj_player)) {	
    health_level = obj_player.health_level; 
	
    // Prevent health from going below 0
    if (health_level < 0) {
        health_level = 0;
    }

    // Debugging
    show_debug_message("Health Level: " + string(health_level));
    show_debug_message("Player Health: " + string(obj_player.health_level));

    // Set sprite based on health level
    switch (health_level) {
        case 5: sprite_index = spr_health_5; break;
        case 4: sprite_index = spr_health_4; break;
        case 3: sprite_index = spr_health_3; break;
        case 2: sprite_index = spr_health_2; break;
        case 1: sprite_index = spr_health_1; break;
        default: sprite_index = spr_health_0; break;
    }
} else {
    instance_destroy(); // Destroy health bar if player no longer exists
}
