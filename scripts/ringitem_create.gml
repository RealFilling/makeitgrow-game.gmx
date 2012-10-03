// We need to define the image and caption of the item, decide its
//   place on the screen, and remember what value needs to be returned
//   if it is clicked.
sprite_index = global.parameter1;
image_index = global.parameter2;
image_speed = 0;
image_xscale = 0;
image_yscale = 0;
image_angle = 0;
image_blend = c_white;
self.menuitem = global.parameter3;
self.menusize = global.parameter4; // Needed to figure out x and y position.
self.parentmenu = global.currentmenu;
self.itemname = global.parameter5;
self.itemdesc = global.parameter6;
ringitem_position(menuitem,menusize,parentmenu);


// debug
//show_message("Created item #"+string(menuitem));
