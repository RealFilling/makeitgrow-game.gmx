var bx,by,count;
count = 0;
for (bx=0;bx<BOARDWIDTH;bx+=1) {
  for (by=0;by<BOARDHEIGHT;by+=1) {
    if (global.water[bx,by] >= 1) {
      count += 1;
      }
    }
  }
return count;
