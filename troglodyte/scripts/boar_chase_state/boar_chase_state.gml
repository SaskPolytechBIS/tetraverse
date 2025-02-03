// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function boar_chase_state(){
// Implement the boar's horizontal movement in the CHASE state
if (state == boar_states.CHASE) {
    // Move towards player (if player is to the right of the boar)
    if (x < obj_player.x) {
        hsp = spd; // Move right towards player
    } else if (x > obj_player.x) {
        hsp = -spd; // Move left towards player
    }
    
    // Optionally, you can increase the speed for the chase, if needed
    hsp = spd * 1.5; // Increase the speed during the chase state
}


}