var a, pickedplant;
// Tries up to three times to select a wild plant.
// If fails, returns -1.
for (a=0; a<3; a+=1) {
  pickedplant = irandom_range(P_EMPTY+1, NUMPLANTTYPES);
  if (iswild[pickedplant]) {
    return pickedplant;
    }
  }
return -1;
