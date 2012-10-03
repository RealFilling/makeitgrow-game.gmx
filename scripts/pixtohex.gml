var pixx, pixy;
pixx = argument0;
pixy = argument1;

global.hexy = pixy div ETILEHEIGHT;

if (lowbitc(global.hexy) == 0) {
  global.hexx = pixx div TILEWIDTH;
  }
else {
  global.hexx = (pixx + (TILEWIDTH/2)) div TILEWIDTH;
  }
