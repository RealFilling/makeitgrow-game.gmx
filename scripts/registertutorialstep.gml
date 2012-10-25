var text, cardtype, param1, param2, delay, arrowdir;
text = argument0;
cardtype = argument1;
param1 = argument2; //X, or tile type
param2 = argument3; //Y, or tile emphasis
delay = argument4;
arrowdir = argument5;
//
global.tutstep_text[global.tutstepcount] = text;
global.tutstep_cardtype[global.tutstepcount] = cardtype;
global.tutstep_param1[global.tutstepcount] = param1;
global.tutstep_param2[global.tutstepcount] = param2;
global.tutstep_delay[global.tutstepcount] = delay;
global.tutstep_arrowdir[global.tutstepcount] = arrowdir;
global.tutstepcount += 1;
