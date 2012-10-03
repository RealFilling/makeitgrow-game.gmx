var wx,wy,change,newchange,sub,impatience,sx,sy,ewx,ewy;
change = 0;
newchange = 0;
impatience = argument0;
sx[0] = 0; sy[0] = 0;
sx[1] = 1; sy[1] = 1;
sx[2] = 0; sy[2] = 1;
sx[3] = 1; sy[3] = 0;
for (sub=0;sub<4;sub+=1) {
  for (wy=0;wy<BOARDHEIGHT;wy+=2) {
    for (wx=0;wx<BOARDWIDTH;wx+=2) {
      ewx = wx+sx[sub];
      ewy = wy+sy[sub];
      newchange = field_waterturn(ewx,ewy,impatience);
      change += newchange;
      if (newchange != 0) {
        if ((ds_map_find_value(global.splashmap,ctoh(ewx,ewy)) == -1) and 
          (global.water[ewx,ewy] == 0)) {
          hextopix(ewx,ewy);
          //ds_map_add(global.splashmap,ctoh(ewx,ewy),instance_create(global.hexx,global.hexy-(global.height[ewx,ewy]*HEIGHTPIX),obj_splash));
          }
        }
      //global.debugcounter = ds_map_find_value(global.splashmap,ctoh(ewx,ewy));
      }
    }
  }
return change;
