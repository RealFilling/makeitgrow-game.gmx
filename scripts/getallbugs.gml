invalue = argument0;
global.bugarray[B_REDBUG] = invalue & 15;
global.bugarray[B_GREENMANTIS] = (invalue & 240) >> 4;
global.bugarray[B_BLUESPIDER] = (invalue & 3840) >> 8;
global.bugarray[B_ORANGEBEETLE] = (invalue & 61440) >> 12;
global.bugarray[B_YELLOWFLY] = (invalue & 983040) >> 16;
global.bugarray[B_CYANWASP] = (invalue & 15728640) >> 20;
global.bugarray[B_GRAYMOTH] = (invalue & 251658240) >> 24;
global.bugarray[B_BEE] = (invalue & 4026531840) >> 28;
return 0;

