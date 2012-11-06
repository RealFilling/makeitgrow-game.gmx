statetimer -= 1;

if (global.tutorialfailsafe) {
  global.tutcardcleared = true; // 
  }

switch (state) {
  case TCSTATE_APPEAR:
    if (statetimer <= 0) {
      state = TCSTATE_NORMAL;
      statetimer = 4
      }
    tutcardpositioning();
    break;
  case TCSTATE_NORMAL:
    if (statetimer <= 0) {
      statetimer = 4
      if (frameflashstate == 0) {
        frameflash = c_black;
        frameflashstate = 1;
        }
      else {
        frameflash = c_white;
        frameflashstate = 0;
        }
      }
    tutcardpositioning();  
    tutcardtaskcheck();
    break;
  case TCSTATE_DISAPPEAR:
    if (statetimer <= 0) {
      state = TCSTATE_DESTROY;
      }
    break;
  case TCSTATE_DESTROY:
    instance_destroy();
    global.tutcardcleared = true;
    global.tutorialcard = noone;
    break;
  default:
    show_message("ERROR: bad state in tutorialcard_step!");
    break;
  }
