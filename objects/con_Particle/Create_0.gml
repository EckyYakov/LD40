//Generated for GMS2 in Geon FX v0.9.0
//Put this code in Create event

//Creating Particle System
global.ps = part_system_create();
part_system_depth(global.ps, -1);



//Creating Particle Types
//Projectile
global.pt_Projectile = part_type_create();
part_type_shape(global.pt_Projectile, pt_shape_pixel);
part_type_size(global.pt_Projectile, 1, 4, 0, 0);
part_type_scale(global.pt_Projectile, 1, 1);
part_type_orientation(global.pt_Projectile, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Projectile, 65535, 33023, 16777215);
part_type_alpha3(global.pt_Projectile, 0, 1, 1);
part_type_blend(global.pt_Projectile, 0);
part_type_life(global.pt_Projectile, 40, 75);
part_type_speed(global.pt_Projectile, .5, 3, 0, 0.20);
part_type_direction(global.pt_Projectile, 0, 360, 0, 0);
part_type_gravity(global.pt_Projectile, 0, 0);

//Creating Emitters
global.pe_Projectile = part_emitter_create(global.ps);

//Creating Particle Types
//Effect1
global.pt_Projectile_Explo = part_type_create();
part_type_shape(global.pt_Projectile_Explo, pt_shape_square);
part_type_size(global.pt_Projectile_Explo, 0.05, 0.15, 0, 0);
part_type_scale(global.pt_Projectile_Explo, 1, 1);
part_type_orientation(global.pt_Projectile_Explo, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Projectile_Explo, 65535, 33023, 16777215);
part_type_alpha3(global.pt_Projectile_Explo, 0, 1, 1);
part_type_blend(global.pt_Projectile_Explo, 0);
part_type_life(global.pt_Projectile_Explo, 40, 75);
part_type_speed(global.pt_Projectile_Explo, 0.25, 0.75, 0, 0.30);
part_type_direction(global.pt_Projectile_Explo, 0, 360, 0, 0);
part_type_gravity(global.pt_Projectile_Explo, 0, 0);

//Creating Emitters
global.pe_Projectile_Explo = part_emitter_create(global.ps);
