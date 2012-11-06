var lookx, looky, bugx, bugy, species, newbug;
randomhex()
lookx = global.hexx;
looky = global.hexy;
species = getspecies(global.plants[lookx,looky]);
switch (species) {
  case P_CLIANTRO:
    newbug = B_REDBUG;
  default:
    // Still a 1-in-500 chance for a completely random bug.
    // Most of these will probably die, but once in a while....
    if (irandom_range(0,PLACEBUGODDS-1)==0) {
      newbug = irandom_range(0,6);
      if (newbug == B_BLUESPIDER) {
        return false; // art isn't ready yet
        }
      }
    else {
      return false;
      }
  }
randomborderhex();
bugx = global.hexx;
bugy = global.hexy;
addbugs(bugx,bugy,newbug,irandom_range(1,8));
return true;
  
