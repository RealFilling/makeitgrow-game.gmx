// Cows eat grass, weeds, some other plants, and feed
var sx,sy,species;
sx = argument0;
sy = argument1;
species = getspecies(global.plants[sx,sy]);
if (species == BLDG_FEED or 
    species == P_GRASS or
    species == P_WEED or
    species == P_REDPLUS or
    species == P_GREENCLUSTER or
    species == P_BLUEROUND or
    species == P_REDLEAFY or
    species == P_GREENLEAFY or
    species == P_BLUELEAFY) {
  global.return1 = FOUNDFOOD_PLANT;
  return true;
  }
else {
  if (searchfrom(sx,sy,SEARCHFOR_ADJFEED,1)) {
    global.return1 = FOUNDFOOD_FEED;
    return true;
    }
  }
global.return1 = FOUNDFOOD_NONE;
return false;

