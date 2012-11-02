var speciestofind, emphasistofind, sx, sy, bestx, besty;
var farmerx, farmery, suitability, bestsuitability;
speciestofind = argument0;
emphasistofind = argument1;
farmerx = obj_farmer.boardx;
farmery = obj_farmer.boardy;
bestx = -1;
besty = -1;
bestsuitability = -1;
for (sy=1;sy<BOARDHEIGHT-1;sy+=1) {
  for (sx=1;sx<BOARDWIDTH-1;sx+=1) {
    if (global.water[sx,sy] >= 1) {
      continue;
      }
    if ((getspecies(global.plants[sx,sy]) != speciestofind) and (speciestofind != -1) and !iscolorsearch(emphasistofind)){
      continue;
      }
    suitability = 99999 - (abs(farmerx - sx) + abs(farmery - sy));
    switch(emphasistofind) {
      case TCT_TILESEARCH_MOIST:
        suitability += (MAXMOIST - getmoist(sx,sy));
        break;
      case TCT_TILESEARCH_HARVEST:
        suitability += global.harvest[sx,sy];
        break;
      case TCT_TILESEARCH_LOWMINREDADJ:
        suitability += 999-getlowadjmineral(sx,sy,RED,speciestofind);
        break;
      case TCT_TILESEARCH_LOWMINGREENADJ:
        suitability += 999-getlowadjmineral(sx,sy,GREEN,speciestofind);
        break;
      case TCT_TILESEARCH_LOWMINBLUEADJ:
        suitability += 999-getlowadjmineral(sx,sy,BLUE,speciestofind);
        break;
      case TCT_TILESEARCH_LOWMINALLADJ:
        suitability += 999-getlowadjmineral(sx,sy,COLORALL,speciestofind);
        break;
      default:
        break;
      }
    if (suitability > bestsuitability) {
      bestx = sx;
      besty = sy;
      bestsuitability = suitability;
      }
    }
  }
global.returnx = bestx;
global.returny = besty;
return bestsuitability;
