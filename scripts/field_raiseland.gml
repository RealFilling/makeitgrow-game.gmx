var rx, ry, previouschange, newchange, thisheight, dir, nrx, nry, dragflag;
rx = argument0;
ry = argument1;
previouschange = argument2;
dragflag = argument3;
thisheight = global.height[rx,ry];
if (thisheight >= MAXHEIGHT) {
  return previouschange;
  }
thisheight += 1;
newchange = previouschange+1;
global.height[rx,ry] = thisheight;
placeplant(rx,ry,0,true);
global.plants[rx,ry] = 0; // Destroys plants and compost
global.harvest[rx,ry] = 0; // Destroys harvest
settill(rx,ry,0); // Mess up tilling

for (dir = 0; dir < 6; dir +=1) {
  hexadj(rx,ry,dir);
  nrx = global.hexx;
  nry = global.hexy;
  if (!coordsinbounds(nrx,nry)) {
    continue;
    }
  if ((thisheight - global.height[nrx,nry]) > MAXHEIGHTDIFF) {
    if (dragflag == true) {
      newchange += field_raiseland(nrx,nry,0,true);
      }
    else {
      newchange -= 1;
      global.height[rx,ry] -= 1;
      return newchange;
      }
    }
  }
// Revalidate water  
field_dowater();
//field_waterunsettle();  
return newchange;

