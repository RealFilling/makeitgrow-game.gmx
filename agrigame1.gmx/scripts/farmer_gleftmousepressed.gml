if (global.ignoreclick == true) {
  global.ignoreclick = false;
  return 0;
  }
  
if (global.menustate != MENUSTATE_NONE) {
  // A menu is open, so ignore field clicks for the time being.
  return 0;
  }

nextseed = -1; // Cancel previous order
nextseedx = -1; // 'x and 'y not too useful currently
nextseedy = -1; //
//if (farmer_uiclick(mouse_x, mouse_y) == false) { // Old system
pixtohexmouse(mouse_x, mouse_y);
gox = global.hexx;
goy = global.hexy;
if ((boardx == gox) and (boardy == goy)) {
  // We're already on the spot where the user clicked!  Do that thing and we're done.
  farmer_executeaction(global.currentseed);
  }
else {  
  if (farmer_walkto(gox, goy)) {
    nextseed = global.currentseed;
    nextseedx = gox;
    nextseedy = goy;
    }
  //else, it's not a simple matter to walk to the location, so don't bother doing anything.
  }
//}
