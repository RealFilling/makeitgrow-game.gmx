var wx,wy,change,overallchange,sub,impatience,sx,sy;
change = 1;//1 when while(change>0) is in place
overallchange = 0;
impatience = 0;
global.splashmap = ds_map_create();
//ds_map_copy(global.splashmap, global.emptymap);
//impatience = global.waterimpatience;
while (change > 0) {
  change = field_waterframe(impatience);
  impatience += 1;
  overallchange += change;
  }
//if (overallchange == 0) {
//  field_watersettle();
//  }
ds_map_destroy(global.splashmap);
return overallchange;
