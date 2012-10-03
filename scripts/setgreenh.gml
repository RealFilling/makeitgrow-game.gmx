// argument0: x, argument1: y, argument2: new greenh (0 or 1)
global.buildext[argument0,argument1] = (global.buildext[argument0,argument1] & (HIGHBITMASK ^ 1)) | argument2;

