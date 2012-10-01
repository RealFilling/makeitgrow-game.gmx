var a, bx, by, thisplant, count;
bx = argument0;
by = argument1;
//thisplant = argument2;
count = 0;
for (a=0;a<6;a+=1) {
  hexadj(bx,by, a);
  if (!coordsinbounds(global.hexx,global.hexy)) {
    continue;
    }
  if (isempty_growth(P_REDX, getspecies(global.plants[global.hexx, global.hexy])) == false) {
    count += 1;
    }
  }
return count;
