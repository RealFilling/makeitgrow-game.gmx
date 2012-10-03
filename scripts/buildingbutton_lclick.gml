if (global.currentmenu != noone) {
  return false;
  }
global.parameter1 = MENUTYPE_BUILDINGINVENT; // Menu type
global.parameter2 = "Buildings"; // Menu name
instance_create(0,0,obj_gridmenu);  // Objects position themselves

