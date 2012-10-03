var species, sx, sy, ssubtype;
species = 1;
sx = argument0;
sy = argument1;
ssubtype = argument2;

//
switch(ssubtype) {
  case 0: // Initial planting, grows in 'X' shape
    trytoplaceplant(makeplant(species,1,0),sx+1,sy-1);
    trytoplaceplant(makeplant(species,2,0),sx+1,sy+1);
    trytoplaceplant(makeplant(species,1,0),sx-1,sy+1);
    trytoplaceplant(makeplant(species,2,0),sx-1,sy-1);
    break;
  case 1: // Lower-left/Upper-right diagonal
    trytoplaceplant(makeplant(species,1,0),sx+1,sy-1);
    trytoplaceplant(makeplant(species,1,0),sx-1,sy+1);
    break;
  case 2:
    trytoplaceplant(makeplant(species,2,0),sx+1,sy+1);
    trytoplaceplant(makeplant(species,2,0),sx-1,sy-1);
    break;
  }
// In all cases, a small chance of orthogonal spread.
for (dir=0;dir<4;dir+=1) {
  if (irandom_range(0,49)==0) {
    trytoplaceplant(makeplant(species,0,0),sx+dirx[dir],sy+diry[dir]);
    }
  }
return 0;

