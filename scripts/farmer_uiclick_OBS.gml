var clickx, clicky, clickeditem, itemlookup;
clickx = argument0-view_xview[0];
clicky = argument1-view_yview[0];

if ((clicky < BUTTONHEIGHT) and (clickx < ROOTMENU_NUMITEMS*BUTTONWIDTH)) {
  clickeditem = clickx div BUTTONWIDTH;
  if (clickeditem == INVENTTYPE_CANCEL) {
    global.currentseed = TOOL_MOVE;
    return true;
    }
  global.parameter1 = global.cornerbuttonmenu[clickeditem]; // Menus are defined in initengine()
  global.parameter2 = global.cornerbuttonmenutitle[clickeditem]; // Menus are defined in initengine()
  
  //instance_create(0,0,obj_ringmenu);
  
  instance_create(0,0,obj_gridmenu);  // Objects position themselves
  
  return true;
  }
if (clicky > (view_hview[0]-BUTTONHEIGHT) and (clickx > view_wview[0]-BUTTONWIDTH) and (not ismovetoolactive())) {
  farmer_selectmovetool();
  return true;
  }
return false;
