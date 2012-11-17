if ((global.menustate != MENUSTATE_NONE) or (global.gamestate != GSTATE_NORMAL)) {
  // A menu is open or game state is special, so ignore field clicks for the time being.
  return 0;
  }

nextseed = TOOL_NOTOOL; // Cancel previous order
nextseedx = -1; // 'x and 'y not too useful currently
nextseedy = -1; //
//if (farmer_uiclick(mouse_x, mouse_y) == false) { // Obsolete
pixtohexmouse(mouse_x, mouse_y);
farmer_walkto(global.hexx, global.hexy);
//  }
