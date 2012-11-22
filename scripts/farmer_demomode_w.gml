if (!global.demomode) {
  return false;
  }
global.water[obj_farmer.boardx, obj_farmer.boardy] = 31;
field_dowater();
return true;
