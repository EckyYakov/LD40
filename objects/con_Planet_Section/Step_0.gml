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

switch con_Game.cities_remaining {
	case 4:
		city1_subImage = 0;
		city2_subImage = 0;
		city3_subImage = 0;
		city4_subImage = 0;
	break;
	case 3:
		city1_subImage = 1;
		city2_subImage = 0;
		city3_subImage = 0;
		city4_subImage = 0;
	break;
	case 2:
		city1_subImage = 1;
		city2_subImage = 1;
		city3_subImage = 0;
		city4_subImage = 0;
	break;
	case 1:
		city1_subImage = 1;
		city2_subImage = 1;
		city3_subImage = 1;
		city4_subImage = 0;
	break;
	case 0:
		city1_subImage = 1;
		city2_subImage = 1;
		city3_subImage = 1;
		city4_subImage = 1;
	break;
}