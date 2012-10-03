var menuitem, menusize, parentmenu, baseposx, baseposy;
menuitem = argument0;
menusize = argument1;
parentmenu = argument2;
baseposx = ax(80) + ((menuitem mod 5) * 80);
baseposy = ay(180) + ((menuitem div 5) * 80);
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
  
