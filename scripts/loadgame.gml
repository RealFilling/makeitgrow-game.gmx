var loadstring;
loadstring = argument0;

if (global.nosave) {
  return "";
  }



field_deserialize(loadstring);

// If there is now hypertime to run, go about doing that.
if ((global.hstime > 0) and (global.gamestate != GSTATE_INIT)) {
  global.gamestate = GSTATE_PRECALC;
  }

return "";
