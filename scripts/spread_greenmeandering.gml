var species, sx, sy, ssubtype;
species = 6;
sx = argument0;
sy = argument1;
ssubtype = argument2;
//
if (ssubtype == 0) {
  trytoplaceplant(makeplant(species,1,0),sx,sy-1) //Up
  trytoplaceplant(makeplant(species,3,0),sx+1,sy) //Left
  trytoplaceplant(makeplant(species,5,0),sx,sy+1) //Down
  trytoplaceplant(makeplant(species,7,0),sx-1,sy) //Right
  }
else {
  if (irandom_range(0,5) != 0) {
    trytoplaceplant(makeplant(species,ssubtype,0),sx+dirxa[ssubtype-1],sy+dirya[ssubtype-1]);
    }
  else {
    newssubtype = (ssubtype-1) + irandom_range(-1,1);
    if (newssubtype < 0) {
      newssubtype = 7;
      }
    else if (newssubtype > 7) {
      newssubtype = 0;
      }
    thisplant = global.plants[sx,sy]; // Redefine current plant to grow into this spot.
    thisgrowth = getgrowth(thisplant);
    global.plants[sx,sy] = makeplant(species,newssubtype+1,thisgrowth);
    //
    trytoplaceplant(makeplant(species,newssubtype+1,0),sx+dirxa[newssubtype],sy+dirya[newssubtype]);
    }
  }


