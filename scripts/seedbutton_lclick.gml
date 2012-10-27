// Sanity check if there's already a menu open
if (global.currentmenu != noone) {
  return false;
  }
// Tutorial sanity check
if ((global.tutlock_menu != -1) and (global.tutlock_menu != UIBUTTON_SEEDS)) {
  return false;
  }
global.parameter1 = MENUTYPE_SEEDINVENT; // Menu type
global.parameter2 = "Seeds"; // Menu name
global.tutbuttonpressed = UIBUTTON_SEEDS;
instance_create(0,0,obj_gridmenu);  // Objects position themselves


