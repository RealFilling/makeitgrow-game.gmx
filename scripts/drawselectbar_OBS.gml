// Called from field_draw(), which handles a lot of extra drawing too.

var item, buttonimg;




// Seeds & Mulch
for (item=0;item<global.numitems;item+=1) {
  if (item != global.currentseed) {// Skipping the current one, so it's drawn atop the others
    //buttonimg = seasonalbuttonimg(item);  
    draw_sprite_ext(buttonimg,0,view_xview[0]+(BUTTONWIDTH/2)+(item*BUTTONWIDTH),
                    view_yview[0]+(BUTTONHEIGHT/2),bs_width,bs_height,0,c_white,1.0);
    draw_sprite_ext(spr_itemicons,item,view_xview[0]+(BUTTONWIDTH/2)+
                    (item*BUTTONWIDTH),view_yview[0]+(BUTTONHEIGHT/2),0.5,0.5,0,c_white,1.0);
    }
  }
// Other Tools
for (item=1;item<=NUMTOOLS;item+=1) {
  if (item != global.currentseed) {// Skipping the current one, so it's drawn atop the others
  draw_sprite_ext(spr_plainbutton2,0,(view_xview[0]+view_wview[0]-(BUTTONWIDTH/2)-(NUMTOOLS*BUTTONWIDTH))+
                  (item*BUTTONWIDTH),view_yview[0]+(BUTTONHEIGHT/2),bs_width,bs_height,0,c_white,1.0);
  draw_sprite_ext(spr_itemicons2,abs(item)-1
                  ,(view_xview[0]+view_wview[0]-(BUTTONWIDTH/2)-(NUMTOOLS*BUTTONWIDTH))+(item*BUTTONWIDTH)
                  ,view_yview[0]+(BUTTONHEIGHT/2),0.5,0.5,0,c_white,1.0);
    }
  }

// Now drawing the currently selected item button
if (global.currentseed) >= 0 {
  //buttonimg = seasonalbuttonimg(item);
  draw_sprite_ext(buttonimg,0,view_xview[0]+(BUTTONWIDTH/2)+(global.currentseed*BUTTONWIDTH),
                  view_yview[0]+(BUTTONHEIGHT/2),bs_width*1.5,bs_height*1.5,0,c_white,1.0);
  draw_sprite_ext(spr_itemicons,global.currentseed,view_xview[0]+
                  (BUTTONWIDTH/2)+(global.currentseed*BUTTONWIDTH),
                  view_yview[0]+(BUTTONHEIGHT/2),1.0,1.0,0,c_white,1.0);
  //// Draw move button (deselected)
  //draw_sprite(spr_plainbutton2,0,view_xview[0]+view_wview[0]-12,view_yview[0]+12);
  //draw_sprite_ext(spr_itemicons2,0,view_xview[0]+view_wview[0]-12,view_yview[0]+12,0.5,0.5,0,c_white,1.0);
  }
else {
  // Draw selected tool button
  draw_sprite_ext(spr_plainbutton2,0,(view_xview[0]+view_wview[0]-(BUTTONWIDTH/2)-
                  (NUMTOOLS*BUTTONWIDTH))+(abs(global.currentseed)*BUTTONWIDTH)
                  ,view_yview[0]+(BUTTONHEIGHT/2),bs_width*1.5,bs_height*1.5,0,c_white,1.0);
  draw_sprite_ext(spr_itemicons2,abs(global.currentseed)-1
                  ,(view_xview[0]+view_wview[0]-(BUTTONWIDTH/2)-(NUMTOOLS*BUTTONWIDTH))+
                  (abs(global.currentseed)*BUTTONWIDTH),
                  view_yview[0]+(BUTTONHEIGHT/2),1.0,1.0,0,c_white,1.0);
  }




