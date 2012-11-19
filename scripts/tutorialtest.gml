//gd_get_tutorial_step (1);
if (global.tutorialdebug) {
  if (global.tutlock_disablecancel == true) {
    show_message("tutorialtest(): tutlock_disablecancel is true");
    }
  else {
    show_message("tutorialtest(): tutlock_disablecancel is false");
    }
  show_message("tutorialtest(): global.tutlock_menu is "+string(global.tutlock_menu));
  show_message("tutorialtest(): global.tuttilex is "+string(global.tuttilex));
  show_message("tutorialtest(): global.tuttiley is "+string(global.tuttiley));
  show_message("tutorialtest(): obj.tutorialcard.tilex is "+string(obj_tutorialcard.tilex));
  show_message("tutorialtest(): obj.tutorialcard.tiley is "+string(obj_tutorialcard.tiley));
  show_message("tutorialtest(): obj.tutorialcard.ttt_click_buttontowatch is "+string(obj_tutorialcard.ttt_click_buttontowatch));
  }
  

