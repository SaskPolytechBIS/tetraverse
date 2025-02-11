//movement
calc_entity_movement();

//bounce
if on_ground() and !bounce {
	//give vert movement
	vsp = vsp_initial * random_range(.7, .8);
	bounce = true;
	can_pickup = true;	
}

//bounce off walls
var side = bbox_right;
if sign(hsp_initial) side = bbox_right else side = bbox_left;
var t1 = tilemap_get_at_pixel(global.map, side + sign(hsp_initial), bbox_bottom);
if t1 == SOLID {
	//wall found, reverse direction
	hsp = hsp_initial * .75 * -1;
}

//destroy gem if falls out of room
if die or y > room_height instance_destroy();

//generate sparks
if die {
		repeat(obj_game.gem_sparks) {
			var inst = instance_create_depth(x, y, depth, obj_spark);
			
			//set colour
			var col_head = c_white;
			var col_tail = c_white;
			
			switch(image_index) {
				case 0:	col_head = c_lime;		
						col_tail = make_color_rgb(137, 190, 133);
						break;
				case 1:	col_head = c_yellow;
						col_tail = make_color_rgb(218, 215, 152);
						break;
				case 2:	col_head = c_aqua;
						col_tail = make_color_rgb(152, 193, 218);
						break;				
				case 3:	col_head = c_fuchsia;
						col_tail = make_color_rgb(200, 152, 218);
						break;
				case 4:	col_head = c_red;
						col_tail = make_color_rgb(220, 154, 154);
						break;
			}
			inst.col_head = col_head;
			inst.col_tail = col_tail;
		}
		instance_destroy();
}
//collision
collision();

//update the lights position
//with(light_id) {
//	x = other.x;	
//	y = other.y;
//}