var loadstring;
loadstring = argument0;

if (global.nosave) {
  return "";
  }

inittime(); // If not done here, then global.ticksperhour won't 
            //   be ready for field_deserialize(). 
  
field_deserialize(loadstring);
enqueueticker("Welcome back to MAKE IT GROW.  [Program version "+global.version+"]");

// If there is now hypertime to run, go about doing that.
if ((global.hstime > 0) and (global.gamestate != GSTATE_INIT)) {
  global.gamestate = GSTATE_PRECALC;
  }

return "";
