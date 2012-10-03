var bx,by,dir;
bx = argument0;
by = argument1;
for (dir=0;dir<6;dir+=1) {
  hexadj(bx,by,dir);
  // Bounds checking is done in function:
  field_increasetill(global.hexx,global.hexy);
  }
field_increasetill(bx,by);
sound_play(snd_hoe1);
return 0;
