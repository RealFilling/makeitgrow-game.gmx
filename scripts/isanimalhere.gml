var a, thisanimal, checkx, checky;
checkx = argument0;
checky = argument1;
if (ds_map_exists(global.animallookup, hashcoords(checkx,checky))) {
  return true;
  }
//for (a=0; a<global.animalcount; a+=1) {
//  thisanimal = global.animalinstances[a];
//  if (thisanimal.boardx == checkx and thisanimal.boardy == checky) {
//    return true;
//    }
//  }
return false;
