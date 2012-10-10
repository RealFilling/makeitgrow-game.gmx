var bx, by;
for (by=1;by<BOARDHEIGHT-1;by+=1) {
  for (bx=1;bx<BOARDWIDTH-1;bx+=1) {
    if (global.water[bx,by] >= 1) {
      continue;
      }
    else if (!isempty(global.plants[bx,by])) {
      continue; // Sanity check, in case we preseed with other things as an earlier step, later.
      }
    if (irandom_range(0,7) == 0) {
      global.plants[bx,by] = makerandomplant();
      }
    }
  }
