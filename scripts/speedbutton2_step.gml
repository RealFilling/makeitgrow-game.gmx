if (global.gamespeed == GSPEED_FAST) {
  self.pushed = true;
  self.image_index = 1;
  }
else {
  self.pushed = false;
  self.image_index = 0;
  }
x = obj_hud.x + savedx;
y = obj_hud.y + savedy;

if (global.tutpoint_menu == UIBUTTON_MEDSPEED) {
  global.tutpostx = (x+TUTCARDSPHORIZOFFSET)-ax(0);
  global.tutposty = (y+TUTCARDSPVERTOFFSET)-ay(0);
  global.tutpostarrowdir = ARROWDIR_UP;
  }

