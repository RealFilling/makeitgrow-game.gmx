ptype = argument0;

if (isplant(ptype)) {
  return ptype;
  }
else if (iscompost(ptype)) {
  return ptype - P_COMPOST_START + global.idcompostbegin;
  }
else if (istree(ptype)) {
  return ptype - P_TREE_START + global.idtreebegin;
  }
else if (isbuilding(ptype)) {
  return ptype - BLDG_START + global.idbuildingbegin;
  }
else {
  return ptype; // Shouldn't happen
  }
