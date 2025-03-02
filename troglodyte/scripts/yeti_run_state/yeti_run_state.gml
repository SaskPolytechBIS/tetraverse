function yeti_run_state() {
    // Check health
    check_enemy_hp();

    // Set movement speed
    var run_speed = 2.5;

    // Detect player
    var attack_range = 20;
    var player_detected = false;
    var player_in_attack_range = false;

    if instance_exists(obj_player) {
        player_detected = (distance_to_object(obj_player) < 150);
        player_in_attack_range = (distance_to_object(obj_player) < attack_range);
    }

    // Chase logic
    if (player_detected) {
        facing = sign(obj_player.x - x); // Always face the player
        hsp = run_speed * facing;
        vsp = 0; // Keep yeti on the same height
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
