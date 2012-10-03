var a, bx, by, thisplant, count, species;
bx = argument0;
by = argument1;
//thisplant = argument2;
count = 0;
for (a=0;a<6;a+=1) {
  hexadj(bx,by, a);
  if (!coordsinbounds(global.hexx,global.hexy)) {
    continue;
    }
  species = getspecies(global.plants[global.hexx,global.hexy]);
  if (istree(species) or isshadow(species)) {
    //count += 7; // A ludicrous number,  but one that needs to be overcome by a tree's
    //               crowing limit or otherwise a tree's extra hexes will crowd itself out.
    return 8;
    }
  if (isempty_growth(P_REDX, species) == false) {
    count += 1;
    }
  }
return count;
