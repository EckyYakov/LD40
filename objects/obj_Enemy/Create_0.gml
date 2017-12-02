spriteIndex = sprite_index;
subImage = 0;
rot = 0;
xScale = 1;
yScale = 1;
alpha = 1;
color = c_white;
spd = .5;

hp = 1;

motion_set(point_direction(x, y, room_width/2, room_height/2), spd);
