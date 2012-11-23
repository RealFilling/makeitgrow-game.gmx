var processstring,majver,minver,animalstring;
processstring = argument0;

inittime(); // Needed to set 

processstring = biteoffsubstring(processstring,global.charspernum);
majver = stringtonum(global.bittenchars);
processstring = biteoffsubstring(processstring,global.charspernum);
minver = stringtonum(global.bittenchars);

if ((majver != MAJORVERSION) or (minver != MINORVERSION)) {
  show_message("WARNING: save file version mismatch!");
  show_message("Major version should be "+string(MAJORVERSION)+" but is "+string(majver));
  show_message("Minor version should be "+string(MINORVERSION)+" but is "+string(minver));
  show_error("Bleah!",true);
  }

if (global.savedebug == true) {
  gd_log("Load progress: version check passed.");
  }
  
// Restore progress of cellular engine
processstring = biteoffsubstring(processstring,global.charspernum);
global.cellcalc = stringtonum(global.bittenchars);
processstring = biteoffsubstring(processstring,global.charspernum);
global.stripecalc = stringtonum(global.bittenchars);
processstring = biteoffsubstring(processstring,global.charspernum);
global.turncount = stringtonum(global.bittenchars);
processstring = biteoffsubstring(processstring,global.charspernum);
global.framecount = stringtonum(global.bittenchars);
  
// Restore timekeeping variables
processstring = biteoffsubstring(processstring,global.charspernum);
global.rawtime = stringtonum(global.bittenchars);
processstring = biteoffsubstring(processstring,global.charspernum);
global.year = stringtonum(global.bittenchars);
processstring = biteoffsubstring(processstring,global.charspernum);
global.yearday = stringtonum(global.bittenchars);
processstring = biteoffsubstring(processstring,global.charspernum);
global.week = stringtonum(global.bittenchars);
processstring = biteoffsubstring(processstring,global.charspernum);
global.month = stringtonum(global.bittenchars);
processstring = biteoffsubstring(processstring,global.charspernum);
global.monthday = stringtonum(global.bittenchars);
processstring = biteoffsubstring(processstring,global.charspernum);
global.day = stringtonum(global.bittenchars);
processstring = biteoffsubstring(processstring,global.charspernum);
global.hour = stringtonum(global.bittenchars);
processstring = biteoffsubstring(processstring,global.charspernum);
global.tick = stringtonum(global.bittenchars);
processstring = biteoffsubstring(processstring,global.charspernum);
global.subtick = stringtonum(global.bittenchars);

// Restore weather schedule
for (a=0;a<global.daysperyear;a+=1) {
  processstring = biteoffsubstring(processstring,global.charspernum);
  global.weatherseeds[a] = stringtonum(global.bittenchars)-7; //To restore from positive-normalized values
  processstring = biteoffsubstring(processstring,global.charspernum);
  global.weatherrainfall[a] = stringtonum(global.bittenchars);
  }
processstring = biteoffsubstring(processstring,global.charspernum);
global.currentweather = stringtonum(global.bittenchars);
processstring = biteoffsubstring(processstring,global.charspernum);
global.oldweather = stringtonum(global.bittenchars);
  
// Restore difficulty
processstring = biteoffsubstring(processstring,global.charspernum);
global.difficulty = stringtonum(global.bittenchars);

// Restore miscellaneous stuff
processstring = biteoffsubstring(processstring,global.charspernum);
global.money = stringtonum(global.bittenchars);

processstring = biteoffsubstring(processstring,global.charspernum);
global.energy = stringtonum(global.bittenchars);

for (a=0;a<4;a+=1) {
  processstring = biteoffsubstring(processstring,global.charspernum);
  global.pharvest[a] = stringtonum(global.bittenchars);
  }
  
if (global.savedebug == true) {
  gd_log("Before inventory: item count is "+string(global.checksumcount));
  }

initinventory(); // Reset inventories before loading.

// Seeds
processstring = biteoffsubstring(processstring,global.charspernum);
global.numseeds = stringtonum(global.bittenchars);
for (a=0;a<MAXINVENT;a+=1) {
  processstring = biteoffsubstring(processstring,global.charspernum);
  global.seedinvent[a] = stringtonum(global.bittenchars);
  processstring = biteoffsubstring(processstring,global.charspernum);
  global.seedinventamt[a] = stringtonum(global.bittenchars);
  }
// Tools
processstring = biteoffsubstring(processstring,global.charspernum);
global.numtools = stringtonum(global.bittenchars);
for (a=0;a<MAXINVENT;a+=1) {
  processstring = biteoffsubstring(processstring,global.charspernum);
  // See serializemisc() for why we invert the value here:
  global.toolinvent[a] = -stringtonum(global.bittenchars);
  }
// Trees
processstring = biteoffsubstring(processstring,global.charspernum);
global.numtrees = stringtonum(global.bittenchars);
for (a=0;a<MAXINVENT;a+=1) {
  processstring = biteoffsubstring(processstring,global.charspernum);
  global.treeinvent[a] = stringtonum(global.bittenchars);
  processstring = biteoffsubstring(processstring,global.charspernum);
  global.treeinventamt[a] = stringtonum(global.bittenchars);
  }
processstring = biteoffsubstring(processstring,global.charspernum);
global.numbuildings = stringtonum(global.bittenchars);
for (a=0;a<MAXINVENT;a+=1) {
  processstring = biteoffsubstring(processstring,global.charspernum);
  global.buildinginvent[a] = stringtonum(global.bittenchars);
  processstring = biteoffsubstring(processstring,global.charspernum);
  global.buildinginventamt[a] = stringtonum(global.bittenchars);
  }
// Crops
processstring = biteoffsubstring(processstring,global.charspernum);
global.numcrops = stringtonum(global.bittenchars);
for (a=0;a<MAXINVENT;a+=1) {
  processstring = biteoffsubstring(processstring,global.charspernum);
  global.cropinvent[a] = stringtonum(global.bittenchars);
  processstring = biteoffsubstring(processstring,global.charspernum);
  global.cropinventamt[a] = stringtonum(global.bittenchars);
  }
// Items
processstring = biteoffsubstring(processstring,global.charspernum);
global.numitems = stringtonum(global.bittenchars);
for (a=0;a<MAXINVENT;a+=1) {
  processstring = biteoffsubstring(processstring,global.charspernum);
  global.iteminvent[a] = stringtonum(global.bittenchars);
  processstring = biteoffsubstring(processstring,global.charspernum);
  global.iteminventamt[a] = stringtonum(global.bittenchars);
  }

if (global.savedebug == true) {
  gd_log("After inventory: item count is "+string(global.checksumcount));
  gd_log("deserializemisc(): before animals, string length is "+string(string_length(processstring)));
  }
  
// Animals
clearanimals(); // Get rid of what's already there, if anything.
processstring = biteoffsubstring(processstring,global.charspernum);
global.checkanimalcount = stringtonum(global.bittenchars);
for (a=0;a<MAXANIMALS;a+=1) {
  processstring = biteoffsubstring(processstring,global.charspernum*73);
  animalstring = global.bittenchars;
  restoreanimal(animalstring);
  }
if (global.savedebug == true) {
  gd_log("Load progress: Animals found: "+string(global.animalcount));
  show_message("deserializemisc(): Load progress: Animals found: "+string(global.animalcount));
  }
if (global.animalcount != global.checkanimalcount) {
  show_error("ERROR: Animals loaded doesn't match record!",false);
  }
  
processstring = biteoffsubstring(processstring,global.charspernum);
global.hstime += stringtonum(global.bittenchars);

for (a=0; a<3; a+=1) {
  processstring = biteoffsubstring(processstring,global.charspernum);
  global.pmulch[a] = stringtonum(global.bittenchars);
  }

// Remaining dummy space
for (a=0; a<100; a+=1) {
  processstring = biteoffsubstring(processstring,global.charspernum);
  // Note: we do nothing with the values right now.  The above is
  //         only for form's sake.
  }

if (global.savedebug == true) {
  gd_log("Load done!");
  gd_log("Remaining length of processstring:" + string(string_length(processstring)));
  }
    
// We'll recalculate building totals soon
resetbuildingtotals();

// For debugging, return what's left of the save string
return processstring;

