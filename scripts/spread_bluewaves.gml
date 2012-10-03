var species, sx, sy, ssubtype, spreaddest;
// Note: Unlike other spread algorithms, a Blue Waves plant needs to be able
//         to change its own subtype.  This is handled back in spreadplant().
      
species = 9;
sx = argument0;
sy = argument1;
ssubtype = argument2;
// Blue Waves is unique in that it has a set lifespan regardless of
//   mineral use or season.  Subtype is used to store the time lived.
//   Because of this, for gameplay balance it needs somewhat more generous
//   seasonal viability than other plants, since the player has to be more
//   attentive to it when gathering harvests.

repeat (5) {
  spreaddest = irandom_range(0,19);
  trytoplaceplant(makeplant(species,0,0),
                            sx+global.bwspread_x[spreaddest],
                            sy+global.bwspread_y[spreaddest]);
  }
ssubtype += 1;
return ssubtype;





