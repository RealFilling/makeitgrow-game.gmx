var bx, by, lowest;
lowest = 999;
for (by=0;by<BOARDHEIGHT;by+=1) {
  for (bx=0;bx<BOARDWIDTH;bx+=1) {
    if (getred(global.soil[bx,by]) < lowest) {
      lowest = getred(global.soil[bx,by]);
      }
    }
  }
return lowest;
