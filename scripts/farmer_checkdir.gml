var checkx, checky checkdir, nextx, nexty, moving;
checkx = argument0;
checky = argument1;
checkdir = argument2;
hexadj(checkx,checky,checkdir);
nextx = global.hexx;
nexty = global.hexy;
if (!farmer_okaytomove(nextx,nexty,global.height[checkx,checky])) {
  //show_message("farmer_cancelbulkmove() calling from farmer_checkdir()");
  //show_message("nextx:"+string(nextx)+" nexty:"+string(nexty));
  farmer_cancelbulkmove();
  farmer_haltaction();
  global.returnfacing = argument2;
  return false;
  }
global.returnfacing = argument2;
return true;

