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
trycount = 0; // DEBUG
redo = false;
eaten = 0;

for (try=0;try<tries;try+=1) {
  trycount += 1;
  if ((try == 0) and (longrange == 0)) { //Only normal plants begin search on current location.
    checkx = myx;
    checky = myy;
    }
  else {
    if (longrange == 0) {
      //dir = irandom_range(6);
      hexadj(myx,myy,irandom_range(0,5)); // Nearby tiles
      checkx = global.hexx;
      checky = global.hexy;
      }
    else if (longrange == 1) {
      hextreeup(myx,myy,irandom_range(0,10)+1); // Tree up pattern
      checkx = global.hexx;
      checky = global.hexy;
      } 
    else if (longrange == 2) {
      hextreedown(myx,myy,irandom_range(0,10)+1); // Tree down pattern
      checkx = global.hexx;
      checky = global.hexy;
      }
    else {
      hextwoadj(myx,myy,irandom_range(0,16)+1); // Up to two tiles away
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
  if (mineral == RED) {
    red = getred(thissoil);
    if (irandom_range(1,RANDOMMINERALEAT)<=red) {
      thissoil -= 1;
      eaten += 1;
      if (fiftyfifty() and (getgreen(thissoil) < 255)) {
        thissoil += 256;        
        }
      try -= 1;
      }
    global.soil[checkx,checky] = thissoil;
    }
  else if (mineral == GREEN) {
    green = getgreen(thissoil);
    if (irandom_range(1,RANDOMMINERALEAT)<=green) {
      thissoil -= 256;
      eaten += 1;
      if (fiftyfifty() and (getblue(thissoil) < 255)) {
        thissoil += 65536;        
        }
      try -= 1;
      }
    global.soil[checkx,checky] = thissoil;
    }
  else if (mineral == BLUE) {
    blue = getblue(thissoil);
    if (irandom_range(1,RANDOMMINERALEAT)<=blue) {
      thissoil -= 65536;
      eaten += 1;
      if (fiftyfifty() and (getred(thissoil) < 255)) {
        thissoil += 1;        
        }
      try -= 1;
      }
    global.soil[checkx,checky] = thissoil;
    }
  if (eaten >= amttoeat) {
    return true;
    }
  redo = false;
  }
}
return false;
//return true;

