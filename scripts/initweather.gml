var a;
// We take this opportunity to declare the weather report globals.
// Note: The current day is position 13 in this list.
for (a=0;a<global.daysperyear;a+=1) {
  global.weatherseeds[a] = 0; // Either -1, 0 or 1
  global.weatherrainfall[a] = 0; // A value from -3 to 3
  }
global.currentweather = 0;
