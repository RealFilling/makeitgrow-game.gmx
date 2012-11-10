var dir, strength, bestdir, beststrength, dirtobeacon, dirtoherd, workx, worky;
// Old:
// animal_move(irandom_range(0,5));

// New:
// Depends on animal context
for (dir = 0; dir<6; dir+=1) {
  strength = irandom_range(0,19);
  }
if (avgnearbyanimalpos(boardx, boardy, animaltype)) {
  workx = global.hexx;
  worky = global.hexy;
  dirtoherd = closestdir(boardx, boardy, workx, worky);
  strength[dirtoherd] += herdstrength;
  }
if (global.callage != -1) {
  dirtobeacon = closestdir(boardx, boardy, global.a_callx, global.a_cally);
  if (dirtobeacon != -1) {
    strength[dirtobeacon] += callstrength * ((MAXCALLAGE - global.a_callage)/2);
    }      
  }

beststrength = -1;
for (dir = 0; dir<6; dir+=1) {
  if (strength[dir] > beststrength) {
    beststrength = strength[dir];
    bestdir = dir;
    }
  }

animal_move(dir);

