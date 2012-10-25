switch(displaymode) {
  case TCT_HOVER:
    // Nothing to do; x and y coordinates are unchanging.
    break;
  case TCT_MENU:
    // Two states: out of menu and in menu.
    break;
  case TCT_TILESEARCH:
  case TCT_TILESEARCH_MOIST:
  case TCT_TILESEARCH_HARVEST:
    // Point to location on field.
    break;
  default:
    show_message("ERROR: bad tutorial card display mode in tutcardpositioning()!");
    instance_destroy();
    break;
  }
