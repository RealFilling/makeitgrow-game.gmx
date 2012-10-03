var faceoffset;
animdelay -= 1;
if (animdelay <= 0) {
  animdelay = animdelaymax;
  animframe = (animframe + 1) mod 3;
  }
if (facing > 2) {
  faceoffset = 3;
  }
else {
  faceoffset = 0;
  }
image_index = faceoffset + animframe;
  

// If the animal is moving between cells:
if (moving) {
  moveprogress += movespeed;
  if (moveprogress >= TILEWIDTH) {
    moving = false;
    moveprogress = 0;
    hextopix(boardx, boardy);
    x = global.hexx;
    y = global.hexy;
    }
  else {
    hextopix(boardx, boardy);
    x = global.hexx + (dirxhp[(facing+3) mod 6] * (TILEWIDTH - moveprogress));
    y = global.hexy + (diryhp[(facing+3) mod 6] * (TILEWIDTH - moveprogress));
    }
  return 0;
  }

  
// Turn delay, varies with animal type
movedelaytimer -= 1;
if (movedelaytimer > 0) {
  return false;
  }
animal_resetmovedelay();
    
// If we got this far, it's time to do an AI choice.
animalai();

return true;

