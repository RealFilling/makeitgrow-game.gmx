if (global.currentmenu != noone) {
  return false;
  }
global.parameter1 = MENUTYPE_TREES; // Menu type
global.parameter2 = "Trees"; // Menu name
instance_create(0,0,obj_gridmenu);  // Objects position themselves

