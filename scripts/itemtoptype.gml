item = argument0;

if (item < P_TREE_START) {
  return item;
  }
else if (item < P_COMPOST_START) {
  return item - global.idtreebegin + P_TREE_START;
  }
else if (item < BLDG_START) {
  return item - global.idtreebegin + P_TREE_START;
  }
else if (item < BLDG_END) {
  return item - global.idbuildingbegin + BLDG_START;
  }
else {
  show_error("itemtoptype: improper type "+string(item)+" passed!",false);
  }
