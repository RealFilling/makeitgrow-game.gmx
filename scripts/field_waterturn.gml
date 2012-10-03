var wx,wy,dirrandom,dirc,dir,ox,oy,change,thiswater,thisheight,impatience;
wx=argument0;
wy=argument1;
impatience=argument2 div 20;
change = 0;
if (global.water[wx,wy] == 0) {
  return 0;
  }
placeplant(wx,wy,0,true);
//global.plants[wx,wy] = 0; // Water destroys plants & compost
global.harvest[wx,wy] = 0; // Water destroys harvest
settill(wx,wy,0); // Water messes up tilling

dirrandom = irandom_range(0,5);  
for (dirc=0;dirc<6;dirc+=1) {
  thiswater = global.water[wx,wy];
  if (thiswater == 0) {
    break;
    }
  thisheight = global.height[wx,wy] + thiswater;
  dir = (dirc+dirrandom) mod 6;
  hexadj(wx,wy,dir);
  ox = global.hexx;
  oy = global.hexy;
  if (!coordsinbounds(ox,oy)) {
    // Water always flows off-map if adjacent.
    change += 1;
    global.water[wx,wy] -= 1;
    }
  else if (thisheight > (global.height[ox,oy] + global.water[ox,oy])) {
    change += 1;
    global.water[wx,wy] -= 1;
    if (irandom_range(0,5) >= impatience) {
      // Help resolve cases where two cells trade single levels of water back and forth.
      global.water[ox,oy] = min(global.water[ox,oy]+1,15);
      }
    }
  }
return change;
