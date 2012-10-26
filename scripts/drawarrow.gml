var arrowdir,x1,y1,x2,y2;
arrowdir = argument0;
x1 = argument1;
y1 = argument2;
x2 = argument3;
y2 = argument4;
switch (arrowdir) {
  case -1:
    break; // Don't draw an arrow.
  case 0:
    draw_sprite_ext(spr_arrow_up,0,x,y1-16,1.0,1.0,0.0,boxcolor,1.0);
    break;
  case 1:
    draw_sprite_ext(spr_arrow_up,0,x2+16,y1-16,1.0,1.0,315.0,boxcolor,1.0);
    break;
  case 2:
    draw_sprite_ext(spr_arrow_up,0,x2+16,y,1.0,1.0,270.0,boxcolor,1.0);
    break;
  case 3:
    draw_sprite_ext(spr_arrow_up,0,x2+16,y2+16,1.0,1.0,225.0,boxcolor,1.0);
    break;
  case 4:
    draw_sprite_ext(spr_arrow_up,0,x,y2+16,1.0,1.0,180.0,boxcolor,1.0);
    break;
  case 5:
    draw_sprite_ext(spr_arrow_up,0,x1-16,y2+16,1.0,1.0,135.0,boxcolor,1.0);
    break;
  case 6:
    draw_sprite_ext(spr_arrow_up,0,x1-16,y,1.0,1.0,90.0,boxcolor,1.0);
    break;
  case 7:
    draw_sprite_ext(spr_arrow_up,0,x1-16,y1-16,1.0,1.0,45.0,boxcolor,1.0);
    break;
  }


