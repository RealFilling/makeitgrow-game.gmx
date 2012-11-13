var sx, sy, searchfor, a, distance;
sx = argument0;
sy = argument1;
avgxtotal = 0;
avgytotal = 0;
avgcount = 0;
avgflag = false;
searchfor = argument2;
distance = argument3; // 1-4

// This function takes a SEARCHFOR_* parameter as argument2.  This is fairly flexible;
//   check the constants list to get an idea for the things that can be searched for.

if (!animalsearchfortype(searchfor)) { // Animals typically search for other instances of themselves,
                                       //   and so need to ignore their own position, lest they find
                                       //   themselves.  This will need to be expanded as more
                                       //   animals are added.
  if (searchspot(sx,sy,searchfor)) {
    return true; // location already set by searchspot()
    }
  }
avgflag = herdsearchfortype(searchfor);
  
for (a=0; a<global.searchdist[distance]; a+=1) {
  hexadj(sx, sy, global.searchdir[a]);
  sx = global.hexx;
  sy = global.hexy;
  if (!coordsinbounds(sx,sy)) {
    continue;
    }
  if (searchspot(sx,sy,searchfor)) {
    if (!avgflag) {
      return true; // location already set by searchspot()
      }
    else {
      avgxtotal += global.returnx;
      avgytotal += global.returny;
      avgcount += 1;
      }
    }
  }
if (!avgflag) {
  return false;
  }
else {
  if (avgcount == 0) {
    global.returnx = sx;
    global.returny = sy;
    return false;
    }
  else {
    global.returnx = avgxtotal div avgcount;
    global.returny = avgytotal div avgcount;
    return true;
    }
  }

