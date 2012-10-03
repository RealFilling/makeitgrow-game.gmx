var hx, hy, harvestplant, hspecies, hsubtype,hgrowth,dollarvalue;
hx = argument0;
hy = argument1;
harvestplant = global.plants[hx,hy];
hspecies = getspecies(harvestplant);
subtype = getsubtype(harvestplant);
hgrowth = getgrowth(harvestplant);
//
if (global.harvest[hx,hy] == 0) {
  return 0; // Nothing to harvest yet.
  }
if (noharvest[hspecies]) {
  return 0; // No harvest -- the harvest value is only
            //  tracked for mineral replenishing.
  }
if (not farmer_energycheck(ENERGY_HARVESTCOST)) {
  return 0; // Too pooped
  }
amtharvested = global.harvest[hx,hy];
global.pharvest[hspecies] += amtharvested;
dollarvalue = amtharvested * harvestworth[hspecies];
global.money += dollarvalue;
global.harvest[hx,hy] = 0;
if (harvestconsume[hspecies]) {
  placeplant(hx,hy,makeplant(0,0,0),true);
  }
return 0;
