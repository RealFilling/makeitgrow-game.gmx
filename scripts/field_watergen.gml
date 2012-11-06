var xa, ya;

for (ya=0;ya<BOARDHEIGHT;ya+=1) {
  for (xa=0;xa<BOARDWIDTH;xa+=1) {
    global.water[xa,ya] = max(0,irandom_range(-2,2));
    }
  }

