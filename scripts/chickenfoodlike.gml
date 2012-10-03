// Chickens eat bugs, some plants and feed.
var sx,sy,species;
sx = argument0;
sy = argument1;
if (global.bugs[sx,sy] > 0) {
  global.return1 = FOUNDFOOD_BUGS;
  return true;
  }
else {
  species = getspecies(global.plants[sx,sy]);
  if (species == BLDG_FEED or 
      species == P_REDX or
      species == P_GREENMEANDER or
      species == P_BLUECLUSTER) {
    global.return1 = FOUNDFOOD_PLANT;
    return true;
    }
  else {
    if (searchfrom(sx,sy,SEARCHFOR_ADJFEED,1)) {
      global.return1 = FOUNDFOOD_FEED;
      return true;
      }
    }
  }
// Nothing nearby found
global.return1 = FOUNDFOOD_NONE;
return false;
