var bx,by,species;
bx = argument0;
by = argument1;
species = getspecies(global.plants[bx,by]);
if (!coordsinbounds(bx,by)) {
  return false;
  }
if (isempty(species) or isplant(species)) {
  return true;
  }
else {
  return false;
  }

