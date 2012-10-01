var thisx, thisy, destx, desty, bestdir, index, bestdist, thisdist;
thisx = argument0;
thisy = argument1;
destx = argument2;
desty = argument3;
if ((thisx == destx) and (thisy == desty)) {
  global.cdisttogo = 0;
  return -1;
  }

bestdir = -1;
dirindex = 0;
bestdist = 9999999999;
thisdist = 9999999999;

for (index = 0; index < 6; index += 1) {
  hexadj(thisx, thisy, index); 
  thisdist = pythagorean(global.hexx,global.hexy,destx,desty);
  if thisdist < bestdist {
    bestdist = thisdist;
    bestdir = index;
    }
  }
global.cdisttogo = bestdist;
return bestdir;
