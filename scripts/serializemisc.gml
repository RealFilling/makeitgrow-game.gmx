var buildstring, a, thisanimal;
// This function's job is to turn the variety of miscellaneous variables that
//   need tracking in a game into a string that can be easily stored in a
//   database.
buildstring = "";

// Versioning, allowing us to detect out-of-date save data and possibly
//   gracefully update that data.
// Note: numtostring returns a string of size global.charspernum
if (global.savedebug == true) {
  show_message("serializing version");
  }
buildstring += numtostring(MAJORVERSION);
buildstring += numtostring(MINORVERSION);

if (global.savedebug == true) {
  show_message("serializing cellular progress");
  }
// Save cellular automation progress (initialized in inittime())
buildstring += numtostring(global.cellcalc);
buildstring += numtostring(global.stripecalc);
buildstring += numtostring(global.turncount);
buildstring += numtostring(global.framecount);

if (global.savedebug == true) {
  show_message("serializing game time");
  }
// Save game time information (initialized in inittime())
//show_message("serializemisc(): global.rawtime:"+string(global.rawtime));
buildstring += numtostring(global.rawtime);
buildstring += numtostring(global.year);
buildstring += numtostring(global.yearday);
buildstring += numtostring(global.week);
buildstring += numtostring(global.month);
buildstring += numtostring(global.day);
buildstring += numtostring(global.tick);
buildstring += numtostring(global.subtick);

// Save weather schedule
// We have two things to save: the actual weather, and the "influences"
//   that produce it.
if (global.savedebug == true) {
  show_message("serializing weather");
  }
for (a=0;a<global.daysperyear;a+=1) {
  buildstring += numtostring(global.weatherseeds[a]+7);//So will never be negative
  buildstring += numtostring(global.weatherrainfall[a]);
  }
if (global.savedebug == true) {
  show_message("serializing current weather");
  }
buildstring += numtostring(global.currentweather);
if (global.savedebug == true) {
  show_message("serializing old weather");
  }
buildstring += numtostring(global.oldweather);

if (global.savedebug == true) {
  show_message("serializing difficulty");
  }
// Save current difficulty
buildstring += numtostring(global.difficulty);

if (global.savedebug == true) {
  show_message("serializing money & energy");
  }
// Save miscellaneous data: money, energy, compost amount
buildstring += numtostring(global.money);
buildstring += numtostring(global.energy);

if (global.savedebug == true) {
  show_message("serializing harvest");
  }
for (a=0;a<4;a+=1) {
  buildstring += numtostring(global.pharvest[a]);
  }

if (global.savedebug == true) {
  show_message("Before inventory: item count is "+string(global.checksumcount));
  }

// Save inventory
// Seeds
if (global.savedebug == true) {
  show_message("serializing seed inventory");
  }
buildstring += numtostring(global.numseeds);
for (a=0;a<MAXINVENT;a+=1) {
  buildstring += numtostring(global.seedinvent[a]);
  buildstring += numtostring(global.seedinventamt[a]);
  }
// Tools
if (global.savedebug == true) {
  show_message("serializing tool inventory");
  }
buildstring += numtostring(global.numtools);
for (a=0;a<MAXINVENT;a+=1) {
  // Note!  Tools are saved as negative numbers, so reversing these values
  //   is important because the number serialization function doesn't play
  //   nice with them.
  buildstring += numtostring(-global.toolinvent[a]);
  }
// Trees
if (global.savedebug == true) {
  show_message("serializing tree inventory");
  }
buildstring += numtostring(global.numtrees);
for (a=0;a<MAXINVENT;a+=1) {
  buildstring += numtostring(global.treeinvent[a]);
  buildstring += numtostring(global.treeinventamt[a]);
  }

// Buildings
if (global.savedebug == true) {
  show_message("serializing building inventory");
  }
buildstring += numtostring(global.numbuildings);
for (a=0;a<MAXINVENT;a+=1) {
  buildstring += numtostring(global.buildinginvent[a]);
  buildstring += numtostring(global.buildinginventamt[a]);
  }
// Crops
if (global.savedebug == true) {
  show_message("serializing crop inventory");
  }
buildstring += numtostring(global.numcrops);
for (a=0;a<MAXINVENT;a+=1) {
  buildstring += numtostring(global.cropsinvent[a]);
  buildstring += numtostring(global.cropsinventamt[a]);
  }
// Items
if (global.savedebug == true) {
  show_message("serializing item inventory");
  }
buildstring += numtostring(global.numitems);
for (a=0;a<MAXINVENT;a+=1) {
  buildstring += numtostring(global.iteminvent[a]);
  buildstring += numtostring(global.iteminventamt[a]);
  }
  
if (global.savedebug == true) {
  show_message("After inventory: item count is "+string(global.checksumcount));
  show_message("serializemisc(): before animals, string length is "+string(string_length(buildstring)));
  }
  
if (global.savedebug == true) {
  show_message("serializing animals");
  }
// Animals
buildstring += numtostring(global.animalcount);
//for (a=0; a<NUMANIMALTYPES; a+=1) {
//  buildstring += numtostring(global.animalcounts[a]);
//  buildstring += numtostring(global.animalcapacities[a]);
//  }
for (a=0; a<MAXANIMALS; a+=1) {
  // We're using MAXANIMALS to bound this loop, instead of global.animalcount,
  //   so the save file will have a consistant size, useful for error checking.
  thisanimal = global.animalinstances[a];
  if ((a>=global.animalcount) or (thisanimal == noone)) {
    buildstring += dumpnullanimal();
    }
  else {
    buildstring += dumpanimal(thisanimal);
    }
  }
  
if (global.savedebug == true) {
  show_message("serializing future expansion");
  }
// Room for future expansion without invalidating save format
for (a=0; a<100; a+=1) {
  buildstring += numtostring(0);
  }

return buildstring;






