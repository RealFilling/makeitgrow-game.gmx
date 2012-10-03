var a, thisanimal, checkx, checky;
checkx = argument0;
checky = argument1;
for (a=0; a<global.animalcount; a+=1) {
  thisanimal = global.animalinstances[a];
  if (thisanimal.boardx == checkx and thisanimal.boardy == checky) {
    return true;
    }
  }
return false;
