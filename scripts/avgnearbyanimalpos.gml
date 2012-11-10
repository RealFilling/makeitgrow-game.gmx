var a, count, thisx, thisy, distance, animaltype, thisanimal, avgxtotal, avgytotal;
thisx = argument0;
thisy = argument1;
animaltype = argument2;
avgxtotal = 0;
avgytotal = 0;
count = 0;
for (a=0; a<global.animalcount; a+=1) {
  if (animaltype != global.animallist[a]) {
    continue;
    }
  thisanimal = global.animalinstances[a];
  distance = pythagorean(thisx,thisy,thisanimal.boardx,thisanimal.boardy);
  if (distance > MAXANIMALAVGRANGE) {
    continue;
    }
  avgxtotal += thisanimal.boardx;
  avgytotal += thisanimal.boardy;
  count += 1;
  }
if (count == 0) {
  global.hexx = thisx;
  global.hexy = thisy;
  return false;
  }
else {
  global.hexx = avgxtotal / count;
  global.hexy = avgytotal / count;
  return true;
  }


