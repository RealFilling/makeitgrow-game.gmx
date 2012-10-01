var menuitem, menusize, parentmenu, distfromcenter, rotatedangle;
menuitem = argument0;
menusize = argument1;
parentmenu = argument2;
switch (global.menustate) {
  case MENUSTATE_NONE:
    break; // Shouldn't be here
  case MENUSTATE_OPENING:
    distfromcenter = global.menutimer/MENUTIME_OPENING;
    rotatedangle = ((round((menuitem/menusize)*CIRCLERANGE)-((MENUTIME_OPENING-global.menutimer)*15))+CIRCLERANGE) mod CIRCLERANGE;
    x = (polarx(rotatedangle)*(MENUXHALFSIZE*distfromcenter))+parentmenu.x;
    y = (polary(rotatedangle)*(MENUYHALFSIZE*distfromcenter))+parentmenu.y;
    break;
  case MENUSTATE_OPEN:
    x = (polarx(round((menuitem/menusize)*CIRCLERANGE))*MENUXHALFSIZE)+parentmenu.x;
    y = (polary(round((menuitem/menusize)*CIRCLERANGE))*MENUYHALFSIZE)+parentmenu.y;
    break;
  case MENUSTATE_SELECTING:
    break;
  case MENUSTATE_ABORTING:
    break;
  case MENUSTATE_CLOSING:
    distfromcenter = (MENUTIME_CLOSING-global.menutimer)/MENUTIME_CLOSING;
    rotatedangle = (round((menuitem/menusize)*CIRCLERANGE)+(global.menutimer*15)) mod CIRCLERANGE;
    x = (polarx(rotatedangle)*(MENUXHALFSIZE*distfromcenter))+parentmenu.x;
    y = (polary(rotatedangle)*(MENUYHALFSIZE*distfromcenter))+parentmenu.y;
    break;
  case MENUSTATE_DONE:
    break;
  }
  
