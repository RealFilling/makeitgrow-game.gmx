//var gamestring, loginstatus, outstring, filename;
if (global.disableautosave) {
  // NOTE:
  // The "0" below is due to Leandro's solution to server-provided hypertime.
  // We have to account for that now so loading doesn't break.
  savegame();
  return 0;
  }
else {
  // Disabled
  return 0;
  }  

