var mineral, amttoeat, myx, myy, checkx, checky, rangetolook, tries, redo, eaten, red, green, blue;
mineral = argument0;
amttoadd = argument1;
myx = argument2;
myy = argument3;

thissoil = global.soil[myx,myy];
thisred = getred(thissoil);
thisgreen = getgreen(thissoil);
thisblue = getblue(thissoil);
if (mineral == RED) {
  thisred = min(thisred+amttoadd,255);
  }
else if (mineral == GREEN) {
  thisgreen = min(thisgreen+amttoadd,255);
  }
else {
  thisblue = min(thisblue+amttoadd,255);
  }

global.soil[myx,myy] = makesoil(thisred,thisgreen,thisblue);


