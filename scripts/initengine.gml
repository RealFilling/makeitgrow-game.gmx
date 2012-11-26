var cx1, cy1;
// Game initialization

// Program version
global.version = "0.15";

// Debugging support
// All of these things should be false for production use.
// For various debuging or internal uses, some might need to be true.
global.disablemetrics = true; // Disables gd_mixpanel_register calls
global.demomode = false; // Starts player out with everything, with savedebug saves to string variable
global.debug = false; // Miscellaneous debugging
global.savedebug = false; // With demomode, saves to variable; use L to load it.
global.disableautosave = true; // Turns off timed saving; use Q to save in this case
global.nosave = false; // Disable saving entirely
global.saveexport = false; // Save out to a text file
global.shadowdebug = false; // Debugging multitile objects
global.miscdebug = false; // I forget
global.weatherdebug = false; // Provide debugging information for weather system
global.skipgen = false; // IF creating new field, then don't create random terrain or water. Note: leaves field inhospitable!
// 
global.skippreseed = false; // Don't put random thing on the field at the start
global.skipprecalc = false; // Don't run very fast for two months at start
//
global.tutorialdebug = false; // Tutorial card debugging, activates T key for spawning a card
global.tutorialskip = true; // Skip all tutorial cards.
//
global.q_exportstofile = false; // If true, pressing Q creates a text file exporting the
                                //   field portion of the game state.
//
global.skipanimalvalidation = true; // Disables the check to make sure all animals can
                                    //   housed.
//
global.loadfromfile = true; // When set to true, it'll try to load a previously saved game
                            //   out of export.txt on startup.
//
global.disablesound = true;
global.disabletools = false;

// ***************
// IMPORTANT!
// This is the magic flag to set if the game is running as a farm tour.
// It will cause it to load the game but not check for users, disable the tool menu and saving,
//   and turn off precalc.
global.farmtour = true;
// ***************

// Extra flags, malleable during run:
global.poisonflag = false; // For isolating a single instance of a problem
global.tutorialfailsafe = false; // If a tutorial step is bad because of the random nature
                                 //   of field creation, this gets us out of it.

// Debug logging:
global.debuglog = false; // Logging, currently unused
global.debuglogfilename = "debuglog.txt";
global.debugloghandle = noone // Replaced with handle to logfile

//
// This ends the flags section.
//
// The rest of this script is important setup stuff, and shouldn't
//   be idly changed.
//
// For most of the above stuff, set all flags to false to setup for a
//   production server.  Do that but also set global.farmtour to true
//   for a demonstration.
//

if (global.farmtour) {
  global.demomode = true;
  global.nosave = true;
  global.disableautosave = true;
  global.disabletools = true;
  global.q_exportstofile = false;
  global.tutorialskip = true;
  global.skippreseed = true;
  global.skipprecalc = true;
  }

randomize();

//init();
script_utility();
plantdefs();
bugdefs();
//compostdefs(); // Not proven necessary yet
seedselector();
//itemnames();
// Set up timekeeping variables
//inittime();   // initgame()
// Needs to come after inittime()
weatherdefs();
buildingdefs();
animaldefs();
soundframedefs();
initsoundframe();
timeconsts();
//
inititems();
itemdefs();
initcrafts();
craftdefs();
//
tutorialdef();

global.animallookup = noone; // Failsafe in case animal collision hash doesn't exist when checked.

//Game UI button size scaling
globalvar bs_width, bs_height;
bs_width = BUTTONWIDTH/sprite_get_width(spr_plainbutton2);
bs_height = BUTTONHEIGHT/sprite_get_height(spr_plainbutton2);

// Initialize debug log
if (global.debuglog == true) {
  global.debugloghandle = debug_createlog(global.debuglogfilename);
  }
  
// For use in serialization
global.sbitmask = (1<<NUMBITSSAVE) - 1;
global.charspernum = (MAXBITSIZE div NUMBITSSAVE)+1;

// Corner button menus, in order from corner -- OBSOLETE, now see UI/hud/rootbuttons
global.cornerbuttonmenu[0] = MENUTYPE_SEEDINVENT; //MENUTYPE_SEEDS
global.cornerbuttonmenu[1] = MENUTYPE_COMPOST;
global.cornerbuttonmenu[2] = MENUTYPE_TOOLINVENT; //MENUTYPE_TOOLS
global.cornerbuttonmenu[3] = MENUTYPE_TREES;
global.cornerbuttonmenu[4] = MENUTYPE_BUILDINGINVENT;
global.cornerbuttonmenu[5] = MENUTYPE_ITEMINVENT;
// OBSOLETE -- for 
global.cornerbuttonmenutitle[0] = "Seeds";
global.cornerbuttonmenutitle[1] = "Compost";
global.cornerbuttonmenutitle[2] = "Tools";
global.cornerbuttonmenutitle[3] = "Trees";
global.cornerbuttonmenutitle[4] = "Buildings";
global.cornerbuttonmenutitle[5] = "Items";

// Initial seed selection
global.currentseed = TOOL_MOVE;

// Debugging
global.plantgrowthdebug = false;
global.debugcounter = 0;
global.debugextra = -1;
global.soilcolordisplay = DEBUG_SOILTILLDISP; // 0=normal/tilling, 1=minerals, 2=moisture

// bugsprites -- a weird place to put it perhaps
globalvar bugsprites;
bugsprites[B_REDBUG] = spr_redbug;
bugsprites[B_GREENMANTIS] = spr_greenbug;
bugsprites[B_BLUESPIDER] = spr_bluebug;
bugsprites[B_ORANGEBEETLE] = spr_orangebug;
bugsprites[B_YELLOWFLY] = spr_yellowbug;
bugsprites[B_CYANWASP] = spr_cyanbug;
bugsprites[B_GRAYMOTH] = spr_graybug;
bugsprites[B_BEE] = spr_bee;

// Seasonal select button images
globalvar seasonalselectbuttonimgs;
seasonalselectbuttonimgs[0] = spr_plainbutton_dark3;
seasonalselectbuttonimgs[1] = spr_plainbutton_dark2;
seasonalselectbuttonimgs[2] = spr_plainbutton_dark1;
seasonalselectbuttonimgs[3] = spr_plainbutton2;
seasonalselectbuttonimgs[4] = spr_plainbutton_bright;

// Used to save time in water code
global.emptymap = ds_map_create();
for (cy1 = 0; cy1 < BOARDHEIGHT; cy1 += 1) {
  for (cx1 = 0; cx1 < BOARDWIDTH; cx1 += 1) {
    ds_map_add(global.emptymap,ctoh(cx1,cy1),-1);
    }
  }

// Tilling sprout bonus chances (in percent)
global.tillbonus[0] = 0;
global.tillbonus[1] = 10;
global.tillbonus[2] = 20;
global.tillbonus[3] = 30;

// Message ticker initialization
initticker();

// Subscreen state -- prob. obsolete
global.subscreen = noone;

// Slo-Mo Toggle
global.gamespeed = GSPEED_SLOW;

// Menu state variables
global.currentmenu = noone;
global.menuinfo = noone;
global.menustyle = MENUSTYLE_NONE;
global.menustate = MENUSTATE_NONE;
global.menutimer = 0;
global.menutip1 = ""; // Menu identification
global.menutip2 = ""; // Menu item identification
global.currentitemname = "Move";
global.tutorialcard = noone;

// Leo's energy usage flash effect timer
global.energyflasheffect = 0;

// Hyperspeed frame charge counter
global.hyperspeedchargecount = 0; // Counts down from 4;

// I/O state
global.iostate = IOSTATE_NEUTRAL;

// For stopping menus from instantly closing and mismoving
global.ignoreclick = false;

// Animal calling support
//   This should eventually be moved into initgame() and loadgame()!
global.a_callx = -1;
global.a_cally = -1;
global.a_callage = -1;


// Now we should be ready for initgame() or the game load code to set up game-specific data,
//   then to return to field_create() to set up the game board.
