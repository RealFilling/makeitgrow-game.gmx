var loadstring;
loadstring = argument0;

if (global.nosave) {
  return "";
  }

gd_log("loadgame: calling extraloadstuff");
extraloadstuff();
gd_log("loadgame: calling field deserialize");
field_deserialize(loadstring,false);
enqueueticker("Welcome back to MAKE IT GROW.  [Program version "+global.version+"]");

// If there is now hypertime to run, go about doing that.
if ((global.hstime > 0) and (global.gamestate != GSTATE_INIT)) {
  global.gamestate = GSTATE_PRECALC;
  }

return "";
