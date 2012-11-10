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

// How fast should this animal animate?
// At 0, it animates one sprite frame per game frame, which is quite
//   speedy.  Higher numbers animate more slowly.  This should be
//   coordinated with global.a_movespeed, below.
global.a_animdelay[ANIMAL_CHICKEN] = 0;
global.a_animdelay[ANIMAL_COW] = 2;
global.a_animdelay[ANIMAL_PIG] = 1;

// How much does it cost to get one of these animals?
global.a_cost[ANIMAL_CHICKEN] = 500;
global.a_cost[ANIMAL_COW] = 5000;
global.a_cost[ANIMAL_PIG] = 3000;

// How strongly does this animal herd with others of its type?
// 0 means not at all, then higher numbers increase its influence.
global.a_herdstrength[ANIMAL_CHICKEN] = 3;
global.a_herdstrength[ANIMAL_COW] = 8;
global.a_herdstrength[ANIMAL_CHICKEN] = 1;

// How strongly does this animal respond to calls?
// 0 means not at all, higher numbers mean more responsive.
// This value is scaled by the inverse of the age of the call.
global.a_callstrength[ANIMAL_CHICKEN] = 3;
global.a_callstrength[ANIMAL_COW] = 6;
global.a_callstrength[ANIMAL_CHICKEN] = 2;

// Is this animal a predator?  (Currently doesn't work.)
global.a_predator[ANIMAL_CHICKEN] = false;
global.a_predator[ANIMAL_COW] = false;
global.a_predator[ANIMAL_PIG] = false;

// How frequently does this animal move? (larger is less often)
global.a_movefreq[ANIMAL_CHICKEN] = 35;
global.a_movefreq[ANIMAL_COW] = 10;
global.a_movefreq[ANIMAL_PIG] = 30;

// How quickly does this animal move? (larger is faster)
global.a_movespeed[ANIMAL_CHICKEN] = 8;
global.a_movespeed[ANIMAL_COW] = 2;
global.a_movespeed[ANIMAL_PIG] = 6;

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



