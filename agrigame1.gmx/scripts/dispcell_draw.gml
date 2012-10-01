var mysoil, red, green, blue;
//draw_self()

//draw_sprite_ext(spr_soil,soilimgindex,x,y,image_xscale,image_yscale,0,c_white,1);

// Plant
if (global.harvest[boardx,boardy] > 0) {
  if (global.rawtime mod 16 <= global.harvest[boardx,boardy]) {
    tcolor = c_black;
    }
  else {
    tcolor = c_white;
    }
  }
else {
  tcolor = c_white;
  }
draw_sprite_ext(spr_plants,image_index,x,y,image_xscale,image_yscale,0,tcolor,1);

