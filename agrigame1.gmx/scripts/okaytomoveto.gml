var mx, my;
mx = argument0;
my = argument1;
if (!coordsinbounds(mx,my)) {
  return false;
  }
species = getspecies(global.plants[mx,my]);
if (isbuilding(species) or isshadow(species) or istree(species)) {
  return false;
  }
if (global.water[mx,my] >= 1) {
  return false;
  }
if (abs(global.height[boardx, boardy] - global.height[mx,my]) > 5) {
  return false;
  }
if ((getgreenh(mx,my) == 1) and (!isplayer)) {
  return false;
  }
if (isanimalhere(mx,my) or isplayerhere(mx,my)) {
  return false;
  }
return true;
