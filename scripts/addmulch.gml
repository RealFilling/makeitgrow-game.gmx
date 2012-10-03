var mx, my, asoil, mulchadded, thissoil, mulchtype, mulchamt;
mx = argument0;
my = argument1;
mulchtype = argument2;
mulchamt = argument3;
//
if (!coordsinbounds(mx,my)) {
  return 0;
  }
if !soilhere(mx,my) {
  return 0;
  }
//
thissoil = global.soil[mx,my];
asoil[0] = getred(thissoil);
asoil[1] = getgreen(thissoil);
asoil[2] = getblue(thissoil);
mulchadded = 0;
if (asoil[mulchtype]+mulchamt <= 255) {
  asoil[mulchtype] += mulchamt;
  global.soil[mx,my] = makesoil(asoil[0],asoil[1],asoil[2]);
  mulchadded = mulchamt;
  }
return mulchadded;
