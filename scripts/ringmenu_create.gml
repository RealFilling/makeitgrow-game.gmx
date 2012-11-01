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
global.menustyle = MENUSTYLE_RING;
global.menutype = global.parameter1;
ringmenu_beginopening();

x = cx();
y = cy();
image_speed = 0;

switch (global.menutype) {
  case MENUTYPE_SEEDS:
    global.parameter1 = spr_itemicons;
    menuitems = NUMPLANTTYPES;
    global.parameter4 = menuitems;
    for (a=0;a<menuitems;a+=1) {
      global.parameter2 = a;
      global.parameter3 = a;
      global.parameter5 = getseedname(a);
      global.parameter6 = getseeddesc(a);
      itemlist[a] = instance_create(x,y,obj_ringitem);
      }
    global.menutip1 = "--- Choose Seeds ---";
    break;
  case MENUTYPE_COMPOST:
    global.parameter1 = spr_itemicons;
    menuitems = 4;
    global.parameter4 = menuitems;
    global.parameter5 = self.id;
    for (a=0;a<4;a+=1) {
      global.parameter2 = a+NUMPLANTTYPES;
      global.parameter3 = a;
      global.parameter5 = getseedname(a+NUMPLANTTYPES);
      global.parameter6 = getseeddesc(a+NUMPLANTTYPES);
      itemlist[a] = instance_create(x,y,obj_ringitem);
      }
    global.menutip1 = "--- Choose Compost ---";
    break;
  case MENUTYPE_TOOLS:
    global.parameter1 = spr_itemicons2;
    menuitems = NUMTOOLS;
    global.parameter4 = menuitems;
    //global.parameter5 = self.id;
    for (a=0;a<menuitems;a+=1) {
      global.parameter2 = a;
      global.parameter3 = a;
      global.parameter5 = getseedname(-(a+1));
      global.parameter6 = getseeddesc(-(a+1));
      itemlist[a] = instance_create(x,y,obj_ringitem);
      }
    global.menutip1 = "--- Choose Tool ---";
    break;
  case MENUTYPE_TREES: // not correct yet
    global.parameter1 = spr_itemicons;
    numitems = 4;
    global.parameter4 = menuitems;
    //global.parameter5 = self.id;
    for (a=0;a<menuitems;a+=1) {
      global.parameter2 = a;
      global.parameter3 = a;
      global.parameter5 = getseedname(a+NUMPLANTTYPES+4);
      global.parameter6 = getseeddesc(a+NUMPLANTTYPES+4);
      itemlist[a] = instance_create(x,y,obj_ringitem);
      }
    global.menutip1 = "--- Choose Sapling ---";
    break;
  case MENUTYPE_BUILDINGS:
    global.parameter1 = spr_itemicons; // not correct yet
    menuitems = NUMBUILDINGS;
    global.parameter4 = menuitems;
    //global.parameter5 = self.id;
    for (a=0;a<menuitems;a+=1) {
      global.parameter2 = a;
      global.parameter3 = a;
      global.parameter5 = getseedname(a+NUMPLANTTYPES+8);
      global.parameter6 = getseeddesc(a+NUMPLANTTYPES+8);
      itemlist[a] = instance_create(x,y,obj_ringitem);
      }
    global.menutip1 = "--- Choose Building ---";
    break;
  case MENUTYPE_SYSTEM:
    global.parameter1 = spr_itemicons; // not correct yet
    menuitems = 3;
    global.parameter4 = menuitems;
    //global.parameter5 = self.id;
    for (a=0;a<menuitems;a+=1) {
      global.parameter2 = a;
      global.parameter3 = a;
      global.parameter5 = "BLAH";
      itemlist[a] = instance_create(x,y,obj_ringitem);
      }
    global.menutip1 = "--- System Functions ---";
    break;
  }
global.menutip2 = "";
//sound_play_respectdisable(snd_menuopen1);

