var gamestring, loginstatus;

//loginstatus = gd_get_user_status();
show_message("savegame() called....");

if (global.loggedin == 0) {
  show_message("savegame(): Not logged in!");
  return ""; // Nowhere to save
  }
else {
  show_message("savegame(): Are logged in....");
  gamestring = field_serialize();
  show_message("savegame(): Logged in, after serialization, before gd_save()....");
  //show_message("farmer_q_debugsave() checkpoint, before gd_save()");
  returnstring = gd_save(gamestring);
  show_message("savegame(): Logged in, after gd_save(), done.");
  return gamestring;
  }


