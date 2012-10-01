var parentmenu, baseposx, baseposy;
parentmenu = argument0;
baseposx = cx()+200;
baseposy = cy()+20;
if (!drawtest) {
  drawtest = !drawtest;
  }
switch (global.menustate) {
  case MENUSTATE_NONE:
    break; // Shouldn't be here
  case MENUSTATE_OPENING:
    x = baseposx;
    y = baseposy - ((MENUTIME_OPENING-global.menutimer) * 120);
    //y = baseposy;
    break;
  case MENUSTATE_OPEN:
    x = baseposx;
    y = baseposy;
    break;
  case MENUSTATE_SELECTING:
    break;
  case MENUSTATE_ABORTING:
    break;
  case MENUSTATE_CLOSING:
    x = baseposx;
    y = baseposy - global.menutimer * 160;
    break;
  case MENUSTATE_DONE:
    break;
  }
  
