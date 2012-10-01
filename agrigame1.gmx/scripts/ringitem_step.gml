ringitem_position(self.menuitem,self.menusize,self.parentmenu);

switch (global.menustate) {
  case MENUSTATE_NONE:
    break; // Shouldn't be here
  case MENUSTATE_OPENING:
    image_xscale = (global.menutimer/MENUTIME_OPENING)*2;
    image_yscale = (global.menutimer/MENUTIME_OPENING)*2;
    break;
  case MENUSTATE_OPEN:
    image_xscale = 2.0;
    image_yscale = 2.0;
    break;
  case MENUSTATE_SELECTING:
    if (((global.menutimer mod 2) == 0) and (self.menuitem == global.menuselection)) {
      image_blend = c_black;
      }
    else {
      image_blend = c_white;
      }
    break;
  case MENUSTATE_ABORTING:
    image_angle = irandom_range(0,30)-15;
    break;
  case MENUSTATE_CLOSING:
    image_xscale = ((MENUTIME_CLOSING-global.menutimer)/MENUTIME_CLOSING)*2;
    image_yscale = ((MENUTIME_CLOSING-global.menutimer)/MENUTIME_CLOSING)*2;
    break;
  case MENUSTATE_DONE:
    break;
  }
