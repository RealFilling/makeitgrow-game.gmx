var relativeday;
// Uses the current game day to figure out what the absolute day is,
//   counting from the first of the year, when given a day relative to 
//   the current day (global.yearday)
relativeday = argument0;
return ((relativeday + global.yearday - 13) + global.daysperyear) mod global.daysperyear;

