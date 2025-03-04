function yeti_run_state() {
    // Check health
    check_enemy_hp();

    // Set movement speed
    var run_speed = 2.5;
    var height_tolerance = 10; // Make sure Yeti only runs if on same level

    // Detect player
    var attack_range = 20;
    var player_detected = false;
    var player_in_attack_range = false;
    var same_level = false; // Declare before using

    if instance_exists(obj_player) {
        player_detected = (abs(obj_player.x - x) < 150);
        player_in_attack_range = (abs(obj_player.x - x) < attack_range);
        same_level = (abs(obj_player.y - y) < height_tolerance); // Check if still on same platform
    }

    // Chase logic (only if still on the same level)
    if (player_detected && same_level) {
        facing = sign(obj_player.x - x); // Always face the player
        hsp = run_speed * facing;
        vsp = 0; // Keep yeti on the same height
    } else {
        state = yeti_states.IDLE; // Stop running if player moves to another level
    }

    // Transition to ATTACK if close
    if (player_in_attack_range && can_attack) {
        state = yeti_states.PUNCH;
        hsp = 0;
        vsp = 0;
        image_index = 0;
        image_speed = 1;
    }

    // Apply animations
    yeti_anim();
    collision();
}
