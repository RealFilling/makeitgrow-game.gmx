var px, py, planttoplace, oldplant, treeoverride, species, oldspecies;
px = argument0; py = argument1; planttoplace = argument2; treeoverride = argument3;
if (!coordsinbounds(px,py)) {
  return false;
  }
oldplant = global.plants[px,py];
oldspecies = getspecies(oldplant);
if ((isshadow(oldspecies)) or istree(oldspecies)){
  // 
  if (treeoverride) {
    // Destroy the tree, then fall through to plant placement
    destroymultitile(px,py);
    }
  else {
    return false;
    }
  }
species = getspecies(planttoplace);
if (istree(species)) {
  //show_message("trying to place tree type "+string(species));
  switch (species) {
    case T_RED_TOP:
      placetree_rup(px,py,getsubtype(planttoplace),getgrowth(planttoplace));
      break;
    case T_RED_BOTTOM:
      placetree_rdown(px,py,getsubtype(planttoplace),getgrowth(planttoplace));
      break;
    case T_GREEN_TOP:
      placetree_gup(px,py,getsubtype(planttoplace),getgrowth(planttoplace));
      break;
    case T_GREEN_BOTTOM:
      placetree_gdown(px,py,getsubtype(planttoplace),getgrowth(planttoplace));
      break;
    }
  }
else {
  global.plants[px,py] = planttoplace;
  }
return true;

