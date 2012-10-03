var herex, herey, checkx, checky, thisbug, numtries, disttocheck, bindex, try, bugdata, checkbug;
herex = argument0;
herey = argument1;
thisbug = argument2;
numtries = 6; // May be customized later.
disttocheck = bugflightdist[thisbug];

// Overriding short-circuit if this bug doesn't eat plants.
if (bugeatsbugs[thisbug,0] == B_NOBUG) {
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
  bugdata = global.bugs[checkx, checky];
  if (bugdata == 0) {
    continue;
    }

  // Here is the real work, checking the chosen spot for tasty bugs.
  for (bindex=0; bindex<3; bindex+=1) {
    checkbug = bugeatsbugs[thisbug,bindex];
    if (checkbug == B_NOBUG) {
      break;
      } 
    if (getarbbugs(bugdata, checkbug) != 0) {
      global.hexx = checkx;
      global.hexy = checky;
      global.foundbug = checkbug;
      if ((global.foundbug < 0) or (global.foundbug > B_BEE)) {
        show_message("lookforediblebug(): wrong prey bug "+string(global.foundbug)+" found for bug "+string(thisbug)+"!");
        return false;
        }
      return true;
      }
    }  
  }
return false;

