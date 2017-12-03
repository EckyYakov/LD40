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
		inst.value = "1500";
		ui_time = room_speed * 5;
		timer = 0;
	}
}
