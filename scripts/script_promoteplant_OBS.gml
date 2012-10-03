thisplant = augument0;
//
growthstage = getgrowth(thisplant);
if (growthstage < 3) {
  return growthstage+1;
  }
else {
  return growthstage;
  }

