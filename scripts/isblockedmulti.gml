var size,sx,sy,diri,checkx,checky;

size = argument0;
checkx = argument1;
checky = argument2;

switch(size) {
  case BLDGSIZE_SMALL:
    return isblocked(checkx,checky);
    break;
  case BLDGSIZE_MEDIUM:
    sx = checkx;
    sy = checky;
    for (diri=0;diri<3;diri+=1) {
      hexadj(sx,sy, buildingsizedirsm[diri]);
      sx = global.hexx;
      sy = global.hexy;
      if (isblocked(sx,sy)) {
        //show_message("isblockedmulti(): area found blocked");
        return true;
        }
      }
    //show_message("isblockedmulti(): area found clear");
    return false;
    break;
  case BLDGSIZE_LARGE:
  case BLDGSIZE_GREENHOUSE:
    sx = checkx;
    sy = checky;
    for (diri=0;diri<8;diri+=1) {
      hexadj(sx,sy, buildingsizedirsl[diri]);
      sx = global.hexx;
      sy = global.hexy;
      if (isblocked(sx,sy)) {
        return true;
        }
      }
    return false;
    break;
  default:
    show_error("unrecognized size in isblockedmulti()!",false);
    return false;
    break;
  }
