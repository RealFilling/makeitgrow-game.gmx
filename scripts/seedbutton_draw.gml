if (global.tutlock_menu == UIBUTTON_SEEDS) {
  draw_sprite(spr_highlightcircle,0,x+20,y+20);
  global.tutpostx = x+TUTARROWHORIZOFFSET;
  global.tutposty = y+TUTARROWVERTOFFSET;
  global.tutpostarrowdir = ARROWDIR_LEFT;
  }
rootbutton_draw();
