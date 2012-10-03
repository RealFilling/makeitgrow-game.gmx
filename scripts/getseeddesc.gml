var itemtype, item, arrayitem;
//itemtype = argument0;
item = argument0;

if (item < 0) {
  return global.tooldesc[-item];
  }
else if (isplant(item)) {
  return global.itemdesc[item];
  }
else if (istree(item)) {
  return global.itemdesc[item+global.idtreebegin-P_TREE_START];
  }
else if (iscompost(item)) {
  return global.itemdesc[item+global.idcompostbegin-P_COMPOST_START];
  }
else if (isshadow(item)) {
  show_message("ERROR: Improper item selection!");
  return "";
  }
else if (isbuilding(item)) {
  return global.itemdesc[item+global.idbuildingbegin-BLDG_START];
  }

