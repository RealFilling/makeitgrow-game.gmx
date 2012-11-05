var bx,by,dir,hx,hy;
bx = argument0;
by = argument1;
for (dir=0;dir<6;dir+=1) {
  hexadj(bx,by,dir);
  hx = global.hexx;
  hy = global.hexy;
  // Bounds checking is done in function:
  mulchplant(hx, hy);
  field_increasetill(hx, hy);
  }
mulchplant(bx, by);
field_increasetill(bx,by);
sound_play_respectdisable(snd_hoe1);
return 0;
