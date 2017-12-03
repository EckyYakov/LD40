//Passively get rid of resources based on the amount of bases active.
timer++
if(timer mod tick_time){
	resource -= loss_rate * active_bases;
}

//Increase difficulty every minute



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
		case 0:
			resource = 0;
		break;
	}
	cities_remaining -= 1;
	if cities_remaining <= 0 cities_remaining = 0;
	city_destroy = false;
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
	resource += gain_rate * cities_remaining;
}