//Collision with enemies
enemyCollision = place_meeting(x, y, par_Enemy);
var enemy = instance_place(x, y, par_Enemy);
if(enemyCollision){
	//Do an animation taking out the city.
	con_Planet_Section.shake = true;
	con_Game.city_destroy = true;
	enemy.city_hit = true;
	with enemy instance_destroy();
}
