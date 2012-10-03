var a;
for (a=0; a<NUMBUILDINGS; a+=1) {
  global.buildingtotals[a] = global.buildingcounts[a];
  global.buildingcounts[a] = 0;
  }
// Animal capacities setting
global.animalcapacities[ANIMAL_CHICKEN] = global.buildingtotals[BLDGO_COOP] * 4;
global.animalcapacities[ANIMAL_COW] = global.buildingtotals[BLDGO_SMALLBARN];
global.animalcapacities[ANIMAL_COW] += global.buildingtotals[BLDGO_BIGBARN] * 3;
// No pig building yet

validateanimals();

