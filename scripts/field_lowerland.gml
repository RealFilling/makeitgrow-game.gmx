var lx, ly, previouschange, newchange, thisheight, dir, nlx, nly, dragflag;
lx = argument0;
ly = argument1;
previouschange = argument2;
dragflag = argument3;
thisheight = global.height[lx,ly];
if (thisheight <= 0) {
  return previouschange;
  }

thisheight -= 1;
newchange = previouschange+1;
global.height[lx,ly] = thisheight;
placeplant(lx,ly,0,true);
//global.plants[lx,ly] = 0; // Destroys plants and compost
global.harvest[lx,ly] = 0; // Destroys harvest
settill(lx,ly,0); // Mess up tilling

for (dir = 0; dir < 6; dir +=1) {
  hexadj(lx,ly,dir);
  nlx = global.hexx;
  nly = global.hexy;
  if (!coordsinbounds(nlx,nly)) {
    continue;
    }
    
  if ((global.height[nlx,nly] - thisheight) > MAXHEIGHTDIFF) {
    if (dragflag == true) {
      newchange += field_lowerland(nlx,nly,0,true);
      }
    else {
      newchange -= 1;
      global.height[lx,ly] += 1;
      return newchange;
      }
    }
  }
// Revalidate water  
field_dowater();
//field_waterunsettle();  
return newchange;

