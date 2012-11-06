if (global.gamespeed == GSPEED_VFAST) {
  self.pushed = true;
  self.image_index = 1;
  }
else {
  self.pushed = false;
  self.image_index = 0;
  }
x = obj_hud.x + savedx;
y = obj_hud.y + savedy;

if (global.tutpoint_menu == UIBUTTON_FASTSPEED) {
  draw_sprite(spr_highlightcircle,0,x+20,y+20);
  global.tutpostx = (x+TUTCARDSPHORIZOFFSET)-ax(0);
  global.tutposty = (y+TUTCARDSPVERTOFFSET)-ay(0);
  global.tutpostarrowdir = ARROWDIR_UP;
  }

