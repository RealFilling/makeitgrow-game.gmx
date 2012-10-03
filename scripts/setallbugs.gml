var a;
if (global.debug) {
  for (a=0; a<8; a+=1) {
    if ((global.bugarray[a] < 0) or (global.bugarray[a]>15)) {
      show_error("setallbugs(): bug type #"+string(a)+" out of range at "+string(global.bugarray[a])+"!",false);
      }
    }
  }

outvalue =  global.bugarray[B_REDBUG] |
           (global.bugarray[B_GREENMANTIS] << 4) |
           (global.bugarray[B_BLUESPIDER] << 8) |
           (global.bugarray[B_ORANGEBEETLE] << 12) |
           (global.bugarray[B_YELLOWFLY] << 16) |
           (global.bugarray[B_CYANWASP] << 20) |
           (global.bugarray[B_GRAYMOTH] << 24) |
           (global.bugarray[B_BEE] << 28);
return outvalue;


