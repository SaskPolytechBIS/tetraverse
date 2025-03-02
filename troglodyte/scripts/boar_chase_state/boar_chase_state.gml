function boar_chase_state() {
    // Check if the boar is still alive
    check_enemy_hp();

    // Set movement speed
    var chase_speed = 2.5; // Adjust for realism

    // Detect player
    var player_detected = false;
    var player_in_attack_range = false;

    if instance_exists(obj_player) {
        player_detected = (distance_to_object(obj_player) < 100);
        player_in_attack_range = (distance_to_object(obj_player) < 5);
    }

    // Make the boar follow both X and Y
    if (player_detected) {
        var move_x = sign(obj_player.x - x);
        var move_y = sign(obj_player.y - y);

        hsp = chase_speed * move_x;
        vsp = chase_speed * move_y; // Allow Y movement
    }

    // Transition to ATTACK state when in range
    if (player_in_attack_range && can_attack) {
        state = boar_states.ATTACK;
        hsp = 0;
        vsp = 0;
        image_index = 0;
        image_speed = 1;
    }

    // Adjust depth for proper layering
    depth = -y;

    // Apply movement & collision
    boar_anim();
    collision();
}
