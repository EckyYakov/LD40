//Radius of the planet
timer++;
if(timer % spawnInterval == 0){
	//Spawn a cloud somewhere on the planet
	var dir = irandom_range(0, 359);
	xx = x + lengthdir_x(spawnDistance, dir);
	yy = y + lengthdir_y(spawnDistance, dir);
	var cloud = instance_create_depth(xx, yy, -2, obj_Cloud);	
	//Choose a direction for the cloud to float in
	cloud.spd = choose(.1, -.1);
	spawnDistance = irandom_range(0, 250);
	timer = 0;
	spawnInterval = irandom_range(room_speed, room_speed * 10);
}