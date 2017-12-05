build_timer++;
// To show the section is actively being built.
if(build_timer % round((build_time/build_sections)) == 0){
	subImage++
}
if(alpha < 1){
	alpha += .01;
}
//If it has been built
if(build_timer > build_time){
	parent_section.status = 2;
	con_Game.active_bases += 1;
	//Create a base
	base_inst = instance_create_depth(x, y, -1, obj_Defense);
	parent_section.base_inst = base_inst;
	base_inst.rot = (base_rot + 67.5) - 90;
	base_inst.oRot = (base_rot + 67.5) - 90;
	alpha = 1;
	instance_destroy();
}
