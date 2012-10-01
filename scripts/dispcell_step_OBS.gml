var newsoildisp;

//globalvar plants;
plant = global.plants[boardx,boardy]
image_index = (getspecies(plant)*8)|getgrowth(plant)

// Soil update
newsoildisp = soiltiletodisp(global.soil[self.boardx,self.boardy]);

if (soildrawdisp != newsoildisp) {
  tile_delete(bkgdtileid);
  bkgdtileid = tile_add(bkgd_soiltiles,newsoildisp*TILEWIDTH,0,TILEWIDTH,TILEHEIGHT,x,y,1000000);
  //tile_set_scale(bkgdtileid,2,2);
  soildrawdisp = newsoildisp;
  }



