var a;
// Sets up the structures for animals, who get their turns outside
//   the normal field turn structure

global.animalcount = 0;

for (a=0; a<NUMANIMALTYPES; a+=1) {
  global.animalcounts[a] = 0;
  global.animalcapacities[a] = 0; // Will be updated by building search
  }

for (a=0; a<MAXANIMALS; a+=1) {
  global.animallist[a] = ANIMAL_NONE;
  global.animalinstances[a] = noone;
  }

