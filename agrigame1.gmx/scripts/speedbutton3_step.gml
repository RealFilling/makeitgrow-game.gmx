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

