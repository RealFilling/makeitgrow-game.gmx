var destx, desty;
if (moving) {
  show_error("ERROR: animal_move() dual move!", false);
  return false;
  }
facing = argument0;
hexadj(boardx, boardy, facing);
destx = global.hexx;
desty = global.hexy;
if (!okaytomoveto(destx, desty)) {
  return false;
  }
if (global.a_isbig[animaltype]) {
  if (!isspotadjtobiganimal(destx,desty,(facing+3) mod 6)) {
    return false;
    }
  }
boardx = destx;
boardy = desty;
hextopix(boardx, boardy);
moving = true;
moveprogress = 0;
animalbase_changeanimstate(ANIANIMSTATE_WALK);
return true;

