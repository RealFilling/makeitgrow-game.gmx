var dir, lowestmin, mintosearch, thisx, thisy, adjx, adjy, thismin, soilval, thisminamt;
thisx = argument0;
thisy = argument1;
mintosearch = argument2;
lowestmin = 999;
for (dir=0; dir < 6; dir += 1) {
  hexadj(thisx,thisy,dir);
  adjx = global.hexx;
  adjy = global.hexy;
  if (!coordsinbounds(adjx,adjy)) {
    continue;
    }
  switch (mintosearch) {
    case RED:
      thismin = getred(global.soil[adjx,adjy]);
      break;
    case GREEN:
      thismin = getgreen(global.soil[adjx,adjy]);
      break;
    case BLUE:
      thismin = getblue(global.soil[adjx,adjy]);
      break;
    case COLORALL:
      soilval = global.soil[adjx,adjy];
      thismin = min(getred(soilval),getgreen(soilval),getblue(soilval));
      break;
    }
    if (thismin < lowestmin) {
      lowestmin = thismin;
      }
  }
return lowestmin;
