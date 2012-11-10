if (!farmer_energycheck(ENERGY_CALLCOST)) {
  return false; // Too tired
  }
global.callx = argument0;
global.cally = argument1;
global.callage = 0;
enqueueticker("Calling animals....");
// Play call sound here.

