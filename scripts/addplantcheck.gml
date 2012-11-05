var bx, by, planttoplace;
if (!irandom_range(0,PLACEPLANTODDS-1)==0) {
  return -1;
  }
randomborderhex();
bx = global.hexx;
by = global.hexy;
planttoplace = pickwildplant();
if (planttoplace == -1) {
  return -1; // Didn't pick a wild plant, abort.
  }
if (!isempty(bx,by)) {
  return -1; // Something's already there.
  }
global.plants[bx,by] = makeplant(planttoplace,0,0);
