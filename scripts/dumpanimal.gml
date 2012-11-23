var thisanimal, buildstring, a, subval;
thisanimal = argument0;

// Defined in animalbase_create
buildstring = "";

// Exists
buildstring += numtostring(1); // true

// Defined in (animal)_create, but needed now
buildstring += numtostring(thisanimal.animaltype);

// Animal data
buildstring += numtostring(thisanimal.predator);
buildstring += numtostring(thisanimal.movefreq);
buildstring += numtostring(thisanimal.movespeed);
buildstring += numtostring(thisanimal.animdelay);
buildstring += numtostring(thisanimal.watermax);
buildstring += numtostring(thisanimal.foodmax);
buildstring += numtostring(thisanimal.colonsize);
buildstring += numtostring(thisanimal.poopsize);
// Sprites will have to be reassigned by the restore code

buildstring += numtostring(thisanimal.boardx);
buildstring += numtostring(thisanimal.boardy);

buildstring += numtostring(thisanimal.image_speed);
buildstring += numtostring(thisanimal.ahealth);
buildstring += numtostring(thisanimal.waterfull);
buildstring += numtostring(thisanimal.foodfull);
buildstring += numtostring(thisanimal.age);
buildstring += numtostring(thisanimal.colonlevel);
buildstring += numtostring(thisanimal.herdstrength);
buildstring += numtostring(thisanimal.callstrength);

buildstring += numtostring(thisanimal.waterdecrease);
buildstring += numtostring(thisanimal.fooddecrease);
buildstring += numtostring(thisanimal.threatened);
buildstring += numtostring(thisanimal.panicked);
buildstring += numtostring(thisanimal.sick);
buildstring += numtostring(thisanimal.animdelaycount);
buildstring += numtostring(thisanimal.animdelay);
buildstring += numtostring(thisanimal.animframe);

buildstring += numtostring(thisanimal.isplayer);
buildstring += numtostring(thisanimal.moving);
buildstring += numtostring(thisanimal.facing);
buildstring += numtostring(thisanimal.moveprogress);

buildstring += numtostring(thisanimal.movedelaytimer);

// Future expansion
for (a=0; a<40; a+=1) {
  buildstring += numtostring(0);
  }

// Counted: 73 variables

return buildstring;
