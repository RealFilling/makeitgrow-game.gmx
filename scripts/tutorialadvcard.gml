var cardtype;
global.tutcardcleared = false; // Clear pass flag to prepare for next step
global.tutmenuitemselected = false;
global.tutlock_menu = -1; // Failsafe to clear tutorial locks
global.tutpoint_menu = -9999;
global.tutlock_item = -9999; // Not -1 to avoid conflicts with tools
global.tutorialfailsafe = false; // In case we aborted prior step, clear the flag
//global.tutlock_disablecancel = false;

if (global.tutorialdebug == true) {
  show_message("tutorialadvcard(): entered");
  }


global.tutorialstep += 1;

if (global.disablemetrics == false) {
  // Register the event at mixpanel
  gd_mixpanel_register(global.tutstep_text[global.tutorialstep], "");
}

if (global.tutorialstep >= global.tutstepcount) {
  global.tutorialstep = 9999;
  global.tutlock_disablecancel = false; // Sanity
  if (global.tutorialdebug == true) {
    show_message("tutorialadvcard(): tutorial ended");
    }
  return false; // We're done with the tutorial.
  }
global.parameter1 = global.tutstep_text[global.tutorialstep]; //text
global.parameter2 = global.tutstep_arrowdir[global.tutorialstep]; //arrowdir
cardtype = global.tutstep_cardtype[global.tutorialstep]; //displaymode
global.parameter5 = cardtype;
global.parameter6 = global.tutstep_boxcolor[global.tutorialstep]; //boxcolor
// Here we turn the registered parameters into a form useable by the card code.
switch (cardtype) {
  case TCT_MENU:
    global.tutlock_menu = global.tutstep_tparam1[global.tutorialstep];
    global.tutpoint_menu = global.tutstep_cparam1[global.tutorialstep];
    if (global.tutorialdebug == true) {
      show_message("tutorialadvcard(): cardtype case 1");
      }
    break;
  case TCT_HOVER:
    global.parameter3 = global.tutstep_cparam1[global.tutorialstep];
    global.parameter4 = global.tutstep_cparam2[global.tutorialstep];
    if (global.tutorialdebug == true) {
      show_message("tutorialadvcard(): cardtype case 2");
      }
    break;
  case TCT_MENUSELECT:
    global.parameter3 = global.tutstep_cparam1[global.tutorialstep];
    global.parameter4 = global.tutstep_cparam2[global.tutorialstep];
    global.tutlock_item = global.tutstep_tparam1[global.tutorialstep];
    global.tutpoint_menu = global.tutstep_cparam1[global.tutorialstep];
    if (global.tutorialdebug == true) {
      show_message("tutorialadvcard(): cardtype case 3");
      }
    break;
  case TCT_TILESEARCH:
  case TCT_TILESEARCH_MOIST:
  case TCT_TILESEARCH_HARVEST:
    searchfortile(global.tutstep_cparam1[global.tutorialstep],cardtype);
    global.parameter3 = global.returnx;
    global.parameter4 = global.returny;
    global.tuttilex = global.returnx;
    global.tuttiley = global.returny;
    if (!coordsinbounds(global.tuttilex,global.tuttiley)) {
      global.tutorialfailsafe = true;
      }
    if (global.tutorialdebug == true) {
      show_message("tutorialadvcard(): cardtype case 4");
      if (global.tutorialfailsafe == true) {
        show_message("tutorialadvcard(): WARNING, bad tutorial step, failsafe engaged!");
        }
      }
    break;
  case TCT_DISABLECANCEL: // Fake step to disable cancelling
    global.tutlock_disablecancel = true;
    global.tutcardcleared = true;
    return false;
    if (global.tutorialdebug == true) {
      show_message("tutorialadvcard(): cardtype case 5");
      }
    break;
  case TCT_ENABLECANCEL: // Fake step to enable cancelling
    global.tutlock_disablecancel = false;
    global.tutcardcleared = true;
    return false;
    if (global.tutorialdebug == true) {
      show_message("tutorialadvcard(): cardtype case 6");
      }
    break;
  default:
    show_message("ERROR: tutorialadvcard() reports unrecognized cardtype case!");
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
if (global.tutorialdebug == true) {
  show_message("tutorialadvcard(): about to create obj_tutorialcard");
  }
global.tutorialcard = instance_create(obj_farmer.x,obj_farmer.y,obj_tutorialcard);
