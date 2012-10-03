var mx, my, moisttoadd, oldmoist;
mx = argument0;
my = argument1;
moisttoadd = argument2;
oldmoist = getmoist(mx,my);
setmoist(mx,my,min((oldmoist+moisttoadd),MAXMOIST));
