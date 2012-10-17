var species;
species = irandom_range(1,20);
if ((species == P_WEED) or (species == P_HEDGE) or (species == P_BLUEHEDGE)) {
  return 0;
  }
return makeplant(species,0,1);
