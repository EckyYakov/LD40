event_inherited();

spriteIndex = sprite_index;
subImage = 0;
rot = point_direction(x, y, room_width/2, room_height/2);
xScale = 1;
yScale = 1;
alpha = 1;
color = c_white;
spd = 1;
movement_buffer = 10;
distance_away = 0;

lifetime = 0;

rot_speed = 1;

points = 25000;
dir = 0;
oppo_dir = dir - 180;
ang = 0;
ang_int = 1;
hp = 1;

motion_set(point_direction(x, y, room_width/2, room_height/2), spd);

idle_sound = audio_play_sound(sfx_Ship_Idle, 1, true);
audio_sound_set_track_position(idle_sound, .35);
audio_sound_gain(idle_sound, 0, 0);
audio_sound_gain(idle_sound, 1, 150);

timer = 0;
movement_time = 15;

warnIndex = spr_Warn_Ship;

//Creating Particle Types
//Effect1
pt_Enemy_Crash = part_type_create();
part_type_shape(pt_Enemy_Crash, pt_shape_square);
part_type_size(pt_Enemy_Crash, 0.03, 0.15, 0, 0);
part_type_scale(pt_Enemy_Crash, 1, 1);
part_type_orientation(pt_Enemy_Crash, 0, 0, 0, 0, 0);
part_type_color3(pt_Enemy_Crash, 65535, 33023, 16777215);
part_type_alpha3(pt_Enemy_Crash, 0, 1, 1);
part_type_blend(pt_Enemy_Crash, 0);
part_type_life(pt_Enemy_Crash, 20, 90);
part_type_speed(pt_Enemy_Crash, 0.25, 2, 0, 0.30);
part_type_direction(pt_Enemy_Crash, clamp360(oppo_dir - 60), clamp360(oppo_dir + 60), 0, 0);
part_type_gravity(pt_Enemy_Crash, 0, 0);

//Creating Emitters
pe_Enemy_Crash = part_emitter_create(global.ps);

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