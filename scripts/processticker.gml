global.tickertimer = (global.tickertimer+1) mod 240;
if (global.tickertimer < 20) {
  global.tickerflash = (global.tickertimer mod 2)
  }
else {
  global.tickerflash = 1;
  }
if ((global.tickertimer == 0) or ((global.tickertimer < (TICKERPERIOD/3)) and (global.tickeritems>0))) {
  advanceticker();
  }
