var a,xa,ya,untried,impossible,unassigned,blocked,heightlists,height,basincounter;

untried = -1;
impossible = -2;
//
unassigned = -1;
blocked = -2;

// Array of elevation spots
for (a=0;a<=MAXHEIGHT;a+=1) {
  global.heightlists[a] = ds_map_create();
  global.basincount[a] = 0;
  }

// Find contiguous regions at each height using a recursive floodfill algorithm.  
for (height=0;height<=MAXHEIGHT;height+=1) {
  basincounter = 0;
  field_basin_makeworkspace_OBS();
  for (ya=0;ya<BOARDHEIGHT;ya+=1) {
    for (xa=0;xa<BOARDWIDTH;xa+=1) {
      result = field_basin_markcell_OBS(xa,ya,height,basincounter);
      if (result == true) {
        basincounter += 1;
        }
      }
    }
    global.basincount[height] = basincounter; // Number of basins at this height
  }

// Now find the higher-level regions above the current basin.
for (height=0;height<=MAXHEIGHT;height+=1) {
  
  }
  
// SO:
// global.heightlists is a series of ds_maps with coordinate keys (encoded with ctoh) and basin number values,
// global.basincount[height] is the number of basins at that height, and
// global.basinup[height,basin] is the number of the basin above the current one.
// global.basinseedx[height,basin] and
// global.basinseedy[height,basin] are the location of one spot in each basin, from which we can figure
//   out which higher-level basin is above this one.
   


