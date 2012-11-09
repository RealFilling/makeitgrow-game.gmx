// Name of type of animal
global.animalname[ANIMAL_CHICKEN] = "Chicken";
global.animalname[ANIMAL_COW] = "Cow";
global.animalname[ANIMAL_PIG] = "Pig"

// Sprite sets to use for animal
global.a_sprite_idle[ANIMAL_CHICKEN] = spr_chicken;
global.a_sprite_idle[ANIMAL_COW] = spr_cowadult_idle1_s;
global.a_sprite_idle[ANIMAL_PIG] = spr_pig;
//
global.a_sprite_walk[ANIMAL_CHICKEN] = spr_chicken;
global.a_sprite_walk[ANIMAL_COW] = spr_cowadult_walk1_s;
global.a_sprite_walk[ANIMAL_PIG] = spr_pig;
//
global.a_sprite_eat[ANIMAL_CHICKEN] = spr_chicken;
global.a_sprite_eat[ANIMAL_COW] = spr_cowadult_eat1_s;
global.a_sprite_eat[ANIMAL_PIG] = spr_pig;


// Is this animal a predator?  (Currently doesn't work.)
global.a_predator[ANIMAL_CHICKEN] = false;
global.a_predator[ANIMAL_COW] = false;
global.a_predator[ANIMAL_PIG] = false;

// How frequently does this animal move? (larger is less often)
global.a_movefreq[ANIMAL_CHICKEN] = 35;
global.a_movefreq[ANIMAL_COW] = 10;
global.a_movefreq[ANIMAL_PIG] = 30;

// How quickly does this animal move? (larger is faster)
global.a_movespeed[ANIMAL_CHICKEN] = 10;
global.a_movespeed[ANIMAL_COW] = 6;
global.a_movespeed[ANIMAL_PIG] = 10;

// How quickly does this animal animate (smaller is faster)
global.a_animdelaymax[ANIMAL_CHICKEN] = 2;
global.a_animdelaymax[ANIMAL_COW] = 10;
global.a_animdelaymax[ANIMAL_PIG] = 5;

// What is the maximum amount of water this animal can store?
// Larger numbers mean searching out water less often.
global.a_watermax[ANIMAL_CHICKEN] = 25;
global.a_watermax[ANIMAL_COW] = 200;
global.a_watermax[ANIMAL_PIG] = 200;

// What is the maximum amount of food this animal can store?
// Larger numbers mean searching for food less often, and ultimately eating less.
global.a_foodmax[ANIMAL_CHICKEN] = 35;
global.a_foodmax[ANIMAL_COW] = 300;
global.a_foodmax[ANIMAL_PIG] = 300;

