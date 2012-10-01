var sx, sy, previouschange, newchange, thisheight, avgheight, dir, heightsum, heightnum, nsx, nsy;
sx = argument0;
sy = argument1;
previouschange = argument2;
thisheight = global.height[sx,sy];
heightsum = 0;
heightnum = 0;
for (dir=0; dir<6; dir+=1) {
  hexadj(sx,sy,dir);
  nsx = global.hexx;
  nsy = global.hexy;
  if (!coordsinbounds(nsx,nsy)) {
    continue;
    }
  heightsum += global.height[nsx,nsy];
  heightnum += 1;
  }
avgheight = heightsum div heightnum;
if (avgheight > thisheight) {
  newchange = previouschange + field_raiseland(sx,sy,0,true);
  }
else if (avgheight < thisheight) {
  newchange = previouschange + field_lowerland(sx,sy,0,true);
  }
else {
  newchange = previouschange;
  }
return newchange;

