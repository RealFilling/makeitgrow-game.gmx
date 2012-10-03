var sx, sy, searchfor;
sx = argument0;
sy = argument1;
searchfor = argument2;

switch(searchfor) {
  case SEARCHFOR_WATER:
    if (getmoist(sx,sy) >= 24) {
      returnxy(sx,sy);
      return true;
      }
    else if (searchfrom(sx,sy,1,SEARCHFOR_ADJWATER)) {
      returnxy(sx,sy);
      return true;
      }
    break;
  case SEARCHFOR_CHICKENFOOD:
    // Chickens eat bugs, some plants and feed.
    if (chickenfoodlike(sx,sy)) {
      returnxy(sx,sy);
      return true;
      }
    break;
  case SEARCHFOR_COWFOOD:
    if (cowfoodlike(sx,sy)) {
      returnxy(sx,sy);
      return true;
      }
    break;
  case SEARCHFOR_PIGFOOD:
    if (pigfoodlike(sx,sy)) {
      returnxy(sx,sy);
      return true;
      }
    break;
  case SEARCHFOR_SHELTER:
    if (searchfrom(sx,sy,1,SEARCHFOR_ADJBUILDING)) {
      returnxy(sx,sy);
      return true;
      }
    break;
  case SEARCHFOR_SAFETY:
    // Not yet implemented
    break;
  case SEARCHFOR_ADJWATER:
    if (global.water[sx,sy] >= 1) {
      returnxy(sx,sy);
      return true;
      }
    break;
  case SEARCHFOR_ADJBUILDING:
    species = getspecies(global.plants[sx,sy]);
    if (isbuilding(species)) {
      returnxy(sx,sy);
      return true; 
      }
    break;
  case SEARCHFOR_ADJFEED:
    species = getspecies(global.plants[sx,sy]);
    if (species == BLDG_FEED) {
      returnxy(sx,sy);
      return true; 
      }
    break;
  default:
    show_error("searchfrom(): unrecognized search type!", false);
    return false;
  }

