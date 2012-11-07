var myx, myy, plant, species, subtype, growth, mineraleaten, newfruit, mintoeat, amttoeat;
var adjplants, grow, amtreplenish, growtarget, thisheight, red, green, blue, thissoil, thistill;
var eatminrange, waterplus, subgrow, wattodrink, moisthere, skipspread, dir, adjx, adjy, greenh;
var climatemod, metabolismtime, metabset, metabtype;
//globalvar plants;
myx = argument0;
myy = argument1;
plant = global.plants[myx,myy];
thisheight = global.height[myx,myy]-24;
species = getspecies(plant);
// Bug variables
bugs = global.bugs[myx, myy];
bugeatenflag = false;
pnomflag = false;
bnomflag = false;

// 1. BUG TURN
// ***********
if (bugs != 0) {
  getallbugs(bugs);
  for (bugnum = 0;bugnum < NUMBUGS; bugnum += 1) {
    nomskip = false;
    //
    pnomflag = false;
    bnomflag = false;
    //
    bugcount = global.bugarray[bugnum];
    // short-circuit if no bug
    if (bugcount == 0) {
      continue;
      }
    // Look for and maybe eat plant   
    // NEW behavior
    if (lookforedibleplant(myx,myy, bugnum)) {
      plantx = global.hexx;
      planty = global.hexy;
      if ((plantx == myx) and (planty == myy)) {
        pnomflag = true;
        bugeatenflag = true;
        bugcount = min(bugcount+irandom_range(1,4),15);
        }
      else {
        global.bugarray[bugnum] = 0;
        bugdata = global.bugs[plantx,planty];
        destbugs = getarbbugs(bugdata,bugnum);
        global.bugs[plantx,planty]=setarbbugs(bugdata,bugnum,min(destbugs+bugcount,15));
        bugcount = 0;
        nomskip = true;
        }
      }
    
    // if predator bug, check for yummy bugs
    // NEW behavior
    if (not nomskip) {
      if (lookforediblebug(myx,myy, bugnum)) {
        bugx = global.hexx;
        bugy = global.hexy;
        foundbug = global.foundbug;
        if ((bugx == myx) and (bugy == myy)) {
          bnomflag = true;
          //eatenflag = true;
          global.bugarray[foundbug] = max(0,global.bugarray[foundbug]-bugcount);
          bugcount = min(bugcount+irandom_range(1,4),15);
          }
        else {
          global.bugarray[bugnum] = 0;
          bugdata = global.bugs[bugx,bugy];
          destbugs = getarbbugs(bugdata,bugnum);
          global.bugs[bugx,bugy]=setarbbugs(bugdata,bugnum,min(destbugs+bugcount,15));
          bugcount = 0;
          bnomskip = true;
          }
        }
      }
    
    // if no yummy plant here, and not eaten: maybe die, otherwise spread
    if ((pnomflag and bnomflag and nomskip) == false) {
      if (irandom_range(0,1) == 0) {
        bugcount = max(0,bugcount-1);
        }
      travelnumber = irandom_range(1,bugcount);
      traveldirection = irandom_range(0,5);
      traveldistance = 1; // Flying bugs travel farther, for later.
      travelx = myx;
      travely = myy;
      for (flightturn=0; flightturn<traveldistance; flightturn+=1) {
        hexadj(travelx,travely,traveldirection);
        travelx = global.hexx;
        travely = global.hexy;
        }
      bugcount = max(0,bugcount-travelnumber);
      // if not coordsinbounds, bugs have left the map
      if (coordsinbounds(travelx, travely)) {
        destallbugs = global.bugs[travelx,travely];
        destbugs = getarbbugs(destallbugs,bugnum);
        destallbugs = setarbbugs(destallbugs,bugnum,min(destbugs+travelnumber,15));
        global.bugs[travelx,travely] = destallbugs;
        }
      }
    // *For debugging insect bitmath:
    //for (a=0;a<NUMBUGS;a+=1) {
    //  if ((global.bugarray[a] < 0) or (global.bugarray[a]>15)) {
    //    buildmessage = "BUGCOUNTS: ";
    //    for (b=0;b<NUMBUGS;b+=1) {
    //      buildmessage += string(global.bugarray[b])+" ";
    //      }
    //    show_message(buildmessage);
    //    break;
    //    }
    //  }
    // END DEBUG
    // Write bugcount back into bugarray for inclusion in board
    global.bugarray[bugnum] = bugcount;
    }
  // After looping through all the bugs, any changes to the bug counts here
  //   should now be reflected in bugarray, so we can write them to their fields.
  global.bugs[myx,myy] = setallbugs();
  }


// 2. SOIL TURN
// ************
// Over time, soil gradually gains nutrients through weathering.  This is very gradual, and can't enrich
//   soil beyond a certain value.  This allows sections of fields to lie fallow and recover that way.

// Is there a greenhouse over this spot?
greenh = getgreenh(myx,myy);

// Tilling checks
if ( (irandom_range(0,199) == 0) and (greenh == 0) ) {
  thissoil = global.soil[myx,myy];
  thistill = gettill(myx,myy);
  if (global.water[myx,myy] > 0) {
    waterplus = 3;
    }
  else {
    waterplus = 0;
    }
  red = min(getred(thissoil)+irandom_range(0,3+waterplus-thistill), 120);
  green = min(getgreen(thissoil)+irandom_range(0,3+waterplus-thistill), 120);
  blue = min(getblue(thissoil)+irandom_range(0,3+waterplus-thistill), 120);
  global.soil[myx,myy] = makesoil(red,green,blue);
  }
// Moisture spread
avgmoist(myx,myy);
  
// If the ground here is tilled, there is a 0.25% chance per turn that it reverts
//   one step towards packed earth.
if (irandom_range(0,399) == 0) {
  settill(myx,myy,max(0,gettill(myx,myy)-1));
  }
  
  
if (getpipeexist(myx,myy) == 1) {
  // Pipe turn
  pipeturn(myx,myy);
  }  

// ***** DEBUG
//if ((myx == 1) and (myy == 1)) {
//  show_message("cellturn(): 1,1 turn on rawtime:"+string(global.rawtime));
//  }
// ***** END DEBUG

// Loop shortcircuit if empty
if (species == 0) {
  return 0;
  }

// Metabolism check
if (isplant(species) or istree(species)) {
  metabolismtime = ((global.rawtime div TICKSPERCYCLE)mod 6);
  if (metabolismtime < 0 or metabolismtime > 5) {
    show_error("cellturn(): metabolismtime outside of expected range!", false);
    }
  metabtype = metabolismspeed[species];
  switch (metabtype) {
    case PMETAB_NORMAL:
      if ((metabolismtime != 0) and (metabolismtime != 3)) {
        return 0;
        }
      break;
    case PMETAB_FAST:
      if ((metabolismtime != 0) and (metabolismtime != 2) and (metabolismtime != 4)) {
        return 0;
        }
      break;
    case PMETAB_FASTEST:
      break;
    case PMETAB_SLOW:
      if (metabolismtime != 0) {
        return 0;
        }
      break;
    case PMETAB_NONE:
    case PMETAB_SLOWEST:
    default:
      show_message("cellturn(): ERROR, unimplemented metabolism "+string(metabset)+"!");
      break;
    }
  }

subtype = getsubtype(plant);
growth = getgrowth(plant);
//growth = (growth + 1) mod 5;
mineraleaten = false;
newfruit = false;

if (isplant(species) or istree(species)) {
  grow = false;
  // 3. Plant/Tree/Compost/Building turn
  // *************
  // Mineral consumption
  mintoeat = plantmineral[species];
  amttoeat = plantminneed[species];
  eatminrange = isatree[species];
  if (mintoeat == MS_REPLENISH) {
    mineraleaten = true;
    addmineral(RED,1,myx,myy);
    addmineral(GREEN,1,myx,myy);
    addmineral(BLUE,1,myx,myy);
    }
  else if (mintoeat == MS_ALL) {
    mineraleaten = (eatmineral(RED,amttoeat,myx,myy,eatminrange)==true and
            eatmineral(GREEN,amttoeat,myx,myy,eatminrange)==true and
            eatmineral(BLUE,amttoeat,myx,myy,eatminrange)==true);
    }
  else if (eatmineral(mintoeat,amttoeat,myx,myy,eatminrange)) {
    mineraleaten = true; //
    }
  // Water consumption
  wattodrink = plantwatneed[species];
  moisthere = getmoist(myx,myy);
  if (wattodrink > moisthere) {
    watercheck = false;
    //enqueueticker("DEBUG: not enough water at X:"+string(myx)+" Y:"+string(myy) );
    }
  else {
    if (irandom_range(0,(moisthere - wattodrink)+1) != 0) {
      setmoist(myx,myy,moisthere-wattodrink);
      watercheck = true;
      }
    else {
      watercheck = false;
      //enqueueticker("DEBUG: water check failed at X:"+string(myx)+" Y:"+string(myy) );
      }
    }

  //
  if ((mineraleaten == true) and (watercheck == true)){
    adjplants = adjfullrespecttrees(myx,myy);
    if (greenh == 0) {
      climatemod = 80;
      }
    else {
      climatemod = 100-(max(global.mgpc[monthaffinity(species)] - nicheeffect(myx,myy,plantniche[species]),1));
      }
    growtarget = climatemod + (heightaffinity[species] * thisheight);
    growchance = irandom_range(0,100);
    if ( (growchance <= growtarget or (global.plantgrowthdebug)) and
        (adjplants < crowdthreshold[species]) and (bugeatenflag == false) ) {
      grow = true;
      }
    else {
      if (bugeatenflag == true) {
        // if bugs are eating this plant, reduce harvest
        global.harvest[myx,myy] = irandom_range(0,global.harvest[myx,myy]);
        }
      }
    }
  // 
  if (grow == true) {
    skipspread = false;
    subgrow = false;
    // Trees require multiple successes (encoded in subtype) before they grow.
    if (istree(species)) {
      subtype += 1;
      if (subtype < min( (growth+1)*4,8 ) ) { // requires more successes as it grows, max 7
        subgrow = true;
        }
      else {
        subtype = subtype div 2; // Reset growth progress a bit while granting it a barrier against death. 
        }
      }
    if (subgrow == false) {      
      if (isdying(growth)) {
        if (irandom_range(growth,100) > deathchance[species]) {
          growth = GROWTH_MATURE;
          skipspread = true;//A hack to ensure reviving plants don't spread immediately.
          }
        }
      else if (isimmature(growth)) {
        // Growth event
        growth += 1;
        hextopix(myx,myy);
        instance_create(global.hexx,global.hexy-(global.height[myx,myy]*HEIGHTPIX),obj_groweffect);
        queuesound(SOUNDFRAME_GROW);
        }
      else if ((ismature(growth)) and (species != P_WEED) and (species != P_GRASS)) {
        if ((global.harvest[myx,myy] < MAXFRUIT) and planthasmineral(species)){
          // Increase harvest
          global.harvest[myx,myy] += 1;
          queuesound(SOUNDFRAME_FRUIT);
          if (irandom_range(0,100) <= extragrowchance[species]) {
            spreadplant(species,subtype,growth,myx,myy);
            queuesound(SOUNDFRAME_SPREAD);
            }  
          }
        }
      if ( isadult(growth) and
          (!istree(species)) and (skipspread == false)) {
        // Propagate
        spreadplant(species,subtype,growth,myx,myy);
        queuesound(SOUNDFRAME_SPREAD);
        }
      }
    }
  else { // if grow == false
    if ((irandom_range(0,100) <= deathchance[species]) or (bugeatenflag == true)){
      if (!istree(species) or (subtype == 0)) {
        if (isadult(growth)) {
          growth = GROWTH_DYING;// plant becomes unhealthy
          queuesound(SOUNDFRAME_DEATH);
          }
        else {
          // Normal death
          growth = GROWTH_DEAD; // plant dies
          queuesound(SOUNDFRAME_DEATH);
          }
        }
      else {
        subtype -= 1;
        }
      }
    else if ((isdead(growth)) and (irandom_range(0,7) == 0) and !istree(species)) {
      //addmineral(mintoeat,((amttoeat div 2)*(2+global.harvest[myx,myy])),myx,myy)
      // Immediate decomposition
      mulchplant(myx,myy);
      //amtreplenish = getamtmulch(species,global.harvest[myx,myy]);
      //species = 0;
      //subtype = 0;
      //growth = 0;
      //addmineral(global.minreturn,amtreplenish,myx,myy);
      //global.harvest[myx,myy] = 0;
      }
    }
  if (istree(species)) {
    treechange(myx,myy,subtype,growth);
    }
  else {
    placeplant(myx,myy,makeplant(species,subtype,growth),true);
    }
  //true so tree growth will happen, instead of fail due to tree priority.
  } // if (species < P_COMPOST_START)
else if (iscompost(species)) { 
  //show_message("cellturn(): compost check");
  // Compost turn
  if (irandom_range(0,1) == 1) { // 50% chance
    composttype = species-P_COMPOST_START;
    if (composttype != 3) { // That is to say, it's not ALL
      for (dir=0;dir<6;dir+=1) {
        hexadj(myx,myy,dir);
        addmulch(global.hexx,global.hexy,composttype,1);//Bounds checking done in addmulch()
        }
      addmulch(myx,myy,composttype,2);//Bounds checking done in addmulch()
      }
    else { // If the composttype is ALL
      for (dir=0;dir<6;dir+=1) {
        hexadj(myx,myy,dir);
        addmulch(global.hexx,global.hexy,RED,1);//Bounds checking done in addmulch()
        addmulch(global.hexx,global.hexy,GREEN,1);
        addmulch(global.hexx,global.hexy,BLUE,1);
        }
      addmulch(myx,myy,0,2);
      addmulch(myx,myy,1,2);
      addmulch(myx,myy,2,2);
      }
    if (growth != 1) {
      placeplant(myx,myy,makeplant(species,subtype,growth-1),true);
      }
    else {
      placeplant(myx,myy,0,true); // No plant or compost here now
      }
    }
  }
else if (isbuilding(species)) {
  //show_message("cellturn(): building check");
  buildingturn(myx,myy,species,subtype,growth);
  }
  
  

