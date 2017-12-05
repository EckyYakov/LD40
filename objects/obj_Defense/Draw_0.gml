//draw_sprite_ext(spr_Defense_Line, subImage, x, y, xScale, 100, rot - (defense_range/2), color, alpha);
//draw_sprite_ext(spr_Defense_Line, subImage, x, y, xScale, 100, rot + (defense_range/2), color, alpha);
if highlight draw_sprite_ext(spriteIndex, subImage, x, y, xScale + .25 , yScale + .25, p_dir - 90, c_white, alpha);
else draw_sprite_ext(spriteIndex, subImage, x, y, xScale, yScale, rot, c_white, alpha);
