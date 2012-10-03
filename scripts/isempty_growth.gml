var thisspecies,otherspecies;
thisspecies = argument0;
otherspecies = argument1;

if (thisspecies == otherspecies) {
  return false;
  }
else if (istree(otherspecies) or isshadow(otherspecies)) {
  return false;
  }
else if (otherspecies == P_EMPTY or (otherspecies == P_GREENDELICATE and thisspecies != P_GRASS)
         or otherspecies == P_GRASS ) {
  return true;
  }
else if (thisspecies == P_REDHARDY or thisspecies == P_WEED) {
  return true;
  }
else {
  return false;
  }
