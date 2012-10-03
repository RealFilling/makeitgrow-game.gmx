field_soilgen(); // Generate initial mineral distribution
field_heightgen(); // Generate land heightmap
//field_smoothlandall(); // Smooth out the land a bit
field_watergen(); // Place initial water
field_dowater(); // Flow water into lakes
field_moistgen(); // Generate initial moisture
avgmoistfield(10); // Give moisture some turns to approach a natural distribution.

