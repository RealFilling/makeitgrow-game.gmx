// If this is called because of an extra menu being created,
//   we should just die silently.
if (global.currentmenu != self.id) {
  return 0;
  }

// We should tear down the items in the menu here.
for (a=0;a<menuitems;a+=1) {
  with (itemlist[a]) {
    instance_destroy();
    }
  }
global.currentmenu = noone; // Note that this is how the normal game code knows to accept controls again.
global.menustate = MENUSTATE_NONE;
global.menutimer = 0;

