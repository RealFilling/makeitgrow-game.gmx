exists = true;
//
// Get animal attributes from arrays
predator = global.a_predator[animaltype];
movefreq = global.a_movefreq[animaltype];
movespeed = global.a_movespeed[animaltype];
animdelay = global.a_animdelay[animaltype];
watermax = global.a_watermax[animaltype];
foodmax = global.a_foodmax[animaltype];
colonsize = global.a_colonsize[animaltype];
poopsize = global.a_poopsize[animaltype];
isbig = global.a_isbig[animaltype];
//
animsprite_idle = global.a_sprite_idle[animaltype]; // No facing
animsprite_walk = global.a_sprite_walk[animaltype]; // Six directions
animsprite_eat = global.a_sprite_eat[animaltype]; // No facing
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
colonlevel = 0;
//
herdstrength = global.a_herdstrength[animaltype];
callstrength = global.a_callstrength[animaltype];

age = 0;

waterdecrease = 2;
fooddecrease = 2;
threatened = false; // Predator in sight
panicked = false; // Some condition is critical
sick = false; // Has come down with something
animdelaycount = animdelay;
animframe = 0;

isplayer = false;
moving = false;
facing = 0;
moveprogress = 0;
mirrored = false; // UNUSED as of yet, maybe later
animal_resetmovedelay();
global.animalcounts[animaltype] += 1;

animalbase_changeanimstate(ANIANIMSTATE_IDLE);


