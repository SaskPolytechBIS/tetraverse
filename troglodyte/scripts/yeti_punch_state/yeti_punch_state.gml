function yeti_punch_state() {
    // Check health
    check_enemy_hp();

    // Play attack sound once per attack
    if (!attackSoundPlayed) {
        audio_play_sound(sfx_Yeti_cry, 1, false);
        attackSoundPlayed = true;
    }

    // Create hitbox when the punch animation reaches frame 3
    if image_index == 3 {
        var inst = instance_create_layer(x, y, "Mobs", obj_yeti_attack_hitbox);
        inst.image_xscale = facing;
    }

    // Reset attack state when animation finishes
    if image_index >= image_number - 1 {
        state = yeti_states.IDLE; // Return to idle
        alarm[CAN_ATTACK] = attack_delay;
        attackSoundPlayed = false; // Reset sound flag
    }

    // Apply animations
    yeti_anim();
}
