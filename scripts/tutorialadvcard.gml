var cardtype;
global.tutcardcleared = false; // Clear pass flag to prepare for next step

global.tutorialstep += 1;
if (global.tutorialstep >= global.tutstepcount) {
  global.tutorialstep = 9999;
  return false; // We're done with the tutorial.
  }
global.parameter1 = global.tutstep_text[global.tutorialstep]; //text
global.parameter2 = global.tutstep_arrowdir[global.tutorialstep]; //arrowdir
cardtype = global.tutstep_cardtype[global.tutorialstep]; //displaymode
global.parameter5 = cardtype;
global.parameter6 = global.tutstep_boxcolor; //boxcolor
// Here we turn the registered parameters into a form useable by the card code.
switch (cardtype) {
  case TCT_HOVER:
    global.parameter3 = global.tutstep_cparam1[global.tutorialstep];
    global.parameter4 = global.tutstep_cparam2[global.tutorialstep];
    break;
  case TCT_MENU:
    // WIP
    break;
  case TCT_TILESEARCH:
  case TCT_TILESEARCH_MOIST:
  case TCT_TILESEARCH_HARVEST:
    searchfortile(global.tutstep_cparam1[global.tutorialstep],cardtype);
    global.parameter3 = global.returnx;
    global.parameter4 = global.returny;
    global.tuttilex = global.returnx;
    global.tuttiley = global.returny;
    break;
  default:
    break;
  }
/*
switch (tasktype) {
  case TTT_WAIT:
    ttt_wait_delay = global.tutstep_tparam1[global.tutorialstep];
    break;
  case TTT_CLICK:
    break;
  case TTT_USE:
    break;
  case TTT_USEPLACE:
    break;
  }
*/
global.parameter7 = global.tutstep_tasktype[global.tutorialstep];
global.parameter8 = global.tutstep_tparam1[global.tutorialstep];
global.parameter9 = global.tutstep_tparam2[global.tutorialstep];
global.tutorialcard = instance_create(obj_farmer.x,obj_farmer.y,obj_tutorialcard);
