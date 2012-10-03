if (selected == true) {
  draw_sprite_ext(sprite_index,image_index,x,y,1.1,1.1,0,c_white,1.0);
  draw_sprite_ext(spr_planttiles,12+(buttontype*8),x,y,1.1,1.1,0,c_white,1.0);
  }
else {
  draw_sprite_ext(sprite_index,image_index,x,y,1.0,1.0,0,c_white,0.8);
  draw_sprite_ext(spr_planttiles,12+(buttontype*8),x,y,1.0,1.0,0,c_white,0.8);
  }

