draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_sprite(sprite_index, image_index, x, y);
drawshadowedtext(font_hud,c_white,global.menutip1,x,y-48,false);
drawshadowedtext(font_hud,c_white,global.menutip2,x,y+48,false);

