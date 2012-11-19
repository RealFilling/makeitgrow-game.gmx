thisplant = global.plants[boardx,boardy];
thisspecies = getspecies(thisplant);
thisgrowth = getspecies(thisplant);

if ((isplant(thisspecies) and (thisgrowth == GROWTH_DEAD)) or
    isempty(thisspecies)) {
  return true;
  }
else {
  return false;
  }

