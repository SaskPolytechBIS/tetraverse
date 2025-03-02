
function boar_idle_state(){
// Check health first
    check_enemy_hp();

    // Stop movement while idle
    hsp = 0;
    vsp = 0;

    // Detection & Attack Range
    var detect_player_dis = 100; // Increased to allow the tiger to react earlier
    var attack_range = 20;       // Close-range attack trigger

    // Player Detection
    var player_detected = (distance_to_object(obj_player) < detect_player_dis);
    var player_in_attack_range = (distance_to_object(obj_player) < attack_range);

    if (player_detected && sign(obj_player.x - x) == facing) {
        if (obj_player.hp > 0) {
            player_alert = true; // Can be used for animation, growling, or preparing stance
            
            // Attack only if it's ready
            if (can_attack && player_in_attack_range) {
                state = boar_states.ATTACK;
                can_attack = false;
                image_index = 0;
                image_speed = 1;
                
                // Cooldown for attack (1 second delay)
                alarm[0] = 30;
            } 
            else if (!player_in_attack_range) {
                // If the player is detected but too far, chase them
                state = boar_states.CHASE;
            }
        }
    }

    // Apply movement (ensures the tiger is affected by collisions)
    collision();

    // Handle animations
    boar_anim();

}