var a, dir, strength, bestdir, beststrength, dirtobeacon, dirtoherd, workx, worky;
// Old:
// animal_move(irandom_range(0,5));

// New:
// Depends on animal context
for (dir = 0; dir<6; dir+=1) {
  strength[dir] = irandom_range(0,19);
  }
if (avgnearbyanimalpos(boardx, boardy, animaltype)) {
  workx = global.returnx;
  worky = global.returny;
  dirtoherd = closestdir(boardx, boardy, workx, worky);
  if (dirtoherd != -1) {
    strength[dirtoherd] += herdstrength;
    }
  }

if (isnexttobig(boardx,boardy,-1)) {
  for (a=2; a<5; a+=1) {
    strength[(global.adjbiganimaldir + a) mod 6] += BIGANIMALREPELSTRENGTH;
    }
  }
if (global.a_callage != -1) {
  dirtobeacon = closestdir(boardx, boardy, global.a_callx, global.a_cally);
  if (dirtobeacon != -1) {
    strength[dirtobeacon] += callstrength * ((MAXCALLAGE - global.a_callage)/MAXCALLAGEDIV);
    }      
  }

beststrength = -1;
for (dir = 0; dir<6; dir+=1) {
  if (strength[dir] > beststrength) {
    beststrength = strength[dir];
    bestdir = dir;
    }
  }

if ((bestdir >= 0) and (bestdir <= 5)) {
  animal_move(bestdir);
  }

