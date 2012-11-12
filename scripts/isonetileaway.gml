var px1, py1, px2, py2;
hextopix(argument0,argument1);
px1 = global.hexx;
py1 = global.hexy;
hextopix(argument2,argument3);
px2 = global.hexx;
py2 = global.hexy;
if (pythagorean(px1,py1,px2,py2) < 48.1) {
  return true;
  }
else {
  return false;
  }

