var a;
for (a=0; a<NUMANIMALTYPES; a+=1) {
  if (global.animalcounts[a] > global.animalcapacities[a]) {
    show_error("validateanimals(): too many animals for buildings!",false);
    removeanimal(findanimal(a)); // when the animal object is destroyed, it'll update the counts.
    }
  }

