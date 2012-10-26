global.tutstepcount = 0;
global.tuttilex = -1;
global.tuttiley = -1;
global.tutbuttonpressed = -1;
global.tuttoolused = -1;
global.tuttoolusedx = -1;
global.tuttoolusedy = -1;
// Meaning of the TCT and TTT constants:
// TCT stands for Tutorial Card Type.  TTT stands for Tutorial Task Type.
// The first determines what the card points at and how it reacts to events
//   performed by the player and occuring in the world.
// The second determines what satisfies the card's condition and advances to
//   the next card.
// TCT_HOVER: Hover on-screen, not moving.
// TCT_MENU:  Two phase; display somewhere different depending on whether a certain
//              menu is open or not.
// TCT_TILESEARCH, TCT_TILESEARCH_MOIST, TCT_TILESEARCH_HARVEST:
//               Focus on a spot on the map, dynamically chosen by a search function.
//               The variants influence the type focused on.  Highlights that spot.
//               Highlight goes away when TTT_USEPLACE is satisfied.
// TTT_WAIT:     Goes away on its own.
// TTT_CLICK:    Goes away when a particular control is clicked.
// TTT_USE:      Goes away when a particular tool is used.
// TTT_USEPLACE: Goes away when a tool is used in the currently highlighted spot.
//                 When used, the highlight goes away.

// Here is where the tutorial steps are defined:
registertutorialstep("Welcome to MAKE IT GROW! 1",TCT_HOVER,400,400,TTT_WAIT,5*30,0,ARROWDIR_NONE,c_blue);
registertutorialstep("Welcome to MAKE IT GROW! 2",TCT_TILESEARCH,P_EMPTY,-1,TTT_WAIT,1000*30,0,ARROWDIR_AUTO,c_blue);
registertutorialstep("Welcome to MAKE IT GROW! 3",TCT_HOVER,400,400,TTT_WAIT,5*30,0,-1,c_blue);
registertutorialstep("Welcome to MAKE IT GROW! 4",TCT_HOVER,400,400,TTT_WAIT,5*30,0,-1,c_blue);

