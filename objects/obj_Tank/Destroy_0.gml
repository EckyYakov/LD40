//Adjusting Emitter positions. Starting Emitter Streams or Bursts.
event_inherited();

var xp, yp;
xp = x;
yp = y;
oppo_dir = dir;
part_type_direction(pt_Enemy_Crash, oppo_dir - 60, oppo_dir + 60, 0, 0);
part_emitter_region(global.ps, pe_Enemy_Crash, xp-1, xp+1, yp-2, yp+2, ps_shape_rectangle, ps_distr_linear);
part_emitter_burst(global.ps, pe_Enemy_Crash, pt_Enemy_Crash, 50);

audio_stop_sound(idle_sound);