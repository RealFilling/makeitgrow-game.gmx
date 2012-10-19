var oldhour, oldyearday, oldmonth, oldyear;
oldhour = global.hour;
oldyearday = global.yearday;
oldmonth = global.month;
oldyear = global.year;
global.rawtime += 1;
global.tick += 1;
if (global.tick >= global.ticksperhour) {
  global.tick = 0;
  global.hour += 1;
  if (global.hour >= 24) {
    global.hour = 0;
    global.day += 1;
    global.monthday += 1;
    global.yearday += 1;
    if (global.day >= DAYSPERWEEK) {
      global.day = 0;
      global.week += 1;
      if (global.week >= WEEKSPERMONTH) {
        global.week = 0;
        global.month += 1;
        global.monthday = 0;
        if (global.month >= MONTHSPERYEAR) {
          global.month = 0;
          global.yearday = 0;
          global.year += 1;
          time_yearly();
          }
        time_monthly();
        }
      time_weekly();
      }
    time_daily();
    }
  time_hourly();
  }


