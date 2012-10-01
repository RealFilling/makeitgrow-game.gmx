// return true: item was added
// return false: thing was already in inventory (and wasn't an item), nothing was changed
//               inventory is at maximum size already (MAXINVENT)
//               type to add was INVENTTYPE_COMPOST, which shouldnt change
var itemtype, item, a;
itemtype = argument0;
item = argument1;
amt = argument2; // Value doesn't matter if it's a type without an amount.
switch (itemtype) {
  case INVENTTYPE_SEED:
    for (a=0;a<global.numseeds;a+=1) {
      if (global.seedinvent[a] == item) {
        global.seedinventamt[a] += amt;
        return true;
        }
      }
    if (global.numseeds >= MAXINVENT) {
      return false;
      }
    global.seedinvent[global.numseeds] = item;
    global.seedinventamt[global.numseeds] = amt;
    global.numseeds+=1;
    break;
  case INVENTTYPE_COMPOST:
    // Shouldn't happen!  Player already has all types.
    return false;
    break;
  case INVENTTYPE_TOOL:
    for (a=0;a<global.numtools;a+=1) {
      if (global.toolinvent[a] == item) {
        return false; // Duplicate tools are not supported
        }
      }
    if (global.numtools == MAXINVENT) {
      return false;
      }
    global.toolinvent[global.numtools] = item;
    global.numtools+=1;
    break;
  case INVENTTYPE_TREE:
    for (a=0;a<global.numtrees;a+=1) {
      if (global.treeinvent[a] == item) {
        global.treeinventamt[a] += amt;
        return true;
        }
      }
    if (global.numtrees == MAXINVENT) {
      return false;
      }
    global.treeinvent[global.numtrees] = item;
    global.numtrees+=1;
    break;
  case INVENTTYPE_BUILDING:
    for (a=0;a<global.numbuildings;a+=1) {
      if (global.buildinginvent[a] == item) {
        return false;
        }
      }
    global.buildinginvent[global.numbuildings] = item;
    global.numbuildings+=1;
    break;
  case INVENTTYPE_ITEM:
    for (a=0;a<global.numitems;a+=1) {
      if (global.iteminvent[a] == item) {
        global.iteminventamt[a] += amt;
        return true;
        }
      }
    if (global.numitems == MAXINVENT) {
      return false;
      }
    global.iteminvent[global.numitems] = item;
    global.numitems+=1;
    break;
  }
return true;

