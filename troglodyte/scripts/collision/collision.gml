function collision() {
    // Apply carried over decimals
    hsp += hsp_decimal;
    vsp += vsp_decimal;

    // Floor decimals
    hsp_decimal = hsp - (floor(abs(hsp)) * sign(hsp));
    hsp -= hsp_decimal;
    vsp_decimal = vsp - (floor(abs(vsp)) * sign(vsp));
    vsp -= vsp_decimal;

    // **Horizontal Collision**
    if (hsp != 0) {
        var side = (hsp > 0) ? bbox_right : bbox_left; // Determine the side to check
        var t1 = tilemap_get_at_pixel(global.map, side + hsp, bbox_top);
        var t2 = tilemap_get_at_pixel(global.map, side + hsp, bbox_bottom);

        if (t1 == SOLID || t2 == SOLID) {
            // Snap to the nearest tile boundary
            if (hsp > 0) {
                x = (floor((side + hsp) / global.tile_size) * global.tile_size) - (side - x) - 1;
            } else {
                x = (ceil((side + hsp) / global.tile_size) * global.tile_size) - (side - x);
            }
            hsp = 0; // Stop horizontal movement
        }
    }

    // **Vertical Collision**
    if (vsp != 0) {
        var side = (vsp > 0) ? bbox_bottom : bbox_top; // Determine the side to check
        var t3 = tilemap_get_at_pixel(global.map, bbox_left, side + vsp);
        var t4 = tilemap_get_at_pixel(global.map, bbox_right, side + vsp);

        if (t3 == SOLID || t4 == SOLID) {
            // Snap to the nearest tile boundary
            if (vsp > 0) {
                y = (floor((side + vsp) / global.tile_size) * global.tile_size) - (side - y) - 1;
            } else {
                y = (ceil((side + vsp) / global.tile_size) * global.tile_size) - (side - y);
            }
            vsp = 0; // Stop vertical movement
        }
    }

    // Apply movement
    x += hsp;
    y += vsp;
}