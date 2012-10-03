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
    if (isblockedmulti(BLDGSIZE_LARGE,tx,ty)) {
      return false;
      }
    global.plants[tx,ty] = makeplant(type,subtype,growth);
    sx = tx;
    sy = ty;
    for (diri=0;diri<38;diri+=1) {
      dir = buildingsizedirsexl[diri];
      hexadj(sx,sy, dir);
      sx = global.hexx;
      sy = global.hexy;
      setgreenh(sx,sy,1);
      }
    break;
  default:
    show_error("Unrecognized building size in placebuilding()!",false);
    return false;
    break;
  }

return true;

