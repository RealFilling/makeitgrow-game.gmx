var species, ssubtype, sx, sy, dir;
species = argument0
ssubtype = argument1
sgrowth = argument2 // Needed for Blue Waves
sx = argument3
sy = argument4

if (nonspread[species]) {
  spread_nonspreading();
  return 0;
  }

switch(species) {
  case P_EMPTY:
    break; // Shouldn't happen
  case P_REDX: // Red X
    spread_redx(sx,sy,ssubtype);
    break;
  case P_REDPLUS: // Red Plus
    spread_redplus(sx,sy,ssubtype);
    break;
  case P_BLUEROUND: // Blue Round
    spread_blueround(sx,sy,ssubtype);
    break;
  case P_BLUECLUSTER: // Blue Berries
    spread_blueclusters(sx,sy,ssubtype);
    break;
  case P_GREENCLUSTER: // Green Berries
    spread_greenclusters(sx,sy,ssubtype);
    break;
  case P_GREENMEANDER: // Green Meandering
    spread_greenmeandering(sx,sy,ssubtype);
    break;
  case P_REDSCATTER: // Red Scattered
    spread_redscattered(sx,sy,ssubtype);
    break;
  case P_REDHARDY: // Red Hardy
    spread_redhardy(sx,sy,ssubtype);
    break;
  case P_BLUEWAVE: // Blue Waves
    // Note: this is different from the others.
    ssubtype = spread_bluewaves(sx,sy,ssubtype);
    if (ssubtype >= 2 and (irandom_range(0,2) == 0)) {
      // This is a bit hacky, since cellturn hasn't finished yet,
      //   but there's nothing left in cellturn that relies on the
      //   plant still being alive.
      global.plants[sx,sy] = makeplant(species,0,GROWTH_DEAD);
      }
    else {
      // Changing the subtype of Blue Waves doesn't affect its appearance,
      //   so we aren't triggering a tile change check.
      global.plants[sx,sy] = makeplant(species,ssubtype,sgrowth);
      }
    break;
  case P_BLUEVERTICAL: // Blue Vertical
    spread_bluevertical(sx,sy,ssubtype);
    break;
  case P_GREENDELICATE: // Green Delicate
    spread_greendelicate(sx,sy,ssubtype);
    break;
  case P_GREENHORIZONTAL: // Green Green Horizontal
    spread_greenhorizontal(sx,sy,ssubtype);
    break;
  case P_GRASS: // Grass
    spread_grass(sx,sy,ssubtype);
    break;
  case P_WEED: // Weeds
    spread_weeds(sx,sy,ssubtype);
    break;
  case T_RED_TOP: // Red Tree (orientation pointing up)
    break;
  case T_RED_BOTTOM: // Red Tree (orientation pointing down)
    break;
  case T_GREEN_TOP: // Green Tree (orientation pointing up)
    break;
  case T_GREEN_BOTTOM: // Green Tree (orientation pointing down)
    break;
  }
