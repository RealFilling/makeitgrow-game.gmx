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

if (global.framecount < 30) { // This is to allow Game Maker's engine some time to get itself in order.
  return 0;
  }

// Tile drawing extents
by1 = max(0,(view_yview[0] div ETILEHEIGHT)-1);
bx1 = max(0,(view_xview[0] div TILEWIDTH)-1);
by2 = min(((view_yview[0]+view_hport[0]) div ETILEHEIGHT)+3,BOARDHEIGHT-1);
bx2 = min(((view_xview[0]+view_wport[0]) div TILEWIDTH)+2,BOARDWIDTH-1);
// Draw tiles:
for (by=by1; by<by2; by+=1) {
  for (bx=bx1; bx<bx2; bx+=1) {
    hextopix(bx,by);
    pixx = global.hexx;
    thisheight = global.height[bx,by];
    pixy = global.hexy - (thisheight * HEIGHTPIX);
    // Soil
    soildisp = soiltiletodisp(global.soil[bx,by]);
    thistill = gettill(bx,by);
    if (global.currentseed == TOOL_MINERALVIEW) {
      thissoil = global.soil[bx,by];
      soilred = getred(thissoil);
      soilgreen = getgreen(thissoil);
      soilblue = getblue(thissoil);
      draw_sprite_ext(spr_soilmonotiles,soildisp,pixx,pixy,1.0,1.0,0,
        make_color_rgb(soilred,soilgreen,soilblue),1);
      }
    else if (global.currentseed == TOOL_MOISTUREVIEW) {
      thismoist = getmoist(bx,by);
      draw_sprite_ext(spr_soilmonotiles,soildisp,pixx,pixy,1.0,1.0,0,
        make_color_rgb(128,128,thismoist*7),1);
      }
    else {
      draw_sprite_ext(spr_tilledtiles2,soildisp+(thistill*8),pixx,pixy,1.0,1.0,0,c_white,1);
      }
    }
  // In order to have moving objects overlap appropriately with the field, we have to render
  //   them here instead of using GameMaker's default renderer or draw events.
  // Drawing farmer
  if (obj_farmer.boardy == by) {
    if (global.gamestate == GSTATE_NORMAL) {
      farmerobj = instance_find(obj_farmer,0);
      with (farmerobj) {
        farmer_draw();
        }
      }
    }
  // Drawing animals
  for (a=0; a<global.animalcount; a+=1) {
    thisanimal = global.animalinstances[a];
    eby = thisanimal.boardy;
    // If this animal is currently walking up, draw as if one tile lower on screen.
    // (This is to fix soil overlap problems.)
    if (((thisanimal.facing == 5) or (thisanimal.facing == 0)) and thisanimal.moving) {
      eby+=1;
      }
    if (eby == by) {
      with (thisanimal) {
        animalbase_draw();
        }      
      }
    }  
  // Now, draw the rest of the things on the tile
  for (bx=bx1; bx<bx2; bx+=1) {
    hextopix(bx,by);
    pixx = global.hexx;
    thisheight = global.height[bx,by];
    pixy = global.hexy - (thisheight * HEIGHTPIX);
    // Bugs
    bugset = global.bugs[bx,by];
    if (bugset != 0) {
      getallbugs(bugset);
      mostbugs = -1;
      mostbugcount = -1;
      for (a=0;a<NUMBUGS;a+=1) {
        if global.bugarray[a] > mostbugcount {
          mostbugs = a;
          mostbugcount = global.bugarray[a];
          }
        }       
      draw_sprite_ext(bugsprites[mostbugs],0,pixx,pixy-16,
                      1.0,1.0,0,c_white,1.0);
      draw_text(pixx,pixy-16,string(mostbugcount));
      }
    // Plant
    thisplant = global.plants[bx,by];
    thisspecies = getspecies(thisplant);
    thissubtype = getsubtype(thisplant);
    thisgrowth = getgrowth(thisplant);
    thisharvest = global.harvest[bx,by];
    if (isplant(thisspecies)) {
      plantdisp = figureplanttile(thisspecies,thissubtype,thisgrowth,thisharvest);
      decodeplanttile(plantdisp);
      tx = global.tx; // return values from decodeplanttile()
      ty = global.ty;
      if ((thisharvest > 0) and !noharvest[thisspecies]) {
        draw_sprite_ext(spr_harvesteffect,0,pixx,pixy,1.0,1.0,
                        //((global.rawtime mod 8)/8)*360, // halo rotation
                        0,
                        c_white,
                        (thisharvest-4)/27); // halo transparency
        }
      draw_sprite_ext(plantsprites[thisspecies],tx,pixx,pixy,1.0,1.0,0,c_white,1);
      }
    else if (istree(thisspecies)) { // Tree
      draw_sprite_ext(treesprites[thisspecies-P_TREE_START],thisgrowth,pixx,pixy,1.0,1.0,0,c_white,1);
      //if ((thisspecies == T_RED_TOP) or (thisspecies == T_GREEN_TOP)) {
      //  treeimg = thisgrowth+((thisspecies-T_RED_TOP)*5);
      //  draw_sprite_ext(spr_treetilesup,treeimg,pixx,pixy,1.0,1.0,0,c_white,1);
      //  }
      //else {
      //  treeimg = thisgrowth+((thisspecies-T_RED_BOTTOM)*5);
      //  draw_sprite_ext(spr_treetilesdown,treeimg,pixx,pixy,1.0,1.0,0,c_white,1);
      //  }
      }
    else if (isbuilding(thisspecies)) { // Building
      // SPECIAL FENCE RENDERING GOES HERE
      //if (isfence(thisspecies)) {
      //  }
      if (thisgrowth < BLDGGROWTH_BUILT) {
        frame = 0;
        }
      else if (thisgrowth == BLDGGROWTH_BUILT) {
        frame = 1;
        }
      else {
        frame = 2;
        }
      draw_sprite_ext(buildingsprites[buildingidtoord(thisspecies)],frame,pixx,pixy,1.0,1.0,0,c_white,1);
      }
    else if (iscompost(thisspecies)) { // Compost
      compostimg = ((thisspecies-P_COMPOST_START)*4)+(thisgrowth-1);
      draw_sprite_ext(spr_composttiles,compostimg,pixx,pixy,1.0,1.0,0,c_white,1);
      }
    else if (isshadow(thisspecies) and global.shadowdebug) { // Shadow
      draw_sprite_ext(spr_debugplaceholder,thisspecies-P_SHADOW_START,pixx,pixy,1.0,1.0,0,c_white,1);
      }
    // Pipes & greenhouse extents
    if (getpipeexist(bx,by) == 1) {
      theight = thisheight;
      bheight = thisheight;
      draw_sprite(spr_pipes,getpipepressure(bx,by) div 2,pixx,pixy);
      for (count=0;count<6;count+=1) {
        dir = (count + 4) mod 6;
        if (getpipeconnection(bx,by,dir) == 1) {
          hexadj(bx,by,dir);
          oheight = global.height[global.hexx,global.hexy];
          if (oheight > theight) {
            theight = oheight;
            }
          else if (oheight < bheight) {
            bheight = oheight;
            }
          if (count < 3) { // We don't need to draw all six directions
            draw_sprite(spr_pipeconnections,count,pixx,pixy);
            }
          }
        }
      draw_set_color(make_color_rgb(175,175,175));
      draw_line_width(pixx,pixy+thisheight-theight,pixx,pixy+thisheight-bheight,4);
      }
    //if (getgreenh(bx,by)) {
    //  draw_sprite(spr_greenhouse,0,pixx,pixy);
    //  }
    // Water
    if global.water[bx,by] != 0 {
      //thiswater = median(0,global.water[bx,by]-1,31);
      //draw_sprite_ext(spr_watertiles2,thiswater,pixx,pixy,1.0,1.0,0,c_white,1);
      thiswater = median(0,(global.water[bx,by]*2)-1+global.waveheight[(global.framecount+bx+by) mod 16],31);
      draw_sprite_ext(spr_watertiles3,0,pixx,pixy-thiswater,1.0,1.0,0,c_white,1);
      //draw_sprite_ext(spr_watertiles,irandom_range(0,15),pixx,pixy,1.0,1.0,0,c_white,1);
      }  
    }
  }

  
// Draw the hex cursor
pixtohexmouse(mouse_x,mouse_y);
hx = global.hexx;
hy = global.hexy;
hextopix(hx,hy);
if (coordsinbounds(hx,hy)) {
  draw_sprite(spr_hexcursor,0,global.hexx,(global.hexy)-(global.height[hx,hy]*HEIGHTPIX));
  }

if (global.gamestate != GSTATE_NORMAL) {
  draw_set_halign(fa_center);
  draw_set_valign(fa_middle);
  drawshadowedtext(font_bigtext,c_white,"Growing...",cx(),cy(),false);
  }
  
// Draw the weather
for (wy=0;wy<(view_hview[0] div 256)+1;wy+=1) {
  for (wx=0;wx<(view_wview[0] div 256)+1;wx+=1) {
    draw_sprite(global.weatherspr[global.currentweather],global.framecount mod 8,
                ax(wx*256),ay(wy*256));
    }
  }  


