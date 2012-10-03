var bx,by,oldpressure,pressuretoadd;
bx = argument0;
by = argument1;
pressuretoadd = argument2;
oldpressure = getpipepressure(bx,by);
if (oldpressure + pressuretoadd <= 255) {
  setpipepressure(bx,by,oldpressure + pressuretoadd);
  return 0;
  }
else {
  setpipepressure(bx,by,255);
  return (oldpressure + pressuretoadd) - 255;
  }

