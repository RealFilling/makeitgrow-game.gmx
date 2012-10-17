var lookx, looky, bugx, bugy, species, newbug;
lookx = irandom_range(1,BOARDWIDTH-1);
looky = irandom_range(1,BOARDHEIGHT-1);
species = getspecies(global.plants[lookx,looky]);
switch (species) {
  case P_CLIANTRO:
    newbug = B_REDBUG;
  default:
    // Still a 1-in-500 chance for a completely random bug.
    // Most of these will probably die, but once in a while....
    if (irandom_range(0,499)==0) {
      newbug = irandom_range(0,6);
      if (newbug == B_BLUESPIDER) {
        return false; // art isn't ready yet
        }
      }
    else {
      return false;
      }
  }
if (fiftyfifty() == 0) {
  // Left or right edges
  if (fiftyfifty() == 0) {
    bugx = 1;
    bugy = irandom_range(1,BOARDHEIGHT-1);
    }
  else {
    bugx = BOARDWIDTH-1;
    bugy = irandom_range(1,BOARDHEIGHT-1);
    }
  }
else {
  // Top or bottom edges
  if (fiftyfifty() == 0) {
    bugx = irandom_range(1,BOARDWIDTH-1);
    bugy = 1;
    }
  else {
    bugx = irandom_range(1,BOARDWIDTH-1);
    bugy = BOARDHEIGHT-1;
    }
  }
addbugs(bugx,bugy,newbug,irandom_range(1,8));
return true;
  
