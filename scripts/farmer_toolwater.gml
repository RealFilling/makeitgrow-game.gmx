var wx, wy, longrange, dir;
wx = argument0;
wy = argument1;
longrange = argument2; //t/f
if (farmer_energycheck(ENERGY_WATERCOST)) {
  setmoist(wx,wy,31);
  }
if (longrange == 1) {
  for (dir=0;dir<6;dir+=1) {
    hexadj(wx,wy,dir);
    if (!coordsinbounds(global.hexx,global.hexy)) {
      continue;
      }
    if (farmer_energycheck(ENERGY_WATERCOST)) {
      setmoist(global.hexx,global.hexy,31);
      }
    }
  }
sound_play(snd_water1);
return 0; 

