// Timekeeping constants
global.ticksperhour = 60/MINUTESPERTICK;
global.ticksperday = 24*global.ticksperhour;
global.tickspermonth = global.ticksperday * DAYSPERMONTH;

// Timekeeping initialization
global.cellcalc = 0;
global.stripecalc = 0;
global.turncount = 0;
global.framecount = 0;
//
//global.rawtime = global.ticksperday*DAYSPERMONTH*2;
global.rawtime = 0;
global.year = 0;
global.yearday = 0;
//global.season = 0;
global.week = 0;
global.month = 0;
global.day = 0;
global.tick = 0;
global.subtick = 0;
// Year length:
global.daysperyear = DAYSPERMONTH * MONTHSPERYEAR;

