var animaltype, instance, startingturndelay, goodresult;
animaltype = argument0; // An identifier, like ANIMAL_CHICKEN
instance = argument1; // The instance of the animal object
startingturndelay = argument2;

if (global.animalcount >= MAXANIMALS) {
  return false;
  }

global.animallist[global.animalcount] = animaltype;
global.animalinstances[global.animalcount] = instance;
global.animalcount += 1;
goodresult = ds_map_add(global.animallookup,hashcoords(instance.boardx,instance.boardy),instance);
if (!goodresult) {
  show_message("addanimal(): tried to add an animal to a spot that already has one.");
  global.animalcount -= 1;
  with (instance) {
    instance_destroy();
    }
  return false;
  }
return true;
