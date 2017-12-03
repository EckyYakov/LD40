spriteIndex = sprite_index;
subImage = 0;
rot = 0;
xScale = 1;
yScale = 1;
alpha = 1;
color = c_white;
impact = 1;

spd = 2;
p_dir = point_direction(x, y, mouse_x, mouse_y);
rot = p_dir;

//Create Resource + UI element
var inst = instance_create_depth(x, y - 4, -2, obj_Resource_UI);
inst.symb = "-";
inst.value = "1";
inst.color = make_color_rgb(255, 0, 0);
inst.floatSpeed = -.5;

con_Game.resource -= 1;