var herex, herey, checkx, checky, thisbug, numtries, disttocheck, pindex;
var try, species, checkplant, checkspecies, growth;
herex = argument0;
herey = argument1;
thisbug = argument2;
numtries = 6; // May be customized later.
disttocheck = bugflightdist[thisbug];

// Overriding short-circuit if this bug doesn't eat plants.
if (bugeatsplants[thisbug,0] == P_EMPTY) {
  return false;
  }

for (tindex=0; tindex<numtries; tindex +=1) {
  // First check is always the bug's current location.
  if (tindex == 0) {
    checkx = herex;
    checky = herey;
    }
  else {
    picknearbyrandomspace(herex, herey, disttocheck);
    checkx = global.hexx;
    checky = global.hexy;
    }
  if (!coordsinbounds(checkx,checky)) {
    continue;
    }
  checkplant = global.plants[checkx,checky];
  species = getspecies(checkplant);
  growth = getgrowth(checkplant);  
  if ((species == P_EMPTY) or (growth == GROWTH_DEAD)){
    continue;
    }
  for (pindex=0; pindex<6; pindex+=1) {
    checkspecies = bugeatsplants[thisbug,pindex];
    if (checkspecies == P_EMPTY) {
      break;
      }
    if (checkspecies == species) {
      global.hexx = checkx;
      global.hexy = checky;
      return true;
      }
    }  
  }
return false;

