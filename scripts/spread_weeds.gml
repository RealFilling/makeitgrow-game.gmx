var species, sx, sy, ssubtype, spreaddest;
species = 14;
sx = argument0;
sy = argument1;
ssubtype = argument2;
//

// This code uses both Red Scattered and Red Hardy's spread patterns.
// This is only to avoid defining another global.

repeat (5) {
  spreaddest = irandom_range(0,15);
  trytoplaceplant(makeplant(species,0,0),
                            sx+global.wspread_x[spreaddest],
                            sy+global.wspread_y[spreaddest]);
  }
