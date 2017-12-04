event_inherited();

spriteIndex = sprite_index;
//subImage = irandom_range(0, sprite_get_number(spriteIndex));
subImage = 0;
rot = 0;
xScale = 1;
yScale = 1;
alpha = 1;
color = c_white;
spd = 1.75;
dir = 0;
distance_away = 0;
oppo_dir = 0;

rot_speed = 1;

points = 50000;

hp = .5;

warnIndex = spr_Warn_Speeder;



alarm[0] = room_speed * 1.5;

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

idle_sound = audio_play_sound(sfx_Ship_Idle, 1, true);
audio_sound_set_track_position(idle_sound, .35);
audio_sound_gain(idle_sound, 0, 0);
audio_sound_gain(idle_sound, 1, 150);