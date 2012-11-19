cost = argument0;
if (global.money >= cost) {
  global.money -= cost;
  return true;
  }
else {
  return false;
  }
