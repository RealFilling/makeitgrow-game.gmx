var px,py,dir,value,connections;
px = argument0;
py = argument1;
dir = argument2; // 0-5
value = argument3; // 0-1
connections = getpipeconnections(px,py);
if (value == 0) {
  connections = (connections & (63 ^ (1 << dir)));
  }
else {
  connections = (connections | (1 << dir));
  }
setpipeconnections(px,py,connections);
