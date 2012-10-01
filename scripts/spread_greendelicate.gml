var species, sx, sy, ssubtype, spreaddest;
species = 11;
sx = argument0;
sy = argument1;
ssubtype = argument2;
//
spreaddest = irandom_range(0,11);

// Green Delicate's balance relies on a special case in isempty_growth(), which
//   is called by trytoplaceplant().
trytoplaceplant(makeplant(species,0,0),
                          sx+global.gdspread_x[spreaddest],
                          sy+global.gdspread_y[spreaddest]);

