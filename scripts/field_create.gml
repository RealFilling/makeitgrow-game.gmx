// This is (or should be) the first code that gets run by the game.

// Demo mode
// If this is set true, a couple of things change.
// 1. We don't worry about log ins.  We just create a new game and don't worry about
//      saving or loading.
// 2. We give the player all the seeds and tools right off the bat.

global.loggedin = 0;

// Overall game initialization
initengine();              // Overall initialization

// How are we running?
// If we're debugging, we should set a log in state.
// If we're not, we should check if we're logged in, and load
//   a game if we are.

global.gamestate = GSTATE_INIT;
inittime();

if (global.farmtour == true) {
  loadstring = gd_load();
  gd_log("loading field for tour: ");
  gd_log(loadstring);
  if (string_length(loadstring) != 0) {
    gd_log("loading valid loadstring");
    loadgame(loadstring);
    global.loggedin = 0;
    }
  else {
    gd_log("loading failed: empty loadstring")
    //show_error("ERROR: Farm file not loaded!",true);
    game_end();
    }
  }
else if (global.loadfromfile) {
  loadfile = file_text_open_read("export.txt");
  loadstring = file_text_read_string(loadfile);
  file_text_close(loadfile);
  loadgame(loadstring);
  }
else if (global.nosave == false) {
  if (global.demomode == false) {
    // DEBUGGING (comment out for production):
    //gd_set_logged_in(LOGINSTATUS_IN); // Possible: LOGINSTATUS_IN, LOGINSTATUS_NOT
    loadstring = gd_load();
    global.loggedin = gd_get_user_status();
    gd_log("field_create(): made it through gd_get_user_status()");
    if (string_length(loadstring) != 0) {
      loadgame(loadstring);
      }
    else {
      initgame(false);
      }
    }
  else {
    global.loggedin = 0;
    initgame(false);
    }
  }
else {
  global.loggedin = 0;
  initgame(false);
  }

global.field = self.id;    // So other scripts can easily find the field

// Save testing init
//global.astrplants = "";    // For game state saving
//global.astrsoil = "";
//global.astrharvest = "";
//global.astrwater = "";
//global.astrheight = "";
//global.astrbugs = "";
