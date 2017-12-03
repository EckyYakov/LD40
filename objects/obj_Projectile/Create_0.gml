spriteIndex = sprite_index;
subImage = 0;
rot = 0;
xScale = 1;
yScale = 1;
alpha = 1;
color = c_white;
impact = .3;

death = false;
timer = 0;
explo_time = 3;
explos = 0;

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

//Creating Particle Types
//Effect1
pt_Projectile_Trail = part_type_create();
part_type_shape(pt_Projectile_Trail, pt_shape_pixel);
part_type_size(pt_Projectile_Trail, 0.50, 1, 0, 0);
part_type_scale(pt_Projectile_Trail, 1, 1);
part_type_orientation(pt_Projectile_Trail, 0, 0, 0, 0, 0);
part_type_color3(pt_Projectile_Trail, 65535, 33023, 16777215);
part_type_alpha3(pt_Projectile_Trail, 0, .2, 1);
part_type_blend(pt_Projectile_Trail, 0);
part_type_life(pt_Projectile_Trail, 5, 20);
part_type_speed(pt_Projectile_Trail, 0.25, 2, 0, 0.30);
part_type_direction(pt_Projectile_Trail, rot, rot, 0, 0);
part_type_gravity(pt_Projectile_Trail, 0, 0);

//Creating Emitters
pe_Projectile_Trail = part_emitter_create(global.ps);


