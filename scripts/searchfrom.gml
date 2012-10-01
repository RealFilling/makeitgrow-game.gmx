var sx, sy, searchfor, a, distance;
sx = argument0;
sy = argument1;
searchfor = argument2;
distance = argument3; // 1-4

if (searchspot(sx,sy,searchfor)) {
  return true; // location already set by searchspot()
  }

for (a=0; a<global.searchdist[distance]; a+=1) {
  hexadj(sx, sy, global.searchdir[a]);
  sx = global.hexx;
  sy = global.hexy;
  if (!coordsinbounds(sx,sy)) {
    continue;
    }
  if (searchspot(sx,sy,searchfor)) {
    return true; // location already set by searchspot()
    }
  
  }
return false;
