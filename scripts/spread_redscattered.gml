var species, sx, sy, ssubtype, spreaddest;
species = 7;
sx = argument0;
sy = argument1;
ssubtype = argument2;
//

repeat (2) {
  spreaddest = irandom_range(0,7);
  trytoplaceplant(makeplant(species,0,0),
                            sx+global.rsspread_x[spreaddest],
                            sy+global.rsspread_y[spreaddest]);
  }
