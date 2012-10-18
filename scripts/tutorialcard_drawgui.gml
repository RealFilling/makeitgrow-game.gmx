switch (state) {
  case TCSTATE_APPEAR:
    draw_set_color(c_yellow);
    draw_rectangle(x1,y1,x2,y2,false);
    draw_set_color(flashframe);
    draw_rectangle(x1,y1,x2,y2,true);
    break;
  case TCSTATE_NORMAL:
    draw_set_color(c_yellow);
    draw_rectangle(x1,y1,x2,y2,false);
    draw_set_color(flashframe);
    draw_rectangle(x1,y1,x2,y2,true);
    switch (arrowdir) {
      case 0:
        draw_sprite_ext(spr_arrow_up,0,x,y1-16,1.0,1.0,0.0,c_yellow,1.0);
        break;
      case 1:
        draw_sprite_ext(spr_arrow_up,0,x2+16,y,1.0,1.0,90.0,c_yellow,1.0);
        break;
      case 2:
        draw_sprite_ext(spr_arrow_up,0,x,y2+16,1.0,1.0,180.0,c_yellow,1.0);
        break;
      case 3:
        draw_sprite_ext(spr_arrow_up,0,x1-16,y,1.0,1.0,270.0,c_yellow,1.0);
        break;
      }
      draw_set_valign(fa_middle);
      draw_set_halign(fa_center);
      draw_set_font(font_hud);
      draw_set_color(c_white);
      draw_text_ext(x, y, cardtext, 2.0, boxwidth-10);
    break;
  case TCSTATE_DISAPPEAR:
    draw_set_color(c_yellow);
    draw_rectangle(x1,y1,x2,y2,false);
    draw_set_color(flashframe);
    draw_rectangle(x1,y1,x2,y2,true);
    break;
  case TCSTATE_DESTROY:
    break;
  default:
    show_message("ERROR: bad state in tutorialcard_drawgui!");
    break;
  }