var bx, by, bugtype, bugnum, thisbugs;
bx = argument0;
by = argument1;
bugtype = argument2;
bugnum = argument3;
thisbugs = global.bugs[bx, by];
getallbugs(thisbugs);
global.bugarray[bugtype] = min(global.bugarray[bugtype]+bugnum,15);
global.bugs[bx,by] = setallbugs();
