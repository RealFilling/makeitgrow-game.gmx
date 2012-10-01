var species, sx, sy, ssubtype, spreaddest;
species = 13;
sx = argument0;
sy = argument1;
ssubtype = argument2;

// Note: uses Blue Wave's spread pattern

repeat (6) {
  spreaddest = irandom_range(0,19);
  trytoplaceplant(makeplant(species,0,0),
                            sx+global.bwspread_x[spreaddest],
                            sy+global.bwspread_y[spreaddest]);
  }

