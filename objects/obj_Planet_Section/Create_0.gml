spriteIndex = sprite_index;
subImage = 0;
rot = 0;
xScale = 1;
yScale = 1;
alpha = 0;
color = c_white;

timer = noone;

//Status:
// 0 = Nothing exists, can be built;
// 1 = Shit is being built;
// 2 = Shit has been built
status = 0;

build = false;
build_timer = 0;
build_time = 2 * room_speed;
build_sections = 9;

active_bases = 0;

defense_range = 120;

base_inst = noone;
dist_to_base = 145;

soundPlayed = false;

depth = -3;