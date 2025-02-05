// Play a sound effect when absorbing meat
//audio_play_sound(sfx_item_pick_up, 1, false);

// Increase player's HP (or another stat)
//hp = min(hp + 5, max_hp); // Prevents HP from exceeding max

// Destroy the meat after absorption
//instance_destroy(other);

if (instance_exists(obj_player)) {
    obj_player.health_level += heal_amount; // Increase HP
    
    // Ensure HP does not exceed max value
    if (obj_player.health_level > 5) {
        obj_player.health_level = 5;
    }

    // Debugging to check HP restoration
    show_debug_message("Tiger Meat Collected! Player HP: " + string(obj_player.health_level));
    
    // Play healing sound effect
    audio_play_sound(sfx_item_pick_up, 1, false);
    
    // Destroy the meat after collection
    instance_destroy(other);
}