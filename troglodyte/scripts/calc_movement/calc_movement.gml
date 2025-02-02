function calc_movement(){
    hsp += (right - left) * walk_spd;

    // **Apply Gravity**
    vsp += 0.5; // Adjust gravity strength as needed

    // Drag (friction)
    hsp = lerp(hsp, 0, drag);

    // Stop small movements
    if abs(hsp) <= 0.1 hsp = 0;

    // Face correct direction
    if hsp != 0 facing = sign(hsp);

    // Limit horizontal speed
    hsp = min(abs(hsp), max_hsp) * facing;
}
