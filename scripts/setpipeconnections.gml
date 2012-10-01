var result;
// argument0: x, argument1: y, argument2: new pipeconnecctions (0-63)
//show_message ("setpipeconnections() old value: "+string(global.buildext[argument0,argument1]));
result = (global.buildext[argument0,argument1] & (HIGHBITMASK ^ 64512)) | (argument2<<10);
//show_message ("setpipeconnections() result: "+string(result));
global.buildext[argument0,argument1] = result;

