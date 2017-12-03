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

rot += rot_speed;
