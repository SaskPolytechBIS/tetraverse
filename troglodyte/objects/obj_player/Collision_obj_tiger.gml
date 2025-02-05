if (hit_cooldown <= 0) { 
    health_level -= 1;
    hit_cooldown = 30; // 1-second cooldown

    if (health_level < 0) {
        health_level = 0; // Prevent negative health
    }

    exit; // Ensures only one enemy deals damage per frame
}
