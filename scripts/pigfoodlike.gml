// Pigs eat all plants except grass or weeds, and feed.
var sx,sy,species;
sx = argument0;
sy = argument1;
species = getspecies(global.plants[sx,sy]);
if ((isplant(species)) and 
    species != P_GRASS and
    species != P_WEED) {
  return true;
  global.return1 = FOUNDFOOD_PLANT;
  }
else {
  if (searchfrom(sx,sy,SEARCHFOR_ADJFEED,1)) {
    global.return1 = FOUNDFOOD_FEED;
    return true;
    }
  }
global.return1 = FOUNDFOOD_NONE;
return false;
