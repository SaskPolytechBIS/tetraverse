#region Current status

/// calculate current status
var _onground = place_meeting(x, y+groundbuffer, obj_ground);

#endregion

#region Inputs
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _jump = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
var _jump_held = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _attack = keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_left);

#endregion

#region Horizontal movement

/// get move direction (-1 is left, 1 is right, 0 is idle)
var _dir = _right - _left;

/// get horizontal speed (negative is left, positive is right)
hSpeed += _dir * accel;

/// slow down character if no direction key is pressed
if(_dir == 0){
	/// going left
	if (hSpeed < 0){
		hSpeed = min(hSpeed + decel, 0);
	}
	/// going right 
	else {
		hSpeed = max(hSpeed - decel, 0);
	}
}

/// set the max speed
hSpeed = clamp(hSpeed, -max_hSpeed, max_hSpeed);

#endregion

#region Vertical movement
/// add gravity
vSpeed += grav;

/// ground jump
if (jumpbuffer > 0) {
	jumpbuffer--;
	if (_jump) && (vSpeed > 0) {
		jumpbuffer = 0;
		vSpeed = jumpheight;
	}
}

if (_onground) jumpbuffer = 10;

/// variable jump height
if (vSpeed < 0) &&  (!_jump_held) {
	vSpeed = max(vSpeed, jumpheight_min);	
}

vSpeed = clamp(vSpeed, jumpheight, grav_max);

#endregion

#region Collision

/// horizontal collision
if(place_meeting(x+hSpeed,y, obj_ground)){
	var _x = round(x);
	var _pixel = sign(hSpeed);
	while (!place_meeting(_x +_pixel, y, obj_ground)) _x += _pixel;
	x = _x;
	hSpeed = 0;
} 

/// vertical collision
if(place_meeting(x,y+vSpeed, obj_ground)){
	var _y = round(y);
	var _pixel = sign(vSpeed);
	while (!place_meeting(x, _y+_pixel, obj_ground)) _y += _pixel;
	y = _y;
	vSpeed = 0;
}

/// commit to movement
x += hSpeed;
y += vSpeed;

#endregion

#region Sprite

image_speed = 1;

if (hSpeed != 0) image_xscale = sign(hSpeed);

if (!_onground) {
	sprite_index = main_chr_jump;
	image_speed = 0.3;
	image_index = (vSpeed > 0)
} else {
	if (hSpeed != 0){
		sprite_index = main_chr_move;
	} else {
		sprite_index = main_chr_idle
	}
}

#endregion

#region Attack

if (_attack) {
	sprite_index = main_club_atk;
	image_speed = 0;
}

#endregion

#region Enemies

#endregion

if (instance_exists(obj_healthbar)) {
    obj_healthbar.health_level = health_level;
}




show_debug_message("Attack Frame: " + string(image_index));
