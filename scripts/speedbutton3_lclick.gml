if (global.money <= 0) {
  return 0; // Can't use without money
  }
global.gamespeed = GSPEED_VFAST;
image_index = 1;
pushstate = true;
global.ignoreclick = true; // So farmer doesn't walk around
global.hyperspeedchargecount = 0;
global.tutbuttonpressed = UIBUTTON_FASTSPEED;

