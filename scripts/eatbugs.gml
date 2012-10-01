var a, bx, by, bugsvalue;
bx = argument0;
by = argument1;
bugsvalue = global.bugs[bx,by];
getallbugs(bugsvalue);
for (a=0; a<NUMBUGS; a+=1) {
  global.bugarray[a] = max(global.bugarray[a] - irandom_range(1,global.bugarray[a]+4),0)
  }
global.bugs[bx,by] = setallbugs();
