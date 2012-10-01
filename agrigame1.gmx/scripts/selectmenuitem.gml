// This function should carry out whatever the item requires, then
//   destroy the menu.
global.menuselection = argument0;

switch (global.menutype) {
  case MENUTYPE_SEEDS:
    global.currentseed = argument0;
    global.currentitemname = getseedname(global.currentseed);
    break;
  case MENUTYPE_COMPOST:
    global.currentseed = argument0+global.idcompostbegin;
    global.currentitemname = getseedname(global.currentseed);
    break;
  case MENUTYPE_TOOLS:
    global.currentseed = -(argument0+1);
    global.currentitemname = getseedname(global.currentseed);
    break;
  case MENUTYPE_TREES:
    break;
  case MENUTYPE_BUILDINGS:
    global.currentseed = buildingordtoid(global.buildinginvent[argument0]);
    global.currentitemname = getseedname(global.currentseed);
    break;
  case MENUTYPE_SYSTEM:
    break;
  case MENUTYPE_SEEDINVENT:
    global.currentseed = global.seedinvent[argument0]-1;
    global.currentitemname = getseedname(global.currentseed);
    break;
  case MENUTYPE_COMPOSTINVENT:
    break; // Not used, arguably not needed because it does the same thing as the all-compost menu.
  case MENUTYPE_TOOLINVENT:
    global.currentseed = global.toolinvent[argument0];
    global.currentitemname = getseedname(global.currentseed);
    //show_message("selectmenuitem: menutype is "+string(global.menutype));
    break;
  case MENUTYPE_BUILDINGINVENT:
    global.currentseed = global.buildinginvent[argument0];
    //show_message("selectmenuitem(): selected building #"+string(global.currentseed));
    global.currentitemname = getseedname(global.currentseed);
    break;
  default:
    show_error("Unrecognized menu type in selectmenuitem()!",false);
    break;
  }
global.menustate = MENUSTATE_SELECTING;
//sound_play(snd_menuselect2);

