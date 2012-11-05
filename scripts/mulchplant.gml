var myx, myy, species, amyreplenish;
myx = argument0;
myy = argument1;
species = getspecies(global.plants[myx,myy]);
if (!isplant(species)) {
  return 0;
  }
amtreplenish = getamtmulch(getspecies(global.plants[myx,myy]),global.harvest[myx,myy]);
global.plants[myx,myy] = 0
addmineral(global.minreturn,amtreplenish,myx,myy); // global.minreturn set in getamtmulch()
global.harvest[myx,myy] = 0;
