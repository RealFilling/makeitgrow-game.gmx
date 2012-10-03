var relativeday, offset, runningtotal;
relativeday = argument0;
runningtotal = 0;
for (offset=-WEATHER_SPREADDAYS;offset<=WEATHER_SPREADDAYS;offset+=1) {
  if (median(0,relativeday+offset,global.daysperyear-1) == relativeday+offset) {
    runningtotal += global.weatherseeds[relativeday+offset];
    }
  }
//runningtotal = median(-3,runningtotal,3);
global.weatherrainfall[relativeday] = convertrawweather(median(0,runningtotal,15));
return global.weatherrainfall[relativeday];
