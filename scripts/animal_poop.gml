thisplant = global.plants[boardx,boardy];
thisspecies = getspecies(thisplant);
thisgrowth = getspecies(thisplant);

if (isplant(thisspecies) and (thisgrowth == GROWTH_DEAD)) {
  mulchplant(boardx,boardy); // Empties entity from spot
  thisspecies = P_EMPTY;
  thisgrowth = 0;
  }
if (thisspecies == P_EMPTY) {
  colonlevel -= colonsize;
  placecompost(boardx,boardy,COMPOST_ALL,poopsize);
  }
else {
  // Should never make it here.
  gd_log("animal_poop(): Location checked ended up not good");
  }
  
