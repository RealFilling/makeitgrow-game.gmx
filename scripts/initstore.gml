var a;
// Initialize store prices
pricedefs();
// Initialize store inventory

global.numseeds = 0;
for (a=0; a<MAXINVENT; a+=1) {
  global.seedinvent[a] = -1;
  global.seedinventamt[a] = -1;
  }
//
// Compost is always available, but you start out with no amount.
//
global.numtools = 0;
for (a=0; a<MAXINVENT; a+=1) {
  global.toolinvent[a] = -1;
  }
//
global.numtrees = 0;
for (a=0; a<MAXINVENT; a+=1) {
  global.treeinvent[a] = -1;
  global.treeinventamt[a] = -1;
  }
//
global.numbuildings = 0;
for (a=0; a<MAXINVENT; a+=1) {
  global.buildinginvent[a] = -1;
  global.buildinginventamt[a] = -1;
  }
//
global.numcrops = 0;
for (a=0; a<MAXINVENT; a+=1) {
  global.cropsinvent[a] = -1;
  global.cropsinventamt[a] = -1;
  }
//
global.numitems = 0; // For items that are consumed when used, or otherwise run out
for (a=0; a<MAXINVENT; a+=1) {
  global.iteminvent[a] = -1;
  global.iteminventamt[a] = -1;
  }
//
global.numcomposts = 4;
global.compostinvent[0] = C_RED;
global.compostinvent[1] = C_GREEN;
global.compostinvent[2] = C_BLUE;
global.compostinvent[3] = C_ALL;
//


