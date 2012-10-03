// argument0: x, argument1: y, argument2: new pipeexist (0 or 1)
global.buildext[argument0,argument1] = (global.buildext[argument0,argument1] & (HIGHBITMASK ^ 2)) | (argument2<<1);
setpipepressure(argument0, argument1, 0);


