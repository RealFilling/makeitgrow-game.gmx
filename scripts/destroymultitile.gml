var tx,ty,thisspecies,treex,treey,treespecies,dir,thisx,thisy,a,thatspecies,sizetype,a;
tx = argument0; ty = argument1; // Coordinates of object
thisspecies = getspecies(global.plants[tx,ty]);

if (!isbuilding(thisspecies) and !istree(thisspecies) and !isshadow(thisspecies)) {
  // There's no object here to remove.
  return false;
  }

if ((getpipeexist(tx,ty) == 1) and !ispipetype(thisspecies)) {
  setpipeexist(tx,ty,0);
  return true;
  }

if ((getgreenh(tx,ty) == 1) and (thisspecies != BLDG_GREENHOUSE)) {
  // This means this tile is an extent of the greenhouse, not the core.
  // No buildings other than pipes and greenhouse cores should have a greenhouse
  //   flag.  Greenhouses can only be razed by bulldozing the core.
  return false;
  }

// Case: Shadow tile
// Follow the shadow's direction back to the source entity, from which
//   we know the extent of the entity.
while (isshadow(thisspecies)) {
  dir = shadowdir(thisspecies);
  hexadj(tx,ty,dir); // Note: depends on the ordering of the P_SHADOW* constants
  tx = global.hexx; 
  ty = global.hexy;
  thisspecies = getspecies(global.plants[tx,ty]);
  }

setuprqueue(tx,ty);

// Now we know the base location of the object, so we can destroy it.
while (global.removalcounter > 0) {
  popfromrqueue(); thisx = global.returnx; thisy = global.returny;
  thisspecies = getspecies(global.plants[thisx,thisy]);
  erasecell(thisx,thisy);
  // This is where we put in buildings.
  if (isbuilding(thisspecies)) {
    sizetype = buildingsizes[buildingidtoord(thisspecies)];
    switch (sizetype) {
      case BLDGSIZE_SMALL:
        // Nothing to do, we've already done it.
        break;
      case BLDGSIZE_MEDIUM:
        thisx = tx;
        thisy = ty;
        for (a=0;a<3;a+=1) {
          hexadj(thisx,thisy,buildingsizedirsm[a]);
          thisx = global.hexx;
          thisy = global.hexy;
          erasecell(thisx,thisy);
          }
        break;
      case BLDGSIZE_LARGE:
        thisx = tx;
        thisy = ty;
        for (a=0;a<8;a+=1) {
          hexadj(thisx,thisy,buildingsizedirsl[a]);
          thisx = global.hexx;
          thisy = global.hexy;
          erasecell(thisx,thisy);
          }
        break;
      case BLDGSIZE_GREENHOUSE:
        // This will require a special case to clean up greenhouse flags.
        // To bulldoze the greenhouse, the core must be eliminated directly.
        // That means we know where the other greenhouse tiles must be in
        //   relation to the current tile.
        erasecell(tx,ty);
        sx = tx;
        sy = ty;
        for (diri=0;diri<38;diri+=1) {
          dir = buildingsizedirsexl[diri];
          hexadj(sx,sy, dir);
          sx = global.hexx;
          sy = global.hexy;
          erasecell(sx,sy);
          }
        break;
      }
    }
  else if ((thisspecies == T_RED_TOP) or (treespecies == T_GREEN_TOP)) {
    hexadj(thisx, thisy, 4);
    addtorqueue(global.hexx, global.hexy);
    hexadj(thisx, thisy, 5);
    addtorqueue(global.hexx, global.hexy);
    }
  else if ((thisspecies == T_RED_BOTTOM) or (thisspecies == T_GREEN_BOTTOM)) {
    hexadj(thisx, thisy, 5);
    addtorqueue(global.hexx, global.hexy);
    hexadj(thisx, thisy, 0);
    addtorqueue(global.hexx, global.hexy);
    }
  else if (isshadow(thisspecies)) {
    // Searching for adjacent shadows pointing to this one
    for (a=0;a<6;a+=1) {
      hexadj(tx,ty,a);
      thatspecies = getspecies(global.plants[global.hexx,global.hexy]); 
      if (isshadow(thatspecies)) {
        if (shadowdir(thatspecies) = a) {
          addtorqueue(global.hexx, global.hexy);
          }
        }
      }
    }
  }



