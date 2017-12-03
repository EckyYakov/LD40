spriteIndex = sprite_index;
subImage = 0;
rot = 0;
xScale = 1;
yScale = 1;
alpha = 1;
color = c_white;
spd = .5;

rot_speed = 1;

points = 250;

hp = 1;

motion_set(point_direction(x, y, room_width/2, room_height/2), spd);

//create indicator
//indicator = instance_create_depth(x, y, 1, obj_Enemy_Indicator);
//indicator.dst = self;
