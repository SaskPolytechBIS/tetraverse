// Move the enemy
x += speed * direction;

// Check for collisions with walls or edges
if (place_meeting(x + (direction * speed), y, obj_ground)) {
    direction = -direction;  // Reverse direction
}

if (x < 0 || x > room_width - sprite_width) {
    direction = -direction;  // Reverse direction
}

// Gravity
if (!place_meeting(x, y + 1, obj_ground)) {
    y -= 1;  // Apply gravity
}

// Patrol between two points
if (x < patrol_left || x > patrol_right) {
    direction = -direction;  // Reverse direction
}

if (x < 0) {
    x = 0; // Prevent moving off the left side
} else if (x > room_width - sprite_width) {
    x = room_width - sprite_width; // Prevent moving off the right side
}


show_debug_message("Enemy Position: " + string(x) + "," + string(y));