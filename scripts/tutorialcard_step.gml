statetimer -= 1;

switch (state) {
  case TCSTATE_APPEAR:
    if (statetimer <= 0) {
      state = TCSTATE_NORMAL;
      statetimer = 4
      }
    break;
  case TCSTATE_NORMAL:
    if (statetimer <= 0) {
      statetimer = 4
      if (frameflash == c_white) {
        frameflash = c_black;
        }
      else {
        frameflash = c_white;
        }
      }
    break;
  case TCSTATE_DISAPPEAR:
    if (statetimer <= 0) {
      state = TCSTATE_DESTROY;
      }
    break;
  case TCSTATE_DESTROY:
    instance_destroy();
    global.tutorialcard = noone;
    break;
  default:
    show_message("ERROR: bad state in tutorialcard_step!");
    break;
  }
