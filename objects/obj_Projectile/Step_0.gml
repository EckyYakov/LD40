//Adjusting Emitter positions. Starting Emitter Streams or Bursts.
var xp, yp;
xp = x;
yp = y;
part_emitter_region(global.ps, global.pe_Projectile, xp-8, xp+8, yp-8, yp+8, ps_shape_rectangle, ps_distr_linear);
part_emitter_region(global.ps, global.pe_Projectile_Explo, xp-8, xp+8, yp-8, yp+8, ps_shape_rectangle, ps_distr_linear);
part_emitter_region(global.ps, pe_Projectile_Trail, xp-1, xp+1, yp-2, yp+2, ps_shape_rectangle, ps_distr_linear);
part_emitter_burst(global.ps, pe_Projectile_Trail, pt_Projectile_Trail, 10);

if(death){
	if(timer % explo_time == 0){
		part_emitter_burst(global.ps, global.pe_Projectile_Explo, global.pt_Projectile_Explo, 50);
		part_emitter_burst(global.ps, global.pe_Projectile, global.pt_Projectile, 50);
		explos++;
	}
	if explos > 3 instance_destroy();
	timer++
}

//Clean Up Instances
objectCleanup();