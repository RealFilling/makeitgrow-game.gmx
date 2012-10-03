var species,subtype,growth,tx,ty;
species = argument0;
subtype = argument1;
growth = argument2;
harvest = argument3;

ty = species;
tx = growth;
if ((growth != GROWTH_MATURE) or (noharvest[species])) {
  tx = growth;
  }
else {
  if (harvest = 0) {
    if (harvestconsume[species])  {
      tx = 3;
      }
    else {
      tx = 7;
      }
    }
  else if (harvest < 8) {
    tx = 3;
    }
  else {
    tx = 6;
    }
  }

return encodeplanttile(tx,ty);

