var dir, lowestmin, mintosearch, thisx, thisy, adjx, adjy, thismin, soilval, thisminamt, lookforspecies, thisspecies;
thisx = argument0;
thisy = argument1;
mintosearch = argument2;
lookforspecies = argument3;
lowestmin = 99999;
for (dir=0; dir < 6; dir += 1) {
  hexadj(thisx,thisy,dir);
  adjx = global.hexx;
  adjy = global.hexy;
  if (!coordsinbounds(adjx,adjy)) {
    continue;
    }
  switch (mintosearch) {
    case RED:
      if ((lookforspecies == getspecies(global.plants[adjx,adjy])) or (lookforspecies == -1)) {
      thismin = getred(global.soil[adjx,adjy]);
      }
      break;
    case GREEN:
      if ((lookforspecies == getspecies(global.plants[adjx,adjy])) or (lookforspecies == -1)) {
        thismin = getgreen(global.soil[adjx,adjy]);
        }
      break;
    case BLUE:
      if ((lookforspecies == getspecies(global.plants[adjx,adjy])) or (lookforspecies == -1)) {
        thismin = getblue(global.soil[adjx,adjy]);
        }
      break;
    case COLORALL:
      if ((lookforspecies == getspecies(global.plants[adjx,adjy])) or (lookforspecies == -1)) {
        soilval = global.soil[adjx,adjy];
        thismin = min(getred(soilval),getgreen(soilval),getblue(soilval));
        }
      break;
    }
    if (thismin < lowestmin) {
      lowestmin = thismin;
      }
  }
return lowestmin;
