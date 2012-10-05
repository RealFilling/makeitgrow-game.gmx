var px, py, niche, soilminerals, soilsum;
px = argument0;
py = argument1;
niche = argument2;

// This function returns an amount to reduce the effect of seasonal
//   misalignment.
switch (niche) {
  case NICHE_NONE:
    return 0;
    break;
  case NICHE_HEIGHT:
    // Height maximum is 47, resulting range is -6 - 17.
    return (global.height[px,py] div 2)-6;
    break;
  case NICHE_HEIGHTNEG:
    return ((MAXHEIGHT div 2)-(global.height[px,py] div 2))-6;
    break;
  case NICHE_MOISTURE:
    // Moisture maximum is 63, resulting range is -5 - 16
    return (global.moisture[px,py] div 3) - 5;
    break;
  case NICHE_MOISTURENEG:
    return ((MAXMOIST div 3) - (global.moisture[px,py] div 3)) - 5;
    break;
  case NICHE_MINERALSUM:
    soilminerals = global.soil[px,py];
    soilfactor = (getred(soilminerals) + getgreen(soilminerals) + getblue(soilminerals)) div 40;
    // Maximum soil is 765, after calc range is -4 to 15.
    return (soilfactor div 40) - 4;
    break;
  case NICHE_MINERALSUMNEG:
    soilminerals = global.soil[px,py];
    soilfactor = (getred(soilminerals) + getgreen(soilminerals) + getblue(soilminerals)) div 40;
    return (19-(soilfactor div 40)) - 4;
    break;
  }
