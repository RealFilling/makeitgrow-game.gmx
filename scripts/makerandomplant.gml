var species;
species = irandom_range(0,20);

if ((species == P_WEED) or (species == P_HEDGE) or (species == P_BLUEHEDGE))  or (species == P_STRAWBERRY)
 or (species == P_BLUEBERRY) or (species == P_ONION) or (species == P_GREENTOMATO)
 or (species == P_TOMATO) or (species == P_WATERMELON) or (species == P_EGGPLANT)
 or (species == P_PEPPER) or (species == P_LETTUCE) or (species == P_BLUELETTUCE){
  return 0;
  }
return makeplant(species,0,1);
