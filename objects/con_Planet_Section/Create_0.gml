//Creates all the sections of planets.
x = room_width/2;
y = room_height/2;

sections = 8;
section_list = ds_list_create();

for(var i = 0; i < sections; i++){
	var sect = instance_create_depth(x, y, 0, obj_Planet_Section);
	ds_list_add(section_list, sect);
	sect.rot = i * (360/sections);
	sect.image_angle = sect.rot;
}

