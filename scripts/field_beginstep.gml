global.framecount += 1;

if (global.miscdebug == true) {
  show_message("field_beginstep: global.miscdebug is true");
  }

// Make sure farmer remains responsible, in case scripts don't reset
//   global.ignoreclick:
global.ignoreclick = false;

// Title display and white fade-in
if (global.framecount == 10) {
  // Display title
  global.titlecard = instance_create(ax(view_wview[0]/2), ay(view_hview[0]/2), obj_title);
  }
else if (global.framecount < 10) {
  return 0;
  }
  
// Per frame stuff, by state
switch (global.gamestate) {
  case GSTATE_INIT:
    global.gamestate = GSTATE_NORMAL;
    break;
  case GSTATE_NORMAL:
    processsoundframe();
    // Timekeeping
    if (global.iostate == IOSTATE_NEUTRAL) {
      if (global.currentmenu != noone) {break;};
      // This amounts to the main game loop
      global.turncount += 1; //Turncount advances once per loop
      // DEBUG
      if (global.miscdebug == true) {
        show_message("field_beginstep: post-load turn");
        global.miscdebug = false;
        }
      //
      switch (global.gamespeed) {
        case GSPEED_SLOW:
          time_advsubticks(1);
          break;
        case GSPEED_FAST:
          time_advsubticks(2);
          break;
        case GSPEED_VFAST:
          time_advsubticks(SUBTICKSPERTICK * 5);
          if (global.money > 0) {
            if (global.hyperspeedchargecount <= 0) {
              global.hyperspeedchargecount = 2;
              global.money -= 1;
              }
            else {
              global.hyperspeedchargecount -= 1;
              }
            }
          else {
            global.hyperspeedchargecount = 0;
            global.gamespeed = GSPEED_FAST;
            }
          break;
        }
      }
    /*
    else if (global.iostate == IOSTATE_SAVING) {
      if (global.debugsave == true) {
        // We already have the game state saved in global.savestring
        global.iostate = IOSTATE_NEUTRAL;
        break;
        }
      switch (gd_data_status()) {
        case 0:
          // Nothing to do here but wait....
          break;
        case 1:
          // We're done waiting for data to save.
          global.iostate = IOSTATE_NEUTRAL;
          break;
        case 2:
          // Something went wrong!
          errormsg = gd_get_data();
          show_message("SAVE ERROR: " + errormsg);
          global.iostate = IOSTATE_NEUTRAL;
          break;
        }
      }
    else if (global.iostate == IOSTATE_LOADING) {
      if (global.savedebug == true) {
        field_deserialize(global.savestring);
        show_message("field_beginstep(): Done loading");
        global.iostate = IOSTATE_NEUTRAL;
        global.miscdebug = true;
        break;
        }
      switch (gd_data_status()) {
        case 0:
          // Nothing to do here but wait....
          break;
        case 1:
          // We're done waiting for data to load.
          gamestring = gd_get_data();
          field_deserialize(gamestring);
          global.iostate = IOSTATE_NEUTRAL;
          break;
        case 2:
          // Something went wrong!
          errormsg = gd_get_data();
          show_message("LOAD ERROR: " + errormsg);
          global.iostate = IOSTATE_NEUTRAL;
          break;
        }
      }
    */
  case GSTATE_PAUSED:
    // Commands can still be entered in state, but game time doesn't pass.
    // Probably doesn't work at moment.
    break;
  case GSTATE_SUBSCREEN:
    // Game info screen
    // Time still passes, but the subscreen takes all input until it's closed.
  case GSTATE_SHUTDOWN:
  case GSTATE_GAMEOVER:
  case GSTATE_YEAREND:
  case GSTATE_HELPSCREEN:
  case GSTATE_MARKETCHART:
    // Neither field commands can be entered nor time pass in this state.
    break;
  /*
  case GSTATE_INITLOAD:
    switch (gd_data_status()) {
      case 0:
        // Nothing to do here but wait....
        break;
      case 1:
        // We're done waiting for data to load.
        gamestring = gd_get_data();
        if (gamestring == "") {
          show_message("NOTE: No save data found.  Beginning a new game.");
          initgame();
          }
        else {
          field_deserialize(gamestring);
          show_message("Load complete!");
          }
        global.iostate = IOSTATE_NEUTRAL;
        global.gamestate = GSTATE_INIT;
        break;
      case 2:
        // Something went wrong!
        errormsg = gd_get_data();
        show_message("LOAD ERROR: " + errormsg);
        show_message("Communication with server not achieved, beginning new session.");
        global.iostate = IOSTATE_NEUTRAL;
        global.gamestate = GSTATE_INIT;
        break;
      }
    break;
  case GSTATE_LOGINCHECK:
    loginstate = gd_get_user_status();
    switch (loginstate) {
      case LOGINSTATUS_WAITING:
        // Nothing to do yet....
        break;
      case LOGINSTATUS_IN:
        initload();
        global.gamestate = GSTATE_INITLOAD;
        break;
      case LOGINSTATUS_NOT:
        initgame();
        global.gamestate = GSTATE_INIT;
        break;
      }
    break;
  */
  }


