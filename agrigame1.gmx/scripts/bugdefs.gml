// bugnames
globalvar bugnames;
bugnames[B_REDBUG] = "Redbug";
bugnames[B_GREENMANTIS] = "Mantis";
bugnames[B_BLUESPIDER] = "Spider";
bugnames[B_ORANGEBEETLE] = "Beetle";
bugnames[B_YELLOWFLY] = "Yellowfly";
bugnames[B_CYANWASP] = "Wasp";
bugnames[B_GRAYMOTH] = "Graymoth";
bugnames[B_BEE] = "Bee";

// bugeatsplants
// Some bugs eat plants.  This is a 2D array of six types of plants the bug will eat.
// 
globalvar bugeatsplants;
bugeatsplants[B_REDBUG,0] = P_EMPTY; // No plant
bugeatsplants[B_REDBUG,1] = P_EMPTY;
bugeatsplants[B_REDBUG,2] = P_EMPTY; 
bugeatsplants[B_REDBUG,3] = P_EMPTY; 
bugeatsplants[B_REDBUG,4] = P_EMPTY; 
bugeatsplants[B_REDBUG,5] = P_EMPTY; 
bugeatsplants[B_GREENMANTIS,0] = P_EMPTY; 
bugeatsplants[B_GREENMANTIS,1] = P_EMPTY; 
bugeatsplants[B_GREENMANTIS,2] = P_EMPTY; 
bugeatsplants[B_GREENMANTIS,3] = P_EMPTY; 
bugeatsplants[B_GREENMANTIS,4] = P_EMPTY; 
bugeatsplants[B_GREENMANTIS,5] = P_EMPTY; 
bugeatsplants[B_BLUESPIDER,0] = P_EMPTY; 
bugeatsplants[B_BLUESPIDER,1] = P_EMPTY; 
bugeatsplants[B_BLUESPIDER,2] = P_EMPTY; 
bugeatsplants[B_BLUESPIDER,3] = P_EMPTY; 
bugeatsplants[B_BLUESPIDER,4] = P_EMPTY; 
bugeatsplants[B_BLUESPIDER,5] = P_EMPTY; 
bugeatsplants[B_ORANGEBEETLE,0] = P_REDX; 
bugeatsplants[B_ORANGEBEETLE,1] = P_REDPLUS; 
bugeatsplants[B_ORANGEBEETLE,2] = P_REDSCATTER; 
bugeatsplants[B_ORANGEBEETLE,3] = P_REDHARDY; 
bugeatsplants[B_ORANGEBEETLE,4] = P_GREENMEANDER; 
bugeatsplants[B_ORANGEBEETLE,5] = P_EMPTY; 
bugeatsplants[B_YELLOWFLY,0] = P_GREENCLUSTER; 
bugeatsplants[B_YELLOWFLY,1] = P_GREENMEANDER; 
bugeatsplants[B_YELLOWFLY,2] = P_GREENDELICATE; 
bugeatsplants[B_YELLOWFLY,3] = P_GREENHORIZONTAL; 
bugeatsplants[B_YELLOWFLY,4] = P_BLUEWAVE; 
bugeatsplants[B_YELLOWFLY,5] = P_EMPTY; 
bugeatsplants[B_CYANWASP,0] = P_BLUEROUND; 
bugeatsplants[B_CYANWASP,1] = P_BLUECLUSTER; 
bugeatsplants[B_CYANWASP,2] = P_BLUEWAVE; 
bugeatsplants[B_CYANWASP,3] = P_BLUEVERTICAL; 
bugeatsplants[B_CYANWASP,4] = P_REDPLUS; 
bugeatsplants[B_CYANWASP,5] = P_EMPTY; 
bugeatsplants[B_GRAYMOTH,0] = P_GREENDELICATE; 
bugeatsplants[B_GRAYMOTH,1] = P_REDSCATTER; 
bugeatsplants[B_GRAYMOTH,2] = P_BLUEROUND; 
bugeatsplants[B_GRAYMOTH,3] = P_GREENCLUSTER; 
bugeatsplants[B_GRAYMOTH,4] = P_BLUECLUSTER; 
bugeatsplants[B_GRAYMOTH,5] = P_REDX; 
bugeatsplants[B_BEE,0] = P_EMPTY; 
bugeatsplants[B_BEE,1] = P_EMPTY; 
bugeatsplants[B_BEE,2] = P_EMPTY; 
bugeatsplants[B_BEE,3] = P_EMPTY; 
bugeatsplants[B_BEE,4] = P_EMPTY; 
bugeatsplants[B_BEE,5] = P_EMPTY; 

globalvar bugeatsbugs;
// Which bugs this bug eats.  Unlike plants, there are only three possible prey here.
// 
bugeatsbugs[B_REDBUG,0] = B_YELLOWFLY;
bugeatsbugs[B_REDBUG,1] = B_GRAYMOTH;
bugeatsbugs[B_REDBUG,2] = B_NOBUG;
bugeatsbugs[B_GREENMANTIS,0] = B_CYANWASP;
bugeatsbugs[B_GREENMANTIS,1] = B_GRAYMOTH;
bugeatsbugs[B_GREENMANTIS,2] = B_NOBUG;
bugeatsbugs[B_BLUESPIDER,0] = B_ORANGEBEETLE;
bugeatsbugs[B_BLUESPIDER,1] = B_GRAYMOTH;
bugeatsbugs[B_BLUESPIDER,2] = B_BEE;
bugeatsbugs[B_ORANGEBEETLE,0] = B_NOBUG;
bugeatsbugs[B_ORANGEBEETLE,1] = B_NOBUG;
bugeatsbugs[B_ORANGEBEETLE,2] = B_NOBUG;
bugeatsbugs[B_YELLOWFLY,0] = B_NOBUG;
bugeatsbugs[B_YELLOWFLY,1] = B_NOBUG;
bugeatsbugs[B_YELLOWFLY,2] = B_NOBUG;
bugeatsbugs[B_CYANWASP,0] = B_NOBUG;
bugeatsbugs[B_CYANWASP,1] = B_NOBUG;
bugeatsbugs[B_CYANWASP,2] = B_NOBUG;
bugeatsbugs[B_GRAYMOTH,0] = B_NOBUG;
bugeatsbugs[B_GRAYMOTH,1] = B_NOBUG;
bugeatsbugs[B_GRAYMOTH,2] = B_NOBUG;
bugeatsbugs[B_BEE,0] = B_NOBUG;
bugeatsbugs[B_BEE,1] = B_NOBUG;
bugeatsbugs[B_BEE,2] = B_NOBUG;

globalvar bugflightdist;
// bugflightdist: the distance a bug will travel to look for a meal, and the distance it
//   will travel when flying around randomly.
bugflightdist[B_REDBUG] = 4;
bugflightdist[B_GREENMANTIS] = 4;
bugflightdist[B_BLUESPIDER] = 3;
bugflightdist[B_ORANGEBEETLE] = 3;
bugflightdist[B_YELLOWFLY] = 4;
bugflightdist[B_CYANWASP] = 5;
bugflightdist[B_GRAYMOTH] = 4;
bugflightdist[B_BEE] = 4;

globalvar plantattractbugs;
// plantattractbugs: plants have a chance of spontaneously attracting particular bugs.
//   This is a very slight chance, but in large populations could become significant.


