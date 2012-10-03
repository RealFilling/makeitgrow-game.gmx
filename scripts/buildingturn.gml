// This is called when the turn of the building's core comes up in play.

var bx,by,buildingcode,buildingo,subtype,growth;
bx = argument0;
by = argument1;
buildingcode = argument2;
subtype = argument3;
growth = argument4;
buildingo = buildingidtoord(buildingcode);

// Per state actions
switch (growth) {
  case BLDGGROWTH_CONSTRUCT1:
    growth = BLDGGROWTH_CONSTRUCT2;
    break;
  case BLDGGROWTH_CONSTRUCT2:
    growth = BLDGGROWTH_CONSTRUCT3;
    break;
  case BLDGGROWTH_CONSTRUCT3:
    // Update count
    global.buildingcounts[buildingo] += 1;
    growth = BLDGGROWTH_BUILT;
    break;
  case BLDGGROWTH_BUILT:    // Update count
    global.buildingcounts[buildingo] += 1;
    break;
  case BLDGGROWTH_DAMAGE:
    destroymultitile(bx,by);
    return false;
    break;
  }
  
// Per building actions
switch (buildingo) {
  case BLDGO_SMALLBARN:
    break;
  case BLDGO_BIGBARN:
    break;
  case BLDGO_FEED:
    break;
  //case BLDGO_PIPE:
  //  Should never happen; pipes are identified by a pipe flag.
  //  break;
  case BLDGO_GREENHOUSE:
    break;
  case BLDGO_FENCE:
    break;
  case BLDGO_SCARECROW:
    break;
  case BLDGO_PIPEPUMP:
    break;
  case BLDGO_COOP:
    break;
  default:
    show_message("Unrecognized building in buildingturn()!");
    break;
  }
  
// Store new value, in case it's changed.
global.plants[bx,by] = makeplant(buildingordtoid(buildingo),subtype,growth);

