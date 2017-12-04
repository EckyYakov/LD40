if(explo){
	if(!explo_sp){
		show_debug_message("Playing explo sound...")
		var vol_level = 1 - (.07 * ((instance_number(obj_explosion_big) + instance_number(obj_explosion_small))/2))
		var explo_sound = audio_play_sound(snd_Explosion, 1, false);
		audio_sound_set_track_position(explo_sound, .35);
		audio_sound_gain(explo_sound, 0, 0);
		audio_sound_gain(explo_sound, .5, 150);
		explo_sp = true;
		alarm[2] = 2;
	}
	explo = false;
}