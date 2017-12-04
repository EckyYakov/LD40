shrink = false;
shadow = false;

shrink_rate = .0010;

shadow_dir = 0;
shadow_distance = 100;
shadow_alpha = 0;
shadow_radius = 0;
max_distance = shadow_distance;
max_radius = 12;

depth = -3;

//Effect1
pt_CitySmoke = part_type_create();
part_type_shape(pt_CitySmoke, pt_shape_pixel);
part_type_size(pt_CitySmoke, 1, 1, 0.05, 0.02);
part_type_scale(pt_CitySmoke, 1, 1);
part_type_orientation(pt_CitySmoke, 0, 0, 0, 0, 0);
part_type_color3(pt_CitySmoke, 16777215, 12632256, 8421504);
part_type_alpha3(pt_CitySmoke, 1, 1, 1);
part_type_blend(pt_CitySmoke, 0);
part_type_life(pt_CitySmoke, 40, 240);
part_type_speed(pt_CitySmoke, 0.05, 0.12, 0, 0);
part_type_direction(pt_CitySmoke, 0, 360, 0, 0);
part_type_gravity(pt_CitySmoke, 0, 0);

//Creating Emitters
pe_CitySmoke = part_emitter_create(global.ps);

city_hit = false;

