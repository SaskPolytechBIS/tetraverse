function tiger_attack_state() {
    // Check health
    check_enemy_hp();

    // Play attack sound **only once** per attack
    //if (!attackSoundPlayed) {
    //    audio_play_sound(snd_tiger_attack, 1, false);
    //    attackSoundPlayed = true;
    //}

    // Create hitbox during animation frames 4-5
    if image_index >= 4 and image_index <= 5 {
        var inst = instance_create_layer(x, y, "Mobs", obj_frog_attack_hitbox);
        inst.image_xscale = facing; // Ensure hitbox faces the attack direction
    }

    // Adjust depth (so attack is above player)
    depth = layer_get_depth(layer_get_id("Player")) - 1;

    // Reset attack state when animation finishes
    if image_index >= image_number - sprite_get_speed(sprite_index)/game_get_speed(gamespeed_fps) {
        state = tiger_states.IDLE;
        alarm[CAN_ATTACK] = attack_delay;
        depth = layer_get_depth(layer_get_id("Mobs"));
        //attackSoundPlayed = false; // Reset for next attack
    }

    // Apply movement & animations
    collision();
    tiger_anim();
}
