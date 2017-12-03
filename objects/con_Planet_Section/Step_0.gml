if(shake){
	shake_timer++;
	x += irandom_range(-1, 1);
	y += irandom_range(-1, 1);
	if(shake_timer > shake_time){
		x = xOrig;
		y = yOrig;
		shake_timer = 0;
		shake = false;
	}
}