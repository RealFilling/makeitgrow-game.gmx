// Sanity check if there's already a menu open or on a tour
if ((global.currentmenu != noone) ){ // or (global.farmtour)) {
  return false;
  }
// Tutorial sanity check
if ((global.tutlock_menu != -1) and (global.tutlock_menu != UIBUTTON_COMPOST)) {
  return false;
  }
if (global.tutlock_disablecancel == true) {
  return false;
  }
global.parameter1 = MENUTYPE_COMPOST; // Menu type
global.parameter2 = "Compost"; // Menu name
global.tutbuttonpressed = UIBUTTON_COMPOST;
instance_create(0,0,obj_gridmenu);  // Objects position themselves

