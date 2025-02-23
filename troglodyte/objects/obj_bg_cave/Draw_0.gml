// Get original dimensions
var bg_width = sprite_get_width(spr_cave);
var bg_height = sprite_get_height(spr_cave);

// Calculate scale factor to reach 360px height
var scale_factor = 360 / bg_height;
var new_width = bg_width * scale_factor;
var new_height = 360; // Set fixed height

// Draw the sprite with proportional scaling
draw_sprite_ext(spr_cave, 0, 0, 0, scale_factor, scale_factor, 0, c_white, 1);
