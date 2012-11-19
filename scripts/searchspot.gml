var sx, sy, searchfor, foundanimal;
sx = argument0;
sy = argument1;
searchfor = argument2;

switch(searchfor) {
  case SEARCHFOR_WATER:
    if (getmoist(sx,sy) >= 24) {
      returnxy(sx,sy);
      return true;
      }
    else if (searchfrom(sx,sy,SEARCHFOR_ADJWATER,1)) {
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
    if (searchfrom(sx,sy,SEARCHFOR_ADJBUILDING,1)) {
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
  case SEARCHFOR_CHICKEN:
  case SEARCHFOR_CHICKENHERD:
    foundanimal = ds_map_find_value(global.animallookup,hashcoords(sx,sy));
    if (foundanimal == ANIMAL_CHICKEN) {
      returnxy(sx,sy);
      return true;
      }
    break;
  case SEARCHFOR_COW:
  case SEARCHFOR_COWHERD:
    foundanimal = ds_map_find_value(global.animallookup,hashcoords(sx,sy));
    if (foundanimal == ANIMAL_COW) {
      returnxy(sx,sy);
      return true;
      }
    break;
  case SEARCHFOR_PIG:
  case SEARCHFOR_PIGHERD:
    foundanimal = ds_map_find_value(global.animallookup,hashcoords(sx,sy));
    if (foundanimal == ANIMAL_PIG) {
      returnxy(sx,sy);
      return true;
      }
    break;
  default:
    show_error("searchspot(): unrecognized search type!", false);
    return false;
  }

