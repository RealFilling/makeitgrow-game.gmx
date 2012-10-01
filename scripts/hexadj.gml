var hexx, hexy, hdir;
hexx = argument0;
hexy = argument1;
hdir = argument2;

rowoffset = lowbitc(hexy);// * (TILEWIDTH div 2);
if (rowoffset == 1) {
  hexx += dirxh0[hdir];
  hexy += diryh0[hdir];
  }
else {
  hexx += dirxh1[hdir];
  hexy += diryh1[hdir];
  }
global.hexx = hexx;
global.hexy = hexy;
