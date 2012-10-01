var gamestring, loginstatus;

//loginstatus = gd_get_user_status();

if (global.loggedin == 0) {
  show_message("Not logged in!");
  return 0; // Nowhere to save
  }
else {
  gamestring = field_serialize();
  //show_message("farmer_q_debugsave() checkpoint, before gd_save()");
  returnstring = gd_save(gamestring);
  return gamestring;
  }


