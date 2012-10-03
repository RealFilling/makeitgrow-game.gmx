var ex, ey;
ex = argument0;
ey = argument1;
global.plants[ex,ey] = 0;
global.harvest[ex,ey] = 0;
setpipeexist(ex,ey,0);
setgreenh(ex,ey,0);
validatesurroundingpipes(ex,ey);
return 0;

