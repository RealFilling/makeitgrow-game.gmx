var ignorefrom, a, thisanimal, thisx, thisy, dir;
thisx = argument0;
thisy = argument1;
ignorefrom = argument2; // So it won't detect itself
for (dir=0; dir<6; dir+=1) {
  if (dir == ignorefrom) {
    continue;
    }
  hexadj(thisx,thisy);
  if (!coordsinbounds(global.hexx,global.hexy)) {
    continue;
    }
  for (a=0;a<global.animalcount;a+=1) {
    thisanimal = global.animalinstances[a];
    if ((thisanimal.boardx == global.hexx) and (thisanimal.boardy == global.hexy)) {
      if (global.a_isbig[thisanimal.animaltype]) {
        return true;
        }
      }
    } 
  }
return false;
