// Stop whatever was playing previously (if anything)
if audio_is_playing(current_bgm_id) {
    audio_stop_sound(current_bgm_id);
}

// Decide which music to play based on the current room
switch (room) {
    case rm_init:
        current_bgm_id = audio_play_sound(bgm_intro, 1, true);
        break;
        
    case rm_00:
        current_bgm_id = audio_play_sound(bgm_Jungle_2, 1, true);
        break;
        
    case rm_01:
        current_bgm_id = audio_play_sound(bgm_final_boss_3, 1, true);
        break;
        
    case rm_credits:
        current_bgm_id = audio_play_sound(bgm_victory_ending, 1, true);
        break;
}