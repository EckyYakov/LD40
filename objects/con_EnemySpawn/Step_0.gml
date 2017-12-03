timer++;
if(timer % spawnInterval == 0){
	//Create an enemy
	var dir = irandom_range(0, 359);
	xx = x + lengthdir_x(spawnDistance, dir);
	yy = y + lengthdir_y(spawnDistance, dir);
	switch con_Game.difficulty{
		case 1:
			var enemy = instance_create_depth(xx, yy, 0, obj_Meteor);
			enemy.dir = dir;
			enemy.distance_away = spawnDistance;
		break;
		case 2:
			spawnInterval = room_speed * 2.5;
			var enemy = instance_create_depth(xx, yy, 0, choose(obj_Ship, obj_Meteor));
			enemy.dir = dir;
			enemy.distance_away = spawnDistance;
		break;
		case 3:
			spawnInterval = room_speed * 2.0;
			var enemy = instance_create_depth(xx, yy, 0, choose(obj_Ship, obj_Meteor, obj_Speeder));
			enemy.dir = dir;
			enemy.distance_away = spawnDistance;
		break;
		case 4:
			spawnInterval = room_speed * 2.0;
			var enemy = instance_create_depth(xx, yy, 0, choose(obj_Ship, obj_Meteor, obj_Speeder, obj_Tank));
			enemy.dir = dir;
			enemy.distance_away = spawnDistance;
		break;
	}
	timer = 0;
}

