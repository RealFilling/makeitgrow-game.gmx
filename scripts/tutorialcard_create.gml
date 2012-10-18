cardtext = wordwrap(global.parameter1,120); // Inserts linebreaks
arrowdir = global.parameter2; //0,1,2,3: Point up, right, down, left

boxwidth = 130;
boxheight = 80;
x1 = x - (boxwidth / 2);
x2 = x + (boxwidth / 2);
y1 = y - (boxheight / 2);
y2 = y + (boxheight / 2);
state = TCSTATE_APPEAR;
statetimer = 10; // Counts down
frameflash = c_white;
