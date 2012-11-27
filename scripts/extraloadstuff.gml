// If play is started with loadgame, then some things from initgame aren't
//   initialized.  The intent here is to supply those things.
gd_log("extraloadstuff: calling init time");
inittime(); // If not done here, then global.ticksperhour won't 
            //   be ready for field_deserialize(). 
gd_log("extraloadstuff: calling init animals");
initanimals(); // Let's just nip these animal setup problems in the bud.
gd_log("extraloadstuff: calling clearanimals");
clearanimals();
gd_log("extraloadstuff: calling tutorialdef");
tutorialdef();
gd_log("extraloadstuff: calling inittutorial");
inittutorial();
global.titlecard = noone;
