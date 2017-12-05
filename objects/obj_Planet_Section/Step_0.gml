//Check for mouse collision
mouseCollision = position_meeting(mouse_x, mouse_y, self)

x = con_Planet_Section.x;
y = con_Planet_Section.y;

if(mouseCollision){
	buttonPressed = mouse_check_button_pressed(mb_left);
	switch status {
		case 0:
			alpha = .4;
			color = c_white;
		break;
		case 1:
			alpha = .4;
			color = c_red;
		break;
		case 2:
			alpha = 1;
			color = c_red;
		break;
	}
	if(buttonPressed){
		switch status {
		case 0:
			status = 1;
			build = true;
			exit;
		break;
		case 1:
			status = 0;
			build = false;
			build_timer = 0;
			if instance_exists(timer) with timer instance_destroy();
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
			alpha = 0;
			color = c_white;
		break;
		case 1:
			alpha = .6;
			color = c_white;
		break;
		case 2:
			alpha = 1;
			color = c_white;
		break;
	}	
}

if(build){
	timer = instance_create_depth(x + lengthdir_x(dist_to_base, rot + 67.5), y + lengthdir_y(dist_to_base, rot + 67.5), -2, obj_Timer);
	timer.parent_section = self;
	timer.base_rot = rot;
	build = false;
}

//Collision with enemies
enemyCollision = place_meeting(x, y, par_Enemy);
var enemy = instance_place(x, y, par_Enemy);
if(enemyCollision){
	//Identify which base to hit
	switch con_Game.cities_remaining {
		case 4:
			enemy.base_to_hit = con_Game.base1;
		break;
		case 3:
			enemy.base_to_hit = con_Game.base2;
		break;
		case 2:
			enemy.base_to_hit = con_Game.base3;
		break;
		case 1:
			enemy.base_to_hit = con_Game.base4;
		break;
	}
	//Start making the enemy shrink and show shadow
	enemy.shrink = true;
	enemy.shadow = true;
}

