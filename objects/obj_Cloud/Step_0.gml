x += spd;

planet_collision = place_meeting(x, y, obj_Planet_Section);
if(!planet_collision){
	alpha -= disSpeed;
	if(alpha <= 0) instance_destroy();
}
else alpha += disSpeed;

if alpha >= 1 alpha = 1;
