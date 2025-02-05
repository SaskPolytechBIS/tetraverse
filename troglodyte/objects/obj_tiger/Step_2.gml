event_inherited();

// Check if the tiger is dead
if hp <= 0
{
    // Drop meat only for obj_tiger
    instance_create_depth(x, y, 0, obj_tiger_meat);
}