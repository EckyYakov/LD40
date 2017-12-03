if(shake){
	shake_timer++;
	if(!shake_reset){
		x += irandom_range(-2, 2);
		y += irandom_range(-2, 2);
		shake_reset = true;
	}
	else{
		x = xOrig;
		y = yOrig;
		shake_reset = false;
	}
	if(shake_timer > shake_time){
		x = xOrig;
		y = yOrig;
		shake_timer = 0;
		shake = false;
		shake_reset = false;
	}
}