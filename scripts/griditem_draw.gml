draw_set_halign(fa_right);
draw_set_valign(fa_center);
draw_set_font(font_hud);

draw_sprite(sprite_index, image_index, x, y);
draw_sprite_ext(iconsprite, iconindex, x, y, 1.0, 1.0, 0, c_white, 1.0);

if (self.itemcount > 0) {
  drawshadowedtext(font_hud,c_white,string(self.itemcount),x+30,y+24,false);
  }

//drawshadowedtext(font_hud,c_white,global.menutip1,x,y-48,false);
//drawshadowedtext(font_hud,c_white,global.menutip2,x,y+48,false);

