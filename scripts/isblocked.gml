var tx,ty,thisplant,species;
tx = argument0;
ty = argument1;
if ((tx<0) or (tx>=BOARDWIDTH) or (ty<0) or (ty>=BOARDHEIGHT)) {
  //show_message("isblocked() at "+string(tx)+","+string(ty)+" out of bounds.");
  return true;
  }
if (global.water[tx,ty] >= 1) { //Done this way in case we move to fractional water
  return true;
  }
thisplant = global.plants[tx,ty];
species = getspecies(thisplant);
if (istree(species) or isbuilding(species) or isshadow(species)) {
  //show_message("isblocked() at "+string(tx)+","+string(ty)+" found block.");
  return true;
  }
else if ((getpipeexist(tx,ty) == 1) or (getgreenh(tx,ty) == 1)) {
  return true;
  }
else {
  //show_message("isblocked() at "+string(tx)+","+string(ty)+" found clear.");
  return false;
  }

