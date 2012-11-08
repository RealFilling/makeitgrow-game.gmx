var tempx, tempy, xdir, ydir;
xdir = 0;
ydir = 0;
switch(displaymode) {
  case TCT_HOVER:
    x = xparam;
    y = yparam;
    break;
  case TCT_MENU:
  case TCT_MENUSELECT:
    x = global.tutpostx;
    y = global.tutposty;
    break;
  case TCT_TILESEARCH:
  case TCT_TILESEARCH_MOIST:
  case TCT_TILESEARCH_HARVEST:
    // Point to location on field.
    hextopix(tilex, tiley);
    spotx = global.hexx-view_xview[0];
    spoty = (global.hexy-view_yview[0]);
    tempx = spotx;
    tempy = (spoty + TUTCARDTILEVERTOFFSET) - (global.height[tilex,tiley]*HEIGHTPIX);
    //if (global.poisonflag == false) {
    //  global.poisonflag = true;
    //  show_message("tutcardpositioning(): tempx:"+string(tempx)+" tempy:"+string(tempy));
    //  }
    if (tempx < TUTAUTOPOSEDGE) {
      tempx = TUTAUTOPOSEDGE;
      xdir = -1;
      }
    else if (tempx > (view_wview[0])-TUTAUTOPOSEDGE) {
      xdir = 1;
      tempx = view_wport[0]-TUTAUTOPOSEDGE;
      }
    if (tempy < TUTAUTOPOSEDGE) {
      tempy = TUTAUTOPOSEDGE;
      ydir = -1;
      }
    else if (tempy > view_hview[0]-TUTAUTOPOSEDGE) {
      ydir = 1;
      tempy = view_hport[0]-TUTAUTOPOSEDGE;
      }
    // Figure arrow direction
    arrowdirauto = reltodir(xdir,ydir);
    if (arrowdirauto == -1) {arrowdirauto = 4;}
    x = tempx;
    y = tempy;
    break;
  default:
    show_message("ERROR: bad tutorial card display mode in tutcardpositioning()!");
    instance_destroy();
    break;
  }
