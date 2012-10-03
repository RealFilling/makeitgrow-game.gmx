var hexx, hexy, hdir;
hexx = argument0;
hexy = argument1;
hdir = argument2; // ranged 0-17

if (global.dirtwoaway[hdir,0] == -1) {
  global.hexx = hexx;
  global.hexy = hexy;
  return 0
  }

// First step
hexadj(hexx,hexy,global.dirtwoaway[hdir,0]);

// Second step
if (global.dirtwoaway[hdir,1] == -1) {
  return 0;
  }
hexx = global.hexx;
hexy = global.hexy;
hexadj(hexx,hexy,global.dirtwoaway[hdir,1]);
return 0;

