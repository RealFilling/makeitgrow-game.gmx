// weatherevap
// Weather type evaporation/addition factor
global.weatherevap[WEATHER_STORM] = -31;
global.weatherevap[WEATHER_RAIN] = -18;
global.weatherevap[WEATHER_DRIZZLE] = -10;
global.weatherevap[WEATHER_CLOUDY] = -3;
global.weatherevap[WEATHER_CLEAR] = -1;
global.weatherevap[WEATHER_HOT] = 3;
global.weatherevap[WEATHER_DROUGHT] = 5;

// weathernames
// Text strings representing the evaporation value of the weather.
global.weathernames[WEATHER_STORM] = "Storm";
global.weathernames[WEATHER_RAIN] = "Heavy Rain";
global.weathernames[WEATHER_DRIZZLE] = "Light Rain";
global.weathernames[WEATHER_CLOUDY] = "Cloudy";
global.weathernames[WEATHER_CLEAR] = "Clear";
global.weathernames[WEATHER_HOT] = "Dry";
global.weathernames[WEATHER_DROUGHT] = "Arid";

// weathertexts
// Messages that appear on the ticker when a period of weather begins
global.weathertexts[WEATHER_STORM] = "It's storming heavily.";
global.weathertexts[WEATHER_RAIN] = "It's raining heavily now.";
global.weathertexts[WEATHER_DRIZZLE] = "It's raining lightly.";
global.weathertexts[WEATHER_CLOUDY] = "The sky is cloudy.";
global.weathertexts[WEATHER_CLEAR] = "The sky is clear.";
global.weathertexts[WEATHER_HOT] = "The air is dry.";
global.weathertexts[WEATHER_DROUGHT] = "The air is very dry.";

// rawweatherlookup
// The amounts obtained by adding up nearby seeds are converted to weather constants
//   by this array (plus seven).
globalvar rawweatherlookup;
rawweatherlookup[0] = WEATHER_STORM;
rawweatherlookup[1] = WEATHER_RAIN;
rawweatherlookup[2] = WEATHER_RAIN;
rawweatherlookup[3] = WEATHER_DRIZZLE;
rawweatherlookup[4] = WEATHER_CLOUDY;
rawweatherlookup[5] = WEATHER_CLOUDY;
rawweatherlookup[6] = WEATHER_CLOUDY;
rawweatherlookup[7] = WEATHER_CLEAR; // Zero point
rawweatherlookup[8] = WEATHER_CLEAR;
rawweatherlookup[9] = WEATHER_CLEAR;
rawweatherlookup[10] = WEATHER_CLEAR;
rawweatherlookup[11] = WEATHER_HOT;
rawweatherlookup[12] = WEATHER_HOT;
rawweatherlookup[13] = WEATHER_HOT;
rawweatherlookup[14] = WEATHER_DROUGHT;
rawweatherlookup[15] = WEATHER_DROUGHT;

// weathertilllookup
// Tilled land absorbs water more readily, but also causes it to evaporate quickly,
//   magnifying the effects of weather.  When moisture is added to a tile through
//   precipitation, the amount is magnified by this amount (indexed by the till
//   level).
globalvar weathertilllookup;
weathertilllookup[0] = 1;
weathertilllookup[1] = 1.1;
weathertilllookup[2] = 1.2;
weathertilllookup[3] = 1.5;


// monthlymoist
// This is the approximate weather level of each month.
// There's a substantial random factor in weather that generally simulates real-world
//   weather patterns, so March and April, probablistically-speaking, will probably
//   be rainy, but they may not be.

globalvar monthlymoist;
monthlymoist[0] = 0; monthlymoist[1] = 0; monthlymoist[2] = -1; monthlymoist [3] = -1;
monthlymoist[4] = 1; monthlymoist[5] = 2; monthlymoist[6] =  2; monthlymoist [7] = 1;
monthlymoist[8] = 0; monthlymoist[9] = 0; monthlymoist[10] = -1; monthlymoist [11] = -1;

// weatherspr
// The sprite overlays drawn atop the field for each weather condition.
global.weatherspr[WEATHER_STORM] = spr_storm;
global.weatherspr[WEATHER_RAIN] = spr_heavyrain;
global.weatherspr[WEATHER_DRIZZLE] = spr_lightrain;
global.weatherspr[WEATHER_CLOUDY] = spr_clear;
global.weatherspr[WEATHER_CLEAR] = spr_clear;
global.weatherspr[WEATHER_HOT] = spr_dry;
global.weatherspr[WEATHER_DROUGHT] = spr_arid;
