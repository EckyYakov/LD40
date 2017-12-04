//Check to see if the mouse cursor is in range of this turret
angle1 = 0 + ((180 - defense_range)/2);
angle2 = 180 - ((180 - defense_range)/2);

p_dir = point_direction(x, y, mouse_x, mouse_y);
mouse_angle = clamp360(p_dir - rot);

//show_debug_message("Mouse Angle: " + string(mouse_angle));
//show_debug_message("Angle 1: " + string(clamp360(angle1)));
//show_debug_message("Angle 2: " + string(clamp360(angle2)));

if(mouse_angle >= min(clamp360(angle1),clamp360(angle2))  && mouse_angle <= max(clamp360(angle2), clamp360(angle2))){
	highlight = true;
	buttonPressed = mouse_check_button_pressed(mb_left);
	if(buttonPressed){
		//Create a projectile towards the mouse
		var proj = instance_create_depth(x, y, 0, obj_Projectile);
		with proj motion_set(p_dir, spd);
		var proj_sound = audio_play_sound(sfx_rocket2, 1, false);
		audio_sound_set_track_position(proj_sound, .35);
		audio_sound_gain(proj_sound, 0, 0);
		audio_sound_gain(proj_sound, 1, 150);
	}
}
else{
	highlight = false;
}

timer++
if(timer % ui_time == 0){
	//Create Resource + UI element
	var inst = instance_create_depth(x, y - 4, -2, obj_Resource_UI);
	inst.symb = "-";
	inst.value = "10";
	inst.color = make_color_rgb(255, 0, 0);
	inst.floatSpeed = -.5;
}