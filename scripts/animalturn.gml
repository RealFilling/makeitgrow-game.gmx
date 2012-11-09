var faceoffset;

switch (animstate) {
  case ANIANIMSTATE_IDLE:
    animframe = (animframe + 1) mod global.a_sprite_idle[animaltype];
    sprite_index = global.a_sprite_idle[animaltype];
    image_index = animframe;
    break;
  case ANIANIMSTATE_EAT:
    animframe = (animframe + 1) mod global.a_sprite_eat[animaltype];
    sprite_index = global.a_sprite_eat[animaltype];
    image_index = animframe;
    break;
  case ANIANIMSTATE_WALK:
    faceoffset = sprite_get_number(global.a_sprite_walk[animaltype]) div 6;
    animframe = (animframe + 1) mod faceoffset;
    sprite_index = global.a_sprite_walk[animaltype];
    image_index = animframe + (faceoffset * facing);
    break;
  }

/*
animdelay -= 1;
if (animdelay <= 0) {
  animframe = (animframe + 1) mod 
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
*/  

// If the animal is moving between cells:
if (moving) {
  moveprogress += movespeed;
  if (moveprogress >= TILEWIDTH) {
    moving = false;
    moveprogress = 0;
    hextopix(boardx, boardy);
    x = global.hexx;
    y = global.hexy;
    animalbase_changeanimstate(ANIANIMSTATE_IDLE);
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

