var cardtype;
global.tutorialstep += 1;
if (global.tutorialstep >= global.tutstepcount) {
  return false; // We're done with the tutorial.
  }
global.parameter1 = global.tutstep_text[global.tutorialstep]; //text
global.parameter2 = global.tutstep_arrowdir[global.tutorialstep]; //arrowdir
cardtype = global.tutstep_cardtype[global.tutorialstep]; //displaymode
global.cardtype = cardtype;
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
    global.parameter3 = global.returnvalue1;
    global.parameter4 = global.returnvalue2;
    break;
  }
//
// Around here is where we have to check for tile locations
//
switch (tasktype) {
  }
global.parameter7 = tasktype;
global.parameter8 = global.tutstep_tparam1[global.tutorialstep];
global.parameter9 = global.tutstep_tparam2[global.tutorialstep];
instance_create(obj_farmer.x,obj_farmer.y,obj_tutorialcard);
