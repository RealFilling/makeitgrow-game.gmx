var gamestring, loginstatus, outfile, savestring;

//loginstatus = gd_get_user_status();
gd_log("savegame() called....");

if (global.saveexport) {
  savestring = "0000"+field_serialize(false);
  outfile = file_text_open_write("export.txt");
  file_text_write_string(outfile,savestring);
  file_text_close(outfile);
  enqueueticker("Exported game to export.txt in game directory.");
  return "";
  }
else if (global.nosave) {
  return "";
  }

if ((global.loggedin == 0) and (global.demomode == false)){
  gd_log("savegame(): Not logged in!");
  return ""; // Nowhere to save
  }
else {
  if ((global.year <= 0) and (global.month < 2) and (!global.skipprecalc)) {
    return ""; // Still in pregen period.
    }
  if (global.loggedin != 0) {
    gd_log("savegame(): Are logged in....");
    }
  gd_log("savegame(): After serialization, before gd_save()....");
  if (global.demomode) {
    // Since we're not saving to the server, we have to forge the text digits
    //   it adds to the string.
    global.savestring = "0000"+field_serialize(false);
    gamestring = global.savestring;
    enqueueticker("Saved to global.savestring.");
    }
  else {
    gamestring = field_serialize(false);
    returnstring = gd_save(gamestring,global.hstime div global.ticksperhour);
    enqueueticker("Saved.");  
    gd_log("savegame(): Logged in, after gd_save(), done.");
    }
  return gamestring;
  }


