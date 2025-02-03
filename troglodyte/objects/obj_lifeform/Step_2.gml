if hp <= 0
{
	audio_play_sound(sfx_mc_death, 1, false);
	instance_destroy();	
}