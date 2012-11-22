// This function should carry out whatever the item requires, then
//   destroy the menu.
global.menuselection = argument0;
global.currentseed = menuselectortocurrentseed(argument0);
switch (global.menutype) {
  case MENUTYPE_SEEDS:
  case MENUTYPE_COMPOST:
  case MENUTYPE_TOOLS:
  case MENUTYPE_BUILDINGS:
  case MENUTYPE_SEEDINVENT:
  case MENUTYPE_TREEINVENT:
  case MENUTYPE_TOOLINVENT:
  case MENUTYPE_BUILDINGINVENT:
    global.currentitemname = getseedname(global.currentseed);
    break;
  case MENUTYPE_TREES:
  case MENUTYPE_SYSTEM:
  case MENUTYPE_COMPOSTINVENT: // Not used, arguably not needed because it does the same thing as the all-compost menu.
    break;
  default:
    show_error("Unrecognized menu type in selectmenuitem()!",false);
    break;
  }
global.menustate = MENUSTATE_SELECTING;
//sound_play_respectdisable(snd_menuselect2);

