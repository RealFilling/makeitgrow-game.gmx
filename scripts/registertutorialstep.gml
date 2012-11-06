var text, cardtype, cparam1, cparam2, delay, arrowdir;
var tasktype;
text = argument0;
cardtype = argument1;// Where to display this card
cparam1 = argument2; // X, or tile type
cparam2 = argument3; // Y
tasktype = argument4;// What clears this task?
tparam1 = argument5; // TTT_WAIT:delay in frames,TTT_CLICK:what button to click,TTT_USE:what tool to use,TTT_USEPLACE:what tool to use on the highlighted place
tparam2 = argument6; // Currently unused
arrowdir = argument7;
boxcolor = argument8;

//
global.tutstep_text[global.tutstepcount] = text;
global.tutstep_cardtype[global.tutstepcount] = cardtype;
global.tutstep_cparam1[global.tutstepcount] = cparam1;
global.tutstep_cparam2[global.tutstepcount] = cparam2;
global.tutstep_tasktype[global.tutstepcount] = tasktype;
global.tutstep_tparam1[global.tutstepcount] = tparam1;
global.tutstep_tparam2[global.tutstepcount] = tparam2;
global.tutstep_arrowdir[global.tutstepcount] = arrowdir;
global.tutstep_boxcolor[global.tutstepcount] = boxcolor;
global.tutstepcount += 1;
