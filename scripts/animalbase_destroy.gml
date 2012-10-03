global.animalcounts[animaltype] -= 1;
if (global.animalcounts[animaltype] < 0) {
  show_error("ERROR: animalbase_destroy() found animalcount < 0",false);
  global.animalcounts[animaltype] = 0;
  }
exists = false;
