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
    // Outside
    sx = checkx;
    sy = checky;
    diri = 0;
    do {
      hexadj(sx,sy, buildingsizedirs_ghframe[diri]);
      sx = global.hexx;
      sy = global.hexy;
      if (isblocked(sx,sy)) {
        //show_message("isblockedmulti(): area found blocked");
        return true;
        }
      diri += 1;
      }
    until (buildingsizedirs_ghframe[diri] == -1);
    // Inside
    sx = checkx;
    sy = checky;
    diri = 0;
    do {
      hexadj(sx,sy, buildingsizedirs_ghinside[diri]);
      sx = global.hexx;
      sy = global.hexy;
      if (isblocked(sx,sy)) {
        //show_message("isblockedmulti(): area found blocked");
        return true;
        }
      diri += 1;
      }
    until (buildingsizedirs_ghinside[diri] == -1);
    return false;
    break;
  case BLDGSIZE_SMALLCOOP:
    sx = checkx;
    sy = checky;
    diri = 0;
    do {
      hexadj(sx,sy, buildingsizedirs_smallcoop[diri]);
      sx = global.hexx;
      sy = global.hexy;
      if (isblocked(sx,sy)) {
        //show_message("isblockedmulti(): area found blocked");
        return true;
        }
      diri += 1;
      }
    until (buildingsizedirs_smallcoop[diri] == -1);
    return false;
    break;
  case BLDGSIZE_MEDCOOP:
    sx = checkx;
    sy = checky;
    diri = 0;
    do {
      hexadj(sx,sy, buildingsizedirs_medcoop[diri]);
      sx = global.hexx;
      sy = global.hexy;
      if (isblocked(sx,sy)) {
        //show_message("isblockedmulti(): area found blocked");
        return true;
        }
      diri += 1;
      }
    until (buildingsizedirs_medcoop[diri] == -1);
    return false;
    break;
  case BLDGSIZE_BIGCOOP:
    sx = checkx;
    sy = checky;
    diri = 0;
    do {
      hexadj(sx,sy, buildingsizedirs_bigcoop[diri]);
      sx = global.hexx;
      sy = global.hexy;
      if (isblocked(sx,sy)) {
        //show_message("isblockedmulti(): area found blocked");
        return true;
        }
      diri += 1;
      }
    until (buildingsizedirs_bigcoop[diri] == -1);
    return false;
    break;
  default:
    show_error("unrecognized size in isblockedmulti()!",false);
    return false;
    break;
  }
