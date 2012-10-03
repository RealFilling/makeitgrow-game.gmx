x = cx();
y = cy();

global.menutimer += 1;

switch (global.menustate) {
  case MENUSTATE_NONE:
    ringmenu_destroy();  // Shouldn't be here
    break;
  case MENUSTATE_OPENING:
    if (global.menutimer >= MENUTIME_OPENING) {
      ringmenu_beginopen();
      }
    break;
  case MENUSTATE_OPEN:
    // The ringitems do all the work here.
    break;
  case MENUSTATE_SELECTING:
    if (global.menutimer >= MENUTIME_SELECTING) {
      ringmenu_beginclosing();
      //sound_play(snd_menuselect2);
      }
    break;
  case MENUSTATE_ABORTING:
    if (global.menutimer >= MENUTIME_ABORTING) {
      ringmenu_beginclosing();
      //sound_play(snd_menuclose1);
      }
    break;
  case MENUSTATE_CLOSING:
    if (global.menutimer >= MENUTIME_CLOSING) {
      ringmenu_begindone();
      }
    break;
  case MENUSTATE_DONE:
    instance_destroy();
    break;
  }
