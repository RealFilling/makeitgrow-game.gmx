if (global.savedebug == true) {
  if (global.demomode == false) {
    //var remainder;
    //remainder = field_deserialize();
    //show_message("Save string remainder:"+remainder);
    //returnstring = gd_load();
    loadgame(gd_load());
    //show_message("returnstring:"+returnstring);
    return 0;
    }
  else {
    if (global.savestring != "") {
      remainder = field_deserialize(global.savestring);
      }
    }
  }
else {
  return 0;
  }

