// argument0: bugdata, argument1: which bug count to set, argument2: new count
// returns new bugdata
return (argument0 & ( HIGHBITMASK^(15<<(argument1*4)) )) | (argument2 << (argument1*4));

