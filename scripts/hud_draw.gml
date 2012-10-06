scrx = ax(0);
scry = ay(0);
if (global.energyflasheffect > 0) {
  energycolor = make_color_rgb(255,255,255);
  global.energyflasheffect -= 1;
  }
else {
  energycolor = make_color_rgb(0,193,244);
  }
// Process ticker
draw_set_valign(fa_top);
draw_set_font(font_hud);
processticker();

draw_set_halign(fa_center);
// Draw money bar
draw_sprite(spr_moneybar,0,scrx+70,scry);
drawshadowedtext(font_hud,c_white,string_commas(global.money),154,4,true);
// Draw energy bar background
draw_sprite(spr_energybkgd,0,scrx+10,scry+4);
// Draw energy bar

draw_sprite_ext(spr_energybar,0,scrx+30,scry+32,1.0,1.0,
                0 - (max((1000-global.energy),0)/1000) * 140,
                energycolor,1.0);
// Draw top-left
draw_sprite(spr_hudtopleft,0,scrx,scry);
// Draw weather icon
draw_sprite(spr_weathericons,global.currentweather,scrx+view_wview[0]-57,scry+3);
// Draw season icon
draw_sprite(spr_seasonicons,pickseasonicon(global.month),scrx+view_wview[0]-30,scry+57);
// Draw speed buttons
draw_sprite(obj_speedbutton1.sprite_index,obj_speedbutton1.image_index,
            obj_speedbutton1.savedx + scrx+1, obj_speedbutton1.savedy + scry);  
draw_sprite(obj_speedbutton2.sprite_index,obj_speedbutton2.image_index,
            obj_speedbutton2.savedx + scrx+1, obj_speedbutton2.savedy + scry);  
draw_sprite(obj_speedbutton3.sprite_index,obj_speedbutton3.image_index,
            obj_speedbutton3.savedx + scrx+1, obj_speedbutton3.savedy + scry);  
// Draw top-right
draw_sprite(spr_hudtopright,0,scrx+view_wview[0],scry);
// Draw iconbar background
draw_sprite(spr_hudiconbar,0,scrx,scry+86);
// Draw time of day
drawshadowedtext(font_hud,c_white,timeofday(),view_wview[0]-221,4,true);
// Draw time of year
drawshadowedtext(font_hud,c_white,global.months[global.month]+" "+
                                  string(global.day+1)+", "+
                                  string(global.year+2012),view_wview[0]-127,4,true);

//outputtext1 = "Year "+string(global.year);
//outputtext1 += ", "+global.months[global.month]+" "+string(global.day+1);
//outputtext1 += " " + timeofday();

draw_set_halign(fa_left);

// * Plant growth debug mode display
if (global.plantgrowthdebug == true) {
  outputtext2 += "     PLANT GROWTH DEBUGGING ON"
  }
  
if (global.currentseed == TOOL_QUERY) {
  outputtext3 = "This space:";
  bx = obj_farmer.boardx; by = obj_farmer.boardy;
  thisplant = global.plants[bx,by];
  outputtext3 += " Species:" + string(getspecies(thisplant));
  outputtext3 += " Subtype:" + string(getsubtype(thisplant));
  outputtext3 += " Growth:" + string(getgrowth(thisplant));
  outputtext3 += " Height:" + string(global.height[bx,by]);
  outputtext3 += " Soilext:" + string(global.soilext[bx,by]);
  outputtext3 += " Buildext:" + string(global.buildext[bx,by]);
  outputtext3 += " Harvest:" + string(global.harvest[bx,by]);
  }
else {
  outputtext3 = "";
  }

// Debug: plant at farmer's feet
f_id = instance_find(obj_farmer,0);
//with f_id {

//switch (global.iostate) {
//  case IOSTATE_LOADING:
//    outputtext3 = "LOADING....";
//    break;
//  case IOSTATE_SAVING:
//    outputtext3 = "SAVING....";
//    break;
//  default:
//    break;
//  }

drawshadowedtext(font_hud,c_white,global.currentitemname,view_wview[0]/2,0,true);
//drawshadowedtext(font_hud,c_white,outputtext1,0,view_hview[0]-60,true);
//drawshadowedtext(font_hud,c_white,outputtext2,0,view_hview[0]-46,true);
drawshadowedtext(font_hud,c_white,outputtext3,0,view_hview[0]-32,true);
drawshadowedtext(font_hud,global.tickerflashcolors[global.tickerflash],global.tickercurrentitem,0,view_hview[0]-18,true);

