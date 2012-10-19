// Depends on initialized timekeeping.
var day;
// Determine day seeds
for (day=0;day<global.daysperyear;day+=1) {
  determinedayraininfluence(day);
  }
// Determine day rainfall
for (day=0;day<global.daysperyear;day+=1) {
  figuredayweather(day);
  }
// Set current weather conditions
global.currentweather = global.weatherrainfall[13];
global.oldweather = global.currentweather;
//
// Note: day at the very beginning and end of range are figured incorrectly,
//         because days off the end of the range aren't factored in.  This
//         doesn't matter for days at the beginning since they're already past,
//         but at the end it is troublesome.  So, when we advance time a day
//         and scroll a new day into the range, we should recalculate
//         *four* days of rainfall, not just the new one.

if (global.weatherdebug) {
  DEBUG_logweatheryear();
  }
