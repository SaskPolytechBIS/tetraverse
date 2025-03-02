function tiger_chase_state() {
    // Check if the tiger is still alive
    check_enemy_hp();

    // Set movement speed
    var chase_speed = 2.5;  // Adjust speed to make chasing feel natural

    // Detect player
    var detect_player_dis = 100;  // Detection range
    var attack_range = 20;        // Attack trigger range
    var player_detected = (distance_to_object(obj_player) < detect_player_dis);
    var player_in_attack_range = (distance_to_object(obj_player) < attack_range);

    // Update facing direction
    if (obj_player.x > x) {
        facing = 1;  // Face right
    } else {
        facing = -1; // Face left
    }

    // Chase logic
    if (player_detected) {
        // Move towards the player
        hsp = chase_speed * facing;

        // If the player enters attack range, transition to attack state
        if (player_in_attack_range && can_attack) {
            state = tiger_states.ATTACK;
            hsp = 0;
            vsp = 0;
            image_index = 0;
            image_speed = 1;
        }
    } 
    else {
        // If the player is lost, return to idle state
        state = tiger_states.IDLE;
    }

    // Apply movement & collisions
    collision();

    // Play appropriate animations
    tiger_anim();
}
