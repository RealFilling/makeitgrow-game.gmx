if (global.tutorialcard == noone) {
  // No card is being displayed!
  return 0;
  }
global.tutorialcard.statetimer = 10;
global.tutorialcard.state = TCSTATE_DISAPPEAR;
