var planttoplace, placex, placey, destination;
planttoplace = argument0;
placex = argument1;
placey = argument2;

if ((placex < 0) or (placex >= BOARDWIDTH) or (placey < 0) or (placey >= BOARDHEIGHT)) {
  return false; // Out of bounds
  }

destination = global.plants[placex,placey];

if (!isempty_growth(getspecies(planttoplace),getspecies(destination))) {
  return false; // Something's already there
  }
placeplant(placex,placey,planttoplace,false);
//global.plants[placex,placey] = planttoplace;
global.harvest[placex,placey] = 0
return true;
