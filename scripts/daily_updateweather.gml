var tickerstring;
rollweatherback();
figurenewweather();
global.currentweather = global.weatherrainfall[13];
if ((global.oldweather != global.currentweather) or (global.weatherdebug == true)){
  tickerstring = global.weathertexts[global.currentweather]; 
  if (global.weatherdebug == true) {
    tickerstring += " [value "+string(global.currentweather)+"]";
    }
  enqueueticker(tickerstring);
  }
global.oldweather = global.currentweather;
