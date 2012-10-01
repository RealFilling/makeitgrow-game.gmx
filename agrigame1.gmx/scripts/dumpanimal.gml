var thisanimal, buildstring, a, subval;
thisanimal = argument0;

// Defined in animalbase_create
buildstring = "";

// Exists
buildstring += numtostring(1);

// Defined in (animal)_create, but needed now
buildstring += numtostring(thisanimal.animaltype);

// Animal data
buildstring += numtostring(thisanimal.boardx);
buildstring += numtostring(thisanimal.boardy);
buildstring += numtostring(thisanimal.homex);
buildstring += numtostring(thisanimal.homey);

buildstring += numtostring(thisanimal.image_speed);
buildstring += numtostring(thisanimal.ahealth);
buildstring += numtostring(thisanimal.waterfull);
buildstring += numtostring(thisanimal.foodfull);

buildstring += numtostring(thisanimal.age);

buildstring += numtostring(thisanimal.waterdecrease);
buildstring += numtostring(thisanimal.fooddecrease);
buildstring += numtostring(thisanimal.threatened);
buildstring += numtostring(thisanimal.panicked);
buildstring += numtostring(thisanimal.sick);
buildstring += numtostring(thisanimal.animdelay);
buildstring += numtostring(thisanimal.animframe);

buildstring += numtostring(thisanimal.isplayer);
buildstring += numtostring(thisanimal.moving);
buildstring += numtostring(thisanimal.facing);
buildstring += numtostring(thisanimal.moveprogress);

buildstring += numtostring(thisanimal.movedelaytimer);

// Defined in (animal)_create
buildstring += numtostring(thisanimal.predator);
buildstring += numtostring(thisanimal.movefreq);
buildstring += numtostring(thisanimal.movespeed);
buildstring += numtostring(thisanimal.animdelaymax);
//buildstring += numtostring(thisanimal.animaltype);
buildstring += numtostring(thisanimal.watermax);
buildstring += numtostring(thisanimal.foodmax);

// Future expansion
for (a=0; a<40; a+=1) {
  buildstring += numtostring(0);
  }

// Counted: 69 variables

return buildstring;
