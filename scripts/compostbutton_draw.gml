if ((global.tutlock_menu == UIBUTTON_COMPOST)) {
  draw_sprite(spr_highlightcircle,0,x+20,y+20);
  global.tutpostx = x+TUTARROWHORIZOFFSET;
  global.tutposty = y;
  global.tutpostarrowdir = ARROWDIR_LEFT;
  }
rootbutton_draw();
