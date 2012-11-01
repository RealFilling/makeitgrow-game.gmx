if (((global.tutcardcleared == false) or (global.tutorialstep >= global.tutstepcount)) 
      and (global.tutorialfailsafe == false)){
  return false;
  }
tutorialadvcard();
return true;
