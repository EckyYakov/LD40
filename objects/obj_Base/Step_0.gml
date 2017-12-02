//Base destroy
if(destroy_base){
	//Animate
	destroy_timer++;
	// To show the section is actively being built.
	if(round(destroy_timer % (destroy_time/destroy_sections)) == 0){
		alpha = .2;
	}
	if(alpha < 1){
		alpha += .01;
	}
	//If it has been built
	if(destroy_timer > destroy_time){
		destroy_base = false;
		destroy_timer = 0;
		subImage = 1;
		alpha = 1;
	}
	//Then Destroy with particle effects
}
