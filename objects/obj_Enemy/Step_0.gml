bulletCollision = place_meeting(x, y, obj_Projectile);
var bullet = instance_place(x, y, obj_Projectile);

if(bulletCollision){
    hp -= bullet.impact;
    with(bullet) instance_destroy();
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

rot += rot_speed;

//Check to see if the enemy is outside of the field of view
xOutside = (x < 0 || x > room_width)
yOutside = (y < 0 || y > room_height)

if(xOutside || yOutside){
	//Cast a ray to the center of map
	
}

