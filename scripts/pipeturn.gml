var px, py, adjx, adjy, dir;
px = argument0;
py = argument1;
spreadwater(px,py);
for (dir=0; dir<6; dir+=1) {
  hexadj(px,py,dir);
  adjx = global.hexx;
  adjy = global.hexy;
  if (!coordsinbounds(adjx,adjy)) {
    continue;
    }
  if (getpipeexist(adjx,adjy) == 0) {
    continue;
    }
  spreadwater(adjx,adjy);
  }
if (getpipepressure(px,py) > 0) {
  addmoist(px,py,32);
  }


