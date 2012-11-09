var gamestring, loginstatus, outstring, filename;
filename = "fieldexport.txt";
if (global.q_exportstofile == true) {
  // NOTE:
  // The "0" below is due to Leandro's solution to server-provided hypertime.
  // We have to account for that now so loading doesn't break.
  outstring = field_serialize();
  stringtofile(filename,outstring);
  enqueueticker("Exported field to file "+filename+".");
  return 0;
  }
else {
  // Disabled
  return 0;
  }  

