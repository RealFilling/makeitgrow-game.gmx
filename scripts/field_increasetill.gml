var sx,sy,oldtill;
sx = argument0;
sy = argument1;
if (!coordsinbounds(sx,sy)) {
  return false;
  }
if (!farmer_energycheck(ENERGY_HOECOST)) {
  return false;
  } 
oldtill = gettill(sx,sy);
if (oldtill<3) {
  settill_rwater(sx,sy,oldtill+1);
  }
return false;
