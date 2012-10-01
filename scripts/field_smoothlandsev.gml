var sx, sy, previouschange, newchange, thisheight, avgheight, dir, heightsum, heightnum, nsx, nsy;
sx = argument0;
sy = argument1;
previouschange = argument2;
heightsum = 0;
heightnum = 0;
newchange = previouschange + field_smoothlandone(sx,sy,0);
for (dir=0; dir<6; dir+=1) {
  hexadj(sx,sy,dir);
  nsx = global.hexx;
  nsy = global.hexy;
  if (!coordsinbounds(nsx,nsy)) {
    continue;
    }
  newchange += field_smoothlandone(nsx,nsy,0);
  }
return newchange;

