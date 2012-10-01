// WIP -- NOT USABLE YET -- CAUTION

itemtype = argument0;
item = argument1;
amt = argument2;
//
switch (itemtype) {
  case INVENTTYPE_SEED:
    if (global.numseeds == MAXINVENT) {
      return false;
      }
    for (a=0;a<global.numseeds;a+=1) {
      if (global.seedinvent[a] == item) {
        global.seedinventamt[a] += amt;
        return true;
        }
      global.seedinvent[global.numseeds] = item;
      global.seedinventamt[global.numseeds] = amt;
      global.numseeds+=1;
      }
    break;
  case INVENTTYPE_COMPOST:
    // Shouldn't happen!  Player already has all types.
    return false;
    break;
  case INVENTTYPE_TOOL:
    if (global.numtools == MAXINVENT) {
      return false;
      }
    for (a=0;a<global.numtools;a+=1) {
      if (global.toolinvent[a] == item) {
        return false; // Duplicate tools are not supported
        }
      global.toolinvent[global.numtools] = item;
      global.numtools+=1;
      }
    break;
  case INVENTTYPE_TREE:
    if (global.numtrees == MAXINVENT) {
      return false;
      }
    for (a=0;a<global.numtrees;a+=1) {
      if (global.treeinvent[a] == item) {
        return false;
        }
      global.treeinvent[global.numtrees] = item;
      global.numtrees+=1;
      }
    break;
  case INVENTTYPE_BUILDING:
    if (global.numbuildings == MAXINVENT) {
      return false;
      }
    for (a=0;a<global.numbuildings;a+=1) {
      if (global.buildinginvent[a] == item) {
        return false;
        }
      global.buildinginvent[global.numbuildings] = item;
      global.numbuildings+=1;
      }
    break;
  case INVENTTYPE_ITEM:
    // Duplicate items are explicitly allowed.
    global.iteminvent[global.numitems] = item;
    global.numitems+=1;
    break;
  }
return true;
