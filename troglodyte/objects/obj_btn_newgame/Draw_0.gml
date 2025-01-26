/// @description Insert description here
// You can write your code in this editor

// Change color when hovered
if (hovered) {
    draw_sprite_ext(spr_btn_newgame, 0, x, y, 1.1, 1.1, 0, c_white, 1);
} else {
    draw_sprite(spr_btn_newgame, 0, x, y);
}
