if (!farmer_energycheck(ENERGY_CALLCOST)) {
  return false; // Too tired
  }
global.a_callx = argument0;
global.a_cally = argument1;
global.a_callage = 0;
enqueueticker("Calling animals....");
// Play call sound here.

