// argument0: x, argument1: y, argument2: new pipeepressure (0-255)
global.buildext[argument0,argument1] = (global.buildext[argument0,argument1] & (HIGHBITMASK ^ 1020)) | (argument2<<2);

