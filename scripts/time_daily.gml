daily_updateweather();
global.energy = min(global.energy + ENERGY_DAILY,5000);

savegame();

//enqueueticker("It's a new day!");
