timer++;
if(timer % spawnInterval == 0){
	//Create an enemy
	var dir = irandom_range(0, 359);
	xx = x + lengthdir_x(spawnDistance, dir);
	yy = y + lengthdir_y(spawnDistance, dir);
	var enemy = instance_create_depth(xx, yy, 0, obj_Enemy);
	timer = 0;
}

