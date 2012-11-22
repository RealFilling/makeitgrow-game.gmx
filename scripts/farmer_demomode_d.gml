if (!global.demomode) {
  return false;
  }
for (y=1;y<BOARDHEIGHT;y+=1) {
  for (x=1;x<BOARDWITH;x+=1) {
    if (global.water[x,y] >= 1) {
      global.water[x,y] -= 1;
      }
    }
  }
return true;
