var animal, herdflag;
animal = argument0;
herdflag = argument1;
if (herdflag) {
  switch(animal) {
    case ANIMAL_CHICKEN:
      return SEARCHFOR_CHICKENHERD;
      break;
    case ANIMAL_COW:
      return SEARCHFOR_COWHERD;
      break;
    case ANIMAL_PIG:
      return SEARCHFOR_PIGHERD;
      break;
    }
  }
else {
  switch(animal) {
    case ANIMAL_CHICKEN:
      return SEARCHFOR_CHICKEN;
      break;
    case ANIMAL_COW:
      return SEARCHFOR_COW;
      break;
    case ANIMAL_PIG:
      return SEARCHFOR_PIG;
      break;
    }
  }

