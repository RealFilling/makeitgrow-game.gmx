boxwidth = max((string_length(global.parameter1)*4)+10,90);
textwork = wordwrap(global.parameter1,boxwidth-10);
cardtext = string_copy(textwork,2,string_length(textwork)-1); // Inserts linebreaks
lines = string_count("#",cardtext);
boxheight = (lines * TUTORIALCARDLINEHEIGHT)+20;
arrowdir = global.parameter2; //0,1,2,3: Point up, right, down, left
boxcolor = global.parameter5;

x1 = x - (boxwidth / 2);
x2 = x + (boxwidth / 2);
y1 = y - (boxheight / 2);
y2 = y + (boxheight / 2);
state = TCSTATE_APPEAR;
statetimer = 10; // Counts down
frameflash = c_white;
