event_inherited();
image_speed = 0.2; //sprite speed
state = "move";

// Dependencies
input = instance_create_layer(0, 0, "Instances", obj_input);

camera_set_view_target(view_camera[0], id);
health_level = 5; // Set initial health
hit_cooldown = 0; // Initialize cooldown timer
heal_amount = 3; // Set a default value if not initialized


