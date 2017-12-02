resource = 2000;

total_bases = con_Planet_Section.sections;
timer = 0;
tick_time = room_speed * 3;
loss_rate = 1;

gain_rate = .2;

active_bases = 0;

cities_remaining = 4;
city_distance = 35
city_destroy = false;

//Create the four bases
base1 = instance_create_depth(room_width/2 + city_distance, room_height/2 -city_distance, -1, obj_Base);

base2 = instance_create_depth(room_width/2 + city_distance, room_height/2 + city_distance, -1, obj_Base);

base3 = instance_create_depth(room_width/2 - city_distance, room_height/2 + city_distance, -1, obj_Base);

base4 = instance_create_depth(room_width/2 - city_distance, room_height/2 - city_distance, -1, obj_Base);