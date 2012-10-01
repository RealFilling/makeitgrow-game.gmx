var oldyearday, oldmonth, oldyear;
oldyearday = global.yearday;
oldmonth = global.month;
oldyear = global.year;
global.rawtime += 1;
global.tick = global.rawtime mod TICKSPERDAY;
global.day = (global.rawtime div TICKSPERDAY) mod DAYSPERMONTH;
global.week = (global.day mod DAYSPERWEEK) mod (WEEKSPERYEAR);
global.yearday = global.day mod (DAYSPERMONTH * MONTHSPERYEAR);
global.month = (global.rawtime div (TICKSPERDAY*DAYSPERMONTH)) mod MONTHSPERYEAR;
global.year = (global.rawtime div (TICKSPERDAY*DAYSPERMONTH*MONTHSPERYEAR));

// The following assumes that no more than one day passes per call to this function.
if (global.yearday != oldyearday) {
  time_daily();
  }
if (global.month != oldmonth) {
  time_monthly();
  }
if (global.year != oldyear) {
  time_yearly();
  }

