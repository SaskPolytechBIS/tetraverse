/// calculate horizontal movement
hSpeed = current_dir * hSpeed_max;

/// calculate vertical movement
vSpeed += grav;
vSpeed = clamp(vSpeed, -vSpeed_max, vSpeed_max);

/// horizontal collision
if (place_meeting(x+hSpeed, y,obj_ground)) {
	var _pixel = sign(hSpeed);
	while (!place_meeting(x+_pixel, y, obj_ground)) x += _pixel;
	hSpeed = 0;
}

/// vertical collision
if (place_meeting(x, y+vSpeed,obj_ground)) {
	var _pixel = sign(vSpeed);
	while (!place_meeting(x, y+_pixel, obj_ground)) y += _pixel;
	vSpeed = 0;
}

/// commit to movement
x += hSpeed;
y += vSpeed;
