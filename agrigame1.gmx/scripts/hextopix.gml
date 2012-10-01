var hexx,hexy,rowoffset;
hexx = argument0;
hexy = argument1;

rowoffset = lowbitc(hexy) * (TILEWIDTH div 2);
global.hexx = (hexx * TILEWIDTH) - rowoffset;
global.hexy = hexy * ETILEHEIGHT;
//return 0;
