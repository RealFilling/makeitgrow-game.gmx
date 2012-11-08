var bx, by, dir, bestx, besty, bestsuitability, thisx, thisy, thissuitability, thisspecies;
// Priorities:
// - Tile must be in bounds.  Breaks if all adjacent tiles are out of bounds.
// - Top priority is an empty tile
// - If not available, then a tile containing a wild plant
// - If not available, then any tile will do
bx = argument0;
by = argument1;

bestx = -1;
besty = -1;
bestsuitability = -1;
thisx = -1;
thisy = -1;
thisspecies = -1;
thissuitability = -1;
for (dir=0; dir<6; dir+=1) {
  hexadj(bx,by,dir);
  thisx = global.hexx;
  thisy = global.hexy;
  if (!coordsinbounds(thisx,thisy)) {
    continue;
    }
  if (global.water[thisx,thisy] >= 1) {
    continue;
    }
  thisspecies = getspecies(global.plants[thisx,thisy]);
  thissuitability = 0;
  if (isempty(getspecies(thisspecies))) {
    thissuitability += 3;
    }
  else if (getgrowth(global.plants[thisx,thisy]) == GROWTH_DEAD) {
    thissuitability += 2;
    }
  else if (iswild[thisspecies]) {
    thissuitability += 1;
    }
  if (thissuitability > bestsuitability) {
    bestx = thisx;
    besty = thisy;
    bestsuitability = thissuitability;
    }
  }
global.hexx = bestx;
global.hexy = besty;
return bestsuitability;
