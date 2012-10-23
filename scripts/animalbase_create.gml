exists = true;
//
// Get animal attributes from arrays
predator = global.a_predator[animaltype];
movefreq = global.a_movefreq[animaltype];
movespeed = global.a_movespeed[animaltype];
animdelaymax = global.a_animdelaymax[animaltype];
watermax = global.a_watermax[animaltype];
foodmax = global.a_foodmax[animaltype];
//
boardx = global.parameter1;
boardy = global.parameter2;
homex = global.parameter3;
homey = global.parameter4;
image_speed = 0;
ahealth = 100; // Not named "health" because Game Maker uses that variable, and we
               //   don't want it automatically doing things based on this thank you.
waterfull = watermax;
foodfull = foodmax;

age = 0;

waterdecrease = 2;
fooddecrease = 2;
threatened = false; // Predator in sight
panicked = false; // Some condition is critical
sick = false; // Has come down with something
animdelay = animdelaymax;
animframe = 0;

isplayer = false;
moving = false;
facing = 0;
moveprogress = 0;
animal_resetmovedelay();
global.animalcounts[animaltype] += 1;


