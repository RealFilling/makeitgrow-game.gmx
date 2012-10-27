// Get the parameters coming in
textparam = global.parameter1;
arrowdir = global.parameter2;//0,1,2,3: Point up, right, down, left.  -1 means none.
xparam = global.parameter3;
yparam = global.parameter4;
displaymode = global.parameter5;
boxcolor = global.parameter6;
arrowdirauto = -1;
spotx = -1;
spoty = -1;

// Basic processing
boxwidth = max((string_length(textparam)*4)+10,90);
textwork = wordwrap(textparam,boxwidth-10);
cardtext = string_copy(textwork,2,string_length(textwork)-1); // Inserts linebreaks
lines = string_count("#",cardtext);
boxheight = (lines * TUTORIALCARDLINEHEIGHT)+20;

x1 = x - (boxwidth / 2);
x2 = x + (boxwidth / 2);
y1 = y - (boxheight / 2);
y2 = y + (boxheight / 2);
state = TCSTATE_APPEAR;
statetimer = 10; // Counts down
frameflash = c_white;
frameflashstate = 0;

switch (displaymode) {
  case TCT_HOVER:
    x = xparam;
    y = yparam;
    break;
  case TCT_MENU:
  case TCT_MENUSELECT:
    x = -1000; // Offscreen; button posts coordinates
    y = -1000;
  case TCT_TILESEARCH:
  case TCT_TILESEARCH_MOIST:
  case TCT_TILESEARCH_HARVEST:
    tilex = xparam;
    tiley = yparam;
    break;
  }

tutcardpositioning();

// Task completion info
tasktype = global.parameter7;
switch(tasktype) {
  case TTT_WAIT:
    ttt_wait_delay = global.parameter8;
    break;
  case TTT_CLICK:
    ttt_click_buttontowatch = global.parameter8;
    break;
  case TTT_MENUSELECT:
    ttt_menuitemtoselect = global.parameter8;
    break;
  case TTT_USE:
    ttt_use_tool = global.parameter8;
    break;
  case TTT_USEPLACE:
    ttt_useplace_tool = global.parameter8;
    // Location info stored in global.tuttilex and global.tuttiley
    break;
  }
// Note: global.parameter9 passes tparam2, but isn't currently used

