//Passively get rid of resources based on the amount of bases active.
timer++

resource -= loss_rate * active_bases;

//Increase difficulty every minute
if(timer mod difficulty_time == 0){
	if difficulty < 4 difficulty++;
}

if(city_destroy){
	switch cities_remaining {
		case 4:
			base1.destroy_base = true;
		break;
		case 3:
			base2.destroy_base = true;
		break;
		case 2:
			base3.destroy_base = true;
		break;
		case 1:
			base4.destroy_base = true;
		break;
	}
	cities_remaining -= 1;
	if cities_remaining <= 0 cities_remaining = 0;
	city_destroy = false;
}

//Check the last base to see if it is destroyed
if(base4.destroyed){
	cause_of_death = "You failed to protect your cities!"
	if(instance_exists(con_Music)){
		con_Music.song_to_play = msc_Spacery;
		con_Music.play_song = true;
	}
	resource = 0;
}

//Check to see if we have ran out of resources
if(resource <= 0) {
	resource = 0;
	if(!surface_exists(scrn)){
        scrn = surface_create(w, h);
        surface_copy(scrn, 0, 0, application_surface);
		//Delay the button pressing after it swaps to end game so they dont accidently skip.
		alarm[0] = room_speed;
    }
    instance_deactivate_all(true);
	instance_activate_object(self);

	//Check to see if any button is pressed to restart;
	if(delayed){
		if(timer % room_speed * 2 == 0) alpha = 1;
		alpha -= .01;
		
		key_pressed = keyboard_check_pressed(vk_anykey);
		mouse_pressed = mouse_check_button_pressed(mb_any);
		
		if(key_pressed || mouse_pressed){
			if(instance_exists(con_Music)){
				con_Music.song_to_play = msc_tfx_main;
				con_Music.play_song = true;
			}
			room_restart();
		}
	}
}
else{
	//Audio queue for stacks
	if(stacks < 4){
		if(round(timer % room_speed) == 0){
			var idle_sound = audio_play_sound(sfx_Duh, 1, false);
			audio_sound_set_track_position(idle_sound, .03);
			audio_sound_gain(idle_sound, 0, 0);
			audio_sound_gain(idle_sound, 1, 150);
		}
	}
	
	//Passively award score based on difficulty level
	scr += score_rate * difficulty;
	
	//Passively Award Resources based on how many cities are left
	resource += gain_rate;
	if resource >= max_resource resource = max_resource;
}

//Calculate what to draw for the resource bar ui element
resource_ratio = gain_rate - (loss_rate * active_bases);

green_spriteWidth = max(0, ui_w * (resource_ratio/max_rate));
red_spriteWidth = min(0, ui_w * (resource_ratio/min_rate));

if(gDrawWidth != green_spriteWidth) gDrawWidth += sign(green_spriteWidth - gDrawWidth);
if(rDrawWidth != red_spriteWidth) rDrawWidth += sign(red_spriteWidth - rDrawWidth);

//Resrouce bar
bar_ratio= resource/max_resource;
stacks = floor(resource/1000);



