var a, animaltofind;
animaltofind = argument0;
for (a=0; a<global.animalcount; a+=1) {
  if (global.animallist[a] == animaltofind) {
    return a;
    }
  }
return -1;
