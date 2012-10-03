var xa,ya,redplus,greenplus,blueplus,y1,x1,yb,xb,soilvalue,soilred,soilgreen,soilblue;
//Generate starting soil map
for (ya=0;ya<BOARDWIDTH;ya+=1) {
  for (xa=0;xa<BOARDHEIGHT;xa+=1) {
    redplus = irandom_range(0,3);
    greenplus = irandom_range(0,3);
    //if (greenrandom == 0) {greenplus = 1;}
    //  else {greenplus = 0;}
    blueplus = irandom_range(0,3);
    //if (bluerandom == 0) {blueplus = 1;}
    //  else {blueplus = 0;}
    for (y1=-3;y1<4;y1+=1) {
      for (x1=-3;x1<4;x1+=1) {
      yb = ya + y1;
      xb = xa + x1;
      if ((yb<0)or(yb>=BOARDHEIGHT)or(xb<0)or(xb>=BOARDWIDTH)) {
        continue;
        }
      soilvalue = global.soil[xb,yb]
      soilred = getred(soilvalue);
      soilgreen = getgreen(soilvalue);
      soilblue = getblue(soilvalue);
      soilred = min(soilred+redplus,255)
      soilgreen = min(soilgreen+greenplus,255)
      soilblue = min(soilblue+blueplus,255)
      //soilred += redplus;
      //soilgreen += greenplus;
      //soilblue += blueplus;
      global.soil[xb,yb] = makesoil(soilred,soilgreen,soilblue);
      }
    }
  }
}

