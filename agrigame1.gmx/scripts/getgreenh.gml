// buildext bitfields:
// 1: greenhouse exist
// 2: pipe exist
// 3-10: pipe water pressure (0-255)

var bx, by;
bx = argument0;
by = argument1;
return global.buildext[bx,by] & 1;

