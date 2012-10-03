var ax1, ay1, testfacing;
ax1 = argument0;
ay1 = argument1;
hextopix(ax1,ay1);
instance_create(global.hexx,global.hexy-(global.height[ax1,ay1]*HEIGHTPIX),obj_hexclick);
testfacing = closestdir(boardx,boardy,ax1,ay1);
if (testfacing != -1) {
  bmdestx = ax1;
  bmdesty = ay1;
  bulkmove = true;
  //
  if (moving == false) {
    //show_message("farmer_walkto(): before farmer_checkdir()");
    //farmer_movestuff(boardx,boardy);
    moving = farmer_checkdir(boardx,boardy,testfacing);
    facing = global.returnfacing;
    moveprogress = 0;
    }
  return true;
  }
else {
  return false;
  }

