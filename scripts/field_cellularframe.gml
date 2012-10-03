var sx, sy, cellx, celly, offset;

// global.cellcalc is the variable that keeps track of which of the 64 cells
//   in each 8x8 block of field is calculated this time.
offset = global.stripecalc * ((BOARDHEIGHTC) div CELLULARSTRIPECOUNT)
for (sy=0;sy<CELLULARSTRIPEHEIGHT;sy+=1) {
  for (sx=0;sx<(BOARDWIDTHC div 8);sx+=1) {
    cellx = (sx*8)+1+staggerx[global.cellcalc];
    celly = (sy*8)+offset+1+staggery[global.cellcalc];
    cellturn(cellx,celly);
    }
  }
global.stripecalc = (global.stripecalc + 1) mod CELLULARSTRIPECOUNT
if (global.stripecalc == 0) {
  global.cellcalc = (global.cellcalc + 1) mod 64
  if (global.cellcalc == 0) {
    // Put stuff here that must occur only once per field calculation.
    setbuildingtotals();
    }
  }
  
//  // Water turn
//  if (!global.watersettled) {field_dowater();}
  
//  // Update soil tiles (only attempt those in view)
//  by1 = max(0,(view_yview[0] div ETILEHEIGHT)-1);
//  bx1 = max(0,(view_xview[0] div TILEWIDTH)-1);
//  by2 = min(((view_yview[0]+view_hport[0]) div ETILEHEIGHT)+1,BOARDHEIGHT);
//  bx2 = min(((view_xview[0]+view_wport[0]) div TILEWIDTH)+2,BOARDWIDTH);
//  for (by=by1; by<by2; by+=1) {
//    for (bx=bx1; bx<bx2; bx+=1) {
//      updatesoilcell(bx,by);
//      }
//    }

