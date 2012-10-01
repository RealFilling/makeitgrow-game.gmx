// return true: found the item and removed it
// return false: item wasn't found, nothing was changed
var itemtype, item, a, b;
itemtype = argument0;
item = argument1;
switch (itemtype) {
  case INVENTTYPE_SEED:
    for (a=0;a<global.numseeds;a+=1) {
      if (global.seedinvent[a] == item) {
        for (b=a;b<global.numseeds-1;b+=1) {
          global.seedinvent[b] = global.seedinvent[b+1];
          }
        global.numseeds-=1;
        return true;
        }
      }
    break;
  case INVENTTYPE_COMPOST:
    // Shouldn't happen!  Player can't lose compose types.
    return false;
    break;
  case INVENTTYPE_TOOL:
    for (a=0;a<global.numtools;a+=1) {
      if (global.toolinvent[a] == item) {
        for (b=a;b<global.numtools-1;b+=1) {
          global.toolinvent[b] = global.toolinvent[b+1];
          }
        global.numtools-=1;
        return true;
        }
      }
    break;
  case INVENTTYPE_TREE:
    for (a=0;a<global.numtrees;a+=1) {
      if (global.treeinvent[a] == item) {
        for (b=a;b<global.numtrees-1;b+=1) {
          global.treeinvent[b] = global.treeinvent[b+1];
          }
        global.numtrees-=1;
        return true;
        }
      }
    break;
  case INVENTTYPE_BUILDING:
    for (a=0;a<global.numbuildings;a+=1) {
      if (global.buildinginvent[a] == item) {
        for (b=a;b<global.buildingtools-1;b+=1) {
          global.buildinginvent[b] = global.buildinginvent[b+1];
          }
        global.numbuildings-=1;
        return true;
        }
      }
    break;
  case INVENTTYPE_ITEM:
    for (a=0;a<global.numitems;a+=1) {
      if (global.iteminvent[a] == item) {
        for (b=a;b<global.numitems-1;b+=1) {
          global.iteminvent[b] = global.iteminvent[b+1];
          }
        global.numitems-=1;
        return true;
        }
      }
    break;
  }
return false;

