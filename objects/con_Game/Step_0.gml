//Passively get rid of resources based on the amount of bases active.
timer++
if(timer mod tick_time){
	resource -= loss_rate * active_bases;
}

//Increase difficulty every minute


//Passively Award Resources based on how many cities are left
resource += gain_rate * cities_remaining;


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
	city_destroy = false;
}