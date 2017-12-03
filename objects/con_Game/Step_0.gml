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
			room_restart();
		}
	}
}
else{
	//Passively award score based on difficulty level
	scr += score_rate * difficulty;
	
	//Passively Award Resources based on how many cities are left
	resource += gain_rate;
}

//Calculate what to draw for the resource bar ui element
resource_ratio = gain_rate - (loss_rate * active_bases);

green_spriteWidth = max(0, ui_w * (resource_ratio/max_rate));
red_spriteWidth = min(0, ui_w * (resource_ratio/min_rate));
show_debug_message("Red: " + string(min(0, ui_w * (resource_ratio/min_rate))));
show_debug_message("Green: " + string(max(0, ui_w * (resource_ratio/max_rate))))
