var mineral, amttoeat, myx, myy, checkx, checky, rangetolook, tries, redo, eaten, red, green, blue;
var dir, longrange;
mineral = argument0;
amttoeat = argument1;
myx = argument2;
myy = argument3;
longrange = argument4; // 0:one tile range, 1: tree pointing up, 2: tree pointing down, 3: two tile range
// rangetolook = argument4
// tries = argument5

// rangetolook = 3;
//
tries = global.rangetries[longrange];
redo = false;
eaten = 0;

for (try=0;try<tries;try+=1) {
  if ((try == 0) and (longrange == 0)) { //Only normal plants begin search on current location.
    checkx = myx;
    checky = myy;
    }
  else {
    if (longrange == 0) {
      //dir = irandom_range(6);
      hexadj(myx,myy,irandom_range(0,5));
      checkx = global.hexx;
      checky = global.hexy;
      }
    else if (longrange == 1) {
      hextreeup(myx,myy,irandom_range(0,10)+1);
      checkx = global.hexx;
      checky = global.hexy;
      } 
    else if (longrange == 2) {
      hextreedown(myx,myy,irandom_range(0,10)+1);
      checkx = global.hexx;
      checky = global.hexy;
      }
    else {
      hextwoadj(myx,myy,irandom_range(0,16)+1);
      checkx = global.hexx;
      checky = global.hexy;
      }
    if (!coordsinbounds(checkx,checky)) {
      if (redo == false) {
        redo = true;
        tries += 1;
        }
      continue;
      }
  thissoil = global.soil[checkx,checky];
  if (mineral == 0) {
    red = getred(thissoil);
    if (irandom_range(1,RANDOMMINERALEAT)<=red) {
      thissoil -= 1;
      eaten += 1;
      if (fiftyfifty() and (getgreen(thissoil) < 255)) {
        thissoil += 256;        
        }
      }
      global.soil[checkx,checky] = thissoil;
      try -= 1;
    }
  else if (mineral == 1) {
    green = getgreen(thissoil);
    if (irandom_range(1,RANDOMMINERALEAT)<=green) {
      thissoil -= 256;
      eaten += 1;
      if (fiftyfifty() and (getblue(thissoil) < 255)) {
        thissoil += 65536;        
        }
      }
      global.soil[checkx,checky] = thissoil;
      try -= 1;
    }
  else if (mineral == 2) {
    blue = getblue(thissoil);
    if (irandom_range(1,RANDOMMINERALEAT)<=blue) {
      thissoil -= 65536;
      eaten += 1;
      if (fiftyfifty() and (getred(thissoil) < 255)) {
        thissoil += 1;        
        }
      }
      global.soil[checkx,checky] = thissoil;
      try -= 1;
    }
  if (eaten >= amttoeat) {
    return true;
    }
  redo = false;
  }
}
return false;
//return true;

