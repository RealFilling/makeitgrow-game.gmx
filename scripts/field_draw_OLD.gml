// Debug
// Outlines
//outputtext = "ABCDE";
//draw_set_font(font_hud);
//draw_set_color(c_white);
//for (dir=0;dir<4;dir+=1) {
//  draw_text(0+view_xview[0]+dirx[dir]+100,view_yview[0]+diry[dir]+100,outputtext);
//  }
//// Main text
//draw_set_color(c_black);
//draw_text(0+view_xview[0]+100,view_yview[0]+100,outputtext);

// Update soil tiles (only attempt those in view)

by1 = max(0,(view_yview[0] div ETILEHEIGHT)-1);
bx1 = max(0,(view_xview[0] div TILEWIDTH)-1);
by2 = min(((view_yview[0]+view_hport[0]) div ETILEHEIGHT)+1,BOARDHEIGHT);
bx2 = min(((view_xview[0]+view_wport[0]) div TILEWIDTH)+2,BOARDWIDTH);
for (by=by1; by<by2; by+=1) {
  for (bx=bx1; bx<bx2; bx+=1) {

    // *Draw tiles
    hextopix(bx,by)
    // Soil
    soildisp = soiltiletodisp(global.soil[bx,by]);
    draw_sprite_ext(spr_soiltiles,soildisp,global.hexx,global.hexy,1.0,1.0,0,c_white,1);
    
    // Plant
    thisplant = global.plants[bx,by]
    thisspecies = getspecies(thisplant)
    thissubtype = getsubtype(thisplant)
    thisgrowth = getgrowth(thisplant)
    plantdisp = figureplanttile(thisspecies,thissubtype,thisgrowth);
    decodeplanttile(plantdisp);
    tx = global.tx; // return values from decodeplanttile()
    ty = global.ty;
    draw_sprite_ext(spr_planttiles,tx+(ty*8),global.hexx,global.hexy,1.0,1.0,0,c_white,1);
    
    // Fruit
    if (thisgrowth != GROWTH_DEAD) {
      thisharvest = global.harvest[bx,by];
      if ((global.harvest[bx,by] != 0) and (thisgrowth != GROWTH_DEAD)) {
        fruitdisp = (plantmineral[thisspecies]*8) + min(4,(thisharvest div 8) + 1);
        draw_sprite_ext(spr_fruittiles,fruitdisp,global.hexx,global.hexy,1.0,1.0,0,c_white,1);
        }
      }
    }
  }

// Draw the farmer
farmerobj = instance_find(obj_farmer,0);
with (farmerobj) {
  farmer_draw();
  }


