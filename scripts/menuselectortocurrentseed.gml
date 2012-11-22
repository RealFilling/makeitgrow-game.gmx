switch (global.menutype) {
  case MENUTYPE_SEEDS:
    return argument0;
    break;
  case MENUTYPE_COMPOST:
    return argument0+global.idcompostbegin;
    break;
  case MENUTYPE_TOOLS:
    return global.currentseed = -(argument0+1);
    break;
  case MENUTYPE_TREES:
    break;
  case MENUTYPE_BUILDINGS:
    return buildingordtoid(global.buildinginvent[argument0]);
    break;
  case MENUTYPE_SYSTEM:
    break;
  case MENUTYPE_SEEDINVENT:
    return global.seedinvent[argument0]-1;
    break;
  case MENUTYPE_COMPOSTINVENT:
    break; // Not used, arguably not needed because it does the same thing as the all-compost menu.
  case MENUTYPE_TREEINVENT:
    show_message("menuselectortocurrentseed(): argument0 is "+string(argument0));
    return (argument0+P_TREE_START);
    break;
  case MENUTYPE_TOOLINVENT:
    return global.toolinvent[argument0];
    break;
  case MENUTYPE_BUILDINGINVENT:
    return global.buildinginvent[argument0];
    break;
  default:
    show_error("Unrecognized menu type in menuselectortocurrentseed()!",false);
    break;
  }

