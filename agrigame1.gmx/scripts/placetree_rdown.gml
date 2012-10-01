var tx,ty,sx1,sy1,sx2,sy2,subtype,growth;
tx = argument0;
ty = argument1;
subtype = argument2;
growth = argument3;

if (istree(getspecies(global.plants[tx,ty]))) {
  return false;
  }
hexadj(tx,ty,5);
sx1 = global.hexx;
sy1 = global.hexy;
if (istree(getspecies(global.plants[sx1,sy1]))) {
  return false;
  }
hexadj(tx,ty,0);
sx2 = global.hexx;
sy2 = global.hexy;
if (istree(getspecies(global.plants[sx2,sy2]))) {
  return false;
  }
global.plants[tx,ty] = makeplant(T_RED_BOTTOM,subtype,growth);
global.plants[sx1,sy1] = makeplant(P_SHADOWDOWNRIGHT,subtype,growth);
global.plants[sx2,sy2] = makeplant(P_SHADOWDOWNLEFT,subtype,growth);

