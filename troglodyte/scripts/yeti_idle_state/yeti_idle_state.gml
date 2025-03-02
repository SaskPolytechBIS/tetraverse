function yeti_idle_state() {
    // Check health
    check_enemy_hp();

    // Stop movement
    hsp = 0;
    vsp = 0;

    // Detection range for chasing
    var detect_player_dis = 150; // Adjust range for realism

    if instance_exists(obj_player) {
        var player_detected = (distance_to_object(obj_player) < detect_player_dis);

        if (player_detected) {
            state = yeti_states.RUN; // Switch to RUN state
        }
    }

    // Apply animations
    yeti_anim();
}
