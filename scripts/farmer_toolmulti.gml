var thismoist, thisx, thisy, thisplant, thisspecies;
thisx = argument0;
thisy = argument1;
thisplant = global.plants[thisx,thisy];
thisspecies = getspecies(thisplant);
if (getmoist(thisx,thisy) < 10) {
  farmer_toolbasket(thisx,thisy);
  return 0;
  }
else if ((global.harvest[thisx,thisy] > 8) and (!noharvest[hspecies]) and
      (global.energy >= ENERGY_HARVESTCOST)) {
  farmer_toolbasket(thisx,thisy);
  return 0;
  }
else if (isweed[thisspecies]) {
  mulchplant(thisx,thisy);
  }
  

