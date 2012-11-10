var moveaction;

instance_activate_object(fieldid);
obj_field.x = x;
obj_field.y = y;

framenumber += 1;
if (framenumber == 2) {
  hextopix(boardx,boardy);
  x = global.hexx;
  y = global.hexy;
  //seedbutton_createarray();
  }

moveaction = false;
// Movement
if (moving == true) {
  hextopix(boardx,boardy);
  moveprogress += movespeed;
  x = global.hexx + (dirxhp[facing] * moveprogress);
  y = global.hexy + (diryhp[facing] * moveprogress);
  if (moveprogress >= TILEWIDTH) {
    //
    // Move concluded
    //
    global.energy = max(0, global.energy-1);
    moveaction = true;
    moveprogress = 0;
    hexadj(boardx,boardy,facing);
    boardx = global.hexx;
    boardy = global.hexy;
    farmer_movestuff(boardx,boardy);
    // Make sure farmer is centered within tile
    hextopix(boardx,boardy)
    x = global.hexx;
    y = global.hexy;
    //
    // Bulk movement handling
    //
    if (bulkmove == true) {
      if ((boardx == bmdestx) and (boardy == bmdesty)) {
        //show_message("farmer_bulkmove calling from farmer_step()");
        farmer_cancelbulkmove();
        moving = false;
        if ((nextseed != -1) ){// and (nextseedx == boardx) and (nextseedy == boardy)) {
          farmer_executeaction(nextseed);
          farmer_haltaction();
          }
        //moveaction = true;
        }
      else {
        moving = farmer_checkdir(boardx,boardy,closestdir(boardx,boardy,bmdestx,bmdesty));
        facing = global.returnfacing;
        }
      }
    else {
        moving = false;
        //moveaction = true;
      }
    }
  }
  
// Scrolling
viewx = x - view_wport[0]/2; 
viewy = y - view_hport[0]/2;
if (viewx < 0) {viewx = 0;};
if (viewx >= (TILEWIDTH*BOARDWIDTH)-(screenwidth+TILEWIDTH)) {viewx = ((TILEWIDTH*BOARDWIDTH)-(screenwidth+TILEWIDTH))-1};
if (viewy < 0) {viewy = 0;};
if (viewy >= (ETILEHEIGHT*BOARDHEIGHT)-(screenheight+TILEHEIGHT)) {viewy = ((ETILEHEIGHT*BOARDHEIGHT)-(screenheight+TILEHEIGHT))-1};
view_xview[0] = round(viewx); // Helps prevent seams from appearing between hexes in HTML.
view_yview[0] = round(viewy);

// Overlapping with plants
//depth = ((((BOARDHEIGHT*4) - floor((y-1)div 8))*4)-1) + BOARDMINDRAWDEPTH;
depth = 1000000000;

doharvest = false;
if (global.currentseed == TOOL_BASKET) {
  doharvest = true;
  }

// Automatic actions
if (moveaction = true) {
  for (by=-1;by<=1;by+=1) {
    for (bx=-1;bx<=1;bx+=1) {
      ox = boardx+bx;
      oy = boardy+by;
      if ((ox < 0) or (ox >= BOARDWIDTH) or (oy < 0) or (oy >= BOARDHEIGHT)) {
        continue;
        }
      harvestplant = global.plants[ox,oy];
      hspecies = getspecies(harvestplant);
      hsubtype = getsubtype(harvestplant);
      hgrowth = getgrowth(harvestplant);
      if ((hspecies == P_EMPTY) or (hspecies >= P_COMPOST_START)) {
        continue;
        }
      else if (hspecies == P_WEED) {
        if (!farmer_energycheck(ENERGY_UPROOTCOST)) { // Weeding
          continue;
          }
        global.harvest[ox,oy] = 0;
        placeplant(ox,oy,makeplant(0,0,0),true);
        //global.plants[ox,oy] = makeplant(0,0,0);
        continue;
        }
      if (hgrowth == GROWTH_DEAD) {
        if (!farmer_energycheck(ENERGY_COMPOSTGATHERCOST)) {
          continue;
          }
        // Dead, collect mulch
        mulchtogain = plantmineral[hspecies]
        if (planthasmineral(hspecies)) { 
          global.pmulch[mulchtogain] += getamtmulch(hspecies,global.harvest[ox,oy]);
          }
        global.harvest[ox,oy] = 0;
        placeplant(ox,oy,makeplant(0,0,0),true);
        //global.plants[ox,oy] = makeplant(0,0,0);
        }
      else if (global.harvest[ox,oy] != 0 and doharvest and (!nonspread[hspecies])) { // Auto harvesting
        if (!farmer_energycheck(ENERGY_HARVESTCOST)) {
          continue;
          }
        amtharvested = global.harvest[ox,oy];
        global.pharvest[hspecies] += amtharvested;
        global.money += amtharvested * harvestworth[hspecies];
        global.harvest[ox,oy] = 0;
        }
      }
    }
  }
