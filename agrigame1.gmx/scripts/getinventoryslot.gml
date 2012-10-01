inventorytype = argument0;
inventoryslot = argument1;
switch (inventorytype) {
  case INVENTTYPE_SEED:
    if (inventoryslot >= global.numseeds) {
      return -1
      }
    global.returnvalue1 = global.seedinventamt[inventoryslot];
    return global.seedinvent[inventoryslot];
    break;
  case INVENTTYPE_COMPOST:
    if (inventoryslot >= global.numcomposts) {
      return -1;
      }
    global.returnvalue1 = global.pmulch[inventoryslot];
    return inventoryslot;
    break;
  case INVENTTYPE_TOOL:
    if (inventoryslot >= global.numtools) {
      return -1
      }
    global.returnvalue1 = 1;
    return global.toolinvent[inventoryslot];
    break;
  case INVENTTYPE_TREE:
    if (inventoryslot >= global.numtrees) {
      return -1
      }
    global.returnvalue1 = global.treeinventamt[inventoryslot];
    return global.treeinvent[inventoryslot];
    break;
  case INVENTTYPE_BUILDING:
    if (inventoryslot >= global.numbuildings) {
      return -1
      }
    global.returnvalue1 = 1;
    return global.buildinginvent[inventoryslot];
    break;
  case INVENTTYPE_ITEM:
    if (inventoryslot >= global.numitems) {
      return -1
      }
    global.returnvalue1 = global.iteminventamt[inventoryslot];
    return global.iteminvent[inventoryslot];
    break;
  case INVENTTYPE_CROPS:
    // Not yet implemented
    break;
  case INVENTTYPE_CANCEL:
    // Shouldn't happen
    break;
  }
