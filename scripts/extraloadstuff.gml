// If play is started with loadgame, then some things from initgame aren't
//   initialized.  The intent here is to supply those things.

inittime(); // If not done here, then global.ticksperhour won't 
            //   be ready for field_deserialize(). 
initanimals(); // Let's just nip these animal setup problems in the bud.
clearanimals();
tutorialdef();
inittutorial();
global.titlecard = noone;
