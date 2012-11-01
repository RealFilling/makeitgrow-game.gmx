var bx,by,change;
bx = argument0;
by = argument1;
// We're not currently using the value of change.  In the future, it'll be useful
//   in assessing a charge for the action.
change=field_raiseland(bx,by,0,true);
sound_play_respectdisable(snd_rise1);
return 0;

