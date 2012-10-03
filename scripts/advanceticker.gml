var item;
if (global.tickeritems > 0) {
  for (item=0;item<global.tickeritems-1;item+=1) {
    global.tickerqueue[item] = global.tickerqueue[item+1];
    }
  global.tickercurrentitem = global.tickerqueue[0];
  global.tickeritems -= 1;
  }
else {
  global.tickercurrentitem = "";
  }
global.tickertimer = 0;

