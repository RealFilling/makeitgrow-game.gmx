var species, growth, harvest, mineraltype;
species = argument0;
harvest = argument1;

mineraltype = plantmineral[species];

if (!planthasmineral(species)) {
  global.minreturn = 0; // Doesn't matter -- value is 0
  return 0;
  }
else {
  global.minreturn = mineraltype; // minreturn is the kind of mineral returned
  // Note: divided by 2 to make up for minerals extracted from the system and converted
  //         to next type.
  return (plantminneed[species]*(harvest + 1)) div 2;
  }

