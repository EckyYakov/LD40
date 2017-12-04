resource = 20000;
max_resource = resource;

scr = 0;

total_bases = con_Planet_Section.sections;
timer = 0;
tick_time = 1;
loss_rate = 3;

score_rate = 50;
difficulty = 1;
difficulty_time = room_speed * 60;

cPurple = make_color_rgb(255, 0, 255);

gain_rate = 8.75;

active_bases = 0;

cities_remaining = 4;
city_distance = 35
city_destroy = false;

cause_of_death = "You ran out of resources to sustain your World!";

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

uiSprite = spr_Resource_UI;
ui_x = room_width/2;
ui_y = 20;
ui_h = sprite_get_height(uiSprite);
ui_w = sprite_get_width(uiSprite);
ui_alpha = 1;

max_rate = gain_rate;
min_rate = (loss_rate * total_bases) - gain_rate; 

bar_ratio = 1;

cGreen = make_color_rgb(77, 236, 114); 
cRed = make_color_rgb(236, 77, 77);
green_spriteWidth = 0;
red_spriteWidth = 0;
gDrawWidth = 0;
rDrawWidth = 0;
drawRate = 1;

sepSprite = spr_Resource_Seperator;