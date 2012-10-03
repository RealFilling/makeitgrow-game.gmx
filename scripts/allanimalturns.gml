var a;
for (a=0; a<global.animalcount; a+=1) {
  with (global.animalinstances[a]) {
    animalturn();
    }
  }
