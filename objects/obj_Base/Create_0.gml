spriteIndex = sprite_index;
subImage = 0;
rot = 0;
xScale = 1;
yScale = 1;
alpha = 1;
color = c_white;

destroy_timer = 0;
destroy_time = room_speed * 1.5;
destroy_base = false;
destroy_sections = 4;
destroyed = false;

timer = 0;

ui_time = room_speed * 5;
pt_CityFires = part_type_create();
part_type_shape(pt_CityFires, pt_shape_pixel);
part_type_size(pt_CityFires, 1, 1, 0.05, 0);
part_type_scale(pt_CityFires, 1, 1);
part_type_orientation(pt_CityFires, 0, 0, 0, 0, 0);
part_type_color3(pt_CityFires, 65535, 4235519, 12632256);
part_type_alpha3(pt_CityFires, 1, 1, 1);
part_type_blend(pt_CityFires, 0);
part_type_life(pt_CityFires, 5, 120);
part_type_speed(pt_CityFires, 0.05, 0.30, 0, 0);
part_type_direction(pt_CityFires, 0, 360, 0, 0);
part_type_gravity(pt_CityFires, 0, 0);

//Creating Emitters
pe_CityFires = part_emitter_create(global.ps);

pr_min_dist = 2;
pr_max_dist = 40;
pr_min_ang = 0;
pr_max_ang = 0;