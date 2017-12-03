//Check for mouse collision
mouseCollision = position_meeting(mouse_x, mouse_y, self)

x = con_Planet_Section.x;
y = con_Planet_Section.y;

if(mouseCollision){
	buttonPressed = mouse_check_button_pressed(mb_left);
	switch status {
		case 0:
			subImage = 1;
		break;
		case 1:
			subImage = 3;
		break;
		case 2:
			subImage = 3;
		break;
	}
	if(buttonPressed){
		switch status {
		case 0:
			status = 1;
			build = true;
			alpha = .2;
			exit;
		break;
		case 1:
			status = 0;
			build = false;
			build_timer = 0;
			alpha = 1;
			exit;
		break;
		case 2:
			status = 0;
			con_Game.active_bases -= 1;
			with base_inst instance_destroy();
			base_inst = noone;
			exit;
		break;
	}	
	}
}
else {
	switch status {
		case 0:
			subImage = 0;
		break;
		case 1:
			subImage = 1;
		break;
		case 2:
			subImage = 2;
		break;
	}	
}

if(build){
	build_timer++;
	// To show the section is actively being built.
	if(build_timer % (build_time/build_sections) == 0){
		alpha = .2;
	}
	if(alpha < 1){
		alpha += .01;
	}
	//If it has been built
	if(build_timer > build_time){
		status = 2;
		build = false;
		build_timer = 0;
		con_Game.active_bases += 1;
		//Create a base
		base_inst = instance_create_depth(x + lengthdir_x(dist_to_base, rot + 67.5), y + lengthdir_y(dist_to_base, rot + 67.5), -1, obj_Defense);
		base_inst.rot = (rot + 67.5) - 90;
		base_inst.oRot = (rot + 67.5) - 90;
		alpha = 1;
	}
}

//Collision with enemies
enemyCollision = place_meeting(x, y, par_Enemy);
var enemy = instance_place(x, y, par_Enemy);
if(enemyCollision){
	//Do an animation taking out the city.
	con_Planet_Section.shake = true;
	con_Game.city_destroy = true;
	with enemy instance_destroy();
}

