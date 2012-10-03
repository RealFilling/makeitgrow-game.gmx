cost = argument0;
if (global.energy >= cost) {
  global.energy -= cost;
  if (cost > 1) {
    global.energyflasheffect = 3;
    }
  return true;
  }
else {
  return false;
  }
