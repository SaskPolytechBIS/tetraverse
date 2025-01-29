spd = 6;
hSpeed = 0;

if (instance_exist(obj_player)){
	image_xscale = obj_player.image_xscale;
	x_anchor = obj_player.x;
}
	
if (image_xscale == 1) {
	dir = 1;
} else {
	dir = -1;
}