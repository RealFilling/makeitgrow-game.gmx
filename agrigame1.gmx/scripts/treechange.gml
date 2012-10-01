var tx,ty,subtype,thistree,growth;
tx = argument0;
ty = argument1;
subtype = argument2;
growth = argument3;

thistree = global.plants[tx,ty];
global.plants[tx,ty] = makeplant(getspecies(thistree),subtype,growth);
