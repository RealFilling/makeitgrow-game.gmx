// Called from field_draw()

var item, buttonimg;

// Root Menu
for (item=0;item<ROOTMENU_NUMITEMS;item+=1) {
  draw_sprite_ext(spr_plainbutton2,0,ax(item*BUTTONWIDTH),
                  ay(0),1.5,1.5,0,c_white,1.0);
  draw_sprite_ext(spr_rootmenu,item,ax(item*BUTTONWIDTH),
                  ay(0),1.0,1.0,0,c_white,1.0);
  }
if (not ismovetoolactive()) {
  draw_sprite(spr_cancelbutton,0,ax(view_wview[0]-(BUTTONWIDTH/2)),ay(view_hview[0]-(BUTTONHEIGHT/2)));
  }
