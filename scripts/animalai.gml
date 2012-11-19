// Animal movement priorities:
// 1. If thirsty, look for water.
// 2. If hungry, look for food.
// 3. If raining, look for shelter.
// 4. If threatened, run away from threat.
// 5. If none of the above, then there is no pressing need.  In that event,
//      we move in a semi-random manner.  Priority is given first towards
//      staying near other animals of the same type (herding), then towards
//      staying near a home beacon (WIP), and beyond that random movement.

if (global.currentweather == WEATHER_DROUGHT) {
  waterfull = max(waterfull-(waterdecrease+2),0);
  }
else if (global.currentweather == WEATHER_HOT) {
  waterfull = max(waterfull-(waterdecrease+1),0);
  }
else if (global.currentweather <= WEATHER_RAIN) {
  waterfull = max(waterfull-(waterdecrease-1),0);
  }
else {
  waterfull = max(waterfull-waterdecrease,0);
  }
foodfull = max(foodfull-fooddecrease,0);

if (waterfull <= 0) {
  // Find water priority
  seeksomething(SEARCHFOR_WATER);
  }
else if (foodfull <= 0) {
  // Find food priority
  switch (animaltype) {
    case ANIMAL_CHICKEN:
      seeksomething(SEARCHFOR_CHICKENFOOD);
      break;
    case ANIMAL_COW:
      seeksomething(SEARCHFOR_COWFOOD);
      break;
    case ANIMAL_PIG:
      seeksomething(SEARCHFOR_PIGFOOD);
      break;
    default:
      show_error("ERROR: animalai() unknown animal type!", false);
      animaltype = ANIMAL_CHICKEN; // Just to shut it up.
      break;
    }
  }
else if (threatened == true) {
  // Find safety
  seeksomething(SEARCHFOR_SAFETY);
  }
else if ((global.currentweather == WEATHER_STORM) or
         (global.currentweather == WEATHER_RAIN)) {
  // Find shelter priority
  seeksomething(SEARCHFOR_SHELTER);
  }
else if (waterfull <= 30) {
  // Find water
  seeksomething(SEARCHFOR_WATER);
  }
else if (foodfull <= 30) {
  // Find food
  switch (animaltype) {
    case ANIMAL_CHICKEN:
      seeksomething(SEARCHFOR_CHICKENFOOD);
      break;
    case ANIMAL_COW:
      seeksomething(SEARCHFOR_COWFOOD);
      break;
    case ANIMAL_PIG:
      seeksomething(SEARCHFOR_PIGFOOD);
      break;
    default:
      show_error("ERROR: animalai() unknown animal type!", false);
      animaltype = ANIMAL_CHICKEN;
      break;
    }
  }
else if ((global.currentweather == WEATHER_DRIZZLE)) {
  // Find shelter
  seeksomething(SEARCHFOR_SHELTER);
  }
else if ((colonlevel >= colonsize) and (animal_okaytopoop())) {
  animal_poop();
  }
else {
  if (fiftyfifty() == 1) {
    animal_moverandom();
    }
  }
  

