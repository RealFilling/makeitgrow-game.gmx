if (global.tutlock_disablecancel == true) {
  return false;
  }
farmer_selectdefaulttool();
global.ignoreclick = true; // For aborting movement.
global.tutbuttonpressed = UIBUTTON_CANCEL;
instance_destroy();

