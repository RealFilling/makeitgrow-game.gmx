if ((global.tutpoint_menu == UIBUTTON_CANCEL)) {
  draw_sprite(spr_highlightcircle,0,x+20,y+20);
  global.tutpostx = (x-60)-ax(0);
  global.tutposty = (y-60)-ay(0);
  global.tutpostarrowdir = ARROWDIR_DOWNRIGHT;
  }
rootbutton_draw();
