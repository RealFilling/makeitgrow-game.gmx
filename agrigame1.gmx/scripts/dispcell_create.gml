image_index = 0;
image_speed = 0;
//image_xscale = 2.0;
//image_yscale = 2.0;
depth = (((BOARDHEIGHT*4) - (y div 8)) * 4) + BOARDMINDRAWDEPTH;
boardx = x div TILEWIDTH;
boardy = y div TILEHEIGHT;

bkgdtileid = tile_add(0,TILEWIDTH*5,0,TILEWIDTH,TILEHEIGHT,x,y,1000000); // Ultimate background
//tile_set_scale(bkgdtileid,2,2);
self.soildrawdisp = 7;
