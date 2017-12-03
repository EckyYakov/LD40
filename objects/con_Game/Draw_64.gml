draw_set_font(fnt_Bulky_Pixel);
draw_set_halign(fa_left);
draw_set_color(c_lime);
draw_text(10, 10, "Resource: " + string(round(resource)));
draw_text(10, 30, "Active Bases: " + string(active_bases))
draw_text(10, 50, "Cities Remaining: " + string(cities_remaining));
draw_text(10, 80, "Instances: " + string(instance_number(all)));

//Draw resource UI element

//Draw Green
draw_sprite_part_ext(uiSprite, 0, 0, 0, green_spriteWidth, ui_h, ui_x, ui_y, 1, 1, cGreen, ui_alpha);
//Draw Red
draw_sprite_part_ext(uiSprite, 0, ui_w - abs(red_spriteWidth), 0, abs(red_spriteWidth), ui_h, ui_x - abs(red_spriteWidth), ui_y, 1, 1, cRed, ui_alpha);
//Draw Seperator
draw_sprite(sepSprite, 0, ui_x, ui_y);



draw_set_halign(fa_right);
draw_text(room_width - 10, 10, "Score: " + string(scr));
draw_text(room_width - 10, 30, "Level: " + string(difficulty));

if surface_exists(scrn){
	draw_surface_ext(scrn, 0, 0, 1, 1, 0, c_white, .2);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_set_font(fnt_Bulky_Pixel_Large);
	draw_text_ext_color(room_width/2, room_height/2 - 150, string(scr), 0, 600, cPurple, cPurple, cPurple, cPurple, 1);
	draw_set_font(fnt_Bulky_Pixel);
	draw_text(room_width/2, room_height/2, "Game Over");
	draw_text(room_width/2, room_height/2 + 30, cause_of_death);
	if delayed 	draw_text_ext_color(room_width/2, room_height/2 + 100, "Press Any Key to Play Again", 0, 600, c_white, c_white, c_white, c_white, alpha);
}