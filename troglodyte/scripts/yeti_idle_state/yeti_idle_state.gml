function yeti_idle_state() {
    // Check health
    check_enemy_hp();

    // Stop movement
    hsp = 0;
    vsp = 0;

    // Detection range for chasing
    var detect_player_dis = 150; // Adjust range for realism
    var height_tolerance = 10; // Allow small height differences

    if instance_exists(obj_player) {
        var player_detected = (abs(obj_player.x - x) < detect_player_dis);
        var same_level = (abs(obj_player.y - y) < height_tolerance); // Check if on the same level

        if (player_detected && same_level) {
            state = yeti_states.RUN; // Switch to RUN state
        }
    }

    // Apply animations
    yeti_anim();
}
