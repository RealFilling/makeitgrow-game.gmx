var dir, bigdir, ignoredir, thisx, thisy, thatx, thaty;
thisx = argument0;
thisy = argument1;
ignoredir = argument2;
for (dir=0; dir<6; dir+=1) {
  if (dir == ignoredir) {
    continue;
    }
  hexadj(thisx, thisy);
  if (ds_map_exists(global.animallookup, hashcoords(thatx,thaty))) {
    return ds_map_find_value(global.animallookup, hashcoords(thatx, thaty));
    }
  }
return -1;
