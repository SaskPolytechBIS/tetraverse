//exectute state
if !instance_exists(obj_fade) {
	script_execute(states_array[state]);
} else {
	//stop animations playing
	if state != states.DIE image_index = 0;
}