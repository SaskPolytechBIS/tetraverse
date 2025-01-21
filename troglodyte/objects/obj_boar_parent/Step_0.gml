// Move the enemy
x += speed * direction;

// Check for collisions with walls or edges
if (place_meeting(x + (direction * speed), y, obj_wall)) {
    direction = -direction;  // Reverse direction
}

if (x < 0 || x > room_width - sprite_width) {
    direction = -direction;  // Reverse direction
}

// Gravity
if (!place_meeting(x, y + 1, obj_ground)) {
    y += 4;  // Apply gravity
}

// Patrol between two points
if (x < patrol_left || x > patrol_right) {
    direction = -direction;  // Reverse direction
}

x += speed * direction;
