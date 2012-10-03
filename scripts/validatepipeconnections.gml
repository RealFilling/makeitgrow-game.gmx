var px, py, dir, adjx, adjy, connections;
px = argument0;
py = argument1;

connections = 0;
for (dir=0;dir<6;dir+=1) {
  hexadj(px,py,dir);
  adjx = global.hexx;
  adjy = global.hexy;
  if (!coordsinbounds(adjx,adjy)) {
    continue;
    }
  if (getpipeexist(adjx,adjy) == 1) {
    connections |= (1 << dir);
    }
  }
//show_message ("validatepipeconnections() result: "+string(connections));
setpipeconnections(px,py,connections);


