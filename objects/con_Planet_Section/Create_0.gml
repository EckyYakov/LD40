//Creates all the sections of planets.
x = room_width/2;
y = room_height/2;

//Create city collision
instance_create_depth(x, y, 100, par_City);

sections = 8;
section_list = ds_list_create();

for(var i = 0; i < sections; i++){
	var sect = instance_create_depth(x, y, 0, obj_Planet_Section);
	ds_list_add(section_list, sect);
	sect.rot = i * (360/sections);
	sect.image_angle = sect.rot;
	sect.subImage = sections - i;
}

xOrig = x;
yOrig = y;

shake_timer = 0;
shake_time = 45;
shake = false;
shake_reset = false;

city1 = spr_Planet_City_1;
city1_subImage = 0;
city2 = spr_Planet_City_2;
city2_subImage = 0;
city3 = spr_Planet_City_3;
city3_subImage = 0;
city4 = spr_Planet_City_4;
city4_subImage = 0;


