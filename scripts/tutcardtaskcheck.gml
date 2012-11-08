switch(tasktype) {
  case TTT_WAIT:
    ttt_wait_delay -= 1;
    if (ttt_wait_delay <= 0) {
      state = TCSTATE_DISAPPEAR;// Signal to tutorialcard_step that we're done.
      }
    break;
  case TTT_MENUSELECT:
    if (global.tutmenuitemselected = true) {
      state = TCSTATE_DISAPPEAR;
      }
    break;
  case TTT_CLICK:
    if (global.tutbuttonpressed == ttt_click_buttontowatch) {
      state = TCSTATE_DISAPPEAR;
      }
    break;
  case TTT_USE:
    if (global.tuttoolused == ttt_click_buttontowatch) {
      state = TCSTATE_DISAPPEAR;
      }
    break;
  case TTT_USEPLACE:
  case TTT_USEPLACEBESIDE:
    if ((global.tuttoolusedx == global.tuttilex) and
        (global.tuttoolusedy == global.tuttiley)) {
      state = TCSTATE_DISAPPEAR;
      }
    break;
  }
// Reset checks
global.tutbuttonpressed = -1;
global.tuttoolused = -1;
global.tuttoolusedx = -1;
global.tuttoolusedy = -1;


