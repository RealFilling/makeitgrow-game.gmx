// Here is where the animal does his thing.
var searchfor;
searchfor = argument0;

switch (searchfor) {
  case SEARCHFOR_WATER:
    // Automatic
    waterfull = watermax;
    break;
  case SEARCHFOR_CHICKENFOOD:
    // About the eating code:
    //   When *foodlike() was called, it left in global.return1 the kind of food
    //     the search turned up.  That should still be in that variable, so we can
    //     use it here.
    switch (global.return1) {
      case FOUNDFOOD_NONE:
        animal_moverandom();
        break;
      case FOUNDFOOD_BUGS:
        eatbugs(boardx, boardy);
        foodfull = foodmax;
        break;
      case FOUNDFOOD_PLANT:
        // Nom nom nom
        global.plants[boardx,boardy] = 0;
        foodfull = foodmax;
        break;
      case FOUNDFOOD_FEED:
        // Automatic success
        foodfull = foodmax;
        break;
      default:
        show_error("ERROR in animal_act(): unrecognized found chicken feed:" + string(global.return1), false);
        break;
      }
    break;
  case SEARCHFOR_COWFOOD:
    switch (global.return1) {
      case FOUNDFOOD_NONE:
        animal_moverandom();
        break;
      case FOUNDFOOD_PLANT:
        // Nom nom nom
        global.plants[boardx,boardy] = 0;
        foodfull = foodmax;
        break;
      case FOUNDFOOD_FEED:
        // Automatic success
        foodfull = foodmax;
        break;
      default:
        show_error("ERROR in animal_act(): unrecognized found cow feed", false);
        break;
      }
    break;
  case SEARCHFOR_PIGFOOD:
    switch (global.return1) {
      case FOUNDFOOD_NONE:
        animal_moverandom();
        break;
      case FOUNDFOOD_PLANT:
        // Nom nom nom
        global.plants[boardx,boardy] = 0;
        foodfull = foodmax;
        break;
      case FOUNDFOOD_FEED:
        // Automatic success
        foodfull = foodmax;
        break;
      default:
        show_error("ERROR in animal_act(): unrecognized found pig feed", false);
        break;
      }
    break;
  case SEARCHFOR_SHELTER:
    // Slim chance for random movement to break things up
    animal_raremove();
    break;
  case SEARCHFOR_SAFETY:
    // Slim chance for random movement to break things up
    animal_raremove();
    break;
  default:
    show_error("ERROR in animal_act(): unknown search goal",false);
    animal_raremove();
    break;
  }
