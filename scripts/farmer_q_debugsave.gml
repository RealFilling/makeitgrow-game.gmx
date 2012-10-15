var gamestring, loginstatus;

if (global.savedebug == true) {
  if (global.demomode == true) {
    // NOTE:
    // The "0" below is due to Leandro's solution to server-provided hypertime.
    // We have to account for that now so loading doesn't break.
    global.savestring = "0"+field_serialize();
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

/*
// Old stuff
loginstatus = gd_get_user_status();

if (loginstatus != LOGINSTATUS_IN) {
  return false;
  }

gamestring = field_serialize();
//show_message("farmer_q_debugsave() checkpoint, before gd_save()");
returnstring = gd_save(gamestring);
//show_message("farmer_q_debugsave() checkpoint, after gd_save(), returned:"+returnstring);
global.iostate = IOSTATE_SAVING;
return 0;
*/
