var hx, hy, harvestplant, hspecies, hsubtype,hgrowth;
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
if (not farmer_energycheck(ENERGY_HARVESTCOST)) {
  return 0; // Too pooped
  }
amtharvested = global.harvest[ox,oy];
global.pharvest[hspecies] += amtharvested;
global.money += amtharvested * harvestworth[hspecies];
global.harvest[hx,hy] = 0;
if (nonspread[hspecies] == PNONSPREAD_YES) {
  placeplant(hx,hy,makeplant(0,0,0),true);
  }
return 0;
