var a, indextoremove;
// Given the index of an animal in animallist[] and animalinstances[],
//   remove that animal from the game.
indextoremove = argument0;

instancetodel = global.animalinstances[indextoremove];

if (global.animalcount >= indextoremove) {
  return false;
  }

for (a = indextoremove; a < global.animalcount; a += 1) {
  global.animallist[a] = global.animallist[a+1];
  global.animalinstances[a] = global.animalinstances[a+1];
  }

if (instancetodel != noone) {
  with (instancetodel) {
    instance_destroy();
    }
  }
  
return true;
