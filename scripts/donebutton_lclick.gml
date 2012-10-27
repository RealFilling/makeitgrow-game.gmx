if (global.tutlock_disablecancel == true) {
  return false;
  }
farmer_selectmovetool();
global.ignoreclick = true; // For aborting movement.
global.tutbuttonpressed = UIBUTTON_CANCEL;
instance_destroy();

