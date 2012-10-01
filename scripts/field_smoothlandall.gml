// NOTE: Seems to cause the game to lock up when run as Windows EXE
var fx, fy;
for (fy=0;fy<BOARDHEIGHT;fy+=1) {
  for (fx=0;fx<BOARDWIDTH;fx+=1) {
    field_smoothlandsev(fx,fy,0);
    }
  }

