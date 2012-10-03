var species, subtype, growth, plantvalue;
species = argument0
subtype = argument1
growth = argument2
// It is worth noting:
// Growth is 3 bits (value 0-7)
// Subtype is 5 bits (value 0-31)
// Species is what's left, but in order to serialize correctly it shouldn't be more than
//   24 bits (more than 2047 requires changing ANDFORSPECIES, but still a jolly lot of possibilities)
plantvalue = (species << 8) | (subtype << 3) | growth
if (species != 0) {
  }
return plantvalue
