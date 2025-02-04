///@arg xspeed
///@arg yspeed
var _xspeed = argument0;
var _yspeed = argument1;

function move_collide(argument0,){
	
	if place_meeting(x+argument0, y, obj_ground)
	{
		x += argument0;
	}
	
	if not place_meeting(x+argument0, y, obj_ground)
	{
		x += argument0;
	}

	if not place_meeting(x, y+argument1, obj_ground)
	{
		y += argument1;
	}
	
}