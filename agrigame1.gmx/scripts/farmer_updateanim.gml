sprite_index = animsprites[animation];
image_index = animprogress;
if (animprogress < animlengths[animation]) {
  animprogress += 1;
  } 
else {
  farmer_resetanim();
  }


