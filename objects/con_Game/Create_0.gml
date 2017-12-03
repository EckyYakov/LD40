resource = 20000;
scr = 0;


total_bases = con_Planet_Section.sections;
timer = 0;
tick_time = room_speed * 3;
loss_rate = 5;

score_rate = 50;
difficulty = 1;

cPurple = make_color_rgb(255, 0, 255);

gain_rate = 2;

active_bases = 0;

cities_remaining = 4;
city_distance = 35
city_destroy = false;

//Create the four bases
base1 = instance_create_depth(room_width/2 + city_distance, room_height/2 -city_distance, -1, obj_Base);
base1.ui_time = room_speed;
base2 = instance_create_depth(room_width/2 + city_distance, room_height/2 + city_distance, -1, obj_Base);
base2.ui_time = room_speed * 2;
base3 = instance_create_depth(room_width/2 - city_distance, room_height/2 + city_distance, -1, obj_Base);
base3.ui_time = room_speed * 3;
base4 = instance_create_depth(room_width/2 - city_distance, room_height/2 - city_distance, -1, obj_Base);
base4.ui_time = room_speed * 4;

delayed = false;
scrn = noone;
alpha = 1;

w = window_get_width();
h = window_get_height();