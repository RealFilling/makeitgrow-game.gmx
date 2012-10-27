// Activates when the menu background is clicked.  Aborts selection and returns to the game.
show_message("gridmenu_leftclick: global.tutlock_item is "+string(global.tutlock_item));
if ((global.menustate == MENUSTATE_OPEN) and (global.tutlock_item == -9999)) {
  gridmenu_abort();
  }
