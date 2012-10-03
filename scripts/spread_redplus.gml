var species, sx, sy, ssubtype;
species = 2;
sx = argument0;
sy = argument1;
ssubtype = argument2;
//
switch(ssubtype) {
  case 0: // Initial planting, grows in 'plus' shape
    trytoplaceplant(makeplant(species,1,0),sx+1,sy)
    trytoplaceplant(makeplant(species,1,0),sx-1,sy)
    trytoplaceplant(makeplant(species,2,0),sx,sy+1)
    trytoplaceplant(makeplant(species,2,0),sx,sy-1)
    break;
  case 1: // Left-right
    trytoplaceplant(makeplant(species,1,0),sx+1,sy)
    trytoplaceplant(makeplant(species,1,0),sx-1,sy)
    break;
  case 2: // Up-down
    trytoplaceplant(makeplant(species,2,0),sx,sy+1)
    trytoplaceplant(makeplant(species,2,0),sx,sy-1)
    break;
  }
// In all cases, a small chance of diagonal spread.
for (dir=0;dir<4;dir+=1) {
  if (irandom_range(0,49)==0) {
    trytoplaceplant(makeplant(species,0,0),sx+dirxd[dir],sy+diryd[dir])
    }
}

