// Clear out all plants

if (global.debug) {
  for (ya=0;ya<BOARDWIDTH;ya+=1) {
    for (xa=0;xa<BOARDHEIGHT;xa+=1) {
      //plant[x,y] = 0;
      species = 0;
      subtype = 0;
      growth = 0;
      global.plants[xa,ya] = makeplant(species,subtype,growth);
      global.harvest[xa,ya] = 0;
      }
    }
  }
