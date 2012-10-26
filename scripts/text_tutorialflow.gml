/*
initengine() runs tutorialdef() to define the steps.
initgame() runs inittutorial() to reset the flags and set up state.
inittutorial sets the global.tutorialstep to -1, but also sets
  global.tutcardcleared so we progress to the first step right away.
Step progression is handled in tutorialturn(), which is called from
  field_beginstep.
Tutorial card display logic is handled in tutorialcard_step() and
  tutorialcard_drawgui().
State logic is done in tutorialcard_step().  It watches various flags
  set throughout the code to determine if the current taask has been
  completed or not.  Note, it's the card object's job to watch whether
  its task has been completed yet.

*/
