// Info card background
draw_sprite(sprite_index, image_index, x, y);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
drawshadowedtext(font_menuone, c_white,global.gridinfocardtext[0],x,y-154,false);
drawshadowedtext(font_menuone,c_white,global.gridinfocardtext[1],x,y-154+18,false);
draw_sprite_ext(global.gridinfocardspr,
                global.gridinfocardsprframe,
                x-74, y-95, 2.0, 2.0, 0, c_white, 1.0);
