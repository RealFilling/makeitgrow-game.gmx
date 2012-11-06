// This initializes a tutorial system.

var a;
for (a=0;a<MAXTUTORIALSTEPS;a+=1) {
  global.tutorialstep[a] = global.tutorialskip;
  }

if (global.tutorialskip == false) {
  global.tutorialstep = -1;
  global.tutorialtimer = 0;
  }
else {
  global.tutorialstep = 9999;
  global.tutorialtimer = -1;
  }  
global.tutcardcleared = true; // So we progress to first step immediately.

