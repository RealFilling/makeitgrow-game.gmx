var a;
// Remember: plant 0 means no plant here
globalvar plantsprites;
plantsprites[P_EMPTY] = spr_p_empty;
plantsprites[P_ITCHGRASS] = spr_p_itchgrass;
plantsprites[P_STRAWBERRY] = spr_p_strawberries;
plantsprites[P_BLUEBERRY] = spr_p_blueberries;
plantsprites[P_CORNFLOWER] = spr_p_cornflower;
plantsprites[P_CLIANTRO] = spr_p_cliantro;
plantsprites[P_CLOVER] = spr_p_clover;
plantsprites[P_DANDELION] = spr_p_dandelion;
plantsprites[P_ONION] = spr_p_onion;
plantsprites[P_MUSHROOM] = spr_p_mushrooms;
plantsprites[P_BLUEHEDGE] = spr_p_bluehedge;
plantsprites[P_GREENTOMATO] = spr_p_greentomatoes;
plantsprites[P_HEDGE] = spr_p_hedge;
plantsprites[P_GRASS] = spr_p_grass;
plantsprites[P_WEED] = spr_p_sunflowers;
plantsprites[P_TOMATO] = spr_p_empty;
plantsprites[P_WATERMELON] = spr_p_empty;
plantsprites[P_EGGPLANT] = spr_p_empty;
plantsprites[P_PEPPER] = spr_p_peppers;
plantsprites[P_LETTUCE] = spr_p_lettuce;
plantsprites[P_BLUELETTUCE] = spr_p_bluelettuce;


// plantmineral: the type of mineral the plant prefers.
// red = 0, green = 1, blue = 2
globalvar plantmineral;
plantmineral[P_EMPTY] = -1;
plantmineral[P_REDX] = RED;
plantmineral[P_REDPLUS] = RED;
plantmineral[P_BLUEROUND] = BLUE;
plantmineral[P_BLUECLUSTER] = BLUE;
plantmineral[P_GREENCLUSTER] = GREEN;
plantmineral[P_GREENMEANDER] = GREEN;
plantmineral[P_REDSCATTER] = RED;
plantmineral[P_REDHARDY] = RED;
plantmineral[P_BLUEWAVE] = BLUE;
plantmineral[P_BLUEVERTICAL] = BLUE;
plantmineral[P_GREENDELICATE] = GREEN;
plantmineral[P_GREENHORIZONTAL] = GREEN;
plantmineral[P_GRASS] = MS_REPLENISH; // Special: replenishes minerals
plantmineral[P_WEED] = MS_ALL; // Special: consumes all minerals
plantmineral[P_REDMELON] = RED;
plantmineral[P_GREENMELON] = GREEN;
plantmineral[P_BLUEMELON] = BLUE;
plantmineral[P_REDLEAFY] = RED;
plantmineral[P_GREENLEAFY] = GREEN;
plantmineral[P_BLUELEAFY] = BLUE;
plantmineral[T_RED_TOP] = RED;
plantmineral[T_RED_BOTTOM] = RED;
plantmineral[T_GREEN_TOP] = GREEN;
plantmineral[T_GREEN_BOTTOM] = GREEN; 


// deathmineral: the amount of mineral a dead plant is mulched for/returns to the soil
globalvar deathmineral;
deathmineral[P_EMPTY] = -1;
deathmineral[P_REDX] = 60;
deathmineral[P_REDPLUS] = 30;
deathmineral[P_BLUEROUND] = 24;
deathmineral[P_BLUECLUSTER] = 34;
deathmineral[P_GREENCLUSTER] = 28;
deathmineral[P_GREENMEANDER] = 45;
deathmineral[P_REDSCATTER] = 30;
deathmineral[P_REDHARDY] = 20;
deathmineral[P_BLUEWAVE] = 30;
deathmineral[P_BLUEVERTICAL] = 50;
deathmineral[P_GREENDELICATE] = 60;
deathmineral[P_GREENHORIZONTAL] = 50;
deathmineral[P_GRASS] = 0; // It's better to grow grass than mulch it
deathmineral[P_WEED] = 0; // This makes weeds fairly wasteful
deathmineral[T_RED_TOP] = 20;
deathmineral[T_RED_BOTTOM] = 20;
deathmineral[T_GREEN_TOP] = 20;
deathmineral[T_GREEN_BOTTOM] = 20; 

// plantminneed: the number of minerals the plant needs to advance a growth stage, 
//                 spread, or produce fruit
globalvar plantminneed;
plantminneed[P_EMPTY] = 0;
plantminneed[P_REDX] = 3;
plantminneed[P_REDPLUS] = 6;
plantminneed[P_BLUEROUND] = 6;
plantminneed[P_BLUECLUSTER] = 2;
plantminneed[P_GREENCLUSTER] = 2;
plantminneed[P_GREENMEANDER] = 2;
plantminneed[P_REDSCATTER] = 3;
plantminneed[P_REDHARDY] = 4;
plantminneed[P_BLUEWAVE] = 2;
plantminneed[P_BLUEVERTICAL] = 3;
plantminneed[P_GREENDELICATE] = 7;
plantminneed[P_GREENHORIZONTAL] = 3;
plantminneed[P_GRASS] = 1; // In this game, grass has a restorative function.
plantminneed[P_WEED] = 1; // Weeds are low because it consumes all three, more than making up for it
plantminneed[P_REDMELON] = 4; // Red Melon has higher than usual mineral requirements!
plantminneed[P_GREENMELON] = 6;
plantminneed[P_BLUEMELON] = 5;
plantminneed[P_REDLEAFY] = 5; // Leafy plants require less minerals than average.
plantminneed[P_GREENLEAFY] = 3; // But Green Leafy is an exception
plantminneed[P_BLUELEAFY] = 4;
plantminneed[T_RED_TOP] = 1; // Low tree requirements combine with large area drawn from to give trees
plantminneed[T_RED_BOTTOM] = 1; // high longevity.
plantminneed[T_GREEN_TOP] = 1;
plantminneed[T_GREEN_BOTTOM] = 1; 


// plantwatneed: the amount of water the plant needs to succeed at a growth check.
//               This is also the amount of water the plant consumes.
globalvar plantwatneed;
plantwatneed[P_EMPTY] = 0
plantwatneed[P_REDX] = 2;
plantwatneed[P_REDPLUS] = 5;
plantwatneed[P_BLUEROUND] = 3;
plantwatneed[P_BLUECLUSTER] = 5;
plantwatneed[P_GREENCLUSTER] = 5;
plantwatneed[P_GREENMEANDER] = 2;
plantwatneed[P_REDSCATTER] = 1;
plantwatneed[P_REDHARDY] = 2;
plantwatneed[P_BLUEWAVE] = 1;
plantwatneed[P_BLUEVERTICAL] = 3;
plantwatneed[P_GREENDELICATE] = 5;
plantwatneed[P_GREENHORIZONTAL] = 3;
plantwatneed[P_GRASS] = 6;
plantwatneed[P_WEED] = 1;
plantwatneed[P_REDMELON] = 4; // All melons have higher-than-average moisture requirements
plantwatneed[P_GREENMELON] = 4;
plantwatneed[P_BLUEMELON] = 3;
plantwatneed[P_REDLEAFY] = 3;
plantwatneed[P_GREENLEAFY] = 4;
plantwatneed[P_BLUELEAFY] = 5; // Blue Leafy has very high moisture requirements!
plantwatneed[T_RED_TOP] = 1; // Trees are pretty hardy
plantwatneed[T_RED_BOTTOM] = 1;
plantwatneed[T_GREEN_TOP] = 1;
plantwatneed[T_GREEN_BOTTOM] = 1; 


// harvestworth: The cash amount for each unit of harvest for this plant
globalvar harvestworth;
harvestworth[P_EMPTY] = 0;
harvestworth[P_REDX] = 0;
harvestworth[P_REDPLUS] = 3;
harvestworth[P_BLUEROUND] = 4;
harvestworth[P_BLUECLUSTER] = 0;
harvestworth[P_GREENCLUSTER] = 1;
harvestworth[P_GREENMEANDER] = 0;
harvestworth[P_REDSCATTER] = 0;
harvestworth[P_REDHARDY] = 2;
harvestworth[P_BLUEWAVE] = 1;
harvestworth[P_BLUEVERTICAL] = 0;
harvestworth[P_GREENDELICATE] = 3;
harvestworth[P_GREENHORIZONTAL] = 0;
harvestworth[P_GRASS] = 0;
harvestworth[P_WEED] = 0;
harvestworth[P_REDMELON] = 3; // These plants don't spread on their own, are destroyed by
harvestworth[P_GREENMELON] = 5; // harvesting, and have special requirements, so they are
harvestworth[P_BLUEMELON] = 2; //  worth more money
harvestworth[P_REDLEAFY] = 2;
harvestworth[P_GREENLEAFY] = 1;
harvestworth[P_BLUELEAFY] = 2;
harvestworth[T_RED_TOP] = 32; // Trees are weird cases; they should be balanced specially
harvestworth[T_RED_BOTTOM] = 32; // These figures have not been balanced yet; they are arbitrary.
harvestworth[T_GREEN_TOP] = 48;
harvestworth[T_GREEN_BOTTOM] = 48; 


// deathchance: If a plant doesn't grow/produce harvest on a turn, it has a chance to die.
//                This is actually what kills most plants, ultimately, by design, so don't
//                set too low.  A good average level is 25%.
globalvar deathchance;
deathchance[P_EMPTY] = 0;
deathchance[P_REDX] = 25;
deathchance[P_REDPLUS] = 25;
deathchance[P_BLUEROUND] = 30;
deathchance[P_BLUECLUSTER] = 40;
deathchance[P_GREENCLUSTER] = 40;
deathchance[P_GREENMEANDER] = 15;
deathchance[P_REDSCATTER] = 30;
deathchance[P_REDHARDY] = 15;
deathchance[P_BLUEWAVE] = 15; // Has alternate means of killing it
deathchance[P_BLUEVERTICAL] = 20;
deathchance[P_GREENDELICATE] = 40;
deathchance[P_GREENHORIZONTAL] = 20;
deathchance[P_GRASS] = 15;
deathchance[P_WEED] = 5;
deathchance[P_REDMELON] = 20;
deathchance[P_GREENMELON] = 30; // Slightly less hardy than the other melons
deathchance[P_BLUEMELON] = 20;
deathchance[P_REDLEAFY] = 18;
deathchance[P_GREENLEAFY] = 20;
deathchance[P_BLUELEAFY] = 20;
deathchance[T_RED_TOP] = 2; // Trees are hard to kill (although they need a lot
deathchance[T_RED_BOTTOM] = 2; // of minerals, so they drain soil fast)
deathchance[T_GREEN_TOP] = 2;
deathchance[T_GREEN_BOTTOM] = 2; 


// extragrowchance: Usually, a plant attempts to spread when it achieves growth state 3,
//                    one step before maturity.  But once mature, it occaisionally tries 
//                    growing again.  This is the percent chance it has of doing this.  It
//                    is very important that this not be too high!  If a plant ends up growing
//                    into a dense field, then most growth chances will fail anyway.  Since
//                    most plants will end up being mature (and hopefully producing harvests),
//                    this could end up turning into a huge time drain if it's set too high.
//                    Particularly, keep it low for grass and weeds.
// Not yet implemented
globalvar extragrowchance;
extragrowchance[P_EMPTY] = 0;
extragrowchance[P_REDX] = 2;
extragrowchance[P_REDPLUS] = 2;
extragrowchance[P_BLUEROUND] = 1;
extragrowchance[P_BLUECLUSTER] = 2;
extragrowchance[P_GREENCLUSTER] = 2;
extragrowchance[P_GREENMEANDER] = 5;
extragrowchance[P_REDSCATTER] = 1;
extragrowchance[P_REDHARDY] = 5;
extragrowchance[P_BLUEWAVE] = 10;
extragrowchance[P_BLUEVERTICAL] = 2;
extragrowchance[P_GREENDELICATE] = 5;
extragrowchance[P_GREENHORIZONTAL] = 2;
extragrowchance[P_GRASS] = 1;
extragrowchance[P_WEED] = 1;
extragrowchance[P_REDMELON] = 0; // Melons and Leafy plants don't propigate naturally here.
extragrowchance[P_GREENMELON] = 0;
extragrowchance[P_BLUEMELON] = 0;
extragrowchance[P_REDLEAFY] = 0;
extragrowchance[P_GREENLEAFY] = 0;
extragrowchance[P_BLUELEAFY] = 0;
extragrowchance[T_RED_TOP] = 0; // Trees do not spread in this game
extragrowchance[T_RED_BOTTOM] = 0;
extragrowchance[T_GREEN_TOP] = 0;
extragrowchance[T_GREEN_BOTTOM] = 0; 



// heightaffinity
// Extra chance of a growth event succeeding based on height above middle elevation (24)
// Elevations below that height are reversed.
// Fractional amounts are allowed here.  These should be designed based upon the chances at maximum extents,
//   and it should be remembered that this could make some plants successful at times outside of their season
//   if the effect is great.
globalvar heightaffinity;
heightaffinity[P_EMPTY] = 0;
heightaffinity[P_REDX] = +0.5;
heightaffinity[P_REDPLUS] = -0.5;
heightaffinity[P_BLUEROUND] = -1.0;
heightaffinity[P_BLUECLUSTER] = +0.5;
heightaffinity[P_GREENCLUSTER] = -0.5;
heightaffinity[P_GREENMEANDER] = 0;
heightaffinity[P_REDSCATTER] = -0.5;
heightaffinity[P_REDHARDY] = 0;
heightaffinity[P_BLUEWAVE] = +0.5;
heightaffinity[P_BLUEVERTICAL] = +0.5;
heightaffinity[P_GREENDELICATE] = -1.0;
heightaffinity[P_GREENHORIZONTAL] = -0.5;
heightaffinity[P_GRASS] = -0.5;
heightaffinity[P_WEED] = +0.5;
heightaffinity[P_REDMELON] = -0.5; // Melons like low places
heightaffinity[P_GREENMELON] = -0.5;
heightaffinity[P_BLUEMELON] = -0.5;
heightaffinity[P_REDLEAFY] = +0.5; // Leafy plants like high places
heightaffinity[P_GREENLEAFY] = +0.5;
heightaffinity[P_BLUELEAFY] = +0.5;
heightaffinity[T_RED_TOP] = +0.0;
heightaffinity[T_RED_BOTTOM] = +0.0;
heightaffinity[T_GREEN_TOP] = +0.0;
heightaffinity[T_GREEN_BOTTOM] = +0.0; 

// crowdthreshold
// The number of adjacent filled tiles that causes dieoffs.
globalvar crowdthreshold;
crowdthreshold[P_EMPTY] = 7;
crowdthreshold[P_REDX] = 3;
crowdthreshold[P_REDPLUS] = 5;
crowdthreshold[P_BLUEROUND] = 5;
crowdthreshold[P_BLUECLUSTER] = 4;
crowdthreshold[P_GREENCLUSTER] = 4;
crowdthreshold[P_GREENMEANDER] = 3;
crowdthreshold[P_REDSCATTER] = 3;
crowdthreshold[P_REDHARDY] = 6;
crowdthreshold[P_BLUEWAVE] = 3;
crowdthreshold[P_BLUEVERTICAL] = 4;
crowdthreshold[P_GREENDELICATE] = 3;
crowdthreshold[P_GREENHORIZONTAL] = 3;
crowdthreshold[P_GRASS] = 7;
crowdthreshold[P_WEED] = 6;
crowdthreshold[P_REDMELON] = 4;
crowdthreshold[P_GREENMELON] = 4;
crowdthreshold[P_BLUEMELON] = 4;
crowdthreshold[P_REDLEAFY] = 4;
crowdthreshold[P_GREENLEAFY] = 4;
crowdthreshold[P_BLUELEAFY] = 4;
crowdthreshold[T_RED_TOP] = 10; // Trees don't overcrowd; they crowd out other things!
crowdthreshold[T_RED_BOTTOM] = 10;
crowdthreshold[T_GREEN_TOP] = 10;
crowdthreshold[T_GREEN_BOTTOM] = 10; 


// crowdbirthlimit
// The number of adjacent filled tiles that prevents births of this species.
// Generally, should be equal to or less than crowdthreshold.
globalvar crowdbirthlimit;
crowdbirthlimit[P_EMPTY] = 7;
crowdbirthlimit[P_REDX] = 3;
crowdbirthlimit[P_REDPLUS] = 5;
crowdbirthlimit[P_BLUEROUND] = 5;
crowdbirthlimit[P_BLUECLUSTER] = 4;
crowdbirthlimit[P_GREENCLUSTER] = 4;
crowdbirthlimit[P_GREENMEANDER] = 3;
crowdbirthlimit[P_REDSCATTER] = 3;
crowdbirthlimit[P_REDHARDY] = 5;
crowdbirthlimit[P_BLUEWAVE] = 3;
crowdbirthlimit[P_BLUEVERTICAL] = 4;
crowdbirthlimit[P_GREENDELICATE] = 3;
crowdbirthlimit[P_GREENHORIZONTAL] = 3;
crowdbirthlimit[P_GRASS] = 7;
crowdbirthlimit[P_WEED] = 5;
crowdbirthlimit[P_REDMELON] = 0;
crowdbirthlimit[P_GREENMELON] = 0;
crowdbirthlimit[P_BLUEMELON] = 0;
crowdbirthlimit[P_REDLEAFY] = 0;
crowdbirthlimit[P_GREENLEAFY] = 0;
crowdbirthlimit[P_BLUELEAFY] = 0;
crowdbirthlimit[T_RED_TOP] = 7; // Trees don't overcrowd; they crowd out other things!
crowdbirthlimit[T_RED_BOTTOM] = 7;
crowdbirthlimit[T_GREEN_TOP] = 7;
crowdbirthlimit[T_GREEN_BOTTOM] = 7; 

// treetype
// Is this a tree?  If it is, is it a tree that "points" up or down?
// Note: Matches the range values in cellturn() and eatmineral().  If a new plant range is added
//         with a range of two tiles in all directions, it'll be set up for use if its isatree
//         value is 3.
globalvar isatree;
isatree[P_EMPTY] = TREE_NOT;
isatree[P_REDX] = TREE_NOT;
isatree[P_REDPLUS] = TREE_NOT;
isatree[P_BLUEROUND] =  TREE_NOT;
isatree[P_BLUECLUSTER] =  TREE_NOT;
isatree[P_GREENCLUSTER] =  TREE_NOT;
isatree[P_GREENMEANDER] =  TREE_NOT;
isatree[P_REDSCATTER] =  TREE_NOT;
isatree[P_REDHARDY] =  TREE_NOT;
isatree[P_BLUEWAVE] =  TREE_NOT;
isatree[P_BLUEVERTICAL] =  TREE_NOT;
isatree[P_GREENDELICATE] =  TREE_NOT;
isatree[P_GREENHORIZONTAL] =  TREE_NOT;
isatree[P_GRASS] =  TREE_NOT;
isatree[P_WEED] =  TREE_NOT;
isatree[P_REDMELON] =  TREE_NOT;
isatree[P_GREENMELON] =  TREE_NOT;
isatree[P_BLUEMELON] =  TREE_NOT;
isatree[P_REDLEAFY] =  TREE_NOT;
isatree[P_GREENLEAFY] =  TREE_NOT;
isatree[P_BLUELEAFY] =  TREE_NOT;
isatree[T_RED_TOP] = TREE_UP;
isatree[T_RED_BOTTOM] = TREE_DOWN;
isatree[T_GREEN_TOP] = TREE_UP;
isatree[T_GREEN_BOTTOM] = TREE_DOWN;


// metabolismspeed
// How frequently does this plant get turns?
//    PMETAB_NONE: Never (shouldn't be used)
//  PMETAB_NORMAL: 2 times in 6 (every three turns)
//    PMETAB_FAST: 3 times in 6 (every two turns)
// PMETAB_FASTEST: every turn
//    PMETAB_SLOW: 1 time in 6
// PMETAB_SLOWEST: Unimplemented, don't use
globalvar metabolismspeed;
metabolismspeed[P_EMPTY] = PMETAB_NONE;
metabolismspeed[P_REDX] = PMETAB_FASTEST;
metabolismspeed[P_REDPLUS] = PMETAB_SLOW;
metabolismspeed[P_BLUEROUND] = PMETAB_SLOW;
metabolismspeed[P_BLUECLUSTER] =  PMETAB_NORMAL;
metabolismspeed[P_GREENCLUSTER] =  PMETAB_SLOW;
metabolismspeed[P_GREENMEANDER] =  PMETAB_NORMAL;
metabolismspeed[P_REDSCATTER] =  PMETAB_FASTEST;
metabolismspeed[P_REDHARDY] =  PMETAB_NORMAL;
metabolismspeed[P_BLUEWAVE] =  PMETAB_FAST;
metabolismspeed[P_BLUEVERTICAL] =  PMETAB_NORMAL;
metabolismspeed[P_GREENDELICATE] =  PMETAB_SLOW;
metabolismspeed[P_GREENHORIZONTAL] =  PMETAB_NORMAL;
metabolismspeed[P_GRASS] =  PMETAB_NORMAL;
metabolismspeed[P_WEED] =  PMETAB_NORMAL;
metabolismspeed[P_REDMELON] =  PMETAB_SLOW;
metabolismspeed[P_GREENMELON] =  PMETAB_SLOW;
metabolismspeed[P_BLUEMELON] =  PMETAB_SLOW;
metabolismspeed[P_REDLEAFY] =  PMETAB_SLOW;
metabolismspeed[P_GREENLEAFY] =  PMETAB_SLOW;
metabolismspeed[P_BLUELEAFY] =  PMETAB_SLOW;
metabolismspeed[T_RED_TOP] = PMETAB_SLOW;
metabolismspeed[T_RED_BOTTOM] = PMETAB_SLOW;
metabolismspeed[T_GREEN_TOP] = PMETAB_SLOW;
metabolismspeed[T_GREEN_BOTTOM] = PMETAB_SLOW;


// germinationbase
// What is the base chance of a new version of this plant sprouting?

globalvar germinationbase;
germinationbase[P_EMPTY] = -1000;
germinationbase[P_REDX] = 25;
germinationbase[P_REDPLUS] = 15;
germinationbase[P_BLUEROUND] = 5;
germinationbase[P_BLUECLUSTER] =  20;
germinationbase[P_GREENCLUSTER] =  18;
germinationbase[P_GREENMEANDER] =  12;
germinationbase[P_REDSCATTER] =  55;
germinationbase[P_REDHARDY] =  3;
germinationbase[P_BLUEWAVE] =  25;
germinationbase[P_BLUEVERTICAL] =  35;
germinationbase[P_GREENDELICATE] =  10;
germinationbase[P_GREENHORIZONTAL] =  35;
germinationbase[P_GRASS] =  40;
germinationbase[P_WEED] =  90;
germinationbase[P_REDMELON] =  0; // Never spreads on its own anyway
germinationbase[P_GREENMELON] =  0;
germinationbase[P_BLUEMELON] =  0;
germinationbase[P_REDLEAFY] =  0;
germinationbase[P_GREENLEAFY] =  0;
germinationbase[P_BLUELEAFY] =  0;
germinationbase[T_RED_TOP] = -1000; // Should never happen naturally
germinationbase[T_RED_BOTTOM] = -1000;
germinationbase[T_GREEN_TOP] = -1000;
germinationbase[T_GREEN_BOTTOM] = -1000;


// nonspread
// In the original design of the game, all plants were "spreading" types, that is,
//   they created new sprouts around themselves spontaneously over time and in this
//   way creeped across the field.
// Later, new plants were added that behave in a manner more analogous with real-world
//   agriculture, where the plants are grown and harvested, destroying the plant
//   in the process, and do not spread on their own.
// Plants that behave in this later manner are marked with a nonspread flag in
//   this array.
globalvar nonspread;
for (a=0; a<NUMPLANTTYPES+1; a+=1) {
  nonspread[a] = false;
  }
nonspread[P_ONION] = true;
nonspread[P_CLIANTRO] = true;
nonspread[P_WATERMELON] = true;
nonspread[P_LETTUCE] = true;
nonspread[P_MUSHROOM] = true;
nonspread[P_BLUELETTUCE] = true;

// harvestconsume
// Some plants are removed from the board once harvested.  These plants.
globalvar harvestconsume;
for (a=0; a<NUMPLANTTYPES+1; a+=1) {
  harvestconsume[a] = false;
  }
harvestconsume[P_ONION] = true;
harvestconsume[P_CLIANTRO] = true;
harvestconsume[P_WATERMELON] = true;
harvestconsume[P_LETTUCE] = true;
harvestconsume[P_MUSHROOM] = true;
harvestconsume[P_BLUELETTUCE] = true;
    
// noharvest
// These plants don't produce any useful harvest at all.
globalvar noharvest;
for (a=0; a<NUMPLANTTYPES+1; a+=1) {
  noharvest[a] = false;
  }
noharvest[P_ITCHGRASS] = true;
noharvest[P_DANDELION] = true;
noharvest[P_CLOVER] = true;
noharvest[P_CORNFLOWER] = true;
noharvest[P_BLUEHEDGE] = true;
noharvest[P_GRASS] = true;
noharvest[P_WEED] = true;
    

// plantniche
// Different plants get growth bonuses (counteracting out-of-season penalties) for
//   different reasons.
// Reasons:
//   * More valuable plants should not have niches.
//   * Plants the produce no harvests should have niches (except grass and weeds)
globalvar plantniche;
plantniche[P_EMPTY] = NICHE_NONE;
plantniche[P_ITCHGRASS] = NICHE_HEIGHTNEG;
plantniche[P_STRAWBERRY] = NICHE_MINERALSUM;
plantniche[P_BLUEBERRY] = NICHE_HEIGHTNEG;
plantniche[P_CORNFLOWER] = NICHE_HEIGHT;
plantniche[P_CLIANTRO] = NICHE_MINERALSUMNEG;
plantniche[P_CLOVER] = NICHE_MOISTURENEG;
plantniche[P_DANDELION] = NICHE_MOISTURE;
plantniche[P_ONION] = NICHE_MOISTURENEG;
plantniche[P_MUSHROOM] = NICHE_MOISTURENEG;
plantniche[P_BLUEHEDGE] = NICHE_MINERALSUM;
plantniche[P_GREENTOMATO] = NICHE_HEIGHT;
plantniche[P_HEDGE] = NICHE_MINERALSUMNEG;
plantniche[P_GRASS] = NICHE_NONE;
plantniche[P_WEED] = NICHE_NONE;
plantniche[P_TOMATO] = NICHE_NONE;
plantniche[P_WATERMELON] = NICHE_NONE;
plantniche[P_EGGPLANT] = NICHE_NONE;
plantniche[P_PEPPER] = NICHE_NONE;
plantniche[P_LETTUCE] = NICHE_NONE;
plantniche[P_BLUELETTUCE] = NICHE_NONE;


// plantseason
// The year is divided into twelve months, divided into four seasons.  January is month 0,
//   December is 11.
// The first index is plant, the second is season.  The number indicates viability during that season,
//   on a scale of 0 to 4.  0 means never grows, 4 means full chances.
// Not yet implemented
// NOTE: The seasonal affinity for empty cells are purposely undefined.
globalvar plantseason;
// Plant 1 (Red X)
plantseason[1,0]=3;plantseason[1,1]=4;plantseason[1,2]=4;plantseason[1,3]=4;
plantseason[1,4]=4;plantseason[1,5]=3;plantseason[1,6]=1;plantseason[1,7]=0;
plantseason[1,8]=0;plantseason[1,9]=0;plantseason[1,10]=0;plantseason[1,11]=1;
// Plant 2 (Red Plus)
plantseason[2,0]=1;plantseason[2,1]=3;plantseason[2,2]=3;plantseason[2,3]=4;
plantseason[2,4]=4;plantseason[2,5]=3;plantseason[2,6]=3;plantseason[2,7]=2;
plantseason[2,8]=0;plantseason[2,9]=0;plantseason[2,10]=0;plantseason[2,11]=0;
// Plant 3 (Blue Round)
plantseason[3,0]=0;plantseason[3,1]=0;plantseason[3,2]=0;plantseason[3,3]=0;
plantseason[3,4]=0;plantseason[3,5]=1;plantseason[3,6]=3;plantseason[3,7]=4;
plantseason[3,8]=4;plantseason[3,9]=4;plantseason[3,10]=2;plantseason[3,11]=0;
// Plant 4 (Blue Clusters)
plantseason[4,0]=2;plantseason[4,1]=1;plantseason[4,2]=0;plantseason[4,3]=0;
plantseason[4,4]=0;plantseason[4,5]=0;plantseason[4,6]=0;plantseason[4,7]=1;
plantseason[4,8]=4;plantseason[4,9]=4;plantseason[4,10]=4;plantseason[4,11]=4;
// Plant 5 (Green Clusters)
plantseason[5,0]=0;plantseason[5,1]=0;plantseason[5,2]=1;plantseason[5,3]=3;
plantseason[5,4]=4;plantseason[5,5]=4;plantseason[5,6]=4;plantseason[5,7]=2;
plantseason[5,8]=2;plantseason[5,9]=0;plantseason[5,10]=0;plantseason[5,11]=0;
// Plant 6 (Green Meandering)
plantseason[6,0]=0;plantseason[6,1]=0;plantseason[6,2]=1;plantseason[6,3]=2;
plantseason[6,4]=3;plantseason[6,5]=4;plantseason[6,6]=4;plantseason[6,7]=4;
plantseason[6,8]=4;plantseason[6,9]=3;plantseason[6,10]=2;plantseason[6,11]=0;
// Plant 7 (Red Scattered)
plantseason[7,0]=4;plantseason[7,1]=4;plantseason[7,2]=4;plantseason[7,3]=3;
plantseason[7,4]=3;plantseason[7,5]=2;plantseason[7,6]=2;plantseason[7,7]=0;
plantseason[7,8]=0;plantseason[7,9]=0;plantseason[7,10]=0;plantseason[7,11]=1;
// Plant 8 (Red Hardy)
plantseason[8,0]=2;plantseason[8,1]=3;plantseason[8,2]=3;plantseason[8,3]=3;
plantseason[8,4]=3;plantseason[8,5]=3;plantseason[8,6]=3;plantseason[8,7]=3;
plantseason[8,8]=2;plantseason[8,9]=2;plantseason[8,10]=2;plantseason[8,11]=2;
// Plant 9 (Blue Waves)
plantseason[9,0]=0;plantseason[9,1]=0;plantseason[9,2]=0;plantseason[9,3]=1;
plantseason[9,4]=3;plantseason[9,5]=4;plantseason[9,6]=4;plantseason[9,7]=4;
plantseason[9,8]=4;plantseason[9,9]=3;plantseason[9,10]=1;plantseason[9,11]=0;
// Plant 10 (Blue Vertical)
plantseason[10,0]=2;plantseason[10,1]=0;plantseason[10,2]=0;plantseason[10,3]=0;
plantseason[10,4]=0;plantseason[10,5]=1;plantseason[10,6]=3;plantseason[10,7]=4;
plantseason[10,8]=4;plantseason[10,9]=4;plantseason[10,10]=4;plantseason[10,11]=3;
// Plant 11 (Green Delicate)
plantseason[11,0]=0;plantseason[11,1]=0;plantseason[11,2]=1;plantseason[11,3]=2;
plantseason[11,4]=3;plantseason[11,5]=4;plantseason[11,6]=4;plantseason[11,7]=3;
plantseason[11,8]=2;plantseason[11,9]=1;plantseason[11,10]=0;plantseason[11,11]=0;
// Plant 12 (Green Horizontal)
plantseason[12,0]=0;plantseason[12,1]=0;plantseason[12,2]=0;plantseason[12,3]=1;
plantseason[12,4]=3;plantseason[12,5]=3;plantseason[12,6]=4;plantseason[12,7]=4;
plantseason[12,8]=4;plantseason[12,9]=3;plantseason[12,10]=3;plantseason[12,11]=1;
// Plant 13 (Grass)
plantseason[13,0]=2;plantseason[13,1]=2;plantseason[13,2]=3;plantseason[13,3]=4;
plantseason[13,4]=4;plantseason[13,5]=4;plantseason[13,6]=4;plantseason[13,7]=3;
plantseason[13,8]=3;plantseason[13,9]=3;plantseason[13,10]=2;plantseason[13,11]=2;
// Plant 14 (Weeds)
plantseason[14,0]=2;plantseason[14,1]=2;plantseason[14,2]=3;plantseason[14,3]=3;
plantseason[14,4]=3;plantseason[14,5]=3;plantseason[14,6]=3;plantseason[14,7]=3;
plantseason[14,8]=3;plantseason[14,9]=3;plantseason[14,10]=2;plantseason[14,11]=2;
// Plant 15 (Red Melon)
plantseason[15,0]=0;plantseason[15,1]=0;plantseason[15,2]=0;plantseason[15,3]=0;
plantseason[15,4]=0;plantseason[15,5]=1;plantseason[15,6]=2;plantseason[15,7]=3;
plantseason[15,8]=4;plantseason[15,9]=4;plantseason[15,10]=4;plantseason[15,11]=2;
// Plant 16 (Green Melon)
plantseason[16,0]=0;plantseason[16,1]=0;plantseason[16,2]=0;plantseason[16,3]=1;
plantseason[16,4]=2;plantseason[16,5]=3;plantseason[16,6]=4;plantseason[16,7]=4;
plantseason[16,8]=4;plantseason[16,9]=2;plantseason[16,10]=0;plantseason[16,11]=0;
// Plant 17 (Blue Melon)
plantseason[17,0]=0;plantseason[17,1]=1;plantseason[17,2]=2;plantseason[17,3]=3;
plantseason[17,4]=4;plantseason[17,5]=4;plantseason[17,6]=4;plantseason[17,7]=2;
plantseason[17,8]=0;plantseason[17,9]=0;plantseason[17,10]=0;plantseason[17,11]=0;
// Plant 18 (Red Leafy)
plantseason[18,0]=0;plantseason[18,1]=0;plantseason[18,2]=0;plantseason[18,3]=0;
plantseason[18,4]=1;plantseason[18,5]=3;plantseason[18,6]=3;plantseason[18,7]=3;
plantseason[18,8]=4;plantseason[18,9]=3;plantseason[18,10]=3;plantseason[18,11]=1;
// Plant 19 (Green Leafy)
plantseason[19,0]=0;plantseason[19,1]=0;plantseason[19,2]=1;plantseason[19,3]=3;
plantseason[19,4]=3;plantseason[19,5]=3;plantseason[19,6]=4;plantseason[19,7]=3;
plantseason[19,8]=3;plantseason[19,9]=1;plantseason[19,10]=0;plantseason[19,11]=0;
// Plant 20 (Blue Leafy)
plantseason[20,0]=1;plantseason[20,1]=3;plantseason[20,2]=3;plantseason[20,3]=3;
plantseason[20,4]=4;plantseason[20,5]=3;plantseason[20,6]=3;plantseason[20,7]=1;
plantseason[20,8]=0;plantseason[20,9]=0;plantseason[20,10]=0;plantseason[20,11]=0;
// Plant 21 (Red Tree Up)
plantseason[21,0]=2;plantseason[21,1]=2;plantseason[21,2]=3;plantseason[21,3]=3;
plantseason[21,4]=4;plantseason[21,4]=3;plantseason[21,6]=4;plantseason[21,7]=3;
plantseason[21,8]=3;plantseason[21,9]=2;plantseason[21,10]=2;plantseason[21,11]=2;
// Plant 22 (Red Tree Down) - should match other red tree
plantseason[22,0]=2;plantseason[22,1]=2;plantseason[22,2]=3;plantseason[22,3]=3;
plantseason[22,4]=4;plantseason[22,5]=4;plantseason[22,6]=4;plantseason[22,7]=3;
plantseason[22,8]=3;plantseason[22,9]=2;plantseason[22,10]=2;plantseason[22,11]=2;
// Plant 23 (Green Tree Up)
plantseason[23,0]=2;plantseason[23,1]=3;plantseason[23,2]=4;plantseason[23,3]=4;
plantseason[23,4]=4;plantseason[23,5]=4;plantseason[23,6]=4;plantseason[23,7]=4;
plantseason[23,8]=3;plantseason[23,9]=2;plantseason[23,10]=2;plantseason[23,11]=2;
// Plant 24 (Green Tree Down) - should match other green tree
plantseason[24,0]=2;plantseason[24,1]=3;plantseason[24,2]=4;plantseason[24,3]=4;
plantseason[24,4]=4;plantseason[24,5]=4;plantseason[24,6]=4;plantseason[24,7]=4;
plantseason[24,8]=3;plantseason[24,9]=2;plantseason[24,10]=2;plantseason[24,11]=2;

