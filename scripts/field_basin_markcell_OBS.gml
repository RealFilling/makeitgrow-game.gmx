var cx1,cy1,cdepth,unassigned,blocked,result,dir,adjx,adjy;
cx1 = argument0;
cy1 = argument1;
cdepth = argument2;
basincount = argument3;
unassigned=-1;
blocked=-2;

if (!coordsinbounds(cx1,cy1)) {
  return false;
  }

if (global.height[cx1,cy1]>=cdepth) {
  global.bworkspace[cx1,cy1] = blocked;
  return false;
  }
else if (global.bworkspace[cx1,cy1] != unassigned) {
  return false;
  }
else {
  global.bworkspace[cx1,cy1] = cdepth;
  global.basinseedx[cdepth,basincount] = cx1; // This ends up getting written repeatedly, but is okay,
  global.basinseedy[cdepth,basincount] = cy1; //   the last one is still good.
  ds_map_add(global.heightlists,ctoh(cx1,cy1),cdepth);
  result = false;
  for (dir=0;dir<6;dir+=1) {
    hexadj(cx1,cy1,dir);
    adjx = global.hexx;
    adjy = global.hexy;
    result = result or field_basin_markcell_OBS(adjx,adjy,cdepth,basincount); // NOTE: recursion
    }
  }
return true;
