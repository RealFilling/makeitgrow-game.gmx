var xa,ya,species,subtype,growth;

//globalvar plants, harvest, soil, disptiles; 
// Initialize game map
for (ya=0;ya<BOARDHEIGHT;ya+=1) {
  for (xa=0;xa<BOARDWIDTH;xa+=1) {
    global.plants[xa,ya] = 0;
    
    global.soil[xa,ya] = 0; // Mineral content of soil, 8 bits each of red, green and blue
    global.harvest[xa,ya] = 0; // Amount of fruit here to harvest
    global.water[xa,ya] = 0; // Fluid levels
    global.height[xa,ya] = MAXHEIGHT; // height of soil above bedrock, also terrain contours
    global.bugs[xa,ya] = 0; // Insect populations, compressed into single value
    global.soilext[xa,ya] = 0; // Extra soil data
    global.buildext[xa,ya] = 0; // Greenhouse and pipe support
    }
  }

