var bx,by,ox,oy,checkspecies,adjfree;
bx = argument0;
by = argument1;

for (dir=0;dir<8;dir+=1) {
  ox = bx+dirx[dir];
  oy = by+diry[dir];
  adjfree = 0;
  if (!coordsinbounds(ox,oy)) {
    continue;
    }
  checkspecies = getspecies(global.plants[ox,oy]);
  if (checkspecies == P_EMPTY or checkspecies == P_GRASS) {
    if ((dir mod 2) == 0) { // Cardinal direction
      adjfree += 2;
      }
    else { // Diagonal direcction
      adjfree += 1;
      }
    }
  }
return adjfree;
