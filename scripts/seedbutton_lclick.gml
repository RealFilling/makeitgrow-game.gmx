if (global.currentmenu != noone) {
  return false;
  }
global.parameter1 = MENUTYPE_SEEDINVENT; // Menu type
global.parameter2 = "Seeds"; // Menu name
instance_create(0,0,obj_gridmenu);  // Objects position themselves

