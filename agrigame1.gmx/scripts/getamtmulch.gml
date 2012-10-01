var species, growth, harvest, mineraltype;
species = argument0;
harvest = argument1;

mineraltype = plantmineral[species];

if (!planthasmineral(species)) {
  global.minreturn = 0; // Doesn't matter -- value is 0
  return 0;
  }
else {
  global.minreturn = mineraltype;
  return deathmineral[species];
  }
  
/*
switch (species) {
  case 0:
    // No plant
    return 0;
    break;
  case 1:
    global.minreturn = RED;
    return 2+harvest;
    break;
  case 2:
    global.minreturn = RED;
    return 2+harvest;
    break;
  case 3:
    global.minreturn = BLUE;
    return 2+harvest;
    break;
  case 4:
    global.minreturn = BLUE;
    return 2+harvest;
    break;
  case 5:
    global.minreturn = GREEN;
    return 2+harvest;
    break;
  case 6:
    global.minreturn = GREEN;
    return 2+harvest;
    break;
  }
*/
