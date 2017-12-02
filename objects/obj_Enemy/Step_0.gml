bulletCollision = place_meeting(x, y, obj_Projectile);
var bullet = instance_place(x, y, obj_Projectile);

if(bulletCollision){
    hp -= bullet.impact;
    with(bullet) instance_destroy();
}

if(hp <= 0) instance_destroy();