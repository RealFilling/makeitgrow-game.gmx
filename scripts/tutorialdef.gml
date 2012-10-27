tutorialsetup();

// Format for registertutorialstep:
//
// registertutorialstep(
//  [cardtext]          card text (a string),
//  [displaymode]       TCT_* identifier (see below),
//  [cparam1]           X position on screen (if that makes sense for this type) -or- display parameter 1,
//  [cparam2]           Y position on screen (same caveat) -or- display parameter 2,
//  [tasktype]          TTT_* identifier (see below),
//  [tparam1]           task parameter 1,
//  [tparam2]           task parameter 2 (nothing uses this at the moment),
//  [arrowdir]          arrow point direction (-1 for none, 0-7 for pointing starting up and going clockwise,
//                                             8 for "auto," used in field pointing code, it's best to use
//                                             the ARROWDIR_* identifiers here),
//  [boxcolor]          box color (either use Game Maker's c_* constants, make_color_rgb(), or
//                                 make_color_hsv() here)
//                     )

// Meaning of the TCT and TTT constants:
// TCT stands for Tutorial Card Type.  TTT stands for Tutorial Task Type.
// The first determines what the card points at and how it reacts to events
//   performed by the player and occuring in the world.
// The second determines what satisfies the card's condition and advances to
//   the next card.  There is a little overlap between the two though, when
//   it comes to *_MENUSELECT modes.
// TCT_HOVER: Hover on-screen, not moving. cparam1 and cparam2 are absolute X and Y
//              position on screen.
// TCT_MENU:  Point at a menu.  Use UIBUTTON_* constants to point.
//              ~~known bug, box lags behing screen scrolling
// TCT_TILESEARCH, TCT_TILESEARCH_MOIST, TCT_TILESEARCH_HARVEST:
//               Focus on a spot on the map, dynamically chosen by a search function.
//               The variants influence the type focused on.  Highlights that spot.
//               Specify a species (which can really be any field entity) as cparam1.
//               With TCT_TILESEARCH, the closest match to the farmer's position will
//                 be selected and highlighted on screen.  The highlight, and the text
//                 box pointing to it, will follow the screen scrolling.
//               TCT_TILESEARCH_MOIST will find a spot with the matching species, with
//                 an emphasis on spots that need moisture.
//               TCT_TILESEARCH_HARVEST will a spot with some harvest to collect.
//               The spot found is remembered until the next search, so can be used
//                 by a following TTT_USEPLACE.
//               So far, if no good spot is found, the result is undefined.  This is
//                 a known problem, more work to be done here soon.
// TCT_MENUSELECT: Used in conjunction with TTT_MENUSELECT, below.  cparam values
//                   are ignored.
// TCT_DISABLECANCEL: Other values are ignored, turns off the ability to change items
//                      by forbidding access to the menus, and disables the cancel
//                      button.  Should always be coupled with TCT_ENABLECANCEL
//                      soon after.
// TCT_ENABLECANCEL: Other values are ignored, turns tool switching back on again.
// 
// TTT_WAIT:       Goes away on its own.  tparam1 is the number of frames the card
//                   remains onscreen before the next step begins.
// TTT_CLICK:      Goes away when a particular control is clicked.  Specify a
//                   menu control with the appropriate UIBUTTON_* identifier (speedbutton
//                   controls are coming but not ready yet);
// TTT_USE:        Goes away when a particular tool is used, no matter where.  CURRENTLY UNIMPLEMENTED
// TTT_USEPLACE:   Goes away when a tool is used in the currently highlighted spot.
//                   When used, the highlight goes away.  Does not discriminate between
//                   tools used, so should only be used in conjunction with a preceeding
//                   TTT_CLICK, TTT_MENUSELECT and TCT_DISABLECANCEL to ensure the user
//                   has the right tool selected.
// TTT_MENUSELECT: A special entry, only to be used to TCT_MENUSELECT (other combinations
//                   are unsupported).  
//                 Should only be used immediately after a TCT_CLICK that opens a menu.
//                   Highlights an inventory slot passed in tparam1, which must be selected
//                   by the player (clicking other things or closing the menu by clicking
//                   the menu background are disabled).

// Here is an example set of tutorial steps.  There are some graphics bugs so far but this
//   should be enough for you to work on the structure of the tutorial.  The steps will be
//   encountered in the order given here.
registertutorialstep("Welcome to MAKE IT GROW!",TCT_HOVER,400,400,TTT_WAIT,5*30,0,ARROWDIR_NONE,c_blue);
registertutorialstep("Open the Seeds menu",TCT_MENU,-1,-1,TTT_CLICK,UIBUTTON_SEEDS,-1,ARROWDIR_LEFT,c_blue);
registertutorialstep("Select Strawberries",TCT_MENUSELECT,-1,-1,TTT_MENUSELECT,1,-1,ARROWDIR_DOWN,c_blue);
registertutorialstep("-fake card to disable cancelling-",TCT_DISABLECANCEL,-1,-1,-1,1,-1,-1,-1);
registertutorialstep("Plant it in this empty spot",TCT_TILESEARCH,P_EMPTY,-1,TTT_USEPLACE,0,0,ARROWDIR_AUTO,c_blue);
registertutorialstep("-fake card to enable cancelling-",TCT_ENABLECANCEL,-1,-1,-1,1,-1,-1,-1);



