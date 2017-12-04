if(shrink){
	xScale -= shrink_rate;
	yScale -= shrink_rate;
}

if(shadow){
	//Get the direction away from center of planet
	shadow_dir = point_direction(x, y, room_width/2, room_height/2,);
	//Draw a circle in that direction
	//Draw distance of circle based on how far away from collision
	//Opacity of circle also changes based on how far away from collision
	dist_to_city = distance_to_object(par_City);
	dist_ratio = dist_to_city/max_distance;
	shadow_distance = dist_ratio * max_distance;
	shadow_radius = max_radius * (1 - dist_ratio);
	shadow_alpha = 1 - dist_ratio;
	xx = x + lengthdir_x(shadow_distance, shadow_dir);
	yy = y + lengthdir_y(shadow_distance, shadow_dir);
}
