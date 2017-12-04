event_inherited();

bulletCollision = place_meeting(x, y, obj_Projectile);
var bullet = instance_place(x, y, obj_Projectile);

if(bulletCollision){
    hp -= bullet.impact;
    bullet.death = true;
}

if(hp <= 0){
	con_Game.scr += points;
	//Create Resource + UI element
	var inst = instance_create_depth(x, y - 4, -2, obj_Resource_UI);
	inst.symb = "";
	inst.value = string(points);
	inst.color = make_color_rgb(255, 0, 255);
	//if instance_exists(indicator) with indicator instance_destroy();
	instance_destroy();
}

if(!slowed){
	if(distance_to_point(room_width/2, room_height/2) < 800) slow = true;
	if(slow){
		motion_set(point_direction(x, y, room_width/2, room_height/2), spd/3);
		slow = false;
		slowed = true;
	}
}

rot = point_direction(x, y, room_width/2, room_height/2);