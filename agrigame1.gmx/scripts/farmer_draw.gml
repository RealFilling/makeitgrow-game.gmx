var height;
height = global.height[boardx,boardy];
if (animation == FARMERANIM_NEUTRAL) {
  if (moving == true) {
    animprogress = (animprogress+1) mod 8;
    sprite_index = spr_farmerwalk1;
    image_index = animprogress + (facing * 8);
    }
  else {
    sprite_index = spr_farmerneutral1;
    animprogress = 0;
    }
  }
else {
  farmer_updateanim();
  }
draw_sprite( sprite_index, image_index, x, y-(height*HEIGHTPIX) );

//thischicken = instance_find(obj_chicken, 0);
//drawshadowedtext(font_hud, c_white, "chicken id:"+string(thischicken),x,y-12,false);
//if instance_exists(thischicken) {
//  drawshadowedtext(font_hud, c_white, "chicken boardx:"+string(thischicken.boardx),x,y-0,false);
//  drawshadowedtext(font_hud, c_white, "chicken boardy:"+string(thischicken.boardy),x,y+12,false);
//  }
