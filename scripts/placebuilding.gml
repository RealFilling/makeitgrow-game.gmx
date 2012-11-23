var tx,ty,sx,sy,itype,type,subtype,growth,size,ordinal,diri,dir,pipeexist;
//show_message("placebuilding(): entry");
tx = argument0;
ty = argument1;
itype = argument2;
type = global.itemnum[itype];
subtype = argument3;
growth = argument4;
if (isblocked(tx,ty)) {
  //show_message("placebuilding(): building blocked");
  return false;
  }
ordinal = buildingidtoord(type);
size = buildingsizes[ordinal];

// Special cases
if (type == BLDG_PIPE) {
  // Special case.
  //show_message("placebuilding(): trying to build pipe");
  pipeexist = getpipeexist(tx,ty);
  if ((pipeexist == 0) and okayforpipes(tx,ty)) {
    setpipeexist(tx, ty, 1);
    validatesurroundingpipes(tx,ty);
    return true;
    }
  else {
    setpipeexist(tx, ty, 0);
    validatesurroundingpipes(tx,ty);
    return true;
    }
  }
else if (type == BLDG_PIPEPUMP) {
  setpipeexist(tx,ty,1);
  validatesurroundingpipes(tx,ty);
  // Fall through so the building item gets added.
  }

switch (size) {
  case BLDGSIZE_SMALL:
    global.plants[tx,ty] = makeplant(type,subtype,growth);
    break;
  case BLDGSIZE_MEDIUM:
    // check to make sure all the spots are free
    if (isblockedmulti(BLDGSIZE_MEDIUM,tx,ty)) {
      return false;
      }
    global.plants[tx,ty] = makeplant(type,subtype,growth);
    sx = tx;
    sy = ty;
    // now that we know they're all free, fill 'em up
    for (diri=0;diri<3;diri+=1) {
      dir = buildingsizedirsm[diri];
      hexadj(sx,sy, dir);
      sx = global.hexx;
      sy = global.hexy;
      global.plants[sx,sy] = makeplant(makeshadow(dir),subtype,growth);
      }
    //show_message("placebuilding(): placed medium building successfully");
    break;
  case BLDGSIZE_LARGE:
    // Hey, why are we basically repeating everything above?  Funny story.
    // Ideally all of this would be put in its own function, except that
    //   GM makes it imposslble to pass an array to a script!
    // check to make sure all the spots are free
    if (isblockedmulti(BLDGSIZE_LARGE,tx,ty)) {
      return false;
      }
    global.plants[tx,ty] = makeplant(type,subtype,growth);
    sx = tx;
    sy = ty;
    // now that we know they're all free, fill 'em up
    for (diri=0;diri<8;diri+=1) {
      dir = buildingsizedirsl[diri];
      hexadj(sx,sy, dir);
      sx = global.hexx;
      sy = global.hexy;
      global.plants[sx,sy] = makeplant(makeshadow(dir),subtype,growth);
      }
    //show_message("placebuilding(): placed large building successfully");
    break;
  case BLDGSIZE_GREENHOUSE:
    // This special building consists of a "core" in the upper-left corner and
    //   a number of spots flagged as greenhouse extents.
    if (isblockedmulti(BLDGSIZE_GREENHOUSE,tx,ty)) {
      return false;
      }
    global.plants[tx,ty] = makeplant(type,subtype,growth);
    // First do the frame
    sx = tx;
    sy = ty;
    diri = 0;
    dir = buildingsizedirs_ghframe[diri];
    do {
      hexadj(sx,sy, dir);
      sx = global.hexx;
      sy = global.hexy;
      global.plants[sx,sy] = makeplant(makeshadow(dir),subtype,growth);
      diri += 1;
      dir = buildingsizedirs_ghframe[diri];
      }
    until (dir == -1);
    // Now do the interior
    sx = tx;
    sy = ty;
    diri = 0;
    dir = buildingsizedirs_ghinside[diri];
    do {
      hexadj(sx,sy, dir);
      sx = global.hexx;
      sy = global.hexy;
      setgreenh(sx,sy,1);
      diri += 1;
      dir = buildingsizedirs_ghinside[diri];
      }
    until (dir == -1);
    //
    //for (diri=0;diri<38;diri+=1) {
    //  dir = buildingsizedirsexl[diri];
    //  hexadj(sx,sy, dir);
    //  sx = global.hexx;
    //  sy = global.hexy;
    //  setgreenh(sx,sy,1);
    //  }
    break;
  case BLDGSIZE_SMALLCOOP:
    if (isblockedmulti(BLDGSIZE_SMALLCOOP,tx,ty)) {
      return false;
      }
    global.plants[tx,ty] = makeplant(type,subtype,growth);
    sx = tx;
    sy = ty;
    // now that we know they're all free, fill 'em up
    diri = 0;
    dir = buildingsizedirs_smallcoop[diri];
    do {
      hexadj(sx,sy, dir);
      sx = global.hexx;
      sy = global.hexy;
      global.plants[sx,sy] = makeplant(makeshadow(dir),subtype,growth);
      diri += 1;
      dir = buildingsizedirs_smallcoop[diri];
      }
    until (dir == -1);
    break;
  case BLDGSIZE_MEDCOOP:
    if (isblockedmulti(BLDGSIZE_MEDCOOP,tx,ty)) {
      return false;
      }
    global.plants[tx,ty] = makeplant(type,subtype,growth);
    sx = tx;
    sy = ty;
    // now that we know they're all free, fill 'em up
    diri = 0;
    dir = buildingsizedirs_medcoop[diri];
    do {
      hexadj(sx,sy, dir);
      sx = global.hexx;
      sy = global.hexy;
      global.plants[sx,sy] = makeplant(makeshadow(dir),subtype,growth);
      diri += 1;
      dir = buildingsizedirs_medcoop[diri];
      }
    until (dir == -1);
    break;
  case BLDGSIZE_BIGCOOP:
    if (isblockedmulti(BLDGSIZE_BIGCOOP,tx,ty)) {
      return false;
      }
    global.plants[tx,ty] = makeplant(type,subtype,growth);
    sx = tx;
    sy = ty;
    // now that we know they're all free, fill 'em up
    diri = 0;
    dir = buildingsizedirs_bigcoop[diri];
    do {
      hexadj(sx,sy, dir);
      sx = global.hexx;
      sy = global.hexy;
      global.plants[sx,sy] = makeplant(makeshadow(dir),subtype,growth);
      diri += 1;
      dir = buildingsizedirs_bigcoop[diri];
      }
    until (dir == -1);
    break;
  default:
    show_error("Unrecognized building size in placebuilding()!",false);
    return false;
    break;
  }

return true;

