var bx, by, adjx, adjy, dir;
bx = argument0;
by = argument1;
for (dir=0; dir<6; dir+=1) {
  hexadj(bx,by,dir);
  adjx = global.hexx;
  adjy = global.hexy;
  if (!coordsinbounds(adjx,adjy)) {
    continue;
    }
  if (global.water[adjx, adjy] >= 1) {
    return true;
    }
  }
return false;
