var gamestring, loginstatus;

if (global.savedebug == true) {
  if (global.demomode == true) {
    // NOTE:
    // The "0" below is due to Leandro's solution to server-provided hypertime.
    // We have to account for that now so loading doesn't break.
    global.savestring = "0000"+field_serialize();
    return 0;
    }
  else {
    savegame();
    }
  }
else {
  // Disabled
  return 0;
  }  

