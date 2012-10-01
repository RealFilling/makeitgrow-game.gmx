// Because we can't pass arrays to scripts in Game Maker, we have to define
//   either all the possible menu types here or define 'em all using globals.
// I've already done enough of that in this project, I think.

// If there's already a menu open then having another one open will
//   cause problems, because of all the globals we use.  Let's that
//   stop that nonsense here.
if (global.currentmenu != noone) {
  instance_destroy()
  return 0;
  }

// Game Maker doesn't allow for direct passing of parameters to created
//   instances, so we have to cheat with globals.
global.currentmenu = self.id;
global.menuselection = -1; // -1 means nothing/aborted.
global.menustyle = MENUSTYLE_GRID;
global.menutype = global.parameter1;
global.menutitle = global.parameter2;
global.menuinfo = instance_create(ax(0),ay(-1000),obj_gridmenuinfocard);
gridmenu_beginopening();

x = cx();
y = cy();
image_speed = 0;

switch (global.menutype) {
  case MENUTYPE_SEEDS:
    global.parameter1 = spr_itemicons;
    menuitems = NUMPLANTTYPES;
    global.parameter4 = menuitems;
    global.parameter7 = -1; // Don't display count
    for (a=0;a<menuitems;a+=1) {
      global.parameter2 = a;
      global.parameter3 = a;
      global.parameter5 = getseedname(a);
      global.parameter6 = getseeddesc(a);
      itemlist[a] = instance_create(x,y,obj_griditem);
      }
    global.menutip1 = "Choose seeds:";
    break;
  case MENUTYPE_COMPOST:
    global.parameter1 = spr_itemicons;
    menuitems = 4;
    global.parameter4 = menuitems;
    global.parameter5 = self.id;
    for (a=0;a<NUMMINERALS+1;a+=1) {
      global.parameter2 = a+NUMPLANTTYPES;
      global.parameter3 = a;
      global.parameter5 = getseedname(a+global.idcompostbegin);
      global.parameter6 = getseeddesc(a+global.idcompostbegin);
      if (a<NUMMINERALS) {
        global.parameter7 = global.pmulch[a];
        }
      else {
        global.parameter7 = -1;
        }
      itemlist[a] = instance_create(x,y,obj_griditem);
      }
    global.menutip1 = "Choose compost type:";
    break;
  case MENUTYPE_TOOLS:
    global.parameter1 = spr_itemicons2;
    menuitems = NUMTOOLS;
    global.parameter4 = menuitems;
      global.parameter7 = -1;
    //global.parameter5 = self.id;
    for (a=0;a<menuitems;a+=1) {
      global.parameter2 = a;
      global.parameter3 = a;
      global.parameter5 = getseedname(-(a+1));
      global.parameter6 = getseeddesc(-(a+1));
      itemlist[a] = instance_create(x,y,obj_griditem);
      }
    global.menutip1 = "Choose tool:";
    break;
  case MENUTYPE_TREES: // not correct yet
    menuitems = 0;
    instance_destroy(); // Not yet implemented
    return false;
    //
    global.parameter1 = spr_itemicons;
    numitems = 4;
    global.parameter4 = menuitems;
    global.parameter7 = -1;
    //global.parameter5 = self.id;
    for (a=0;a<menuitems;a+=1) {
      global.parameter2 = a;
      global.parameter3 = a;
      global.parameter5 = getseedname(a+NUMPLANTTYPES+4);
      global.parameter6 = getseeddesc(a+NUMPLANTTYPES+4);
      itemlist[a] = instance_create(x,y,obj_griditem);
      }
    global.menutip1 = "Choose sapling:";
    break;
  case MENUTYPE_BUILDINGS:
    // NOTE: THIS IS BROKEN, but isn't used anyway
    global.parameter1 = spr_buildingicons;
    menuitems = NUMBUILDINGS;
    global.parameter4 = menuitems;
    global.parameter7 = -1;
    //global.parameter5 = self.id;
    for (a=0;a<menuitems;a+=1) {
      global.parameter2 = a;
      global.parameter3 = a;
      global.parameter5 = getseedname(a+NUMPLANTTYPES+8);
      global.parameter6 = getseeddesc(a+NUMPLANTTYPES+8);
      itemlist[a] = instance_create(x,y,obj_griditem);
      }
    global.menutip1 = "--- Choose Building ---";
    break;
  case MENUTYPE_SYSTEM:
    global.parameter1 = spr_itemicons; // not correct yet
    menuitems = 3;
    global.parameter4 = menuitems;
    global.parameter7 = -1;
    //global.parameter5 = self.id;
    for (a=0;a<menuitems;a+=1) {
      global.parameter2 = a;
      global.parameter3 = a;
      global.parameter5 = "Item Name";
      global.parameter6 = "Item Description";
      itemlist[a] = instance_create(x,y,obj_griditem);
      }
    global.menutip1 = "System Functions:";
    break;
  case MENUTYPE_SEEDINVENT:
    global.parameter1 = spr_itemicons;
    menuitems = global.numseeds;
    global.parameter4 = menuitems;
    //global.parameter5 = self.id;
    for (a=0;a<menuitems;a+=1) {
      thisseed = global.seedinvent[a]-1;
      global.parameter2 = thisseed;
      global.parameter3 = a;
      global.parameter5 = global.itemname[thisseed];
      global.parameter6 = global.itemdesc[thisseed];
      global.parameter7 = global.seedinventamt[a];
      itemlist[a] = instance_create(x,y,obj_griditem);
      }
    global.menutip1 = "Choose a seed:";
    break;
  case MENUTYPE_TOOLINVENT:
    global.parameter1 = spr_itemicons2;
    menuitems = global.numtools;
    global.parameter4 = menuitems;
    global.parameter7 = -1;
    //global.parameter5 = self.id;
    for (a=0;a<menuitems;a+=1) {
      thistool = -(global.toolinvent[a]+1);
      global.parameter2 = thistool;
      global.parameter3 = a;
      //show_message(string(global.toolinvent[a]) + ":" + string(thistool));
      global.parameter5 = global.toolname[thistool+1];
      global.parameter6 = global.tooldesc[thistool+1];
      //global.parameter6 = string(global.parameter2);
      itemlist[a] = instance_create(x,y,obj_griditem);
      }
    global.menutip1 = "Choose a tool:";
    break;
  case MENUTYPE_ITEMINVENT:
    global.parameter1 = spr_itemicons3;
    menuitems = global.numitems;
    global.parameter4 = menuitems;
    //global.parameter5 = self.id;
    for (a=0;a<menuitems;a+=1) {
      global.parameter2 = -(global.iteminvent[a]);
      global.parameter3 = a;
      global.parameter5 = "Item Name";
      global.parameter6 = string(global.parameter2);
      global.parameter7 = global.iteminventamt[a]-1;
      itemlist[a] = instance_create(x,y,obj_griditem);
      }
    global.menutip1 = "Choose an item:";
    break;
  case MENUTYPE_BUILDINGINVENT:
    global.parameter1 = spr_buildingicons;
    menuitems = global.numbuildings;
    global.parameter4 = menuitems;
    global.parameter7 = -1;
    //global.parameter5 = self.id;
    for (a=0;a<menuitems;a+=1) {
      thisbuilding = global.buildinginvent[a];
      buildingord = buildingidtoord(thisbuilding);
      global.parameter2 = buildingord;
      global.parameter3 = a;
      //show_message(string(global.toolinvent[a]) + ":" + string(thistool));
      global.parameter5 = buildingnames[buildingord];
      global.parameter6 = buildingdescs[buildingord];
      //global.parameter6 = string(global.parameter2);
      itemlist[a] = instance_create(x,y,obj_griditem);
      }
    global.menutip1 = "Choose a tool:";
    break;
  }
global.menutip2 = "";
//sound_play(snd_menuopen1);

