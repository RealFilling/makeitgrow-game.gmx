global.returnx = global.removalqueue[(global.removalcounter*2)-2];
global.returny = global.removalqueue[(global.removalcounter*2)-1];
global.removalcounter -= 1;
return global.removalcounter;
