if (global.currentmenu != noone) {
  return false;
  }
global.parameter1 = MENUTYPE_COMPOST; // Menu type
global.parameter2 = "Compost"; // Menu name
instance_create(0,0,obj_gridmenu);  // Objects position themselves

