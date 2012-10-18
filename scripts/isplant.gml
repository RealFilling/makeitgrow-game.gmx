var species;
// Note: trees don't count as plants to this function.
species = argument0;
if ((species != P_EMPTY) and  
    (species < P_TREE_START)) {
  return true;
  }
return false;

