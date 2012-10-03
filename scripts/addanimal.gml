var animaltype, instance, startingturndelay;
animaltype = argument0; // An identifier, like ANIMAL_CHICKEN
instance = argument1; // The instance of the animal object
startingturndelay = argument2;

if (global.animalcount >= MAXANIMALS) {
  return false;
  }

global.animallist[global.animalcount] = animaltype;
global.animalinstances[global.animalcount] = instance;
global.animalcount += 1;
return true;
