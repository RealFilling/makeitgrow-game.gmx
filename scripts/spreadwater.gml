var px, py, dir, thispressure, adjx, adjy;
px = argument0;
py = argument1;
thisbuilding = getspecies(global.plants[px,py]);
switch (thisbuilding) {
  case BLDG_PIPEPUMP:
    if (iswateradjacent(px,py)) {
      setpipepressure(px,py,PUMPPRESSURE);
      }
  default:
    break; // Pass through other building cases
  }
thispressure = getpipepressure(px,py);
if (thispressure <= 0) {
  return 0; // Nothing to spread.
  }
for (dir=0; dir<6; dir += 1) {
  hexadj(px,py,dir);
  adjx = global.hexx;
  adjy = global.hexy;
  if (!coordsinbounds(adjx,adjy)) {
    continue;
    }
  if (getpipeexist(adjx,adjy) == 0) {
    continue;
    }
  if (getpipepressure(adjx,adjy) < thispressure) {
    setpipepressure(adjx,adjy,thispressure-1);
    }
  }
return 0;

