var species, sx, sy, ssubtype, spreaddest;
species = 8;
sx = argument0;
sy = argument1;
ssubtype = argument2;
//

repeat (2) {
  spreaddest = irandom_range(0,7);
  trytoplaceplant(makeplant(species,0,0),
                            sx+global.rhspread_x[spreaddest],
                            sy+global.rhspread_y[spreaddest]);
  }
