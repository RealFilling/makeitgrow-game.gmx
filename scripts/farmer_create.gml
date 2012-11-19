global.thefarmer = self.id;

image_xscale = 1.0;
image_yscale = 1.0;
framenumber = 0; // So we don't create selection buttons too early
isplayer = true;

// Starting position
boardx = floor(BOARDWIDTH/2);
boardy = BOARDHEIGHT-2;
hextopix(boardx,boardy);
x = global.hexx;
y = global.hexy;

// Tile-to-tile movement
moving = false;
moveprogress = 0;
facing = 2;
movespeed = 12; //7

// Animation state & progress
animation = FARMERANIM_NEUTRAL;
animprogress = 0;

// Define animation sprite states
farmer_animsprites();

// Bulk tile movement
bulkmove = false;
bmdestx = -1;
bmdesty = -1;

// Buffered seed placement
nextseed = TOOL_NOTOOL; // Later will be arrays
nextseedx = -1;
nextseedy = -1;

//view_xport[0] = x - (view_wport[0]/2);
//view_yport[0] = y - (view_hport[0]/2);

fieldid = instance_find(obj_field,0);

//seedbutton_spawn(24,24,spr_plainbutton2);

hudid = instance_find(obj_hud,0);

// Seed & Tool Inventory
for (a=0;a<16;a+=1) {
  seedinvent[a] = -1;
  toolinvent[a] = -1;
  }
  




