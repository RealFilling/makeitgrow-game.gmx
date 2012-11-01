//x = cx();
//y = cy();

global.menutimer += 1;

switch (global.menustate) {
  case MENUSTATE_NONE:
    gridmenu_destroy();  // Shouldn't be here
    return 0;
    break;
  case MENUSTATE_OPENING:
    if (global.menutimer >= MENUTIME_OPENING) {
      gridmenu_beginopen();
      }
    break;
  case MENUSTATE_OPEN:
    break;
  case MENUSTATE_SELECTING:
    if (global.menutimer >= MENUTIME_SELECTING) {
      gridmenu_beginclosing();
      //sound_play_respectdisable(snd_menuselect2);
      }
    break;
  case MENUSTATE_ABORTING:
    if (global.menutimer >= MENUTIME_ABORTING) {
      gridmenu_beginclosing();
      //sound_play_respectdisable(snd_menuclose1);
      }
    break;
  case MENUSTATE_CLOSING:
    if (global.menutimer >= MENUTIME_CLOSING) {
      gridmenu_begindone();
      }
    break;
  case MENUSTATE_DONE:
    instance_destroy();
    return 0;
    break;
  }
gridmenu_position();
