global.framecount += 1;

// Make sure farmer remains responsible, in case scripts don't reset
//   global.ignoreclick:
global.ignoreclick = false;

// Title display and white fade-in
// We delay this appearing by a few frames because GameMaker sometimes seems to
//   be a bit unpredictable when a game is just starting up, and objects
//   might not get the events we expect them to if created by functions very early.
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
    if (global.hstime > 0) {
      global.gamestate = GSTATE_PRECALC;
      }
    else {
      global.gamestate = GSTATE_NORMAL;
      }
    break;
  case GSTATE_PRECALC:
    if (global.hstime >= PREGAMESIMTIME) {
      time_advsubticks(SUBTICKSPERTICK * PREGAMESIMTIME);
      global.hstime -= PREGAMESIMTIME;
      }
    else if (global.hstime > 0) {
      time_advsubticks(SUBTICKSPERTICK * global.hstime);
      global.hstime = 0;
      global.gamestate = GSTATE_NORMAL;
      }
    else {
      global.gamestate = GSTATE_NORMAL;
      }
    break;
  case GSTATE_NORMAL:
    processsoundframe();
    // Timekeeping
    if (global.iostate == IOSTATE_NEUTRAL) {
      if (global.currentmenu != noone) {break;};
      // This amounts to the main game loop
      global.turncount += 1; //Turncount advances once per loop
      switch (global.gamespeed) {
        case GSPEED_SLOW:
          time_advsubticks(1);
          break;
        case GSPEED_FAST:
          time_advsubticks(2);
          break;
        case GSPEED_VFAST:
          time_advsubticks(SUBTICKSPERTICK * 2);
          if (global.money > 0) {
            if (global.hyperspeedchargecount <= 0) {
              global.hyperspeedchargecount = 1;
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
  }


