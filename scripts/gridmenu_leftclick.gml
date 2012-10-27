// Activates when the menu background is clicked.  Aborts selection and returns to the game.
if ((global.menustate == MENUSTATE_OPEN) and (global.tutlock_item == -9999)) {
  gridmenu_abort();
  }
