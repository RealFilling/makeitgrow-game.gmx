var dir, bigdir, bigsfound, ignoredir, thisx, thisy, thatx, thaty, animalfound;
thisx = argument0;
thisy = argument1;
ignoredir = argument2;
bigsfound = 0;
bigdir = -1;
for (dir=0; dir<6; dir+=1) {
  if (dir == ignoredir) {
    continue;
    }
  hexadj(thisx, thisy);
  animalfound = ds_map_find_value(global.animallookup, hashcoords(global.hexy, global.hexy));
  if (animalfound == 0) {
    continue;
    }
  if (animalfound.isbig) {
    bigsfound += 1;
    if (irandom_range(1,bigsfound) == 1) {
      bigdir = dir;
      }
    }
  }
return bigdir;
