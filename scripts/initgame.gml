// Set up timekeeping variables
inittime();
// Needs to come after inittime()
initweather();
resetbuildingtotals();

// Initialize difficulty
initdifficulty();

// Initialize weather
figureinitialweather();

// Game state info
global.energy = ENERGY_STARTING;
global.money = MONEY_STARTING;
for (a=0;a<NUMPLANTTYPES+1;a+=1) { // +1 is to account for empty
  global.pharvest[a] = 0; // index is plant species
  }
for (a=0;a<NUMMINERALS;a+=1) {
  global.pmulch[a] = 0; // index is mineral
  }

// Initialize inventory system
initinventory();
// New game starting items
starterinventory();

// Generate a new field
field_initmap();           // Prepare the map arrays
field_generate();          // Generate a random map
field_dryuntil(50);       // Remove some water
    
// Starting weather type
global.currentweather = WEATHER_CLEAR;

// Initialize building totals
resetbuildingtotals();

// Initialize animals & capacities
initanimals();

// Pre-seed the game world
if (!global.skippreseed) {
  field_preseed();
  }
// Run world generations somewhat at start
if (global.skipprecalc) {
  global.hstime = 0;
  }
else {
  global.hstime = (global.tickspermonth * 2)+537;
  }



