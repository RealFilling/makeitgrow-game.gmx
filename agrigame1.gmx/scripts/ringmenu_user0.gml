// We use this event to register menuitem selections.
// It should carry out whatever the item requires, then
//   destroy the menu.

show_message("Event triggered, item selected: "+ string(global.parameter1));

global.menuselection = global.parameter1;

switch (menutype) {
  case MENUTYPE_SEEDS:
    break;
  case MENUTYPE_COMPOST:
    break;
  case MENUTYPE_TOOLS:
    break;
  case MENUTYPE_TREES:
    break;
  case MENUTYPE_BUILDINGS:
    break;
  case MENUTYPE_SYSTEM:
    break;
  }
instance_destroy();
