var tempsoil;

tempsoil = global.soilext[argument0,argument1] & (HIGHBITMASK ^ SOILEXT_MOISTMASK);
global.soilext[argument0,argument1] = tempsoil | (median(0,argument2,31) << 2); // Range 0-31

return 0;

