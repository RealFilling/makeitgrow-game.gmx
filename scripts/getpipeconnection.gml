var px,py,dir;
px = argument0;
py = argument1;
dir = argument2;
return (getpipeconnections(px,py)&(1<<dir))>>dir;
