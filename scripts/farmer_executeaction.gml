var thisplant, species, subtype, growth, mulchtype, mulchtoadd, satmulch, cenmulch, mulchadded;
var composttype, mx, my, result, newanimal, actionconvert;

// Note: gets boardx and boardy from farmer object!

action = argument0;

thisplant = global.plants[boardx,boardy];
species = getspecies(thisplant);
subtype = getsubtype(thisplant);
growth = getsubtype(thisplant);

//show_message("global.currentseed:"+string(action));

if (action == TOOL_MOVE) {
  return farmer_toolmove();
  }
else if (action < 0) {
  switch (action) {
    case TOOL_WATERCAN:
      farmer_setanim(FARMERANIM_WATERING);
      return farmer_toolwater(boardx,boardy,false);
      break;
    case TOOL_HOE:
      return farmer_toolhoe(boardx,boardy);
      break;
    case TOOL_BASKET:
      return farmer_toolbasket(boardx,boardy);
    case TOOL_RAISELAND:
      return farmer_toolraiseland(boardx,boardy);
      break;
    case TOOL_LOWERLAND:
      return farmer_toollowerland(boardx,boardy);
      break;
    case TOOL_QUERY:
    case TOOL_MINERALVIEW:
    case TOOL_MOISTUREVIEW:
      return farmer_toolmove(); // No use effect
      break;
    case TOOL_BULLDOZER:
      return farmer_bulldozer(boardx,boardy);
      break;
    case TOOL_ADDCHICKEN:
      global.parameter1 = boardx;
      global.parameter2 = boardy;
      global.parameter3 = boardx;
      global.parameter4 = boardy;
      newanimal = instance_create(x,y,obj_chicken);
      result = addanimal(ANIMAL_CHICKEN, newanimal,0);
      if (result == false) {
        with (newanimal) {
          instance_destroy();
          }
        }
      break;
    case TOOL_ADDCOW:
      global.parameter1 = boardx;
      global.parameter2 = boardy;
      global.parameter3 = boardx;
      global.parameter4 = boardy;
      newanimal = instance_create(x,y,obj_cow);
      result = addanimal(ANIMAL_COW, newanimal,0);
      if (result == false) {
        with (newanimal) {
          instance_destroy();
          }
        }
      break;
    case TOOL_ADDPIG:
      global.parameter1 = boardx;
      global.parameter2 = boardy;
      global.parameter3 = boardx;
      global.parameter4 = boardy;
      newanimal = instance_create(x,y,obj_pig);
      result = addanimal(ANIMAL_PIG, newanimal,0);
      if (result == false) {
        with (newanimal) {
          instance_destroy();
          }
        }
      break;
    case TOOL_ADDREDBUG:
      addbugs(boardx, boardy, B_REDBUG, 8);
      break;
    case TOOL_ADDGREENBUG:
      addbugs(boardx, boardy, B_GREENMANTIS, 8);
      break;
    case TOOL_ADDBLUEBUG:
      addbugs(boardx, boardy, B_BLUESPIDER, 8);
      break;
    case TOOL_ADDORANGEBUG:
      addbugs(boardx, boardy, B_ORANGEBEETLE, 8);
      break;
    case TOOL_ADDYELLOWBUG:
      addbugs(boardx, boardy, B_YELLOWFLY, 8);
      break;
    case TOOL_ADDCYANBUG:
      addbugs(boardx, boardy, B_CYANWASP, 8);
      break;
    case TOOL_ADDGRAYBUG:
      addbugs(boardx, boardy, B_GRAYMOTH, 8);
      break;
    case TOOL_ADDBEE:
      addbugs(boardx, boardy, B_BEE, 8);
      break;
    default:
      show_error("unrecognized tool in farmer_executeaction()!",false);
      return 0;
      break;
    }
  }
else {  
  actionconvert = ptypetoitem(action);
  switch (global.itemtype[actionconvert]) {
    case SELECT_SEED:
      if (species != 0) { // If there's already a plant here
        if !farmer_energycheck(ENERGY_UPROOTCOST) {
          return -1;
          break;
          }
        species = 0;
        subtype = 0;
        growth = 0;
        }
      else {
        if (!farmer_energycheck(ENERGY_PLANTCOST)) {
          return -1; // Too tired
          break;
          }
        species = global.itemnum[actionconvert];
        if (global.money < seedcost[species]) {
          return -1; // Not enough money
          }
        global.money -= seedcost[species];
        farmer_setanim(FARMERANIM_PLANTING);
        //species = global.currentseed+1; // offset from seed items to plant species is 1
        subtype = 0;
        growth = 0;
        hextopix(boardx,boardy);
        instance_create(global.hexx,global.hexy-(global.height[boardx,boardy]*HEIGHTPIX),obj_planteffect);
        sound_play(snd_plant1);
        }
      placeplant(boardx,boardy,makeplant(species,subtype,growth),false);
      //global.plants[boardx,boardy] = makeplant(species,subtype,growth);
      //global.currentseed = TOOL_MOVE;
      break;
    case SELECT_COMPOST:
      // Colored compost should consume 24 units.
      // Brown compost should consume that much from each total, 72 units in all.
      if (species == 0) { // Don't place if there's already something here
        // Eventually we'll check for pre-existing compost and remove it.
        //
        // Compost is encoded similarly to plants, so we use the same functions.
        if !farmer_energycheck(ENERGY_COMPOSTPLACECOST) {
          return -1;
          break;
          }
        species = global.itemnum[actionconvert];
        composttype = species - P_COMPOST_START;
        if (composttype == COMPOST_ALL) {
          if ( (global.pmulch[COMPOST_RED] < 24) or
               (global.pmulch[COMPOST_GREEN] < 24) or
               (global.pmulch[COMPOST_BLUE] < 24) ) {
            break;
            }
          global.pmulch[COMPOST_RED] -= 24;
          global.pmulch[COMPOST_GREEN] -= 24;
          global.pmulch[COMPOST_BLUE] -= 24;
          }
        else {
          if (global.pmulch[composttype] < 24) {
            break;
            }
          global.pmulch[composttype] -= 24;
          }
        subtype = 0;
        growth = 4; // Compost amounts are encoded in growth.
        hextopix(boardx,boardy);
        //instance_create(global.hexx,global.hexy-(global.height[boardx,boardy]*HEIGHTPIX),obj_planteffect);
        placeplant(boardx,boardy,makeplant(species,subtype,growth),false);
        //global.plants[boardx,boardy] = makeplant(species,subtype,growth);
        //global.currentseed = TOOL_MOVE;
        sound_play(snd_plop1);
        }
      //mulchtype = global.itemnum[action];    
      ////mulchtype = global.currentseed-(NUMPLANTTYPES-1);//Assumes mulch is last in list
      //mulchtoadd = min(irandom_range(10,30),global.pmulch[mulchtype]);
      //if (mulchtoadd == 0) {
      //  break;
      //  }
      //satmulch = mulchtoadd div 9;
      //cenmulch = mulchtoadd - (satmulch * 8);
      //mulchadded = addmulch(boardx,boardy,mulchtype,cenmulch);
      // Place surrounding mulch
      //for(my=-1;my<2;my+=1) {
      //  for (mx=-1;mx<2;mx+=1) {
      //    if ((mx == 0) and (my == 0)) {
      //      continue;
      //      }
      //    if (!coordsinbounds(boardx+mx,boardy+my)) {
      //      continue;
      //      }
      //    mulchadded += addmulch(boardx+mx,boardy+my,mulchtype,satmulch);
      //    }
      //  }
      //global.pmulch[mulchtype] -= mulchadded;
      
      break;
    case SELECT_TREE:
      if !farmer_energycheck(ENERGY_UPROOTCOST) {
          return -1;
          break;
          }
      //Not implemented yet
      break;
    case SELECT_BUILDING:
      if !farmer_energycheck(ENERGY_BUILDINGCOST) {
          return -1;
          break;
          }
      //show_message("farmer_executeaction(): Trying to place building "+string(action));
      if (placebuilding(boardx, boardy, actionconvert, 0, 0)) {
        //show_message("Building should have placed at "+string(boardx)+","+string(boardy));
        // Energy and money cost should go here
        }
      else {
        //show_message("Building didn't place successfully.");
        // Abort message/noise should go here
        }
      break;
    case SELECT_MISC:
      //Not implemented yet
      break;
    case SELECT_SPECIAL:
      //Not implemented yet
      break;
    }
  }
