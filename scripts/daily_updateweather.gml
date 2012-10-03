rollweatherback();
figurenewweather();
global.currentweather = global.weatherrainfall[13];
if (global.oldweather != global.currentweather) {
  enqueueticker(global.weathertexts[global.currentweather]);
  }
global.oldweather = global.currentweather;
