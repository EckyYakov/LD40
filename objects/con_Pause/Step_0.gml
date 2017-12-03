/// @description Insert description here


esc = keyboard_check_pressed(vk_escape);

if(esc){
	pause = true;
}
else pause = false;

if(pause){
    if paused paused = false;
    else paused = true;
    if(paused){
		camera_set_view_size(view_camera[0], ovWidth, ovHeight);
		camera_set_view_pos(view_camera[0], fXX, fYY);

        if(!surface_exists(scrn)){
            scrn = surface_create(w, h);
            surface_copy(scrn, 0, 0, application_surface);

        }
        
        instance_deactivate_all(true);
        
    }
    else{
        if(surface_exists(scrn)) surface_free(scrn);
        instance_activate_all();
    }
}