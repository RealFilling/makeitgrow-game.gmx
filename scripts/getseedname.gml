var itemtype, item, arrayitem;
//itemtype = argument0;
item = argument0;

if (item < 0) {
  return global.toolname[-item];
  }
else if (isplant(item+1)) { // +1 is to convert from item ID to plant species
  return global.itemname[item];
  }
else if (istree(item)) {
  return global.itemname[item+global.idtreebegin-P_TREE_START];
  }
else if (iscompost(item)) {
  return global.itemname[item+global.idcompostbegin-P_COMPOST_START];
  }
else if (isshadow(item)) {
  show_message("ERROR: Improper item selection!");
  return "";
  }
else if (isbuilding(item)) {
  return global.itemname[item+global.idbuildingbegin-BLDG_START];
  }

