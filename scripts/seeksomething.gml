var nextx, nexty, dir, searchfor;
searchfor = argument0;
if (searchfrom(boardx,boardy,searchfor,4)) {
  dir = closestdir(boardx, boardy, global.returnx, global.returny);
  if (dir == -1) { // If the thing sought for is HERE
    // Eat, drink or rest
    animal_act(searchfor);
    return true;
    }
  if (!animal_move(dir)) {
    animal_moverandom();
    return false;
    }
  //else {
  //  animal_move(dir);
  //  }
  return false;
  }
else {
  animal_moverandom();
  return false;
  }
