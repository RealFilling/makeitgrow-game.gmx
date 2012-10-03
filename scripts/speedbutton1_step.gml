if (global.gamespeed == GSPEED_SLOW) {
  self.pushed = true;
  self.image_index = 1;
  }
else {
  self.pushed = false;
  self.image_index = 0;
  }
x = obj_hud.x + savedx;
y = obj_hud.y + savedy;

