var placex, placey, composttype, compostamt;
placex = argument0;
placey = argument1;
composttype = argument2 + COMPOST_RED; // Offset color constant to field entity
compostamt = argument3; // 1-4;
placeplant(argument0,argument1,makeplant(composttype,0,compostamt),false);

