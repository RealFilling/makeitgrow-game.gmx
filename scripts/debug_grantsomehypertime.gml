// If there is now hypertime to run, go about doing that.
global.hstime = 100;
if ((global.hstime > 0) and (global.gamestate != GSTATE_INIT)) {
  global.gamestate = GSTATE_PRECALC;
  }

