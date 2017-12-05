//Base destroy
if(destroy_base){
	//Animate
	destroy_timer++;
	if(round(destroy_timer % (destroy_time/destroy_sections)) == 0){
		alpha = .2;
	}
	if(alpha < 1){
		alpha += .01;
	}
	if(destroy_timer > destroy_time){
		destroy_base = false;
		destroy_timer = 0;
		destroyed = true;
		subImage = 1;
		alpha = 1;
	}
	//Then Destroy with particle effects
}

if(!destroyed){
	timer++
	if(timer % ui_time == 0){
		//Create Resource + UI element
		var inst = instance_create_depth(x, y - 4, -2, obj_Resource_UI);
		inst.symb = "+";
		inst.value = "$$$";
		ui_time = room_speed * 5;
		timer = 0;
	}
	enemyCollision = place_meeting(x, y, par_Enemy);
	var enemy = instance_place(x, y, par_Enemy);
	if(enemyCollision){
		//Do an animation taking out the city.
		idle_sound = audio_play_sound(sfx_Scream, 1, false);
		audio_sound_set_track_position(idle_sound, 1.3);
		audio_sound_gain(idle_sound, 0, 0);
		audio_sound_gain(idle_sound, 1, 150);
		con_Planet_Section.shake = true;
		con_Game.city_destroy = true;
		enemy.city_hit = true;
		with enemy instance_destroy();
	}
}
else{
	//Adjusting Emitter positions. Starting Emitter Streams or Bursts.
	var xp, yp;
	xp = x + lengthdir_x(irandom_range(pr_min_dist, pr_max_dist), irandom_range(pr_min_ang, pr_max_ang));
	yp = y + lengthdir_y(irandom_range(pr_min_dist, pr_max_dist), irandom_range(pr_min_ang, pr_max_ang));
	part_emitter_region(global.ps, pe_CityFires, xp-8, xp+8, yp-8, yp+8, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(global.ps, pe_CityFires, pt_CityFires, choose(0, 1, 1));
	xp = x + lengthdir_x(irandom_range(pr_min_dist, pr_max_dist), irandom_range(pr_min_ang, pr_max_ang));
	yp = y + lengthdir_y(irandom_range(pr_min_dist, pr_max_dist), irandom_range(pr_min_ang, pr_max_ang));
	part_emitter_region(global.ps, pe_CityFires, xp-8, xp+8, yp-8, yp+8, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(global.ps, pe_CityFires, pt_CityFires, choose(1, 0, 1));
	xp = x + lengthdir_x(irandom_range(pr_min_dist, pr_max_dist), irandom_range(pr_min_ang, pr_max_ang));
	yp = y + lengthdir_y(irandom_range(pr_min_dist, pr_max_dist), irandom_range(pr_min_ang, pr_max_ang));
	part_emitter_region(global.ps, pe_CityFires, xp-8, xp+8, yp-8, yp+8, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(global.ps, pe_CityFires, pt_CityFires, choose(1, 0, 1));
	
}


