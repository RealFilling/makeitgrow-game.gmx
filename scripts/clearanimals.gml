var a;
for (a=0; a<global.animalcount; a+=1) {
  with (global.animalinstances[a]) {
    instance_destroy();
    }
  global.animallist[a] = ANIMAL_NONE;
  }
for (a=0; a<NUMANIMALTYPES; a+=1) {
  global.animalcounts[a] = 0;
  }
global.animalcount = 0;
if (global.animallookup != noone) {
  ds_map_destroy(global.animallookup);
  }
global.animallookup = ds_map_create();
