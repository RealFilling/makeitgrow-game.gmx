var species, sx, sy, ssubtype;
species = 12;
sx = argument0;
sy = argument1;
ssubtype = argument2;
//
trytoplaceplant(makeplant(species,0,0),sx-1,sy)
trytoplaceplant(makeplant(species,0,0),sx-2,sy)
trytoplaceplant(makeplant(species,0,0),sx+1,sy)
trytoplaceplant(makeplant(species,0,0),sx+2,sy)
if (irandom_range(0,39) == 0) {
  if (irandom_range(0,1) == 0) {
    trytoplaceplant(makeplant(species,0,0),sx,sy+1)
  }
  else {
    trytoplaceplant(makeplant(species,0,0),sx,sy-1)
    }
  }

