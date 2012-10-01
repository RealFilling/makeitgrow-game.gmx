var checkx, checky, thisheight;
checkx = argument0;
checky = argument1;
thisheight = argument2;
if (!coordsinbounds(checkx,checky)) {
  return false;
  }
else if (global.water[checkx,checky] >= 1) {
  return false;
  }
else if ((global.height[checkx,checky] - thisheight) > 6) { // Too high to climb
  return false;
  }
return true;
