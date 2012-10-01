mysoil = global.soil[x div BOARDHEIGHT,y div BOARDWIDTH];
soiltotal = getred(mysoil)+getgreen(mysoil)+getblue(mysoil);
soilimgindex = ((765 - soiltotal) div 255) + 1
draw_sprite_ext(spr_soil,soilimgindex,x,y,2,2,0,c_white,1);

