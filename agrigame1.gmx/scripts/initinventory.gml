var a;
// Initialize store prices
pricedefs();
// Initialize store inventory
//initstore();

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
  global.toolinvent[a] = -9999;
  }
//
global.numtrees = 0;
for (a=0; a<MAXINVENT; a+=1) {
  global.treeinvent[a] = 9999;
  global.treeinventamt[a] = 9999;
  }
//
global.numbuildings = 0;
for (a=0; a<MAXINVENT; a+=1) {
  global.buildinginvent[a] = 9999;
  global.buildinginventamt[a] = 9999;
  }
//
global.numcrops = 0;
for (a=0; a<MAXINVENT; a+=1) {
  global.cropsinvent[a] = 9999;
  global.cropsinventamt[a] = 9999;
  }
//
global.numitems = 0; // For items that are consumed when used, or otherwise run out
for (a=0; a<MAXINVENT; a+=1) {
  global.iteminvent[a] = 9999;
  global.iteminventamt[a] = 9999;
  }
//
global.numcomposts = 4;
global.compostinvent[0] = C_RED;
global.compostinvent[1] = C_GREEN;
global.compostinvent[2] = C_BLUE;
global.compostinvent[3] = C_ALL;
//


