var packedstring, bittenchars, thisanimal, exists, objchange, animaltype;
packedstring = argument0;

// Exists?
packedstring = biteoffsubstring(packedstring,global.charspernum);
exists = stringtonum(global.bittenchars);
if (!exists) {
  // Nothing to do.
  return 0;
  }
  
if (global.savedebug == true) {
  show_message("restoreanimal(): Restoring an animal....");
  }
  
// It doesn't matter what global.parameter* are, we'll be
//   overwriting those variables below.

// Get type
packedstring = biteoffsubstring(packedstring,global.charspernum);
animaltype = stringtonum(global.bittenchars);
global.parameter1 = 1; // This will ser boardx and boardy to basic legal values that
global.parameter2 = 1; //   will be overwritten later.
switch(animaltype) {
  case ANIMAL_CHICKEN:
    thisanimal = instance_create(obj_farmer.x,obj_farmer.y,obj_chicken);
    break;
  case ANIMAL_COW:
    thisanimal = instance_create(obj_farmer.x,obj_farmer.y,obj_cow);
    break;
  case ANIMAL_PIG:
    thisanimal = instance_create(obj_farmer.x,obj_farmer.y,obj_pig);
    break;
  default:
    show_error("ERROR in restoreanimal(): unrecognized animal type!",false);
    return 0;    
    break;
  }
global.animallist[global.animalcount] = animaltype;
global.animalinstances[global.animalcount] = thisanimal;
global.animalcount += 1;
global.animalcounts[animaltype] += 1;
thisanimal.animaltype = animaltype;
thisanimal.exists = true;

// Extract and assign animal variables.
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.predator = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.movefreq = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.movespeed = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.animdelay = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.watermax = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.foodmax = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.colonsize = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.poopsize = stringtonum(global.bittenchars);

packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.boardx = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.boardy = stringtonum(global.bittenchars);

packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.image_speed = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.ahealth = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.waterfull = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.foodfull = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.age = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.colonlevel = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.herdstrength = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.callstrength = stringtonum(global.bittenchars);

packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.waterdecrease = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.fooddecrease = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.threatened = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.panicked = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.sick = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.animdelaycount = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.animdelay = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.animframe = stringtonum(global.bittenchars);

packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.isplayer = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.moving = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.facing = stringtonum(global.bittenchars);
packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.moveprogress = stringtonum(global.bittenchars);

packedstring = biteoffsubstring(packedstring,global.charspernum);
thisanimal.movedelaytimer = stringtonum(global.bittenchars);

// Remaining variables are expansion use, we don't need to decode.

// Update animallookup
ds_map_add(global.animallookup,hashcoords(thisanimal.boardx,thisanimal.boardy),thisanimal.id);
