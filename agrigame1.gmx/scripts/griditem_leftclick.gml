// Register a selection, return the value.
// 

//global.parameter1 = menuitem;
//with parentmenu {
//  event_user(0);
//  }

selectmenuitem(menuitem);
if (not ismovetoolactive()) {
  with (obj_hud) {
    global.parameter1 = view_wview[0]-24;
    global.parameter2 = view_hview[0]-24;
    instance_create(x+view_wview[0]-24,y+view_hview[0]-24,obj_donebutton);
    }
  }

