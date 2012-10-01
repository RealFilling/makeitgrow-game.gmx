var planttoplace, placex, placey, destination, species, thistill;
planttoplace = argument0;
placex = argument1;
placey = argument2;

species = getspecies(planttoplace);

if ((placex < 0) or (placex >= BOARDWIDTH) or (placey < 0) or (placey >= BOARDHEIGHT)) {
  return false; // Out of bounds
  }
if (global.water[placex,placey] >= 1) {
  return false; // There's a lake here
  }
if (adjfullrespecttrees(placex,placey) >= crowdbirthlimit[species]) {
  return false; // Too crowded for this species
  }
  
thistill = gettill(placex,placey);
if (!percentchance(germinationbase[species]+global.tillbonus[thistill])) {
  return false; // Ground wasn't tilled enough for plant to find root
  }

destination = global.plants[placex,placey];

if (!isempty_growth(getspecies(planttoplace),getspecies(destination))) {
  return false; // Something's already there
  }
placeplant(placex,placey,planttoplace,false);
//global.plants[placex,placey] = planttoplace;
global.harvest[placex,placey] = 0
hextopix(placex,placey);
instance_create(global.hexx,global.hexy-(global.height[placex,placey]*HEIGHTPIX),obj_spreadeffect);
return true;
