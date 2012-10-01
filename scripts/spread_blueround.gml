var species, sx, sy, ssubtype;
species = 3;
sx = argument0;
sy = argument1;
ssubtype = argument2;
//
for (dir=0;dir<8;dir+=1) {
  if ((dir mod 2)==0) { // Cardinal directions more likely
    if (irandom_range(0,9)<=7) {
      trytoplaceplant(makeplant(species,0,0),sx+dirxa[dir],sy+dirya[dir])
      }
    }
  else {
    if (irandom_range(0,9)<=4) {
      trytoplaceplant(makeplant(species,0,0),sx+dirxa[dir],sy+dirya[dir])
      }
    }
  }

