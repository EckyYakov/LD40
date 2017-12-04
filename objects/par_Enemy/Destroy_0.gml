//Adjusting Emitter positions. Starting Emitter Streams or Bursts.
if(city_hit){
	var xp, yp;
	xp = x;
	yp = y;
	part_emitter_region(global.ps, pe_CitySmoke, xp-7, xp+9, yp-8, yp+8, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(global.ps, pe_CitySmoke, pt_CitySmoke, 50);
	part_emitter_burst(global.ps, pe_CitySmoke, pt_CitySmoke, 25);
}

var explo_sound = audio_play_sound(snd_Explosion, 1, false);
audio_sound_set_track_position(explo_sound, .35);
audio_sound_gain(explo_sound, 0, 0);
audio_sound_gain(explo_sound, 1, 150);