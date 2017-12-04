key_pressed = keyboard_check_pressed(vk_anykey);
mouse_pressed = mouse_check_button_pressed(mb_any);
		
if(key_pressed || mouse_pressed){
	room_goto_next();
}

timer++;
if(timer % room_speed * 2 == 0) alpha = 1;
alpha -= .01;