griditem_position(self.menuitem,self.menusize,self.parentmenu);

switch (global.menustate) {
  case MENUSTATE_NONE:
    break; // Shouldn't be here
  case MENUSTATE_OPENING:
    break;
  case MENUSTATE_OPEN:
    if (global.tutlock_item == menuitem) {
      global.tutpostx = x;
      global.tutposty = y+TUTARROWVERTOFFSETMENU;
      global.tutpostarrowdir = ARROWDIR_DOWN;
      }
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
