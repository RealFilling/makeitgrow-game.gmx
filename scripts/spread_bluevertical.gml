var species, sx, sy, ssubtype;
species = 10;
sx = argument0;
sy = argument1;
ssubtype = argument2;
//
trytoplaceplant(makeplant(species,0,0),sx,sy-1)
trytoplaceplant(makeplant(species,0,0),sx,sy-2)
trytoplaceplant(makeplant(species,0,0),sx,sy+1)
trytoplaceplant(makeplant(species,0,0),sx,sy+2)
if (irandom_range(0,39) == 0) {
  if (irandom_range(0,1) == 0) {
    trytoplaceplant(makeplant(species,0,0),sx+1,sy)
  }
  else {
    trytoplaceplant(makeplant(species,0,0),sx-1,sy)
    }
  }

