var xa,ya,heightminus,x1,y1,xb,yb;
//Generate starting height map
for (ya=-(HILLSIZERANGE-1);ya<BOARDWIDTH+(HILLSIZERANGE);ya+=1) {
  for (xa=-(HILLSIZERANGE-1);xa<BOARDHEIGHT+(HILLSIZERANGE);xa+=1) {
    heightminus = irandom_range(0,1);
    for (y1=-HILLSIZERANGE;y1<(HILLSIZERANGE+1);y1+=1) {
      for (x1=-HILLSIZERANGE;x1<(HILLSIZERANGE+1);x1+=1) {
      yb = ya + y1;
      xb = xa + x1;
      if ((yb<0)or(yb>=BOARDHEIGHT)or(xb<0)or(xb>=BOARDWIDTH)) {
        continue;
        }
      global.height[xb,yb] = max(0,global.height[xb,yb]-heightminus);
      }
    }
  }
}

