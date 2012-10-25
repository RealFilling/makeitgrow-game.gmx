x1 = x - (boxwidth / 2); // x and y are determined in the step event
x2 = x + (boxwidth / 2);
y1 = y - (boxheight / 2);
y2 = y + (boxheight / 2);

switch (state) {
  case TCSTATE_APPEAR:
    draw_set_color(boxcolor);
    draw_rectangle(x1,y1,x2,y2,false);
    draw_set_color(frameflash);
    draw_rectangle(x1,y1,x2,y2,true);
    break;
  case TCSTATE_NORMAL:
    draw_set_color(boxcolor);
    draw_rectangle(x1,y1,x2,y2,false);
    draw_set_color(frameflash);
    draw_rectangle(x1,y1,x2,y2,true);
    switch (arrowdir) {
      case -1:
        break; // Don't draw an arrow.
      case 0:
        draw_sprite_ext(spr_arrow_up,0,x,y1-16,1.0,1.0,0.0,boxcolor,1.0);
        break;
      case 1:
        draw_sprite_ext(spr_arrow_up,0,x2+16,y,1.0,1.0,90.0,boxcolor,1.0);
        break;
      case 2:
        draw_sprite_ext(spr_arrow_up,0,x,y2+16,1.0,1.0,180.0,boxcolor,1.0);
        break;
      case 3:
        draw_sprite_ext(spr_arrow_up,0,x1-16,y,1.0,1.0,270.0,boxcolor,1.0);
        break;
      }
      draw_set_valign(fa_middle);
      draw_set_halign(fa_center);
      draw_set_font(font_hud);
      draw_set_color(c_white);
      draw_text_ext(x, y, cardtext, TUTORIALCARDLINEHEIGHT, boxwidth-10);
    break;
  case TCSTATE_DISAPPEAR:
    draw_set_color(boxcolor);
    draw_rectangle(x1,y1,x2,y2,false);
    draw_set_color(frameflash);
    draw_rectangle(x1,y1,x2,y2,true);
    break;
  case TCSTATE_DESTROY:
    break;
  default:
    show_message("ERROR: bad state in tutorialcard_drawgui!");
    break;
  }
