/// lock to player vertical pos

if (instance_exists(obj_player)){
	y = obj_player.y;
	x_anchor = obj_player.x;
}

/// horizontal movement
hSpeed += spd;
x = x_anchor + (hSpeed * dir);