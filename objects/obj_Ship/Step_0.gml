bulletCollision = place_meeting(x, y, obj_Projectile);
var bullet = instance_place(x, y, obj_Projectile);

lifetime++;

oppo_dir = dir - 180;

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

timer++;
if(timer > movement_time){
	motion_set(oppo_dir + ang, spd)
	ang += ang_int;
	if(abs(ang) > 25) ang_int = -ang_int;
	timer = 0;
}

rot = oppo_dir + ang;

if(lifetime > room_speed * 10){
	objectCleanup();
}

var xp, yp;
xp = x;
yp = y;

/*part_type_direction(pt_Projectile_Trail, rot + 170, rot + 170, 0, 0);
part_emitter_region(global.ps, pe_Projectile_Trail, xp-1, xp+1, yp-2, yp+2, ps_shape_rectangle, ps_distr_linear);
part_emitter_burst(global.ps, pe_Projectile_Trail, pt_Projectile_Trail, 10);
part_type_direction(pt_Projectile_Trail, rot - 190 , rot - 190, 0, 0);
part_emitter_burst(global.ps, pe_Projectile_Trail, pt_Projectile_Trail, 10);*/