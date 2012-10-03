var relativeday, absoluteday, thismoist, seedrain;
relativeday = argument0;
absoluteday = figureabsoluteday(relativeday);
thismoist = determinedaybaserain(absoluteday);
seedrain = sign(irandom_range(-3,3)+thismoist);
global.weatherseeds[relativeday] = seedrain;
return seedrain;
