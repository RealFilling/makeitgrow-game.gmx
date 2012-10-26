x1 = x - (boxwidth / 2); // x and y are determined in the step event
x2 = x + (boxwidth / 2);
y1 = y - (boxheight / 2);
y2 = y + (boxheight / 2);
if (arrowdir != 8) {
  arrowdirwork = arrowdir;
  }
else {
  arrowdirwork = arrowdirauto;
  }

switch (state) {
  case TCSTATE_APPEAR:
    draw_set_color(boxcolor);
    draw_rectangle(x1,y1,x2,y2,false);
    draw_set_color(frameflash);
    draw_rectangle(x1,y1,x2,y2,true);
    break;
  case TCSTATE_NORMAL:
    if ((displaymode == TCT_TILESEARCH) or
        (displaymode == TCT_TILESEARCH_MOIST) or
        (displaymode == TCT_TILESEARCH_HARVEST)) {
      draw_sprite(spr_highlightcircle,frameflashstate,spotx,spoty-(global.height[tilex,tiley]*HEIGHTPIX));
      }
    draw_set_color(boxcolor);
    draw_rectangle(x1,y1,x2,y2,false);
    draw_set_color(frameflash);
    draw_rectangle(x1,y1,x2,y2,true);
    drawarrow(arrowdirwork,x1,y1,x2,y2);
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
