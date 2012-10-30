if ((global.tutpoint_menu == UIBUTTON_COMPOST)) {
  draw_sprite(spr_highlightcircle,0,x+20,y+20);
  global.tutpostx = (x+TUTARROWHORIZOFFSET)-ax(0);
  global.tutposty = (y+TUTARROWVERTOFFSET)-ay(0);
  global.tutpostarrowdir = ARROWDIR_LEFT;
  }
rootbutton_draw();
