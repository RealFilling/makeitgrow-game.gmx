var buildstring, a, thisanimal;
// This function's job is to turn the variety of miscellaneous variables that
//   need tracking in a game into a string that can be easily stored in a
//   database.
buildstring = "";

// Versioning, allowing us to detect out-of-date save data and possibly
//   gracefully update that data.
// Note: numtostring returns a string of size global.charspernum
gd_log("serializing version");
  
buildstring += numtostring(MAJORVERSION);
buildstring += numtostring(MINORVERSION);

gd_log("serializing cellular progress");
  
// Save cellular automation progress (initialized in inittime())
buildstring += numtostring(global.cellcalc);
buildstring += numtostring(global.stripecalc);
buildstring += numtostring(global.turncount);
buildstring += numtostring(global.framecount);

gd_log("serializing game time");
  
// Save game time information (initialized in inittime())
//gd_log("serializemisc(): global.rawtime:"+string(global.rawtime));
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
gd_log("serializing weather");
  
for (a=0;a<global.daysperyear;a+=1) {
  buildstring += numtostring(global.weatherseeds[a]+7);//So will never be negative
  buildstring += numtostring(global.weatherrainfall[a]);
  }
gd_log("serializing current weather");
  
buildstring += numtostring(global.currentweather);
gd_log("serializing old weather");
  
buildstring += numtostring(global.oldweather);

gd_log("serializing difficulty");
  
// Save current difficulty
buildstring += numtostring(global.difficulty);

gd_log("serializing money & energy");
  
// Save miscellaneous data: money, energy, compost amount
buildstring += numtostring(global.money);
buildstring += numtostring(global.energy);

gd_log("serializing harvest");
  
for (a=0;a<4;a+=1) {
  buildstring += numtostring(global.pharvest[a]);
  }

gd_log("Before inventory: item count is "+string(global.checksumcount));
  

// Save inventory
// Seeds
gd_log("serializing seed inventory");
  
buildstring += numtostring(global.numseeds);
for (a=0;a<MAXINVENT;a+=1) {
  buildstring += numtostring(global.seedinvent[a]);
  buildstring += numtostring(global.seedinventamt[a]);
  }
// Tools
gd_log("serializing tool inventory");
  
buildstring += numtostring(global.numtools);
for (a=0;a<MAXINVENT;a+=1) {
  // Note!  Tools are saved as negative numbers, so reversing these values
  //   is important because the number serialization function doesn't play
  //   nice with them.
  buildstring += numtostring(-global.toolinvent[a]);
  }
// Trees
gd_log("serializing tree inventory");
  
buildstring += numtostring(global.numtrees);
for (a=0;a<MAXINVENT;a+=1) {
  buildstring += numtostring(global.treeinvent[a]);
  buildstring += numtostring(global.treeinventamt[a]);
  }

// Buildings
gd_log("serializing building inventory");
  
buildstring += numtostring(global.numbuildings);
for (a=0;a<MAXINVENT;a+=1) {
  buildstring += numtostring(global.buildinginvent[a]);
  buildstring += numtostring(global.buildinginventamt[a]);
  }
// Crops
gd_log("serializing crop inventory");
  
buildstring += numtostring(global.numcrops);
for (a=0;a<MAXINVENT;a+=1) {
  buildstring += numtostring(global.cropsinvent[a]);
  buildstring += numtostring(global.cropsinventamt[a]);
  }
// Items
gd_log("serializing item inventory");
  
buildstring += numtostring(global.numitems);
for (a=0;a<MAXINVENT;a+=1) {
  buildstring += numtostring(global.iteminvent[a]);
  buildstring += numtostring(global.iteminventamt[a]);
  }
  
gd_log("After inventory: item count is "+string(global.checksumcount));
gd_log("serializemisc(): before animals, string length is "+string(string_length(buildstring)));
  
  
gd_log("serializing animals");
  
// Animals
buildstring += numtostring(global.animalcount);
gd_log("added animal count to buildstring");
//for (a=0; a<NUMANIMALTYPES; a+=1) {
//  buildstring += numtostring(global.animalcounts[a]);
//  buildstring += numtostring(global.animalcapacities[a]);
//  }
for (a=0; a<MAXANIMALS; a+=1) {

  // We're using MAXANIMALS to bound this loop, instead of global.animalcount,
  //   so the save file will have a consistant size, useful for error checking.
  buildstring += dumpnullanimal();
  }
  
gd_log("serializing future expansion");
  
// Used future expansion
buildstring += numtostring(global.hstime);

// Room for future expansion without invalidating save format
for (a=0; a<99; a+=1) {
  buildstring += numtostring(0);
  }

gd_log("finished serializing non-field related objects");
return buildstring;






